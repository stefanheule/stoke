// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include "src/validator/validator.h"
#include "src/validator/alias_miner.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

/** Takes a Cfg and a testcase; runs the Cfg on the testcase and tracks
  all memory reads/writes.  Then builds a list of all memory accesses in
  order. */
vector<AliasMiner::MemoryAccess>
AliasMiner::mine_concrete_data(const Cfg& cfg, const CpuState& tc) {

  sandbox_->reset();
  sandbox_->insert_function(cfg);
  sandbox_->insert_before(mine_concrete_callback, this);
  sandbox_->set_entrypoint(cfg.get_code()[0].get_operand<x64asm::Label>(0));

  vector<MemoryAccess> trace;
  current_concrete_trace_ = &trace;

  sandbox_->insert_input(tc);
  sandbox_->run();

  return trace;

}

void AliasMiner::mine_concrete_callback(const StateCallbackData& data, void* arg) {

  auto& instr = data.code[data.line];
  if(instr.is_memory_dereference()) {

    MemoryAccess ma;

    ma.line = data.line;
    ma.address = data.state.get_addr(instr);

    if(instr.is_push()) {
      ma.write = true;
      ma.width = instr.get_operand<Operand>(0).size();

      // don't handle push/pop of memory
      assert(!instr.is_explicit_memory_dereference());
    } else if (instr.is_pop()) {
      ma.write = false;
      ma.width = instr.get_operand<Operand>(0).size();

      // don't handle push/pop of memory
      assert(!instr.is_explicit_memory_dereference());
    } else if (instr.is_explicit_memory_dereference()) {
      size_t index = instr.mem_index();
      ma.width = instr.get_operand<Operand>(index).size();
      ma.write = instr.maybe_write(index);
    } else if (instr.is_ret()) {
      return;
    } else {
      assert(false);
      return;
    }

    AliasMiner* me = (AliasMiner*)arg;
    me->current_concrete_trace_->push_back(ma);
  }

}

/** Takes a target/rewrite pair and builds CellMemory objects to represent their
  memory use.  Returns a pair of nulls on failure. */
std::pair<CellMemory*, CellMemory*> AliasMiner::build_cell_model(const Cfg& target, const Cfg& rewrite, const CpuState& tc) {

  auto target_trace = mine_concrete_data(target, tc);
  auto rewrite_trace = mine_concrete_data(rewrite, tc);

  /*
  cout << "TARGET: " << endl;
  cout << target.get_code() << endl;
  cout << "REWRITE: " << endl;
  cout << rewrite.get_code() << endl;

  cout << "target_trace_length: " << target_trace.size() << endl;
  for(auto it : target_trace) {
    cout << "@" << it.line << "  " << it.address << " / " << it.width << endl;
  }
  cout << "rewrite_trace_length: " << rewrite_trace.size() << endl;
  for(auto it : rewrite_trace) {
    cout << "@" << it.line << "  " << it.address << " / " << it.width << endl;
  }
  */

  // Build map from address -> (cell number, size)
  // As we add to the map, we need to check for any possible partial overlaps.
  std::map<uint64_t, std::pair<size_t, size_t>> addr_cell_map;
  size_t no_cells = 0;
  for(size_t i = 0; i < 2; ++i) {
    auto& trace = i ? target_trace : rewrite_trace;
    for(auto access : trace) {

      if(addr_cell_map.count(access.address)) {
        if(access.width != addr_cell_map[access.address].second) {
          // two accesses of the same address of different sizes
          cout << "CASE iii" << endl;
          return std::pair<CellMemory*, CellMemory*>(NULL, NULL);
        } else {
          // all done with this one :)
          continue;
        }
      }

      // loop through existing cells and check for overlap
      for(auto cell : addr_cell_map) {
        if(cell.first < access.address) {
          if(cell.first + cell.second.second/8 > access.address) {
            // two accesses overlap
            cout << "CASE i" << endl;
            return std::pair<CellMemory*, CellMemory*>(NULL, NULL);
          }
        } else if (cell.first > access.address) {
          if(access.address + access.width/8 > cell.first) {
            cout << "CASE ii" << endl;
            // two accesses overlap
            return std::pair<CellMemory*, CellMemory*>(NULL, NULL);
          }
        }
      }

      // Ok, looks good: adding a new cell :)
      addr_cell_map[access.address] = std::pair<size_t, size_t>(no_cells++, access.width);
    }
  }
  cout << "addr_cell_map" << endl;
  for(auto p : addr_cell_map) {
    cout << p.first << " -> (" << p.second.first << ", " << p.second.second << ")" << endl;
  }


  // Build maps of (line -> (cell number, size))
  std::map<size_t, std::pair<size_t, size_t>> target_map;
  std::map<size_t, std::pair<size_t, size_t>> rewrite_map;
  for(size_t i = 0; i < 2; ++i) {
    auto& map = i ? target_map : rewrite_map;
    auto& trace = i ? target_trace : rewrite_trace;
    for(auto access : trace) {
      map[access.line] = addr_cell_map[access.address];
    }
  }

  cout << "Target cell map:" << endl;
  for(auto p : target_map) {
    cout << p.first << " -> (" << p.second.first << ", " << p.second.second << ")" << endl;
  }
  cout << "Rewrite cell map:" << endl;
  for(auto p : rewrite_map) {
    cout << p.first << " -> (" << p.second.first << ", " << p.second.second << ")" << endl;
  }


  CellMemory* target_mem = new CellMemory(target_map);
  CellMemory* rewrite_mem = new CellMemory(rewrite_map);
  return std::pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem);
}

void help_me_God_callback(const StateCallbackData& data, void* arg) {
  cout << "Made it through " << data.code[data.line] << endl;
}


bool AliasMiner::build_testcase_memory(CpuState& ceg, SMTSolver& solver, const CellMemory& target_memory, const CellMemory& rewrite_memory, const Cfg& target, const Cfg& rewrite) {

  // this map keeps track of whether we've initialized a given memory cell yet
  std::map<size_t, bool> cell_set;
  // this map tracks (address, value) pairs for memory
  std::map<uint64_t, BitVector> addr_value_pairs;

  // loop through target and rewrite memory dereferences and resolve them
  for(size_t k = 0; k < 2; ++k) {
    auto& cfg = k ? target : rewrite;
    auto& memory = k ? target_memory : rewrite_memory;

    auto& code = cfg.get_code();
    auto label = code[0].get_operand<x64asm::Label>(0);

    sandbox_->reset();
    sandbox_->insert_function(cfg);
    sandbox_->insert_input(ceg);
    sandbox_->set_entrypoint(label);

    for(size_t i = 0, ie = code.size(); i < ie; ++i) {
      auto instr = code[i];
      if(instr.is_memory_dereference() && !instr.is_ret()) {
        cout << "BTM: Working on " << instr << " of " << ( k ? "target" : "rewrite") << endl;
        // which cell?
        size_t cell = -1;
        if(memory.map_.count(i)) {
          cell = memory.map_.at(i).first;
          if(cell_set[cell]) {
            cout << "  * cell set" << endl;
            continue;
          }
        }

        // we need to find the address at which this dereference happens
        build_testcase_address_ = 0;
        build_testcase_width_ = 0;
        sandbox_->clear_callbacks();
        sandbox_->insert_before(label, i, build_testcase_callback, this);
        for(size_t j = i+1; j < code.size(); ++j) {
          sandbox_->insert_before(label, j, help_me_God_callback, this);
        }
        sandbox_->run();

        auto code = sandbox_->get_output(0)->code;

        cout << "  * addr=" << build_testcase_address_ << endl;
        cout << "  * width=" << build_testcase_width_ << endl;
        cout << "  * error=" << readable_error_code(code) << endl;

        //extract the symbolic value
        if(cell != (size_t)-1) {
          const SymBitVector* v = &memory.init_cells_.at(cell);
          auto var = static_cast<const SymBitVectorVar*>(v->ptr);
          auto bv = solver.get_model_bv(var->get_name(), var->get_size());
          addr_value_pairs[build_testcase_address_] = bv;
          cout << " * cell with bv: " << (size_t)bv.get_fixed_byte(0) << endl;
          cell_set[cell] = true;
        } else {
          cout << " * no cell; using 0" << endl;
          addr_value_pairs[build_testcase_address_] = BitVector(build_testcase_width_);
        }

        // rebuild the testcase for the next run
        if(!Validator::memory_map_to_testcase(addr_value_pairs, ceg))
          return false;
        sandbox_->clear_inputs();
        sandbox_->insert_input(ceg);
      }
    }
  }

  return true;
}

void AliasMiner::build_testcase_callback(const StateCallbackData& data, void* arg) {

  auto& instr = data.code[data.line];

  AliasMiner* ptr = (AliasMiner*)arg;

  ptr->build_testcase_address_ = data.state.get_addr(instr);

  size_t index = 0;
  if(!instr.is_push() && !instr.is_pop())
    index = instr.mem_index();
  ptr->build_testcase_width_ = instr.get_operand<x64asm::Operand>(index).size();

}






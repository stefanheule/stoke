// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


#include "src/validator/legacy/legacy.h"
#include "src/validator/legacy/legacy_handlers.h"
#include "src/validator/legacy/sym_state.h"

using namespace stoke;
using namespace x64asm;
using namespace std;

Handler::SupportLevel LegacyHandler::get_support(const Instruction& instr) {
  SymState ss("");

  try {
    build_circuit(instr,ss);
    return (Handler::SupportLevel)(SupportLevel::BASIC);
  } catch (validator_error e) {
    return SupportLevel::NONE;
  }

}

SymBitVector var_for_register(R r, uint64_t number) {
  stringstream ss;
  ss << r64s[r] << "_1_" << number;
  return SymBitVector::var(64, ss.str());
}

SymBitVector var_for_register(Sse r, uint64_t number) {
  stringstream ss;
  ss << xmms[r] << "_1_" << number;
  return SymBitVector::var(128, ss.str());
}

SymBool var_for_register(Eflags r, uint64_t number) {
  stringstream ss;
  ss << r << "_1_" << number;
  return SymBool::var(ss.str());
}

void LegacyHandler::build_circuit(const Instruction& instr, SymState& ss) {

  // The legacy handlers assume that the initial symbolic state has only
  // variables of the form registername_1_n, where # is some number, and then
  // registername_1_(n+1) is the output.  So, we create a symbolic state just
  // like this, at least for the variables that will be read or modified.

  // Create starting and ending version numbers
  uint64_t start_no = temp();
  uint64_t end_no = temp();
  assert(end_no = start_no + 1);

  // Find the set of registers which we need to assert equality on
  RegSet modified = instr.maybe_write_set() | instr.maybe_undef_set();
  RegSet read = RegSet::universe();

  // Build the end state with modified variable names, and add constraints
  // IMPORTANT: we need to change the whole register, not just a part of it, because
  // some things in x64asm aren't sound, e.g. movl %eax, %ecx.  See x64asm issue #81.
  for(auto it = read.gp_begin(); it != read.gp_end(); ++it) {
    // Constrain starting state
    ss.add_constraint( ss.gp[*it] == var_for_register(*it, start_no) );
  }
  for(auto it = modified.gp_begin(); it != modified.gp_end(); ++it) {
    // Create ending state
    ss.gp[*it] = var_for_register(*it, end_no);
  }

  for(size_t i = 0; i < xmms.size(); ++i) {
    if(read.contains(xmms[i]))
      ss.add_constraint( ss[xmms[i]] == var_for_register(xmms[i], start_no));
    if(modified.contains(xmms[i]))
      ss.set(xmms[i], var_for_register(xmms[i], end_no));
  }

  for(auto it = read.flags_begin(); it != read.flags_end(); ++it) {
    // Constrain starting state
    ss.add_constraint( ss[*it] == var_for_register(*it, start_no) );
  }
  for(auto it = modified.flags_begin(); it != modified.flags_end(); ++it) {
    // Create ending state
    ss.set(*it, var_for_register(*it, end_no));
  }


  // Build this "version number" object
  VersionNumber Vn;
  VersionNumber Vnprime;

  Vn.Init(start_no);
  Vnprime.Init(end_no);

  // Add the constraints for the instruction
  instrnToConstraint(instr, Vn, Vnprime, ss.constraints, "1", temp());

}

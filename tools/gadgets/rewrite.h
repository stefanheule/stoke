// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_TOOLS_GADGETS_REWRITE_H
#define STOKE_TOOLS_GADGETS_REWRITE_H

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "tools/args/rewrite.h"
#include "tools/args/target.h"
#include "tools/target/cpu_info.h"
#include "tools/ui/console.h"

namespace stoke {

class RewriteGadget : public Cfg {
public:
  RewriteGadget() : Cfg(rewrite_arg.value().code, def_in_arg, live_out_arg) {
    // Check for instructions that require unavailable flags
    const auto cpu_flags = CpuInfo::get_flags();
    auto target_flags = get_code().required_flags();
    if (!cpu_flags.contains(target_flags)) {
      const auto diff = target_flags - cpu_flags;
      Console::error(1) << "Target requires unavailable cpu flags: " << diff << std::endl;
    }

    // Check for instructions that aren't supported by the sandbox
    for (const auto& instr : get_code()) {
      if (!Sandbox::is_supported(instr)) {
        Console::error(1) << "Target contains an unsupported instruction: " << instr << std::endl;
      }
    }

    // Add summaries for auxiliary functions
    for (const auto& fxn : aux_fxns_arg.value()) {
      auto code = fxn.code;
      auto lbl = code[0].get_operand<x64asm::Label>(0);
      add_summary(lbl,
                  code.must_read_set(),
                  code.must_write_set(),
                  code.must_undef_set(),
                  code.maybe_read_set(),
                  code.maybe_write_set(),
                  code.maybe_undef_set());
    }
    recompute();
  }
};

} // namespace stoke

#endif
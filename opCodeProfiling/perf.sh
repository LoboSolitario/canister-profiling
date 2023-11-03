#!ic-repl
load "../prelude.sh";

let opcode_wasm = wasm_profiling("motoko/.dfx/local/canisters/opCodeProfiling/opCodeProfiling.wasm");
let opcode = install(opcode_wasm, encode (), null);
call opcode.__get_cycles();


let file = "PROFILE_ADD.md";


call opcode.__get_cycles();
let caller = call opcode.profileAdd();
call opcode.__get_cycles();

flamegraph(opcode, "Profile ADD Opcode", "mo_profileAdd.svg");
output(file, stringify("|Motoko|", opcode_wasm.size(), "|[", __cost_caller, "](mo_profileAdd.svg)|\n"));


call opcode.__get_cycles();
let caller = call opcode.profileSubstract();
call opcode.__get_cycles();

flamegraph(opcode, "Profile Substract Opcode", "mo_profileSubstract.svg");
output(file, stringify("|Motoko|", opcode_wasm.size(), "|[", __cost_caller, "](mo_profileSubstract.svg)|\n"));



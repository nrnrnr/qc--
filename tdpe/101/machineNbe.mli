
val amode : Machine.amode Tdpe.rr
val instruction : Machine.instruction Tdpe.rr
val amode_None : Machine.amode  Tdpe.rr
val instruction_None : Machine.instruction Tdpe.rr

val reify_amode : Machine.amode -> Tdpe.dynamic
val reflect_amode : Tdpe.dynamic -> Machine.amode

val reflect_instruction : Tdpe.dynamic -> Machine.instruction
val reify_instruction : Machine.instruction -> Tdpe.dynamic

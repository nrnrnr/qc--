
open One02Trees
val amode : M.amode Tdpe.rr
val t : M.t Tdpe.rr
val amode_None : M.amode  Tdpe.rr
val t_None : M.t Tdpe.rr

val reify_amode : M.amode -> Tdpe.dynamic
val reflect_amode : Tdpe.dynamic -> M.amode

val reflect_t : Tdpe.dynamic -> M.t
val reify_t : M.t -> Tdpe.dynamic

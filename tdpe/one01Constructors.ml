module type S = sig 
  type nativeint = Base.std_nativeint
  type amode
  type amode' = Tdpe.dynamic
  type t
  type t' = Tdpe.dynamic

  val amode_reflect : amode' -> amode
  val amode_reify : amode -> amode'

  val t_reflect : t' -> t
  val t_reify : t -> t'

  val short : unit -> amode
  val hword : unit -> amode
  val word : unit -> amode
  val dword : unit -> amode
  val add : 
      addr:nativeint (*[0..67108863]*) -> rop:nativeint (*[0..3]*) -> 
	amode:amode' -> t
  val ld : rop:nativeint (*[0..3]*) -> addr:nativeint (*[0..67108863]*) -> t
  val st : addr:nativeint (*[0..67108863]*) -> rop:nativeint (*[0..3]*) -> t
  val nop : unit -> t 
end


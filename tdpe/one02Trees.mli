
module type S =
  sig
    type nativeint = Tdpe.dynamic
    type amode
      = Short of unit
      | Hword of unit
      | Word of unit
      | Dword of unit
    
    type t
      = Add of nativeint (*[0..67108863]*) * nativeint (*[0..3]*) * amode
      | Ld of nativeint (*[0..3]*) * nativeint (*[0..67108863]*)
      | St of nativeint (*[0..67108863]*) * nativeint (*[0..3]*)
      | Nop of unit 
  end

module M : S
module Rec(I : One02Constructors.S) :
    sig
      val rec_t : M.t -> I.t
    end

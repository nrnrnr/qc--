
module type S =
  sig
    type exp = Tdpe.dynamic
    type amode = 
        Short
      | Hword
      | Word
      | Dword
    type t =
        Add of exp * exp * exp
      | Ld of exp * exp
      | St of exp * exp
      | Nop
  end

module M : S
module Rec(I : One01Constructors.S) :
    sig
      val rec_t : M.t -> I.t
    end

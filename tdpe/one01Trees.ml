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

module M : S =
  struct
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
  

(*module BuildNoCheck : One01Constructors.S with type t = M.t =
  struct 

  type amode = One01.amode
  type amode' = Tdpe.dynamic

  type t = One01.instruction
  type nativeint = Base.std_nativeint

  let amode_reflect = One01Nbe.reflect_amode
  let amode_reify = One01Nbe.reify_amode

    let short () = 
      M.Short

    let hword () = 
      M.Hword

    let word () = 
      M.Word

    let dword () = 
      M.Dword

    let add addr rop amode = 
      M.Add (addr, rop, amode)

    let ld rop addr = 
      M.Ld (rop, addr)

    let st addr rop = 
      M.St (addr, rop)
    
    let nop () = 
      M.Nop
   
  end*)

module Rec(I : One01Constructors.S) =
  struct
    let rec_amode = 
    fun xXx  ->
      (match xXx with
      | M.Short  -> I.short()
      | M.Hword  -> I.hword()
      | M.Word  -> I.word()
      | M.Dword  -> I.dword())

    let rec_t =
      fun xXx  ->
        (match xXx with
        | M.Add (x1, x2, x3) -> I.add x1 x2 x3
        | M.Ld (x1, x2) -> I.ld x1 x2
        | M.St (x1, x2) -> I.st x1 x2
        | M.Nop  -> I.nop())
      
  end

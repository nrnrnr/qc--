module M = Machine

module Encode : MachineInstance.S with
type t = Rtl.rtl
=
  struct

    type amode = Rtl.exp
    type amode' = Tdpe.dynamic

    type t = Rtl.rtl

    let (=) x y = Base.eqN x y
    let (&&) x y = Base.lgand x y

    exception NoWay
    type nativeint = Tdpe.dynamic

let short () = Rtl.bits (Bits.of_int 0 2) 2
let hword () = Rtl.bits (Bits.of_int 1 2) 2
let word () = Rtl.bits (Bits.of_int 2 2) 2
let dword () = Rtl.bits (Bits.of_int 3 2) 2

  let encodeamode = 
    fun xXx  ->
      (match xXx with
      | M.Short  -> short()
      | M.Hword  -> hword()
      | M.Word  -> word()
      | M.Dword  -> dword())

  let amode_reflect amode' = encodeamode (MachineNbe.reflect_amode amode')
  let amode_reify amode' = raise NoWay

  let add addr rop amode =
    if Base.to_bool (Bitops.ne (Bits.of_nativeint rop 5) (Bits.of_int 31 5))
    then 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint addr 26) 26)) (Rtl.app 
      (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [28]) [Rtl.bits (Bits.of_nativeint addr 26) 
              26; Rtl.app (Rtl.opr "zx" [2; 28]) [amode_reflect amode]]))
                              32; Rtl.fetch 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rop 2) 2)) 32]) 32
    else Rtl.par []
let ld rop addr = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rop 2) 2)) (Rtl.fetch (Rtl.cell Rtl.none 
        'm' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint addr 26) 26)) 32) 32
let st addr rop = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 32 (Rtl.bits 
        (Bits.of_nativeint addr 26) 26)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
        Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rop 2) 2)) 32) 32
let nop () = Rtl.par []
end


let encodeinstruction = 
fun xXx  ->
  (match xXx with
    | M.Add (x1, x2, x3) -> Encode.add x1 x2 x3
    | M.Ld (x1, x2) -> Encode.ld x1 x2
    | M.St (x1, x2) -> Encode.st x1 x2
    | M.Nop  -> Encode.nop())

let encode instr =
  try encodeinstruction instr with
    Sledlib.Failure _ -> Rtl.par []

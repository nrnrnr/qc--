module Ms = One01Trees.M

module M : One01Constructors.S with
type t = Rtl.rtl
=
  struct

    type amode = Rtl.exp
    type amode' = Tdpe.dynamic

    type t = Rtl.rtl
    type t' = Tdpe.dynamic

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
        | Ms.Short  -> short()
        | Ms.Hword  -> hword()
        | Ms.Word  -> word()
        | Ms.Dword  -> dword())

          
  let amode_reflect amode' = encodeamode (One01Nbe.reflect_amode amode')
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

    let encodet =
      fun xXx  ->
        (match xXx with
        | Ms.Add (x1, x2, x3) -> add x1 x2 x3
        | Ms.Ld (x1, x2) -> ld x1 x2
        | Ms.St (x1, x2) -> st x1 x2
        | Ms.Nop  -> nop())

  let t_reflect t' = encodet (One01Nbe.reflect_t t')
  let t_reify t = raise NoWay
end


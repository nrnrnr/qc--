module Ms = One02Trees.M

module M : One02Constructors.S with
type t = Rtl.rtl
=
  struct
type nativeint = Tdpe.dynamic
type amode = Rtl.exp
type t = Rtl.rtl
let short () = Rtl.bits (Bits.of_int 0 2) 2
let hword () = Rtl.bits (Bits.of_int 1 2) 2
let word () = Rtl.bits (Bits.of_int 2 2) 2
let dword () = Rtl.bits (Bits.of_int 3 2) 2
let add addr rop amode = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint addr 26) 26)) (Rtl.app 
      (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [28]) [Rtl.bits (Bits.of_nativeint addr 26) 
              26; Rtl.app (Rtl.opr "zx" [2; 28]) [amode]])) 32; Rtl.fetch 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rop 2) 2)) 32]) 32
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



module M : SparcConstructors.S with
  type t = Rtl.rtl
        = struct
          let (&&) x y = Base.lgand x y
  type nativeint = Tdpe.dynamic

type reg_or_imm = Rtl.exp
type address = Rtl.exp
type regaddr = Rtl.exp
type t = Rtl.rtl
let imode simm13 = Rtl.bits (Bitops.sx (Bits.of_nativeint simm13 13) 32) 32
let rmode rs2 = 
  Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rs2 5) 5)) 32
let generala rs1 reg_or_imm = 
  Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
        32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]
let dispa rs1 simm13 = 
  Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
        32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.bits 
      (Bitops.sx (Bits.of_nativeint simm13 13) 32) 32]
let absolutea simm13 = 
  Rtl.bits (Bitops.sx (Bits.of_nativeint simm13 13) 32) 32
let indexa rs1 rs2 = 
  Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
        32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.fetch (Rtl.cell 
        Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs2 5) 5)) 
      32]
let indirecta rs1 = 
  Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32
let ldsb address rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "sx" [8; 32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 8 address) 8]) 32
let ldsh address rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "sx" [16; 32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 16 address) 16]) 32
let ldub address rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "zx" [8; 32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 8 address) 8]) 32
let lduh address rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "zx" [16; 32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 16 address) 16]) 32
let ld address rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) 
    (Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) 32) 32
let ldstub address rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
          (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "zx" [8; 32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 8 address) 8]) 32; 
    Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 8 address) 
      (Rtl.bits (Bits.of_int 255 8) 8) 8]
let swap_ address rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 
          'm' Rtl.Identity 32 address) 32) 32; Rtl.store (Rtl.cell Rtl.none 
        'm' Rtl.Identity 32 address) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) 32) 32]
let ldd address rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) 
    (Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 64 address) 64) 64
let ldf address fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ldf"]
let lddf address fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor lddf"]
let ldc address cd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ldc"]
let lddc address cd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor lddc"]
let stb rd address = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 8 address) 
    (Rtl.app (Rtl.opr "bitExtract" [32; 32; 8]) 
      [Rtl.bits (Bits.of_int 0 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) 32]) 8
let sth rd address = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 16 address) 
    (Rtl.app (Rtl.opr "bitExtract" [32; 32; 16]) 
      [Rtl.bits (Bits.of_int 0 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) 32]) 16
let st rd address = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) 
    (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) 32) 32
let std rd address = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 64 address) 
    (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 64 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) 64) 64
let stf fd address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stf"]
let stdf fd address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stdf"]
let stc cd address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stc"]
let stdc cd address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stdc"]
let indexr rs1 rs2 = 
  Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
        32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.fetch (Rtl.cell 
        Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs2 5) 5)) 
      32]
let indirectr rs1 = 
  Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32
let ldsba regaddr asi rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ldsba"]
let ldsha regaddr asi rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ldsha"]
let lduba regaddr asi rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor lduba"]
let lduha regaddr asi rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor lduha"]
let lda regaddr asi rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor lda"]
let ldstuba regaddr asi rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ldstuba"]
let swapa regaddr asi rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor swapa"]
let ldda regaddr asi rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ldda"]
let stba rd regaddr asi = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stba"]
let stha rd regaddr asi = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stha"]
let sta rd regaddr asi = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor sta"]
let stda rd regaddr asi = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stda"]
let ldfsr address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ldfsr"]
let ldcsr address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ldcsr"]
let stfsr address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stfsr"]
let stcsr address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stcsr"]
let stdfq address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stdfq"]
let stdcq address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stdcq"]
let rdy rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor rdy"]
let rdpsr rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor rdpsr"]
let rdwim rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor rdwim"]
let rdtbr rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor rdtbr"]
let wry rs1 reg_or_imm = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor wry"]
let wrpsr rs1 reg_or_imm = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor wrpsr"]
let wrwim rs1 reg_or_imm = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor wrwim"]
let wrtbr rs1 reg_or_imm = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor wrtbr"]
let rdasr rs1i rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor rdasr"]
let wrasr rs1 reg_or_imm rdi = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor wrasr"]
let stbar () = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stbar"]
let and_ rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "and" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32
let andcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "and" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr "and" [32]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [32]) [Rtl.app (Rtl.opr "and" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "and" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" 
          [32]) [Rtl.app (Rtl.opr "and" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1; 
    Rtl.store (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let andn rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
        (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "and" [32]) [Rtl.fetch 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint 
              rs1 5) 5)) 32; Rtl.app (Rtl.opr "com" [32]) [reg_or_imm]]) 32
let andncc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "and" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app (Rtl.opr "com" [32]) 
          [reg_or_imm]]) 32; Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app 
          (Rtl.opr "and" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app 
            (Rtl.opr "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" [32]) [Rtl.app 
          (Rtl.opr "and" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app 
            (Rtl.opr "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "and" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app 
            (Rtl.opr "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" [32]) [Rtl.app 
          (Rtl.opr "and" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app (Rtl.opr 
              "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1; 
    Rtl.store (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let or_ rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "or" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32
let orcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "or" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr "or" [32]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [32]) [Rtl.app (Rtl.opr "or" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "or" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" 
          [32]) [Rtl.app (Rtl.opr "or" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1; 
    Rtl.store (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let orn rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
        (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "or" [32]) [Rtl.fetch 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint 
              rs1 5) 5)) 32; Rtl.app (Rtl.opr "com" [32]) [reg_or_imm]]) 32
let orncc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "or" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app (Rtl.opr "com" [32]) 
          [reg_or_imm]]) 32; Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app 
          (Rtl.opr "or" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app 
            (Rtl.opr "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" [32]) [Rtl.app 
          (Rtl.opr "or" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app 
            (Rtl.opr "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "or" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app 
            (Rtl.opr "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" [32]) [Rtl.app 
          (Rtl.opr "or" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app (Rtl.opr 
              "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1; 
    Rtl.store (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let xor rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "xor" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32
let xorcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "xor" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr "xor" [32]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [32]) [Rtl.app (Rtl.opr "xor" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "xor" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" 
          [32]) [Rtl.app (Rtl.opr "xor" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1; 
    Rtl.store (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let xnor rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
        (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "xor" [32]) [Rtl.fetch 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint 
              rs1 5) 5)) 32; Rtl.app (Rtl.opr "com" [32]) [reg_or_imm]]) 32
let xnorcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "xor" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app (Rtl.opr "com" [32]) 
          [reg_or_imm]]) 32; Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app 
          (Rtl.opr "xor" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app 
            (Rtl.opr "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" [32]) [Rtl.app 
          (Rtl.opr "xor" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app 
            (Rtl.opr "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "xor" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app 
            (Rtl.opr "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" [32]) [Rtl.app 
          (Rtl.opr "xor" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app (Rtl.opr 
              "com" [32]) [reg_or_imm]]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1; 
    Rtl.store (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let sll rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor sll"]
let srl rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor srl"]
let sra rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor sra"]
let add rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "add" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32
let addcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "add" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr "add" [32]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [32]) [Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" 
          [32]) [Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "eq" 
            [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits 
              (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
          Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 
                31 32) 32; reg_or_imm]]; Rtl.app (Rtl.opr "ne" [1]) [Rtl.app 
            (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 
              32; Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
                (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.app (Rtl.opr 
              "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 32; 
            Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
              reg_or_imm]]]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 
            'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 
              1]) [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; reg_or_imm]]; Rtl.app (Rtl.opr 
            "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits 
              (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
          Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 
                31 32) 32; Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                  Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint 
                      rs1 5) 5)) 32; reg_or_imm]]]]) (Rtl.store (Rtl.slice 1 
          21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1); Rtl.guard 
      (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
          [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
        Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 
              32) 32; reg_or_imm]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 0 1) 1) 1); Rtl.store (Rtl.slice 1 20 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 
            3))) (Rtl.app (Rtl.opr "carry" [32]) [Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 
              5)) 32; reg_or_imm; Rtl.bits (Bits.of_int 0 1) 1]) 1]
let addx rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) 
    (Rtl.app (Rtl.opr "add" [32]) [Rtl.app (Rtl.opr "add" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; Rtl.app 
        (Rtl.opr "zx" [1; 32]) [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 
              'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1]]) 32
let addxcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
          (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "add" [32]) [Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell 
                Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
            1]]) 32; Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr 
            "add" [32]) [Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32; reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) 
            [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 0 3) 3))) 1]]; Rtl.bits 
          (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [32]) [Rtl.app (Rtl.opr "add" [32]) [Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
                (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
          Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell 
                  Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 
                    3))) 1]]; Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store 
        (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1); 
    Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app (Rtl.opr "add" [32]) 
          [Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
            reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch (Rtl.slice 
                1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
                    (Bits.of_int 0 3) 3))) 1]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" [32]) [Rtl.app (Rtl.opr 
            "add" [32]) [Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32; reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) 
            [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 0 3) 3))) 1]]; Rtl.bits (Bits.of_int 
            0 32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 0 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 
              1]) [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; reg_or_imm]]; Rtl.app 
          (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 
                'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
              32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.app (Rtl.opr "add" [32]) 
              [Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32; reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch 
                  (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                      (Rtl.bits (Bits.of_int 0 3) 3))) 1]]]]]) 
      (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app 
          (Rtl.opr "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 
                'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
              32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; reg_or_imm]]; Rtl.app 
          (Rtl.opr "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 
                'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
              32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.app (Rtl.opr "add" [32]) 
              [Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32; reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch 
                  (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                      (Rtl.bits (Bits.of_int 0 3) 3))) 1]]]]]) 
      (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app 
          (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 
            32; Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.app 
          (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 
            32; reg_or_imm]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 
            'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 0 1) 1) 1); Rtl.store (Rtl.slice 1 20 (Rtl.cell 
          Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
      (Rtl.app (Rtl.opr "carry" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
        reg_or_imm; Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1]) 1]
let taddcc rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor taddcc"]
let taddcctv rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor taddcctv"]
let sub rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor sub"]
let subcc rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor subcc"]
let subx rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor subx"]
let subxcc rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor subxcc"]
let tsubcc rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tsubcc"]
let tsubcctv rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tsubcctv"]
let mulscc rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor mulscc"]
let umul rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
          (Bits.of_int 3 3) 3)) (Rtl.app (Rtl.opr "bitExtract" [64; 32; 32]) 
        [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app (Rtl.opr "mulu" [32; 64]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]]) 32; 
    Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "bitExtract" 
          [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app (Rtl.opr 
            "mulu" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]]) 32]
let smul rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
          (Bits.of_int 3 3) 3)) (Rtl.app (Rtl.opr "bitExtract" [64; 32; 32]) 
        [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app (Rtl.opr "mul" [32; 64]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]]) 32; 
    Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "bitExtract" 
          [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app (Rtl.opr 
            "mul" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]]) 32]
let umulcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
          (Bits.of_int 3 3) 3)) (Rtl.app (Rtl.opr "bitExtract" [64; 32; 32]) 
        [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app (Rtl.opr "mulu" [32; 64]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]]) 32; 
    Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "bitExtract" 
          [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app (Rtl.opr 
            "mulu" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]]) 
      32; Rtl.guard (Rtl.app (Rtl.opr "lt" [64]) [Rtl.app (Rtl.opr "mulu" 
            [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 64) 64]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [64]) [Rtl.app (Rtl.opr "mulu" [32; 64]) [Rtl.fetch (Rtl.cell 
              Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                  5) 5)) 32; reg_or_imm]; Rtl.bits (Bits.of_int 0 64) 64]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [64]) [Rtl.app (Rtl.opr "mulu" 
            [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 64) 64]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" 
          [64]) [Rtl.app (Rtl.opr "mulu" [32; 64]) [Rtl.fetch (Rtl.cell 
              Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                  5) 5)) 32; reg_or_imm]; Rtl.bits (Bits.of_int 0 64) 64]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1; 
    Rtl.store (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let smulcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
          (Bits.of_int 3 3) 3)) (Rtl.app (Rtl.opr "bitExtract" [64; 32; 32]) 
        [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app (Rtl.opr "mul" [32; 64]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]]) 32; 
    Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "bitExtract" 
          [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app (Rtl.opr 
            "mul" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [64]) [Rtl.app (Rtl.opr "mul" [32; 64]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 64) 64]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [64]) [Rtl.app (Rtl.opr "mul" [32; 64]) [Rtl.fetch (Rtl.cell 
              Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                  5) 5)) 32; reg_or_imm]; Rtl.bits (Bits.of_int 0 64) 64]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [64]) [Rtl.app (Rtl.opr "mul" 
            [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 64) 64]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" 
          [64]) [Rtl.app (Rtl.opr "mul" [32; 64]) [Rtl.fetch (Rtl.cell 
              Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                  5) 5)) 32; reg_or_imm]; Rtl.bits (Bits.of_int 0 64) 64]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1; 
    Rtl.store (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let udiv rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor udiv"]
let sdiv rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor sdiv"]
let udivcc rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor udivcc"]
let sdivcc rs1 reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor sdivcc"]
let save rs1 reg_or_imm rd = 
  if Base.to_bool (Bitops.ne (Bits.of_nativeint rd 5) (Bits.of_int 31 
            5) && Bitops.ne (Bits.of_nativeint rd 5) (Bits.of_int 30 5) && 
        Bitops.ne (Bits.of_nativeint rd 5) (Bits.of_int 29 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 28 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 27 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 26 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 25 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 24 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 24 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 8 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 
            5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 9 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 27 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              28 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 12 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 13 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 31 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 8 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 16 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 9 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 17 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 10 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 11 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 13 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 14 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.fetch (Rtl.cell 
              Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
            32)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 24 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 1 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 3 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 5 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 6 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 31 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 24 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 8 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 
            5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 9 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 27 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              28 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 12 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 13 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 14 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 8 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 9 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 10 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 11 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 13 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 14 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.fetch (Rtl.cell 
              Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
            32)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 24 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 1 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 3 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 5 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 6 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 30 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 24 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 8 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 
            5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 9 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 27 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              28 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 12 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 13 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 15 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 8 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 9 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 10 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 11 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 13 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 14 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.fetch (Rtl.cell 
              Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
            32)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 24 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 1 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 3 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 5 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 6 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 29 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 24 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 8 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 
            5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 9 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 27 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              28 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 12 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 14 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 15 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 8 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 9 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 10 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 11 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 13 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 14 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.fetch (Rtl.cell 
              Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
            32)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 24 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 1 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 3 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 5 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 6 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 28 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 24 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 8 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 
            5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 9 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 27 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              29 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 13 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 14 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 15 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 8 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 9 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 10 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 11 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 13 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 14 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.fetch (Rtl.cell 
              Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
            32)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 24 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 1 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 3 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 5 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 6 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 27 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 24 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 8 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 
            5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 9 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 28 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 12 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              29 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 13 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 14 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 15 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 8 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 9 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 10 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 11 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 13 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 14 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.fetch (Rtl.cell 
              Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
            32)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 24 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 1 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 3 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 5 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 6 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 26 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 24 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 8 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 
            5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 9 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 28 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 12 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              29 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 13 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 14 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 15 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 8 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 9 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 10 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 11 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 13 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 14 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.fetch (Rtl.cell 
              Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
            32)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 24 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 1 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 3 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 5 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 6 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 25 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 24 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 8 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 
            5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 10 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 28 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 12 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              29 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 13 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 14 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 15 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 8 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 9 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 10 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 11 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 13 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 14 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.fetch (Rtl.cell 
              Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
            32)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 24 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 1 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 3 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 5 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 6 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 24 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 25 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 9 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 
            5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 10 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 28 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 12 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              29 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 13 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 14 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 15 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 8 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 9 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 10 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 11 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 13 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 14 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.fetch (Rtl.cell 
              Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
            32)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 24 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 1 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 3 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 5 32) 32])) (Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
        32; Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 6 32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr 
              "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 
                32) 32])) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else 
    Sledlib.fail ["Cannot create RTL for unnamed constructor"]
let restore rs1 reg_or_imm rd = 
  if Base.to_bool (Bitops.ne (Bits.of_nativeint rd 5) (Bits.of_int 31 
            5) && Bitops.ne (Bits.of_nativeint rd 5) (Bits.of_int 30 5) && 
        Bitops.ne (Bits.of_nativeint rd 5) (Bits.of_int 29 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 28 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 27 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 26 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 25 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 24 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 23 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 22 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 21 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 20 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 19 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 18 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 17 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 16 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 15 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 14 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 13 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 12 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 11 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 10 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 9 5) && Bitops.ne 
          (Bits.of_nativeint rd 5) (Bits.of_int 8 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 31 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 30 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 29 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 28 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 27 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 26 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 25 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 24 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 23 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 22 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 21 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 20 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 19 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 18 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 17 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 16 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              18 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 16 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 17 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
            Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch 
                (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
                      0 1) 1)) 32; Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              18 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 15 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 14 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 14 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 13 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              14 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 12 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              14 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 11 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              14 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 10 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 27 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              14 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 9 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              10 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 27 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              14 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else if Base.to_bool 
        (Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 8 5)) then 
    Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 9 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              10 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 26 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 11 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 27 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 12 5) 5)) (Rtl.fetch 
          (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 
              5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 13 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 32; 
      Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
              14 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 8 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 7 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 18 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 4 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 21 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 1 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 14 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 11 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
        (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
            (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; 
              Rtl.bits (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell 
          Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
        (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
            (Bits.of_int 16 32) 32]) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app 
          (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32] 
  else 
    Sledlib.fail ["Cannot create RTL for unnamed constructor"]
let bn target = 
  Rtl.guard (Rtl.bool false) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bn_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bn,a"]
let be target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.fetch (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1; 
      Rtl.bits (Bits.of_int 0 1) 1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let be_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor be,a"]
let ble target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "or" [1]) 
        [Rtl.fetch (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 3) 3))) 1; Rtl.app (Rtl.opr "xor" [1]) 
          [Rtl.fetch (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 3) 3))) 1; Rtl.fetch 
            (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 3) 3))) 1]]; Rtl.bits (Bits.of_int 0 1) 1]) 
    (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
            5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let ble_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ble,a"]
let bl target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "xor" [1]) 
        [Rtl.fetch (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 3) 3))) 1; Rtl.fetch 
          (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
                (Bits.of_int 0 3) 3))) 1]; Rtl.bits (Bits.of_int 0 1) 1]) 
    (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
            5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bl_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bl,a"]
let bleu target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "or" [1]) 
        [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 3) 3))) 1; Rtl.fetch 
          (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
                (Bits.of_int 0 3) 3))) 1]; Rtl.bits (Bits.of_int 0 1) 1]) 
    (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 
            5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bleu_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bleu,a"]
let bcs target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1; 
      Rtl.bits (Bits.of_int 0 1) 1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bcs_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bcs,a"]
let bneg target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.fetch (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1; 
      Rtl.bits (Bits.of_int 0 1) 1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bneg_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bneg,a"]
let bvs target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.fetch (Rtl.slice 1 21 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1; 
      Rtl.bits (Bits.of_int 0 1) 1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bvs_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bvs,a"]
let ba target = 
  Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
        (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32
let ba_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ba,a"]
let bne target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "com" [1]) 
        [Rtl.fetch (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 3) 3))) 1]; Rtl.bits (Bits.of_int 0 1) 
        1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bne_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bne,a"]
let bg target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "com" [1]) [Rtl.app 
          (Rtl.opr "or" [1]) [Rtl.fetch (Rtl.slice 1 22 (Rtl.cell Rtl.none 
                'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1; 
          Rtl.app (Rtl.opr "xor" [1]) [Rtl.fetch (Rtl.slice 1 23 (Rtl.cell 
                  Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 
                    3))) 1; Rtl.fetch (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1]]]; 
      Rtl.bits (Bits.of_int 0 1) 1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bg_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bg,a"]
let bge target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "com" [1]) 
        [Rtl.app (Rtl.opr "xor" [1]) [Rtl.fetch (Rtl.slice 1 23 (Rtl.cell 
                Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
            1; Rtl.fetch (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 
                32 (Rtl.bits (Bits.of_int 0 3) 3))) 1]]; Rtl.bits 
        (Bits.of_int 0 1) 1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bge_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bge,a"]
let bgu target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "com" [1]) 
        [Rtl.app (Rtl.opr "or" [1]) [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell 
                Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
            1; Rtl.fetch (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 
                32 (Rtl.bits (Bits.of_int 0 3) 3))) 1]]; Rtl.bits 
        (Bits.of_int 0 1) 1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bgu_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bgu,a"]
let bcc target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "com" [1]) 
        [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 3) 3))) 1]; Rtl.bits (Bits.of_int 0 1) 
        1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bcc_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bcc,a"]
let bpos target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "com" [1]) 
        [Rtl.fetch (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 3) 3))) 1]; Rtl.bits (Bits.of_int 0 1) 
        1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bpos_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bpos,a"]
let bvc target = 
  Rtl.guard (Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "com" [1]) 
        [Rtl.fetch (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 3) 3))) 1]; Rtl.bits (Bits.of_int 0 1) 
        1]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let bvc_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bvc,a"]
let fbn target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbn"]
let fbn_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbn,a"]
let fbne target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbne"]
let fbne_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbne,a"]
let fblg target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fblg"]
let fblg_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fblg,a"]
let fbul target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbul"]
let fbul_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbul,a"]
let fbl target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbl"]
let fbl_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbl,a"]
let fbug target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbug"]
let fbug_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbug,a"]
let fbg target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbg"]
let fbg_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbg,a"]
let fbu target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbu"]
let fbu_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbu,a"]
let fba target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fba"]
let fba_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fba,a"]
let fbe target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbe"]
let fbe_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbe,a"]
let fbue target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbue"]
let fbue_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbue,a"]
let fbge target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbge"]
let fbge_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbge,a"]
let fbuge target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbuge"]
let fbuge_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbuge,a"]
let fble target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fble"]
let fble_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fble,a"]
let fbule target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbule"]
let fbule_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbule,a"]
let fbo target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbo"]
let fbo_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbo,a"]
let cbn target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cbn"]
let cbn_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cbn,a"]
let cb123 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb123"]
let cb123_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb123,a"]
let cb12 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb12"]
let cb12_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb12,a"]
let cb13 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb13"]
let cb13_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb13,a"]
let cb1 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb1"]
let cb1_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb1,a"]
let cb23 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb23"]
let cb23_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb23,a"]
let cb2 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb2"]
let cb2_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb2,a"]
let cb3 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb3"]
let cb3_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb3,a"]
let cba target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cba"]
let cba_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cba,a"]
let cb0 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb0"]
let cb0_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb0,a"]
let cb03 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb03"]
let cb03_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb03,a"]
let cb02 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb02"]
let cb02_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb02,a"]
let cb023 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb023"]
let cb023_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb023,a"]
let cb01 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb01"]
let cb01_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb01,a"]
let cb013 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb013"]
let cb013_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb013,a"]
let cb012 target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb012"]
let cb012_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cb012,a"]
let call target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor call"]
let fmovs fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fmovs"]
let fnegs fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fnegs"]
let fabss fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fabss"]
let fsqrts fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fsqrts"]
let fsqrtd fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fsqrtd"]
let fsqrtq fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fsqrtq"]
let fitos fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fitos"]
let fstoi fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fstoi"]
let fitod fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fitod"]
let fstod fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fstod"]
let fitoq fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fitoq"]
let fstoq fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fstoq"]
let fdtoi fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fdtoi"]
let fdtos fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fdtos"]
let fqtos fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fqtos"]
let fqtoi fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fqtoi"]
let fqtod fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fqtod"]
let fdtoq fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fdtoq"]
let fadds fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fadds"]
let fsubs fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fsubs"]
let fmuls fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fmuls"]
let fdivs fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fdivs"]
let faddd fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor faddd"]
let fsubd fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fsubd"]
let fmuld fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fmuld"]
let fdivd fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fdivd"]
let faddq fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor faddq"]
let fsubq fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fsubq"]
let fmulq fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fmulq"]
let fdivq fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fdivq"]
let fsmuld fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fsmuld"]
let fdmulq fs1 fs2 fd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fdmulq"]
let fcmps fs1 fs2 = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fcmps"]
let fcmpes fs1 fs2 = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fcmpes"]
let fcmpd fs1 fs2 = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fcmpd"]
let fcmped fs1 fs2 = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fcmped"]
let fcmpq fs1 fs2 = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fcmpq"]
let fcmpeq fs1 fs2 = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fcmpeq"]
let nop () = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor nop"]
let flush address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor flush"]
let jmpl address rd = 
  Rtl.par [Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      address 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 
          'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 4 3) 3)) 32) 32]
let rett address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor rett"]
let tn address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tn"]
let te address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor te"]
let tle address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tle"]
let tl address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tl"]
let tleu address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tleu"]
let tcs address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tcs"]
let tneg address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tneg"]
let tvs address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tvs"]
let ta address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ta"]
let tne address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tne"]
let tg address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tg"]
let tge address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tge"]
let tgu address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tgu"]
let tcc address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tcc"]
let tpos address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tpos"]
let tvc address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tvc"]
let unimp imm22 = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor unimp"]
let sethi n rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor sethi"]
let decode_sethi n rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor decode_sethi"]
let set val_ rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor set"]
end

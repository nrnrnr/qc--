type reg_or_imm = Rtl.exp
type address = Rtl.exp
type regaddr = Rtl.exp
type t = Rtl.rtl
let imode simm13 = 
  ( Sledlib.fail_unless (Nativeint.shift_right (Nativeint.shift_left simm13 
          19) 19 = simm13) ["field simm13 does not fit in 13 signed bits"]
  ; Rtl.bits (Bitops.sx (Bits.of_nativeint simm13 13) 32) 32
  )
let rmode rs2 = 
  Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rs2 5) 5)) 32
let generala rs1 reg_or_imm = 
  Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
        32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]
let dispa rs1 simm13 = 
  ( Sledlib.fail_unless (Nativeint.shift_right (Nativeint.shift_left simm13 
          19) 19 = simm13) ["field simm13 does not fit in 13 signed bits"]
  ; Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
      Rtl.bits (Bitops.sx (Bits.of_nativeint simm13 13) 32) 32]
  )
let absolutea simm13 = 
  ( Sledlib.fail_unless (Nativeint.shift_right (Nativeint.shift_left simm13 
          19) 19 = simm13) ["field simm13 does not fit in 13 signed bits"]
  ; Rtl.bits (Bitops.sx (Bits.of_nativeint simm13 13) 32) 32
  )
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
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) 32) 32
let lddf address fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 64 address) 64) 64
let ldc address cd = 
  Rtl.store (Rtl.cell Rtl.none 'c' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint cd 5) 5)) 
    (Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) 32) 32
let lddc address cd = 
  Rtl.store (Rtl.cell Rtl.none 'c' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint cd 5) 5)) 
    (Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 64 address) 64) 64
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
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) 
    (Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint fd 5) 5)) 32) 32
let stdf fd address = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 64 address) 
    (Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
        (Rtl.bits (Bits.of_nativeint fd 5) 5)) 64) 64
let stc cd address = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) 
    (Rtl.fetch (Rtl.cell Rtl.none 'c' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint cd 5) 5)) 32) 32
let stdc cd address = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 64 address) 
    (Rtl.fetch (Rtl.cell Rtl.none 'c' Rtl.Identity 64 
        (Rtl.bits (Bits.of_nativeint cd 5) 5)) 64) 64
let indexr rs1 rs2 = 
  Rtl.app (Rtl.opr "add" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
        32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; Rtl.fetch (Rtl.cell 
        Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs2 5) 5)) 
      32]
let indirectr rs1 = 
  Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32
let ldsba regaddr asi rd = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor ldsba"]
  )
let ldsha regaddr asi rd = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor ldsha"]
  )
let lduba regaddr asi rd = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor lduba"]
  )
let lduha regaddr asi rd = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor lduha"]
  )
let lda regaddr asi rd = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor lda"]
  )
let ldstuba regaddr asi rd = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor ldstuba"]
  )
let swapa regaddr asi rd = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor swapa"]
  )
let ldda regaddr asi rd = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor ldda"]
  )
let stba rd regaddr asi = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor stba"]
  )
let stha rd regaddr asi = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor stha"]
  )
let sta rd regaddr asi = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor sta"]
  )
let stda rd regaddr asi = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          asi 24) 24 = asi) ["field asi does not fit in 8 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor stda"]
  )
let ldfsr address = 
  Rtl.store 
    (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
    (Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) 32) 32
let ldcsr address = 
  Rtl.store 
    (Rtl.cell Rtl.none 'C' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
    (Rtl.fetch (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) 32) 32
let stfsr address = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) (Rtl.fetch 
      (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
      32) 32
let stcsr address = 
  Rtl.store (Rtl.cell Rtl.none 'm' Rtl.Identity 32 address) (Rtl.fetch 
      (Rtl.cell Rtl.none 'C' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
      32) 32
let stdfq address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stdfq"]
let stdcq address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor stdcq"]
let rdy rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 
        'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 3 3) 3)) 32) 32
let rdpsr rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 
        'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3)) 32) 32
let rdwim rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 
        'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 1 3) 3)) 32) 32
let rdtbr rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 
        'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 2 3) 3)) 32) 32
let wry rs1 reg_or_imm = 
  Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
      (Rtl.bits (Bits.of_int 3 3) 3)) (Rtl.app (Rtl.opr "xor" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32
let wrpsr rs1 reg_or_imm = 
  Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
      (Rtl.bits (Bits.of_int 0 3) 3)) (Rtl.app (Rtl.opr "xor" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32
let wrwim rs1 reg_or_imm = 
  Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
      (Rtl.bits (Bits.of_int 1 3) 3)) (Rtl.app (Rtl.opr "xor" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32
let wrtbr rs1 reg_or_imm = 
  Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
      (Rtl.bits (Bits.of_int 2 3) 3)) (Rtl.app (Rtl.opr "xor" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32
let rdasr rs1i rd = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          rs1i 27) 27 = rs1i) ["field rs1i does not fit in 5 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor rdasr"]
  )
let wrasr rs1 reg_or_imm rdi = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical (Nativeint.shift_left 
          rdi 27) 27 = rdi) ["field rdi does not fit in 5 unsigned bits"]
  ; Sledlib.fail 
      ["emitting bad exp: No RTL defined for default attribute of constructor wrasr"]
  )
let stbar () = 
  Rtl.store (Rtl.cell Rtl.none 'b' Rtl.Identity 1 
      (Rtl.bits (Bits.of_int 0 1) 1)) (Rtl.bits (Bits.of_int 1 1) 1) 1
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
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "shl" [32; 5]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app (Rtl.opr "bitExtract" 
          [32; 32; 5]) [Rtl.bits (Bits.of_int 0 32) 32; reg_or_imm]]) 32
let srl rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
        (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "shrl" [32; 5]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app (Rtl.opr "bitExtract" 
          [32; 32; 5]) [Rtl.bits (Bits.of_int 0 32) 32; reg_or_imm]]) 32
let sra rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
        (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "shra" [32; 5]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint rs1 5) 5)) 32; Rtl.app (Rtl.opr "bitExtract" 
          [32; 32; 5]) [Rtl.bits (Bits.of_int 0 32) 32; reg_or_imm]]) 32
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
let taddcctv rs1 reg_or_imm rd = 
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
let sub rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "sub" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32
let subcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "sub" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr "sub" [32]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [32]) [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" 
          [32]) [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" 
            [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits 
              (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
          Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 
                31 32) 32; reg_or_imm]]; Rtl.app (Rtl.opr "ne" [1]) [Rtl.app 
            (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 
              32; Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
                (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.app (Rtl.opr 
              "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 32; 
            Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
              reg_or_imm]]]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 
            'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 
              1]) [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; reg_or_imm]]; Rtl.app (Rtl.opr 
            "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits 
              (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
          Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 
                31 32) 32; Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                  Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint 
                      rs1 5) 5)) 32; reg_or_imm]]]]) (Rtl.store (Rtl.slice 1 
          21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1); Rtl.guard 
      (Rtl.app (Rtl.opr "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
          [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
        Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 
              32) 32; reg_or_imm]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 0 1) 1) 1); Rtl.store (Rtl.slice 1 20 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 
            3))) (Rtl.app (Rtl.opr "borrow" [32]) [Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 
              5)) 32; reg_or_imm; Rtl.bits (Bits.of_int 0 1) 1]) 1]
let subx rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) 
    (Rtl.app (Rtl.opr "sub" [32]) [Rtl.app (Rtl.opr "sub" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; Rtl.app 
        (Rtl.opr "zx" [1; 32]) [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 
              'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1]]) 32
let subxcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
          (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "sub" [32]) [Rtl.app 
          (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell 
                Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
            1]]) 32; Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr 
            "sub" [32]) [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32; reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) 
            [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 0 3) 3))) 1]]; Rtl.bits 
          (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [32]) [Rtl.app (Rtl.opr "sub" [32]) [Rtl.app (Rtl.opr "sub" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
                (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
          Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell 
                  Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 
                    3))) 1]]; Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store 
        (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1); 
    Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app (Rtl.opr "sub" [32]) 
          [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
            reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch (Rtl.slice 
                1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
                    (Bits.of_int 0 3) 3))) 1]]; Rtl.bits (Bits.of_int 0 32) 
          32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 
            32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 
          1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" [32]) [Rtl.app (Rtl.opr 
            "sub" [32]) [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32; reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) 
            [Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 0 3) 3))) 1]]; Rtl.bits (Bits.of_int 
            0 32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 0 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 
              1]) [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; reg_or_imm]]; Rtl.app 
          (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 
                'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
              32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.app (Rtl.opr "sub" [32]) 
              [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32; reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch 
                  (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                      (Rtl.bits (Bits.of_int 0 3) 3))) 1]]]]]) 
      (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app 
          (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 
                'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
              32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; reg_or_imm]]; Rtl.app 
          (Rtl.opr "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 
                'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
              32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; Rtl.app (Rtl.opr "sub" [32]) 
              [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32; reg_or_imm]; Rtl.app (Rtl.opr "zx" [1; 32]) [Rtl.fetch 
                  (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                      (Rtl.bits (Bits.of_int 0 3) 3))) 1]]]]]) 
      (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [1]) [Rtl.app 
          (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 
            32; Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.app 
          (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 
            32; reg_or_imm]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 
            'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 0 1) 1) 1); Rtl.store (Rtl.slice 1 20 (Rtl.cell 
          Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
      (Rtl.app (Rtl.opr "borrow" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
        reg_or_imm; Rtl.fetch (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 1]) 1]
let tsubcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "sub" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr "sub" [32]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [32]) [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" 
          [32]) [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" 
            [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits 
              (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
          Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 
                31 32) 32; reg_or_imm]]; Rtl.app (Rtl.opr "ne" [1]) [Rtl.app 
            (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 
              32; Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
                (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.app (Rtl.opr 
              "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 32; 
            Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
              reg_or_imm]]]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 
            'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 
              1]) [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; reg_or_imm]]; Rtl.app (Rtl.opr 
            "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits 
              (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
          Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 
                31 32) 32; Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                  Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint 
                      rs1 5) 5)) 32; reg_or_imm]]]]) (Rtl.store (Rtl.slice 1 
          21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1); Rtl.guard 
      (Rtl.app (Rtl.opr "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
          [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
        Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 
              32) 32; reg_or_imm]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 0 1) 1) 1); Rtl.store (Rtl.slice 1 20 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 
            3))) (Rtl.app (Rtl.opr "borrow" [32]) [Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 
              5)) 32; reg_or_imm; Rtl.bits (Bits.of_int 0 1) 1]) 1]
let tsubcctv rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "sub" [32]) 
        [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
            (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr "sub" [32]) 
          [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
              (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 23 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ge" 
          [32]) [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app 
          (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 
              32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; reg_or_imm]; 
        Rtl.bits (Bits.of_int 0 32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "ne" 
          [32]) [Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 
              'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
          reg_or_imm]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" 
            [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits 
              (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
          Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 
                31 32) 32; reg_or_imm]]; Rtl.app (Rtl.opr "ne" [1]) [Rtl.app 
            (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 
              32; Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
                (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.app (Rtl.opr 
              "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 32) 32; 
            Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                  Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32; 
              reg_or_imm]]]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell Rtl.none 
            'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 1 1) 1) 1); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "ne" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 
              1]) [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell 
                Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 
                    5) 5)) 32]; Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
            [Rtl.bits (Bits.of_int 31 32) 32; reg_or_imm]]; Rtl.app (Rtl.opr 
            "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits 
              (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
          Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 
                31 32) 32; Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                  Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint 
                      rs1 5) 5)) 32; reg_or_imm]]]]) (Rtl.store (Rtl.slice 1 
          21 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1); Rtl.guard 
      (Rtl.app (Rtl.opr "eq" [1]) [Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) 
          [Rtl.bits (Bits.of_int 31 32) 32; Rtl.fetch (Rtl.cell Rtl.none 'r' 
              Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 32]; 
        Rtl.app (Rtl.opr "bitExtract" [32; 32; 1]) [Rtl.bits (Bits.of_int 31 
              32) 32; reg_or_imm]]) (Rtl.store (Rtl.slice 1 21 (Rtl.cell 
            Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
        (Rtl.bits (Bits.of_int 0 1) 1) 1); Rtl.store (Rtl.slice 1 20 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 
            3))) (Rtl.app (Rtl.opr "borrow" [32]) [Rtl.fetch (Rtl.cell 
            Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 
              5)) 32; reg_or_imm; Rtl.bits (Bits.of_int 0 1) 1]) 1]
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
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "bitExtract" 
        [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app 
        (Rtl.opr "divu" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" [32; 64; 32]) 
          [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app (Rtl.opr "zx" [32; 64]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.fetch (Rtl.cell 
              Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 3 3) 3)) 
            32]; Rtl.app (Rtl.opr "zx" [32; 32]) [reg_or_imm]]]) 32
let sdiv rs1 reg_or_imm rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "bitExtract" 
        [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app 
        (Rtl.opr "quot" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" [32; 64; 32]) 
          [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app (Rtl.opr "zx" [32; 64]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.fetch (Rtl.cell 
              Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 3 3) 3)) 
            32]; Rtl.app (Rtl.opr "zx" [32; 32]) [reg_or_imm]]]) 32
let udivcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "bitExtract" 
          [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app (Rtl.opr 
            "divu" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" [32; 64; 32]) 
            [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app (Rtl.opr "zx" [32; 64]) 
              [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
                    (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.fetch (Rtl.cell 
                Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 3 3) 3)) 
              32]; Rtl.app (Rtl.opr "zx" [32; 32]) [reg_or_imm]]]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr "bitExtract" 
            [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app (Rtl.opr 
              "divu" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" [32; 64; 32]) 
              [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app 
                (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 3 3) 3)) 32]; Rtl.app (Rtl.opr "zx" 
                [32; 32]) [reg_or_imm]]]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "ge" [32]) [Rtl.app (Rtl.opr 
            "bitExtract" [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; 
          Rtl.app (Rtl.opr "divu" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" 
                [32; 64; 32]) [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app 
                (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 3 3) 3)) 32]; Rtl.app (Rtl.opr "zx" 
                [32; 32]) [reg_or_imm]]]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app (Rtl.opr 
            "bitExtract" [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; 
          Rtl.app (Rtl.opr "divu" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" 
                [32; 64; 32]) [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app 
                (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 3 3) 3)) 32]; Rtl.app (Rtl.opr "zx" 
                [32; 32]) [reg_or_imm]]]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "ne" [32]) [Rtl.app (Rtl.opr 
            "bitExtract" [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; 
          Rtl.app (Rtl.opr "divu" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" 
                [32; 64; 32]) [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app 
                (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 3 3) 3)) 32]; Rtl.app 
              (Rtl.opr "zx" [32; 32]) [reg_or_imm]]]; Rtl.bits (Bits.of_int 0 
            32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 0 1) 1) 1); Rtl.store (Rtl.slice 1 21 (Rtl.cell 
          Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
      (Rtl.app (Rtl.opr "sparc_udiv_overflow" []) [Rtl.app 
          (Rtl.opr "bitInsert" [32; 64; 32]) [Rtl.bits (Bits.of_int 32 32) 
            32; Rtl.app (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 
                'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
              32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 3 3) 3)) 32]; reg_or_imm]) 1; Rtl.store 
      (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let sdivcc rs1 reg_or_imm rd = 
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.app (Rtl.opr "bitExtract" 
          [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app (Rtl.opr 
            "quot" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" [32; 64; 32]) 
            [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app (Rtl.opr "zx" [32; 64]) 
              [Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
                    (Bits.of_nativeint rs1 5) 5)) 32]; Rtl.fetch (Rtl.cell 
                Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 3 3) 3)) 
              32]; Rtl.app (Rtl.opr "zx" [32; 32]) [reg_or_imm]]]) 32; 
    Rtl.guard (Rtl.app (Rtl.opr "lt" [32]) [Rtl.app (Rtl.opr "bitExtract" 
            [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; Rtl.app (Rtl.opr 
              "quot" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" [32; 64; 32]) 
              [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app 
                (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 3 3) 3)) 32]; Rtl.app (Rtl.opr "zx" 
                [32; 32]) [reg_or_imm]]]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "ge" [32]) [Rtl.app (Rtl.opr 
            "bitExtract" [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; 
          Rtl.app (Rtl.opr "quot" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" 
                [32; 64; 32]) [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app 
                (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 3 3) 3)) 32]; Rtl.app (Rtl.opr "zx" 
                [32; 32]) [reg_or_imm]]]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 23 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "eq" [32]) [Rtl.app (Rtl.opr 
            "bitExtract" [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; 
          Rtl.app (Rtl.opr "quot" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" 
                [32; 64; 32]) [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app 
                (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 3 3) 3)) 32]; Rtl.app (Rtl.opr "zx" 
                [32; 32]) [reg_or_imm]]]; Rtl.bits (Bits.of_int 0 32) 32]) 
      (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 1 1) 1) 
        1); Rtl.guard (Rtl.app (Rtl.opr "ne" [32]) [Rtl.app (Rtl.opr 
            "bitExtract" [64; 32; 32]) [Rtl.bits (Bits.of_int 0 32) 32; 
          Rtl.app (Rtl.opr "quot" [64; 32]) [Rtl.app (Rtl.opr "bitInsert" 
                [32; 64; 32]) [Rtl.bits (Bits.of_int 32 32) 32; Rtl.app 
                (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'r' 
                    Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
                  32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 3 3) 3)) 32]; Rtl.app 
              (Rtl.opr "zx" [32; 32]) [reg_or_imm]]]; Rtl.bits (Bits.of_int 0 
            32) 32]) (Rtl.store (Rtl.slice 1 22 (Rtl.cell Rtl.none 'i' 
            Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits 
          (Bits.of_int 0 1) 1) 1); Rtl.store (Rtl.slice 1 21 (Rtl.cell 
          Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
      (Rtl.app (Rtl.opr "sparc_sdiv_overflow" []) [Rtl.app 
          (Rtl.opr "bitInsert" [32; 64; 32]) [Rtl.bits (Bits.of_int 32 32) 
            32; Rtl.app (Rtl.opr "zx" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 
                'r' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint rs1 5) 5)) 
              32]; Rtl.fetch (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 3 3) 3)) 32]; reg_or_imm]) 1; Rtl.store 
      (Rtl.slice 1 20 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.bits (Bits.of_int 0 1) 1) 1]
let save rs1 reg_or_imm rd = 
  if Bitops.ne (Bits.of_nativeint rd 5) (Bits.of_int 31 5) && Bitops.ne 
        (Bits.of_nativeint rd 5) (Bits.of_int 30 5) && Bitops.ne 
        (Bits.of_nativeint rd 5) (Bits.of_int 29 5) && Bitops.ne 
        (Bits.of_nativeint rd 5) (Bits.of_int 28 5) && Bitops.ne 
        (Bits.of_nativeint rd 5) (Bits.of_int 27 5) && Bitops.ne 
        (Bits.of_nativeint rd 5) (Bits.of_int 26 5) && Bitops.ne 
        (Bits.of_nativeint rd 5) (Bits.of_int 25 5) && Bitops.ne 
        (Bits.of_nativeint rd 5) (Bits.of_int 24 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 31 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 30 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 29 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 28 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 27 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 26 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 25 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 24 5) then 
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
  if Bitops.ne (Bits.of_nativeint rd 5) (Bits.of_int 31 5) && Bitops.ne 
        (Bits.of_nativeint rd 5) (Bits.of_int 30 5) && Bitops.ne 
        (Bits.of_nativeint rd 5) (Bits.of_int 29 5) && Bitops.ne 
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
        (Bits.of_nativeint rd 5) (Bits.of_int 8 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 31 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 30 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 29 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 28 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 27 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 26 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 25 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 24 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 23 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 22 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 21 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 20 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 19 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 18 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 17 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 16 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 15 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 14 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 13 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 12 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 11 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 10 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 9 5) then 
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
  else if Bitops.eq (Bits.of_nativeint rd 5) (Bits.of_int 8 5) then 
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
let fbn target = Rtl.par []
let fbn_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbn,a"]
let fbne target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) 
        [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_lt 
          2]) (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 
        32); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.float_lt 2]; Rtl.app (Rtl.opr "eq" [2]) 
          [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_gt 
            2]]) (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 
        32); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" 
            [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits 
            Bitops.float_lt 2]; Rtl.app (Rtl.opr "conjoin" []) [Rtl.app 
            (Rtl.opr "ne" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 
                  'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; 
            Rtl.bits Bitops.float_gt 2]; Rtl.app (Rtl.opr "eq" [2]) 
            [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits 
              Bitops.unordered 2]]]) (Rtl.store (Rtl.cell Rtl.none 'i' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
let fbne_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbne,a"]
let fblg target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 
            (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                  1) 1))) 2; Rtl.bits Bitops.float_lt 2]) (Rtl.store 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 
            3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32); Rtl.guard 
      (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch 
            (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_lt 2]; 
        Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.float_gt 2]]) (Rtl.store (Rtl.cell Rtl.none 
          'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
let fblg_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fblg,a"]
let fbul target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 
            (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                  1) 1))) 2; Rtl.bits Bitops.float_lt 2]) (Rtl.store 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 
            3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32); Rtl.guard 
      (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch 
            (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_lt 2]; 
        Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.unordered 2]]) (Rtl.store (Rtl.cell Rtl.none 
          'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
let fbul_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbul,a"]
let fbl target = 
  Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
            Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; 
      Rtl.bits Bitops.float_lt 2]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let fbl_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbl,a"]
let fbug target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 
            (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                  1) 1))) 2; Rtl.bits Bitops.float_gt 2]) (Rtl.store 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 
            3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32); Rtl.guard 
      (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch 
            (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_gt 2]; 
        Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.unordered 2]]) (Rtl.store (Rtl.cell Rtl.none 
          'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
let fbug_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbug,a"]
let fbg target = 
  Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
            Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; 
      Rtl.bits Bitops.float_gt 2]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let fbg_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbg,a"]
let fbu target = 
  Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
            Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; 
      Rtl.bits Bitops.unordered 2]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let fbu_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbu,a"]
let fba target = 
  Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
        (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32
let fba_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fba,a"]
let fbe target = 
  Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
            Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; 
      Rtl.bits Bitops.float_eq 2]) (Rtl.store 
      (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
      (Rtl.bits (Bits.of_nativeint target 32) 32) 32)
let fbe_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbe,a"]
let fbue target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 
            (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                  1) 1))) 2; Rtl.bits Bitops.float_eq 2]) (Rtl.store 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 
            3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32); Rtl.guard 
      (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch 
            (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_eq 2]; 
        Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.unordered 2]]) (Rtl.store (Rtl.cell Rtl.none 
          'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
let fbue_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbue,a"]
let fbge target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 
            (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                  1) 1))) 2; Rtl.bits Bitops.float_eq 2]) (Rtl.store 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 
            3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32); Rtl.guard 
      (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch 
            (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_eq 2]; 
        Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.float_gt 2]]) (Rtl.store (Rtl.cell Rtl.none 
          'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
let fbge_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbge,a"]
let fbuge target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) 
        [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_eq 
          2]) (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 
        32); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.float_eq 2]; Rtl.app (Rtl.opr "eq" [2]) 
          [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_gt 
            2]]) (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 
        32); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" 
            [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits 
            Bitops.float_eq 2]; Rtl.app (Rtl.opr "conjoin" []) [Rtl.app 
            (Rtl.opr "ne" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 
                  'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; 
            Rtl.bits Bitops.float_gt 2]; Rtl.app (Rtl.opr "eq" [2]) 
            [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits 
              Bitops.unordered 2]]]) (Rtl.store (Rtl.cell Rtl.none 'i' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
let fbuge_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbuge,a"]
let fble target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 
            (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 
                  1) 1))) 2; Rtl.bits Bitops.float_eq 2]) (Rtl.store 
        (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 
            3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 32); Rtl.guard 
      (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch 
            (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_eq 2]; 
        Rtl.app (Rtl.opr "eq" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.float_lt 2]]) (Rtl.store (Rtl.cell Rtl.none 
          'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
let fble_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fble,a"]
let fbule target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) 
        [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_eq 
          2]) (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 
        32); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.float_eq 2]; Rtl.app (Rtl.opr "eq" [2]) 
          [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_lt 
            2]]) (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 
        32); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" 
            [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits 
            Bitops.float_eq 2]; Rtl.app (Rtl.opr "conjoin" []) [Rtl.app 
            (Rtl.opr "ne" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 
                  'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; 
            Rtl.bits Bitops.float_lt 2]; Rtl.app (Rtl.opr "eq" [2]) 
            [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits 
              Bitops.unordered 2]]]) (Rtl.store (Rtl.cell Rtl.none 'i' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
let fbule_a target = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor fbule,a"]
let fbo target = 
  Rtl.par [Rtl.guard (Rtl.app (Rtl.opr "eq" [2]) 
        [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
              (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_eq 
          2]) (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 
        32); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) 
        [Rtl.app (Rtl.opr "ne" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell 
                Rtl.none 'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 
            2; Rtl.bits Bitops.float_eq 2]; Rtl.app (Rtl.opr "eq" [2]) 
          [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
                (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits Bitops.float_lt 
            2]]) (Rtl.store (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 5 3) 3)) (Rtl.bits (Bits.of_nativeint target 32) 32) 
        32); Rtl.guard (Rtl.app (Rtl.opr "conjoin" []) [Rtl.app (Rtl.opr "ne" 
            [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits 
            Bitops.float_eq 2]; Rtl.app (Rtl.opr "conjoin" []) [Rtl.app 
            (Rtl.opr "ne" [2]) [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 
                  'F' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1))) 2; 
            Rtl.bits Bitops.float_lt 2]; Rtl.app (Rtl.opr "eq" [2]) 
            [Rtl.fetch (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
                  (Rtl.bits (Bits.of_int 0 1) 1))) 2; Rtl.bits 
              Bitops.float_gt 2]]]) (Rtl.store (Rtl.cell Rtl.none 'i' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) 
        (Rtl.bits (Bits.of_nativeint target 32) 32) 32)]
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
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 
        'f' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32) 32
let fnegs fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "fneg" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32]) 32
let fabss fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "fabs" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32]) 32
let fsqrts fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "fsqrt" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 32
let fsqrtd fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "fsqrt" [64]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 64
let fsqrtq fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 128 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "fsqrt" [128]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 128
let fitos fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "i2f" [32; 32]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 32
let fstoi fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "f2i" [32; 32]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.bits Bitops.round_zero 2]) 32
let fitod fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "i2f" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 64
let fstod fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "f2f" [32; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 64
let fitoq fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 128 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "i2f" [32; 128]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 128
let fstoq fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 128 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "f2f" [32; 128]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 128
let fdtoi fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "f2i" [64; 32]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64; 
      Rtl.bits Bitops.round_zero 2]) 32
let fdtos fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "f2f" [64; 32]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 32
let fqtos fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "f2f" [128; 32]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 32
let fqtoi fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "f2i" [128; 32]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128; 
      Rtl.bits Bitops.round_zero 2]) 32
let fqtod fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "f2f" [128; 64]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 64
let fdtoq fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 128 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) 
    (Rtl.app (Rtl.opr "f2f" [64; 128]) [Rtl.fetch (Rtl.cell Rtl.none 'f' 
          Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 128
let fadds fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fadd" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 32; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 32
let fsubs fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fsub" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 32; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 32
let fmuls fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fmul" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 32; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 32
let fdivs fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fdiv" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 32; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 32
let faddd fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fadd" [64]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 64 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 64; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 64
let fsubd fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fsub" [64]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 64 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 64; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 64
let fmuld fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fmul" [64]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 64 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 64; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 64
let fdivd fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fdiv" [64]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 64 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 64; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 64
let faddq fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 128 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fadd" [128]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 128 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 128; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 128
let fsubq fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 128 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fsub" [128]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 128 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 128; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 128
let fmulq fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 128 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fmul" [128]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 128 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 128; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 128
let fdivq fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 128 
      (Rtl.bits (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fdiv" [128]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 128 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 128; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128; 
      Rtl.fetch (Rtl.slice 2 30 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1))) 2]) 128
let fsmuld fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 64 (Rtl.bits 
        (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fmulx" [32; 64]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 32; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32]) 64
let fdmulq fs1 fs2 fd = 
  Rtl.store (Rtl.cell Rtl.none 'f' Rtl.Identity 128 (Rtl.bits 
        (Bits.of_nativeint fd 5) 5)) (Rtl.app (Rtl.opr "fmulx" [64; 128]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 64 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 64; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64]) 128
let fcmps fs1 fs2 = 
  Rtl.store (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 0 1) 1))) (Rtl.app (Rtl.opr "fcmp" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 32; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32]) 2
let fcmpes fs1 fs2 = 
  Rtl.store (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 0 1) 1))) (Rtl.app (Rtl.opr "fcmp" [32]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 32; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 32 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 32]) 2
let fcmpd fs1 fs2 = 
  Rtl.store (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 0 1) 1))) (Rtl.app (Rtl.opr "fcmp" [64]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 64 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 64; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64]) 2
let fcmped fs1 fs2 = 
  Rtl.store (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 0 1) 1))) (Rtl.app (Rtl.opr "fcmp" [64]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 64 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 64; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 64 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 64]) 2
let fcmpq fs1 fs2 = 
  Rtl.store (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 0 1) 1))) (Rtl.app (Rtl.opr "fcmp" [128]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 128 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 128; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128]) 2
let fcmpeq fs1 fs2 = 
  Rtl.store (Rtl.slice 2 10 (Rtl.cell Rtl.none 'F' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 0 1) 1))) (Rtl.app (Rtl.opr "fcmp" [128]) 
      [Rtl.fetch (Rtl.cell Rtl.none 'f' Rtl.Identity 128 (Rtl.bits 
            (Bits.of_nativeint fs1 5) 5)) 128; Rtl.fetch (Rtl.cell Rtl.none 
          'f' Rtl.Identity 128 (Rtl.bits (Bits.of_nativeint fs2 5) 5)) 128]) 2
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
  Rtl.par [Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 8 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 24 5) 5)) 32) 32; Rtl.store 
      (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 9 5) 5)) 
      (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 25 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
        Rtl.Identity 32 (Rtl.bits (Bits.of_int 10 5) 5)) (Rtl.fetch (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) 32) 
      32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 11 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 27 5) 5)) 32) 32; Rtl.store 
      (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 12 5) 5)) 
      (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits 
            (Bits.of_int 28 5) 5)) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' 
        Rtl.Identity 32 (Rtl.bits (Bits.of_int 13 5) 5)) (Rtl.fetch (Rtl.cell 
          Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) 32) 
      32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 14 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'r' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 30 5) 5)) 32) 32; Rtl.store 
      (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 15 5) 5)) 
      (Rtl.fetch (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
          (Rtl.bits (Bits.of_int 31 5) 5)) 32) 32; Rtl.store 
      (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 16 5) 5)) 
      (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 8 32) 32])) 32) 32; Rtl.store (Rtl.cell Rtl.none 
        'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 17 5) 5)) (Rtl.fetch 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 7 32) 32])) 
        32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 18 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 6 32) 32])) 32) 32; Rtl.store 
      (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 19 5) 5)) 
      (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 5 32) 32])) 32) 32; Rtl.store (Rtl.cell Rtl.none 
        'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 20 5) 5)) (Rtl.fetch 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 4 32) 32])) 
        32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 21 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 3 32) 32])) 32) 32; Rtl.store 
      (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 22 5) 5)) 
      (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 2 32) 32])) 32) 32; Rtl.store (Rtl.cell Rtl.none 
        'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 23 5) 5)) (Rtl.fetch 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 1 32) 32])) 
        32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 24 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 16 32) 32])) 32) 32; Rtl.store 
      (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 25 5) 5)) 
      (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 15 32) 32])) 32) 32; Rtl.store (Rtl.cell Rtl.none 
        'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 26 5) 5)) (Rtl.fetch 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 14 32) 
              32])) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 27 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 13 32) 32])) 32) 32; Rtl.store 
      (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 28 5) 5)) 
      (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 12 32) 32])) 32) 32; Rtl.store (Rtl.cell Rtl.none 
        'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 29 5) 5)) (Rtl.fetch 
        (Rtl.cell Rtl.none 'w' Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) 
            [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 (Rtl.bits 
                  (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 11 32) 
              32])) 32) 32; Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
        (Rtl.bits (Bits.of_int 30 5) 5)) (Rtl.fetch (Rtl.cell Rtl.none 'w' 
          Rtl.Identity 32 (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell 
                Rtl.none 'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 
              32; Rtl.bits (Bits.of_int 10 32) 32])) 32) 32; Rtl.store 
      (Rtl.cell Rtl.none 'r' Rtl.Identity 32 (Rtl.bits (Bits.of_int 31 5) 5)) 
      (Rtl.fetch (Rtl.cell Rtl.none 'w' Rtl.Identity 32 
          (Rtl.app (Rtl.opr "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' 
                Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits 
              (Bits.of_int 9 32) 32])) 32) 32; Rtl.store (Rtl.cell Rtl.none 
        'W' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 1) 1)) (Rtl.app (Rtl.opr 
          "sub" [32]) [Rtl.fetch (Rtl.cell Rtl.none 'W' Rtl.Identity 32 
            (Rtl.bits (Bits.of_int 0 1) 1)) 32; Rtl.bits (Bits.of_int 16 32) 
          32]) 32; Rtl.store (Rtl.slice 1 7 (Rtl.cell Rtl.none 'i' 
          Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) (Rtl.fetch 
        (Rtl.slice 1 6 (Rtl.cell Rtl.none 'i' Rtl.Identity 32 (Rtl.bits 
              (Bits.of_int 0 3) 3))) 1) 1; Rtl.store (Rtl.slice 1 5 (Rtl.cell 
          Rtl.none 'i' Rtl.Identity 32 (Rtl.bits (Bits.of_int 0 3) 3))) 
      (Rtl.bits (Bits.of_int 1 1) 1) 1; Rtl.store (Rtl.cell Rtl.none 'i' 
        Rtl.Identity 32 (Rtl.bits (Bits.of_int 5 3) 3)) address 32]
let tn address = Rtl.par []
let te address = Rtl.par []
let tle address = Rtl.par []
let tl address = Rtl.par []
let tleu address = Rtl.par []
let tcs address = Rtl.par []
let tneg address = Rtl.par []
let tvs address = Rtl.par []
let ta address = Rtl.par []
let tne address = Rtl.par []
let tg address = Rtl.par []
let tge address = Rtl.par []
let tgu address = Rtl.par []
let tcc address = Rtl.par []
let tpos address = Rtl.par []
let tvc address = Rtl.par []
let unimp imm22 = 
  ( Sledlib.fail_unless (Nativeint.shift_right_logical 
        (Nativeint.shift_left imm22 10) 10 = imm22) 
      ["field imm22 does not fit in 22 unsigned bits"]
  ; Rtl.par []
  )
let sethi n rd = 
  Rtl.store (Rtl.cell Rtl.none 'r' Rtl.Identity 32 
      (Rtl.bits (Bits.of_nativeint rd 5) 5)) (Rtl.bits 
      (Bitops.bitInsert 0 (Bits.of_nativeint n 32) (Bits.of_int 0 10)) 32) 32
let decode_sethi n rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor decode_sethi"]
let jmp address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor jmp"]
let calla address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor calla"]
let tst rs2 = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor tst"]
let ret () = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor ret"]
let retl () = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor retl"]
let restore_ () = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor restore_"]
let save_ () = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor save_"]
let not rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor not"]
let not2 rs1 rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor not2"]
let neg rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor neg"]
let neg2 rs2 rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor neg2"]
let inc val_ rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor inc"]
let inccc val_ rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor inccc"]
let dec val_ rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor dec"]
let deccc val_ rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor deccc"]
let cmp rs1 reg_or_imm = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor cmp"]
let btst reg_or_imm rs1 = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor btst"]
let bset reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bset"]
let bclr reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor bclr"]
let btog reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor btog"]
let mov reg_or_imm rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor mov"]
let movr rs2 rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor movr"]
let clr rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor clr"]
let clrw address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor clrw"]
let clrb address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor clrb"]
let clrh address = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor clrh"]
let set val_ rd = 
  Sledlib.fail 
    ["emitting bad exp: No RTL defined for default attribute of constructor set"]

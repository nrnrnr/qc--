module Make (Instruction : Sparc.S with type 'a Reloc.relocatable = 'a) = 
  struct 
    
    module RP = Rtl.Private
    
    module B = Bits
    
    module BO = Bitops
    
    let defaultOfInstruction rtl = 
      (match rtl with
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("sx", [8; 32]), 
              [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, RP.App (("add", [32]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg1)]), 
                _), 8)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg1 13) -> 
           Instruction.ldsb (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.imode (Bits.to_nativeint arg1))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("sx", [8; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              8)]), 32))] -> 
           Instruction.ldsb (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.rmode (Bits.to_nativeint rs2))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("sx", [8; 32]), 
              [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, RP.App (("add", [32]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg2)]), 
                _), 8)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2 13) -> 
           Instruction.ldsb (Instruction.dispa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint arg2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("sx", [8; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, 
                RP.Const (RP.Bits arg3), _), 8)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg3 13) -> 
           Instruction.ldsb (Instruction.absolutea (Bits.to_nativeint arg3)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("sx", [8; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              8)]), 32))] -> 
           Instruction.ldsb (Instruction.indexa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.App (("sx", [8; 32]), 
            [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32), _), 8)]), 
          32))] -> 
           Instruction.ldsb (Instruction.indirecta (Bits.to_nativeint rs1)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("sx", [16; 32]), 
              [RP.Fetch (RP.Cell ('m', Rtl.Identity, 16, RP.App (("add", [32]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg4)]), 
                _), 16)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg4 13) -> 
           Instruction.ldsh (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.imode (Bits.to_nativeint arg4))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("sx", [16; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 16, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              16)]), 32))] -> 
           Instruction.ldsh (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.rmode (Bits.to_nativeint rs2))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("sx", [16; 32]), 
              [RP.Fetch (RP.Cell ('m', Rtl.Identity, 16, RP.App (("add", [32]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg5)]), 
                _), 16)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg5 13) -> 
           Instruction.ldsh (Instruction.dispa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint arg5)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("sx", [16; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 
                16, RP.Const (RP.Bits arg6), _), 16)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg6 13) -> 
           Instruction.ldsh (Instruction.absolutea (Bits.to_nativeint arg6)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("sx", [16; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 16, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              16)]), 32))] -> 
           Instruction.ldsh (Instruction.indexa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.App (("sx", [16; 32]), 
            [RP.Fetch (RP.Cell ('m', Rtl.Identity, 16, RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32), _), 16)]), 
          32))] -> 
           Instruction.ldsh (Instruction.indirecta (Bits.to_nativeint rs1)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("zx", [8; 32]), 
              [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, RP.App (("add", [32]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg7)]), 
                _), 8)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg7 13) -> 
           Instruction.ldub (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.imode (Bits.to_nativeint arg7))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("zx", [8; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              8)]), 32))] -> 
           Instruction.ldub (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.rmode (Bits.to_nativeint rs2))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("zx", [8; 32]), 
              [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, RP.App (("add", [32]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg8)]), 
                _), 8)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg8 13) -> 
           Instruction.ldub (Instruction.dispa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint arg8)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("zx", [8; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, 
                RP.Const (RP.Bits arg9), _), 8)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg9 13) -> 
           Instruction.ldub (Instruction.absolutea (Bits.to_nativeint arg9)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("zx", [8; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              8)]), 32))] -> 
           Instruction.ldub (Instruction.indexa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.App (("zx", [8; 32]), 
            [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32), _), 8)]), 
          32))] -> 
           Instruction.ldub (Instruction.indirecta (Bits.to_nativeint rs1)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("zx", [16; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 
                16, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                    RP.Const (RP.Bits arg10)]), _), 16)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg10 13) -> 
           Instruction.lduh (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.imode (Bits.to_nativeint arg10))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("zx", [16; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 16, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              16)]), 32))] -> 
           Instruction.lduh (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.rmode (Bits.to_nativeint rs2))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("zx", [16; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 
                16, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                    RP.Const (RP.Bits arg11)]), _), 16)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg11 13) -> 
           Instruction.lduh (Instruction.dispa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint arg11)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("zx", [16; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 
                16, RP.Const (RP.Bits arg12), _), 16)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg12 13) -> 
           Instruction.lduh (Instruction.absolutea (Bits.to_nativeint arg12)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("zx", [16; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 16, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              16)]), 32))] -> 
           Instruction.lduh (Instruction.indexa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.App (("zx", [16; 32]), 
            [RP.Fetch (RP.Cell ('m', Rtl.Identity, 16, RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32), _), 16)]), 
          32))] -> 
           Instruction.lduh (Instruction.indirecta (Bits.to_nativeint rs1)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', 
              Rtl.Identity, 32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg13)]), _), 32), 32))] 
      when Base.to_bool (Bitops.fits_signed arg13 13) -> 
           Instruction.ld (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.imode (Bits.to_nativeint arg13))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', Rtl.Identity, 
            32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 32), 
          32))] -> 
           Instruction.ld (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.rmode (Bits.to_nativeint rs2))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', 
              Rtl.Identity, 32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg14)]), _), 32), 32))] 
      when Base.to_bool (Bitops.fits_signed arg14 13) -> 
           Instruction.ld (Instruction.dispa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint arg14)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg15), _), 32), 32))] 
      when Base.to_bool (Bitops.fits_signed arg15 13) -> 
           Instruction.ld (Instruction.absolutea (Bits.to_nativeint arg15)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', Rtl.Identity, 
            32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 32), 
          32))] -> 
           Instruction.ld (Instruction.indexa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', Rtl.Identity, 
            32, RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32), _), 32), 32))] -> 
           Instruction.ld (Instruction.indirecta (Bits.to_nativeint rs1)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("zx", [8; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, 
                RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs1'), _), 32); 
                    RP.Const (RP.Bits arg18)]), _), 8)]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 8, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg16)]), 
              _), RP.Const (RP.Bits arg17), 8))] 
      when Base.to_bool (rs1 = rs1' && (Bitops.fits_signed arg18 13 && 
          Bitops.eq arg17 (Bits.of_int 255 8))) -> 
           Instruction.ldstub (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.imode (Bits.to_nativeint arg18))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("zx", [8; 32]), 
              [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, RP.App (("add", [32]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1'), _), 32); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)]), _), 
                8)]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 8, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              RP.Const (RP.Bits arg19), 8))] 
      when Base.to_bool 
          (rs1 = rs1' && rs2 = rs2' && Bitops.eq arg19 (Bits.of_int 255 8)) -> 
           Instruction.ldstub (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.rmode (Bits.to_nativeint rs2))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("zx", [8; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, 
                RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs1'), _), 32); 
                    RP.Const (RP.Bits arg22)]), _), 8)]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 8, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg20)]), 
              _), RP.Const (RP.Bits arg21), 8))] 
      when Base.to_bool (rs1 = rs1' && (Bitops.fits_signed arg22 13 && 
          Bitops.eq arg21 (Bits.of_int 255 8))) -> 
           Instruction.ldstub (Instruction.dispa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint arg22)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("zx", [8; 32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, 
                RP.Const (RP.Bits arg25), _), 8)]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 8, 
              RP.Const (RP.Bits arg23), _), RP.Const (RP.Bits arg24), 8))] 
      when Base.to_bool (Bitops.fits_signed arg25 13 && Bitops.eq arg24 
            (Bits.of_int 255 8)) -> 
           Instruction.ldstub (Instruction.absolutea (Bits.to_nativeint arg25)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("zx", [8; 32]), 
              [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, RP.App (("add", [32]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1'), _), 32); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)]), _), 
                8)]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 8, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              RP.Const (RP.Bits arg26), 8))] 
      when Base.to_bool 
          (rs1 = rs1' && rs2 = rs2' && Bitops.eq arg26 (Bits.of_int 255 8)) -> 
           Instruction.ldstub (Instruction.indexa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("zx", [8; 32]), 
              [RP.Fetch (RP.Cell ('m', Rtl.Identity, 8, RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs1'), _), 32), _), 8)]), 
            32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('m', Rtl.Identity, 8, RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32), _), 
              RP.Const (RP.Bits arg27), 8))] 
      when Base.to_bool (rs1 = rs1' && Bitops.eq arg27 (Bits.of_int 255 8)) -> 
           Instruction.ldstub (Instruction.indirecta (Bits.to_nativeint rs1)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd'), _), 
            RP.Fetch (RP.Cell ('m', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1'), _), 32); RP.Const (RP.Bits arg29)]), 
              _), 32), 32)); (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', 
              Rtl.Identity, 32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg28)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32), 32))] 
      when Base.to_bool 
          (rd = rd' && rs1 = rs1' && Bitops.fits_signed arg29 13) -> 
           Instruction.swap_ (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.imode (Bits.to_nativeint arg29))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd'), _), RP.Fetch (RP.Cell ('m', 
              Rtl.Identity, 32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs1'), _), 32); 
                  RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs2'), _), 32)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
                _), 32), 32))] 
      when Base.to_bool (rd = rd' && rs1 = rs1' && rs2 = rs2') -> 
           Instruction.swap_ (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.rmode (Bits.to_nativeint rs2))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd'), _), 
            RP.Fetch (RP.Cell ('m', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1'), _), 32); RP.Const (RP.Bits arg31)]), 
              _), 32), 32)); (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', 
              Rtl.Identity, 32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg30)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32), 32))] 
      when Base.to_bool 
          (rd = rd' && rs1 = rs1' && Bitops.fits_signed arg31 13) -> 
           Instruction.swap_ (Instruction.dispa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint arg31)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd'), _), RP.Fetch (RP.Cell ('m', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg33), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg32), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32), 32))] 
      when Base.to_bool (rd = rd' && Bitops.fits_signed arg33 13) -> 
           Instruction.swap_ (Instruction.absolutea (Bits.to_nativeint arg33)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd'), _), RP.Fetch (RP.Cell ('m', 
              Rtl.Identity, 32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs1'), _), 32); 
                  RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs2'), _), 32)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
                _), 32), 32))] 
      when Base.to_bool (rd = rd' && rs1 = rs1' && rs2 = rs2') -> 
           Instruction.swap_ (Instruction.indexa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd'), _), 
            RP.Fetch (RP.Cell ('m', Rtl.Identity, 32, RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs1'), _), 32), _), 32), 
            32)); (RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', 
              Rtl.Identity, 32, RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32), 32))] 
      when Base.to_bool (rd = rd' && rs1 = rs1') -> 
           Instruction.swap_ (Instruction.indirecta (Bits.to_nativeint rs1)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            64, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', 
              Rtl.Identity, 64, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg34)]), _), 64), 64))] 
      when Base.to_bool (Bitops.fits_signed arg34 13) -> 
           Instruction.ldd (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.imode (Bits.to_nativeint arg34))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          64, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', Rtl.Identity, 
            64, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 64), 
          64))] -> 
           Instruction.ldd (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.rmode (Bits.to_nativeint rs2))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            64, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', 
              Rtl.Identity, 64, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg35)]), _), 64), 64))] 
      when Base.to_bool (Bitops.fits_signed arg35 13) -> 
           Instruction.ldd (Instruction.dispa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint arg35)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            64, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', 
              Rtl.Identity, 64, RP.Const (RP.Bits arg36), _), 64), 64))] 
      when Base.to_bool (Bitops.fits_signed arg36 13) -> 
           Instruction.ldd (Instruction.absolutea (Bits.to_nativeint arg36)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          64, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', Rtl.Identity, 
            64, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 64), 
          64))] -> 
           Instruction.ldd (Instruction.indexa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          64, RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('m', Rtl.Identity, 
            64, RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32), _), 64), 64))] -> 
           Instruction.ldd (Instruction.indirecta (Bits.to_nativeint rs1)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            8, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); 
                RP.Const (RP.Bits arg37)]), _), RP.App (("bitExtract", 
              [32; 32; 8]), [RP.Const (RP.Bits arg38); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32)]), 8))] 
      when Base.to_bool (Bitops.fits_signed arg37 13 && Bitops.eq arg38 
            (Bits.of_int 0 32)) -> 
           Instruction.stb (Bits.to_nativeint rd) 
             (Instruction.generala (Bits.to_nativeint rs1) 
               (Instruction.imode (Bits.to_nativeint arg37))) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            8, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
            RP.App (("bitExtract", [32; 32; 8]), 
              [RP.Const (RP.Bits arg39); RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rd), _), 32)]), 8))] 
      when Base.to_bool (Bitops.eq arg39 (Bits.of_int 0 32)) -> 
           Instruction.stb (Bits.to_nativeint rd) 
             (Instruction.generala (Bits.to_nativeint rs1) 
               (Instruction.rmode (Bits.to_nativeint rs2))) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            8, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); 
                RP.Const (RP.Bits arg40)]), _), RP.App (("bitExtract", 
              [32; 32; 8]), [RP.Const (RP.Bits arg41); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32)]), 8))] 
      when Base.to_bool (Bitops.fits_signed arg40 13 && Bitops.eq arg41 
            (Bits.of_int 0 32)) -> 
           Instruction.stb (Bits.to_nativeint rd) (Instruction.dispa 
                 (Bits.to_nativeint rs1) (Bits.to_nativeint arg40)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            8, RP.Const (RP.Bits arg42), _), RP.App (("bitExtract", 
              [32; 32; 8]), [RP.Const (RP.Bits arg43); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32)]), 8))] 
      when Base.to_bool (Bitops.fits_signed arg42 13 && Bitops.eq arg43 
            (Bits.of_int 0 32)) -> 
           Instruction.stb (Bits.to_nativeint rd) 
             (Instruction.absolutea (Bits.to_nativeint arg42)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            8, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
            RP.App (("bitExtract", [32; 32; 8]), 
              [RP.Const (RP.Bits arg44); RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rd), _), 32)]), 8))] 
      when Base.to_bool (Bitops.eq arg44 (Bits.of_int 0 32)) -> 
           Instruction.stb (Bits.to_nativeint rd) (Instruction.indexa 
                 (Bits.to_nativeint rs1) (Bits.to_nativeint rs2)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            8, RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32), _), RP.App (("bitExtract", 
              [32; 32; 8]), [RP.Const (RP.Bits arg45); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32)]), 8))] 
      when Base.to_bool (Bitops.eq arg45 (Bits.of_int 0 32)) -> 
           Instruction.stb (Bits.to_nativeint rd) 
             (Instruction.indirecta (Bits.to_nativeint rs1)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            16, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); 
                RP.Const (RP.Bits arg46)]), _), RP.App (("bitExtract", 
              [32; 32; 16]), [RP.Const (RP.Bits arg47); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32)]), 16))] 
      when Base.to_bool (Bitops.fits_signed arg46 13 && Bitops.eq arg47 
            (Bits.of_int 0 32)) -> 
           Instruction.sth (Bits.to_nativeint rd) 
             (Instruction.generala (Bits.to_nativeint rs1) 
               (Instruction.imode (Bits.to_nativeint arg46))) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            16, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
            RP.App (("bitExtract", [32; 32; 16]), 
              [RP.Const (RP.Bits arg48); RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rd), _), 32)]), 16))] 
      when Base.to_bool (Bitops.eq arg48 (Bits.of_int 0 32)) -> 
           Instruction.sth (Bits.to_nativeint rd) 
             (Instruction.generala (Bits.to_nativeint rs1) 
               (Instruction.rmode (Bits.to_nativeint rs2))) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            16, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); 
                RP.Const (RP.Bits arg49)]), _), RP.App (("bitExtract", 
              [32; 32; 16]), [RP.Const (RP.Bits arg50); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32)]), 16))] 
      when Base.to_bool (Bitops.fits_signed arg49 13 && Bitops.eq arg50 
            (Bits.of_int 0 32)) -> 
           Instruction.sth (Bits.to_nativeint rd) (Instruction.dispa 
                 (Bits.to_nativeint rs1) (Bits.to_nativeint arg49)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            16, RP.Const (RP.Bits arg51), _), RP.App (("bitExtract", 
              [32; 32; 16]), [RP.Const (RP.Bits arg52); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32)]), 16))] 
      when Base.to_bool (Bitops.fits_signed arg51 13 && Bitops.eq arg52 
            (Bits.of_int 0 32)) -> 
           Instruction.sth (Bits.to_nativeint rd) 
             (Instruction.absolutea (Bits.to_nativeint arg51)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            16, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
            RP.App (("bitExtract", [32; 32; 16]), 
              [RP.Const (RP.Bits arg53); RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rd), _), 32)]), 16))] 
      when Base.to_bool (Bitops.eq arg53 (Bits.of_int 0 32)) -> 
           Instruction.sth (Bits.to_nativeint rd) (Instruction.indexa 
                 (Bits.to_nativeint rs1) (Bits.to_nativeint rs2)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            16, RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32), _), RP.App (("bitExtract", 
              [32; 32; 16]), [RP.Const (RP.Bits arg54); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32)]), 16))] 
      when Base.to_bool (Bitops.eq arg54 (Bits.of_int 0 32)) -> 
           Instruction.sth (Bits.to_nativeint rd) 
             (Instruction.indirecta (Bits.to_nativeint rs1)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); 
                RP.Const (RP.Bits arg55)]), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32), 32))] 
      when Base.to_bool (Bitops.fits_signed arg55 13) -> 
           Instruction.st (Bits.to_nativeint rd) 
             (Instruction.generala (Bits.to_nativeint rs1) 
               (Instruction.imode (Bits.to_nativeint arg55))) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
          32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
          RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            32), 32))] -> 
           Instruction.st (Bits.to_nativeint rd) 
             (Instruction.generala (Bits.to_nativeint rs1) 
               (Instruction.rmode (Bits.to_nativeint rs2))) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); 
                RP.Const (RP.Bits arg56)]), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32), 32))] 
      when Base.to_bool (Bitops.fits_signed arg56 13) -> 
           Instruction.st (Bits.to_nativeint rd) (Instruction.dispa 
                 (Bits.to_nativeint rs1) (Bits.to_nativeint arg56)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            32, RP.Const (RP.Bits arg57), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 32), 32))] 
      when Base.to_bool (Bitops.fits_signed arg57 13) -> 
           Instruction.st (Bits.to_nativeint rd) 
             (Instruction.absolutea (Bits.to_nativeint arg57)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
          32, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
          RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            32), 32))] -> 
           Instruction.st (Bits.to_nativeint rd) (Instruction.indexa 
                 (Bits.to_nativeint rs1) (Bits.to_nativeint rs2)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
          32, RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rs1), 
            _), 32), _), RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
            RP.Const (RP.Bits rd), _), 32), 32))] -> 
           Instruction.st (Bits.to_nativeint rd) 
             (Instruction.indirecta (Bits.to_nativeint rs1)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            64, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); 
                RP.Const (RP.Bits arg58)]), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 64, RP.Const (RP.Bits rd), _), 64), 64))] 
      when Base.to_bool (Bitops.fits_signed arg58 13) -> 
           Instruction.std (Bits.to_nativeint rd) 
             (Instruction.generala (Bits.to_nativeint rs1) 
               (Instruction.imode (Bits.to_nativeint arg58))) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
          64, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
          RP.Fetch (RP.Cell ('r', Rtl.Identity, 64, RP.Const (RP.Bits rd), _), 
            64), 64))] -> 
           Instruction.std (Bits.to_nativeint rd) 
             (Instruction.generala (Bits.to_nativeint rs1) 
               (Instruction.rmode (Bits.to_nativeint rs2))) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            64, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); 
                RP.Const (RP.Bits arg59)]), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 64, RP.Const (RP.Bits rd), _), 64), 64))] 
      when Base.to_bool (Bitops.fits_signed arg59 13) -> 
           Instruction.std (Bits.to_nativeint rd) (Instruction.dispa 
                 (Bits.to_nativeint rs1) (Bits.to_nativeint arg59)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
            64, RP.Const (RP.Bits arg60), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 64, RP.Const (RP.Bits rd), _), 64), 64))] 
      when Base.to_bool (Bitops.fits_signed arg60 13) -> 
           Instruction.std (Bits.to_nativeint rd) 
             (Instruction.absolutea (Bits.to_nativeint arg60)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
          64, RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), _), 
          RP.Fetch (RP.Cell ('r', Rtl.Identity, 64, RP.Const (RP.Bits rd), _), 
            64), 64))] -> 
           Instruction.std (Bits.to_nativeint rd) (Instruction.indexa 
                 (Bits.to_nativeint rs1) (Bits.to_nativeint rs2)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
          64, RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rs1), 
            _), 32), _), RP.Fetch (RP.Cell ('r', Rtl.Identity, 64, 
            RP.Const (RP.Bits rd), _), 64), 64))] -> 
           Instruction.std (Bits.to_nativeint rd) 
             (Instruction.indirecta (Bits.to_nativeint rs1)) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg61)]), 
            32))] 
      when Base.to_bool (Bitops.fits_signed arg61 13) -> 
           Instruction.and_ (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg61)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] -> 
           Instruction.and_ (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); 
                RP.Const (RP.Bits arg82)]), 32)); (RP.App (("lt", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); RP.Const (RP.Bits arg78)]); 
              RP.Const (RP.Bits arg79)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg80), _)), 
              RP.Const (RP.Bits arg81), 1)); (RP.App (("ge", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Const (RP.Bits arg74)]); 
              RP.Const (RP.Bits arg75)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg76), _)), 
              RP.Const (RP.Bits arg77), 1)); (RP.App (("eq", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); RP.Const (RP.Bits arg70)]); 
              RP.Const (RP.Bits arg71)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg72), _)), 
              RP.Const (RP.Bits arg73), 1)); (RP.App (("ne", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg66)]); 
              RP.Const (RP.Bits arg67)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg68), _)), 
              RP.Const (RP.Bits arg69), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg64), _)), RP.Const (RP.Bits arg65), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg62), _)), 
              RP.Const (RP.Bits arg63), 1))] 
      when Base.to_bool (rs1 = rs1'''' && rs1 = rs1''' && rs1 = rs1'' && 
          rs1 = rs1' && (Bitops.fits_signed arg82 13 && Bitops.eq arg79 
            (Bits.of_int 0 32) && Bitops.eq arg80 (Bits.of_int 0 3) && 
          Bitops.eq arg81 (Bits.of_int 1 1) && Bitops.eq arg75 
            (Bits.of_int 0 32) && Bitops.eq arg76 (Bits.of_int 0 3) && 
          Bitops.eq arg77 (Bits.of_int 0 1) && Bitops.eq arg71 
            (Bits.of_int 0 32) && Bitops.eq arg72 (Bits.of_int 0 3) && 
          Bitops.eq arg73 (Bits.of_int 1 1) && Bitops.eq arg67 
            (Bits.of_int 0 32) && Bitops.eq arg68 (Bits.of_int 0 3) && 
          Bitops.eq arg69 (Bits.of_int 0 1) && Bitops.eq arg64 
            (Bits.of_int 0 3) && Bitops.eq arg65 (Bits.of_int 0 1) && Bitops.eq 
            arg62 (Bits.of_int 0 3) && Bitops.eq arg63 (Bits.of_int 0 1))) -> 
           Instruction.andcc (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg82)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2''''), _), 32)]), 
            32)); (RP.App (("lt", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'''), _), 32)]); 
              RP.Const (RP.Bits arg96)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg97), _)), 
              RP.Const (RP.Bits arg98), 1)); (RP.App (("ge", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2''), _), 32)]); 
              RP.Const (RP.Bits arg93)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg94), _)), 
              RP.Const (RP.Bits arg95), 1)); (RP.App (("eq", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)]); 
              RP.Const (RP.Bits arg90)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg91), _)), 
              RP.Const (RP.Bits arg92), 1)); (RP.App (("ne", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]); 
              RP.Const (RP.Bits arg87)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg88), _)), 
              RP.Const (RP.Bits arg89), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg85), _)), RP.Const (RP.Bits arg86), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg83), _)), 
              RP.Const (RP.Bits arg84), 1))] 
      when Base.to_bool (rs1 = rs1'''' && rs2 = rs2'''' && rs1 = rs1''' && 
          rs2 = rs2''' && rs1 = rs1'' && rs2 = rs2'' && rs1 = rs1' && 
          rs2 = rs2' && (Bitops.eq arg96 (Bits.of_int 0 32) && Bitops.eq arg97 
            (Bits.of_int 0 3) && Bitops.eq arg98 (Bits.of_int 1 1) && Bitops.eq 
            arg93 (Bits.of_int 0 32) && Bitops.eq arg94 (Bits.of_int 0 3) && 
          Bitops.eq arg95 (Bits.of_int 0 1) && Bitops.eq arg90 
            (Bits.of_int 0 32) && Bitops.eq arg91 (Bits.of_int 0 3) && 
          Bitops.eq arg92 (Bits.of_int 1 1) && Bitops.eq arg87 
            (Bits.of_int 0 32) && Bitops.eq arg88 (Bits.of_int 0 3) && 
          Bitops.eq arg89 (Bits.of_int 0 1) && Bitops.eq arg85 
            (Bits.of_int 0 3) && Bitops.eq arg86 (Bits.of_int 0 1) && Bitops.eq 
            arg83 (Bits.of_int 0 3) && Bitops.eq arg84 (Bits.of_int 0 1))) -> 
           Instruction.andcc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg99)]), 
            32))] 
      when false -> 
           Sledlib.fail ["could not solve equations: arg99 = com(sx(simm13))"] 
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.App (("and", [32]), 
            [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rs1), 
              _), 32); RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)])]), 
          32))] -> 
           Instruction.andn (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); 
                RP.Const (RP.Bits arg120)]), 32)); (RP.App (("lt", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); 
                RP.Const (RP.Bits arg116)]); RP.Const (RP.Bits arg117)]), 
            RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg118), _)), 
              RP.Const (RP.Bits arg119), 1)); (RP.App (("ge", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Const (RP.Bits arg112)]); 
              RP.Const (RP.Bits arg113)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg114), _)), 
              RP.Const (RP.Bits arg115), 1)); (RP.App (("eq", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); RP.Const (RP.Bits arg108)]); 
              RP.Const (RP.Bits arg109)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg110), _)), 
              RP.Const (RP.Bits arg111), 1)); (RP.App (("ne", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg104)]); 
              RP.Const (RP.Bits arg105)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg106), _)), 
              RP.Const (RP.Bits arg107), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg102), _)), RP.Const (RP.Bits arg103), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg100), _)), 
              RP.Const (RP.Bits arg101), 1))] 
      when rs1 = rs1'''' && rs1 = rs1''' && rs1 = rs1'' && rs1 = rs1' && 
        false -> 
           Sledlib.fail 
             ["could not solve equations: arg104 = com(sx(simm13)), arg108 = com(sx(simm13)), arg112 = com(sx(simm13)), arg116 = com(sx(simm13)), arg120 = com(sx(simm13))"] 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2''''), _), 32)])]), 32)); 
          (RP.App (("lt", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2'''), _), 32)])]); 
              RP.Const (RP.Bits arg134)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg135), _)), 
              RP.Const (RP.Bits arg136), 1)); (RP.App (("ge", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2''), _), 32)])]); 
              RP.Const (RP.Bits arg131)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg132), _)), 
              RP.Const (RP.Bits arg133), 1)); (RP.App (("eq", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2'), _), 32)])]); 
              RP.Const (RP.Bits arg128)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg129), _)), 
              RP.Const (RP.Bits arg130), 1)); (RP.App (("ne", [32]), 
            [RP.App (("and", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2), _), 32)])]); 
              RP.Const (RP.Bits arg125)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg126), _)), 
              RP.Const (RP.Bits arg127), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg123), _)), RP.Const (RP.Bits arg124), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg121), _)), 
              RP.Const (RP.Bits arg122), 1))] 
      when Base.to_bool (rs1 = rs1'''' && rs2 = rs2'''' && rs1 = rs1''' && 
          rs2 = rs2''' && rs1 = rs1'' && rs2 = rs2'' && rs1 = rs1' && 
          rs2 = rs2' && (Bitops.eq arg134 (Bits.of_int 0 32) && Bitops.eq 
            arg135 (Bits.of_int 0 3) && Bitops.eq arg136 (Bits.of_int 1 1) && 
          Bitops.eq arg131 (Bits.of_int 0 32) && Bitops.eq arg132 (Bits.of_int 
              0 3) && Bitops.eq arg133 (Bits.of_int 0 1) && Bitops.eq arg128 
            (Bits.of_int 0 32) && Bitops.eq arg129 (Bits.of_int 0 3) && 
          Bitops.eq arg130 (Bits.of_int 1 1) && Bitops.eq arg125 (Bits.of_int 0 
              32) && Bitops.eq arg126 (Bits.of_int 0 3) && Bitops.eq arg127 
            (Bits.of_int 0 1) && Bitops.eq arg123 (Bits.of_int 0 3) && 
          Bitops.eq arg124 (Bits.of_int 0 1) && Bitops.eq arg121 
            (Bits.of_int 0 3) && Bitops.eq arg122 (Bits.of_int 0 1))) -> 
           Instruction.andncc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg137)]), 
            32))] 
      when Base.to_bool (Bitops.fits_signed arg137 13) -> 
           Instruction.or_ (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg137)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] -> 
           Instruction.or_ (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); 
                RP.Const (RP.Bits arg158)]), 32)); (RP.App (("lt", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); 
                RP.Const (RP.Bits arg154)]); RP.Const (RP.Bits arg155)]), 
            RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg156), _)), 
              RP.Const (RP.Bits arg157), 1)); (RP.App (("ge", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Const (RP.Bits arg150)]); 
              RP.Const (RP.Bits arg151)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg152), _)), 
              RP.Const (RP.Bits arg153), 1)); (RP.App (("eq", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); RP.Const (RP.Bits arg146)]); 
              RP.Const (RP.Bits arg147)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg148), _)), 
              RP.Const (RP.Bits arg149), 1)); (RP.App (("ne", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg142)]); 
              RP.Const (RP.Bits arg143)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg144), _)), 
              RP.Const (RP.Bits arg145), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg140), _)), RP.Const (RP.Bits arg141), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg138), _)), 
              RP.Const (RP.Bits arg139), 1))] 
      when Base.to_bool (rs1 = rs1'''' && rs1 = rs1''' && rs1 = rs1'' && 
          rs1 = rs1' && (Bitops.fits_signed arg158 13 && Bitops.eq arg155 
            (Bits.of_int 0 32) && Bitops.eq arg156 (Bits.of_int 0 3) && 
          Bitops.eq arg157 (Bits.of_int 1 1) && Bitops.eq arg151 (Bits.of_int 0 
              32) && Bitops.eq arg152 (Bits.of_int 0 3) && Bitops.eq arg153 
            (Bits.of_int 0 1) && Bitops.eq arg147 (Bits.of_int 0 32) && 
          Bitops.eq arg148 (Bits.of_int 0 3) && Bitops.eq arg149 
            (Bits.of_int 1 1) && Bitops.eq arg143 (Bits.of_int 0 32) && 
          Bitops.eq arg144 (Bits.of_int 0 3) && Bitops.eq arg145 
            (Bits.of_int 0 1) && Bitops.eq arg140 (Bits.of_int 0 3) && 
          Bitops.eq arg141 (Bits.of_int 0 1) && Bitops.eq arg138 
            (Bits.of_int 0 3) && Bitops.eq arg139 (Bits.of_int 0 1))) -> 
           Instruction.orcc (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg158)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2''''), _), 32)]), 
            32)); (RP.App (("lt", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'''), _), 32)]); 
              RP.Const (RP.Bits arg172)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg173), _)), 
              RP.Const (RP.Bits arg174), 1)); (RP.App (("ge", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2''), _), 32)]); 
              RP.Const (RP.Bits arg169)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg170), _)), 
              RP.Const (RP.Bits arg171), 1)); (RP.App (("eq", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)]); 
              RP.Const (RP.Bits arg166)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg167), _)), 
              RP.Const (RP.Bits arg168), 1)); (RP.App (("ne", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]); 
              RP.Const (RP.Bits arg163)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg164), _)), 
              RP.Const (RP.Bits arg165), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg161), _)), RP.Const (RP.Bits arg162), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg159), _)), 
              RP.Const (RP.Bits arg160), 1))] 
      when Base.to_bool (rs1 = rs1'''' && rs2 = rs2'''' && rs1 = rs1''' && 
          rs2 = rs2''' && rs1 = rs1'' && rs2 = rs2'' && rs1 = rs1' && 
          rs2 = rs2' && (Bitops.eq arg172 (Bits.of_int 0 32) && Bitops.eq 
            arg173 (Bits.of_int 0 3) && Bitops.eq arg174 (Bits.of_int 1 1) && 
          Bitops.eq arg169 (Bits.of_int 0 32) && Bitops.eq arg170 (Bits.of_int 
              0 3) && Bitops.eq arg171 (Bits.of_int 0 1) && Bitops.eq arg166 
            (Bits.of_int 0 32) && Bitops.eq arg167 (Bits.of_int 0 3) && 
          Bitops.eq arg168 (Bits.of_int 1 1) && Bitops.eq arg163 (Bits.of_int 0 
              32) && Bitops.eq arg164 (Bits.of_int 0 3) && Bitops.eq arg165 
            (Bits.of_int 0 1) && Bitops.eq arg161 (Bits.of_int 0 3) && 
          Bitops.eq arg162 (Bits.of_int 0 1) && Bitops.eq arg159 
            (Bits.of_int 0 3) && Bitops.eq arg160 (Bits.of_int 0 1))) -> 
           Instruction.orcc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg175)]), 
            32))] 
      when false -> 
           Sledlib.fail ["could not solve equations: arg175 = com(sx(simm13))"] 
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.App (("or", [32]), 
            [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rs1), 
              _), 32); RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)])]), 
          32))] -> 
           Instruction.orn (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); 
                RP.Const (RP.Bits arg196)]), 32)); (RP.App (("lt", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); 
                RP.Const (RP.Bits arg192)]); RP.Const (RP.Bits arg193)]), 
            RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg194), _)), 
              RP.Const (RP.Bits arg195), 1)); (RP.App (("ge", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Const (RP.Bits arg188)]); 
              RP.Const (RP.Bits arg189)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg190), _)), 
              RP.Const (RP.Bits arg191), 1)); (RP.App (("eq", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); RP.Const (RP.Bits arg184)]); 
              RP.Const (RP.Bits arg185)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg186), _)), 
              RP.Const (RP.Bits arg187), 1)); (RP.App (("ne", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg180)]); 
              RP.Const (RP.Bits arg181)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg182), _)), 
              RP.Const (RP.Bits arg183), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg178), _)), RP.Const (RP.Bits arg179), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg176), _)), 
              RP.Const (RP.Bits arg177), 1))] 
      when rs1 = rs1'''' && rs1 = rs1''' && rs1 = rs1'' && rs1 = rs1' && 
        false -> 
           Sledlib.fail 
             ["could not solve equations: arg180 = com(sx(simm13)), arg184 = com(sx(simm13)), arg188 = com(sx(simm13)), arg192 = com(sx(simm13)), arg196 = com(sx(simm13))"] 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2''''), _), 32)])]), 32)); 
          (RP.App (("lt", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2'''), _), 32)])]); 
              RP.Const (RP.Bits arg210)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg211), _)), 
              RP.Const (RP.Bits arg212), 1)); (RP.App (("ge", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2''), _), 32)])]); 
              RP.Const (RP.Bits arg207)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg208), _)), 
              RP.Const (RP.Bits arg209), 1)); (RP.App (("eq", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2'), _), 32)])]); 
              RP.Const (RP.Bits arg204)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg205), _)), 
              RP.Const (RP.Bits arg206), 1)); (RP.App (("ne", [32]), 
            [RP.App (("or", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2), _), 32)])]); 
              RP.Const (RP.Bits arg201)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg202), _)), 
              RP.Const (RP.Bits arg203), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg199), _)), RP.Const (RP.Bits arg200), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg197), _)), 
              RP.Const (RP.Bits arg198), 1))] 
      when Base.to_bool (rs1 = rs1'''' && rs2 = rs2'''' && rs1 = rs1''' && 
          rs2 = rs2''' && rs1 = rs1'' && rs2 = rs2'' && rs1 = rs1' && 
          rs2 = rs2' && (Bitops.eq arg210 (Bits.of_int 0 32) && Bitops.eq 
            arg211 (Bits.of_int 0 3) && Bitops.eq arg212 (Bits.of_int 1 1) && 
          Bitops.eq arg207 (Bits.of_int 0 32) && Bitops.eq arg208 (Bits.of_int 
              0 3) && Bitops.eq arg209 (Bits.of_int 0 1) && Bitops.eq arg204 
            (Bits.of_int 0 32) && Bitops.eq arg205 (Bits.of_int 0 3) && 
          Bitops.eq arg206 (Bits.of_int 1 1) && Bitops.eq arg201 (Bits.of_int 0 
              32) && Bitops.eq arg202 (Bits.of_int 0 3) && Bitops.eq arg203 
            (Bits.of_int 0 1) && Bitops.eq arg199 (Bits.of_int 0 3) && 
          Bitops.eq arg200 (Bits.of_int 0 1) && Bitops.eq arg197 
            (Bits.of_int 0 3) && Bitops.eq arg198 (Bits.of_int 0 1))) -> 
           Instruction.orncc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg213)]), 
            32))] 
      when Base.to_bool (Bitops.fits_signed arg213 13) -> 
           Instruction.xor (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg213)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] -> 
           Instruction.xor (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); 
                RP.Const (RP.Bits arg234)]), 32)); (RP.App (("lt", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); 
                RP.Const (RP.Bits arg230)]); RP.Const (RP.Bits arg231)]), 
            RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg232), _)), 
              RP.Const (RP.Bits arg233), 1)); (RP.App (("ge", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Const (RP.Bits arg226)]); 
              RP.Const (RP.Bits arg227)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg228), _)), 
              RP.Const (RP.Bits arg229), 1)); (RP.App (("eq", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); RP.Const (RP.Bits arg222)]); 
              RP.Const (RP.Bits arg223)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg224), _)), 
              RP.Const (RP.Bits arg225), 1)); (RP.App (("ne", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg218)]); 
              RP.Const (RP.Bits arg219)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg220), _)), 
              RP.Const (RP.Bits arg221), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg216), _)), RP.Const (RP.Bits arg217), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg214), _)), 
              RP.Const (RP.Bits arg215), 1))] 
      when Base.to_bool (rs1 = rs1'''' && rs1 = rs1''' && rs1 = rs1'' && 
          rs1 = rs1' && (Bitops.fits_signed arg234 13 && Bitops.eq arg231 
            (Bits.of_int 0 32) && Bitops.eq arg232 (Bits.of_int 0 3) && 
          Bitops.eq arg233 (Bits.of_int 1 1) && Bitops.eq arg227 (Bits.of_int 0 
              32) && Bitops.eq arg228 (Bits.of_int 0 3) && Bitops.eq arg229 
            (Bits.of_int 0 1) && Bitops.eq arg223 (Bits.of_int 0 32) && 
          Bitops.eq arg224 (Bits.of_int 0 3) && Bitops.eq arg225 
            (Bits.of_int 1 1) && Bitops.eq arg219 (Bits.of_int 0 32) && 
          Bitops.eq arg220 (Bits.of_int 0 3) && Bitops.eq arg221 
            (Bits.of_int 0 1) && Bitops.eq arg216 (Bits.of_int 0 3) && 
          Bitops.eq arg217 (Bits.of_int 0 1) && Bitops.eq arg214 
            (Bits.of_int 0 3) && Bitops.eq arg215 (Bits.of_int 0 1))) -> 
           Instruction.xorcc (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg234)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2''''), _), 32)]), 
            32)); (RP.App (("lt", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'''), _), 32)]); 
              RP.Const (RP.Bits arg248)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg249), _)), 
              RP.Const (RP.Bits arg250), 1)); (RP.App (("ge", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2''), _), 32)]); 
              RP.Const (RP.Bits arg245)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg246), _)), 
              RP.Const (RP.Bits arg247), 1)); (RP.App (("eq", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)]); 
              RP.Const (RP.Bits arg242)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg243), _)), 
              RP.Const (RP.Bits arg244), 1)); (RP.App (("ne", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]); 
              RP.Const (RP.Bits arg239)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg240), _)), 
              RP.Const (RP.Bits arg241), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg237), _)), RP.Const (RP.Bits arg238), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg235), _)), 
              RP.Const (RP.Bits arg236), 1))] 
      when Base.to_bool (rs1 = rs1'''' && rs2 = rs2'''' && rs1 = rs1''' && 
          rs2 = rs2''' && rs1 = rs1'' && rs2 = rs2'' && rs1 = rs1' && 
          rs2 = rs2' && (Bitops.eq arg248 (Bits.of_int 0 32) && Bitops.eq 
            arg249 (Bits.of_int 0 3) && Bitops.eq arg250 (Bits.of_int 1 1) && 
          Bitops.eq arg245 (Bits.of_int 0 32) && Bitops.eq arg246 (Bits.of_int 
              0 3) && Bitops.eq arg247 (Bits.of_int 0 1) && Bitops.eq arg242 
            (Bits.of_int 0 32) && Bitops.eq arg243 (Bits.of_int 0 3) && 
          Bitops.eq arg244 (Bits.of_int 1 1) && Bitops.eq arg239 (Bits.of_int 0 
              32) && Bitops.eq arg240 (Bits.of_int 0 3) && Bitops.eq arg241 
            (Bits.of_int 0 1) && Bitops.eq arg237 (Bits.of_int 0 3) && 
          Bitops.eq arg238 (Bits.of_int 0 1) && Bitops.eq arg235 
            (Bits.of_int 0 3) && Bitops.eq arg236 (Bits.of_int 0 1))) -> 
           Instruction.xorcc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg251)]), 
            32))] 
      when false -> 
           Sledlib.fail ["could not solve equations: arg251 = com(sx(simm13))"] 
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rd), _), RP.App (("xor", [32]), 
            [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rs1), 
              _), 32); RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)])]), 
          32))] -> 
           Instruction.xnor (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); 
                RP.Const (RP.Bits arg272)]), 32)); (RP.App (("lt", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); 
                RP.Const (RP.Bits arg268)]); RP.Const (RP.Bits arg269)]), 
            RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg270), _)), 
              RP.Const (RP.Bits arg271), 1)); (RP.App (("ge", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Const (RP.Bits arg264)]); 
              RP.Const (RP.Bits arg265)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg266), _)), 
              RP.Const (RP.Bits arg267), 1)); (RP.App (("eq", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); RP.Const (RP.Bits arg260)]); 
              RP.Const (RP.Bits arg261)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg262), _)), 
              RP.Const (RP.Bits arg263), 1)); (RP.App (("ne", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg256)]); 
              RP.Const (RP.Bits arg257)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg258), _)), 
              RP.Const (RP.Bits arg259), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg254), _)), RP.Const (RP.Bits arg255), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg252), _)), 
              RP.Const (RP.Bits arg253), 1))] 
      when rs1 = rs1'''' && rs1 = rs1''' && rs1 = rs1'' && rs1 = rs1' && 
        false -> 
           Sledlib.fail 
             ["could not solve equations: arg256 = com(sx(simm13)), arg260 = com(sx(simm13)), arg264 = com(sx(simm13)), arg268 = com(sx(simm13)), arg272 = com(sx(simm13))"] 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2''''), _), 32)])]), 32)); 
          (RP.App (("lt", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2'''), _), 32)])]); 
              RP.Const (RP.Bits arg286)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg287), _)), 
              RP.Const (RP.Bits arg288), 1)); (RP.App (("ge", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2''), _), 32)])]); 
              RP.Const (RP.Bits arg283)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg284), _)), 
              RP.Const (RP.Bits arg285), 1)); (RP.App (("eq", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2'), _), 32)])]); 
              RP.Const (RP.Bits arg280)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg281), _)), 
              RP.Const (RP.Bits arg282), 1)); (RP.App (("ne", [32]), 
            [RP.App (("xor", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); 
                RP.App (("com", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                    32, RP.Const (RP.Bits rs2), _), 32)])]); 
              RP.Const (RP.Bits arg277)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg278), _)), 
              RP.Const (RP.Bits arg279), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg275), _)), RP.Const (RP.Bits arg276), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg273), _)), 
              RP.Const (RP.Bits arg274), 1))] 
      when Base.to_bool (rs1 = rs1'''' && rs2 = rs2'''' && rs1 = rs1''' && 
          rs2 = rs2''' && rs1 = rs1'' && rs2 = rs2'' && rs1 = rs1' && 
          rs2 = rs2' && (Bitops.eq arg286 (Bits.of_int 0 32) && Bitops.eq 
            arg287 (Bits.of_int 0 3) && Bitops.eq arg288 (Bits.of_int 1 1) && 
          Bitops.eq arg283 (Bits.of_int 0 32) && Bitops.eq arg284 (Bits.of_int 
              0 3) && Bitops.eq arg285 (Bits.of_int 0 1) && Bitops.eq arg280 
            (Bits.of_int 0 32) && Bitops.eq arg281 (Bits.of_int 0 3) && 
          Bitops.eq arg282 (Bits.of_int 1 1) && Bitops.eq arg277 (Bits.of_int 0 
              32) && Bitops.eq arg278 (Bits.of_int 0 3) && Bitops.eq arg279 
            (Bits.of_int 0 1) && Bitops.eq arg275 (Bits.of_int 0 3) && 
          Bitops.eq arg276 (Bits.of_int 0 1) && Bitops.eq arg273 
            (Bits.of_int 0 3) && Bitops.eq arg274 (Bits.of_int 0 1))) -> 
           Instruction.xnorcc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg289)]), 
            32))] 
      when Base.to_bool (Bitops.fits_signed arg289 13) -> 
           Instruction.add (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg289)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
        RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
          RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] -> 
           Instruction.add (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''''''''''), _), 32); 
                RP.Const (RP.Bits arg327)]), 32)); (RP.App (("lt", [32]), 
            [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''''''''''), _), 32); 
                RP.Const (RP.Bits arg323)]); RP.Const (RP.Bits arg324)]), 
            RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg325), _)), 
              RP.Const (RP.Bits arg326), 1)); (RP.App (("ge", [32]), 
            [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''''''''), _), 32); 
                RP.Const (RP.Bits arg319)]); RP.Const (RP.Bits arg320)]), 
            RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg321), _)), 
              RP.Const (RP.Bits arg322), 1)); (RP.App (("eq", [32]), 
            [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''''''''), _), 32); 
                RP.Const (RP.Bits arg315)]); RP.Const (RP.Bits arg316)]), 
            RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg317), _)), 
              RP.Const (RP.Bits arg318), 1)); (RP.App (("ne", [32]), 
            [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''''''), _), 32); 
                RP.Const (RP.Bits arg311)]); RP.Const (RP.Bits arg312)]), 
            RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg313), _)), 
              RP.Const (RP.Bits arg314), 1)); (RP.App (("conjoin", []), 
            [RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg307); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''''), _), 32)]); 
                RP.Const (RP.Bits arg308)]); 
              RP.App (("ne", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg306); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1''''''), _), 
                      32)]); RP.App (("bitExtract", [32; 32; 1]), 
                    [RP.Const (RP.Bits arg305); RP.App (("add", [32]), 
                        [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                          RP.Const (RP.Bits rs1'''''), _), 32); 
                          RP.Const (RP.Bits arg304)])])])]), 
            RP.Store (RP.Slice (1, 21, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg309), _)), 
              RP.Const (RP.Bits arg310), 1)); (RP.App (("conjoin", []), 
            [RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg300); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1''''), _), 32)]); 
                RP.Const (RP.Bits arg301)]); 
              RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg299); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1'''), _), 32)]); 
                  RP.App (("bitExtract", [32; 32; 1]), 
                    [RP.Const (RP.Bits arg298); 
                      RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                          Rtl.Identity, 32, RP.Const (RP.Bits rs1''), _), 32); 
                          RP.Const (RP.Bits arg297)])])])]), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg302), _)), RP.Const (RP.Bits arg303), 1)); 
          (RP.App (("ne", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
              [RP.Const (RP.Bits arg293); RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1'), _), 32)]); 
              RP.Const (RP.Bits arg294)]), RP.Store (RP.Slice (1, 21, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg295), _)), 
              RP.Const (RP.Bits arg296), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg290), _)), 
              RP.App (("carry", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg292); RP.Const (RP.Bits arg291)]), 1))] 
      when Base.to_bool (rs1 = rs1'''''''''''' && rs1 = rs1''''''''''' && 
          rs1 = rs1'''''''''' && rs1 = rs1''''''''' && rs1 = rs1'''''''' && 
          rs1 = rs1''''''' && rs1 = rs1'''''' && rs1 = rs1''''' && 
          rs1 = rs1'''' && rs1 = rs1''' && rs1 = rs1'' && rs1 = rs1' && 
          (Bitops.fits_signed arg327 13 && Bitops.eq arg324 (Bits.of_int 0 
              32) && Bitops.eq arg325 (Bits.of_int 0 3) && Bitops.eq arg326 
            (Bits.of_int 1 1) && Bitops.eq arg320 (Bits.of_int 0 32) && 
          Bitops.eq arg321 (Bits.of_int 0 3) && Bitops.eq arg322 (Bits.of_int 0 
              1) && Bitops.eq arg316 (Bits.of_int 0 32) && Bitops.eq arg317 
            (Bits.of_int 0 3) && Bitops.eq arg318 (Bits.of_int 1 1) && 
          Bitops.eq arg312 (Bits.of_int 0 32) && Bitops.eq arg313 (Bits.of_int 
              0 3) && Bitops.eq arg314 (Bits.of_int 0 1) && Bitops.eq arg307 
            (Bits.of_int 31 32) && Bitops.eq arg306 (Bits.of_int 31 32) && 
          Bitops.eq arg305 (Bits.of_int 31 32) && Bitops.eq arg309 (Bits.of_int 
              0 3) && Bitops.eq arg310 (Bits.of_int 1 1) && Bitops.eq arg300 
            (Bits.of_int 31 32) && Bitops.eq arg299 (Bits.of_int 31 32) && 
          Bitops.eq arg298 (Bits.of_int 31 32) && Bitops.eq arg302 (Bits.of_int 
              0 3) && Bitops.eq arg303 (Bits.of_int 0 1) && Bitops.eq arg293 
            (Bits.of_int 31 32) && Bitops.eq arg295 (Bits.of_int 0 3) && 
          Bitops.eq arg296 (Bits.of_int 0 1) && Bitops.eq arg290 
            (Bits.of_int 0 3) && Bitops.eq arg291 (Bits.of_int 0 1))) -> 
           Instruction.addcc (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg327)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
            RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''''''''''), _), 32); 
                RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs2''''''''''), _), 32)]), 32)); 
          (RP.App (("lt", [32]), 
            [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''''''''''), _), 32); 
                RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs2'''''''''), _), 32)]); 
              RP.Const (RP.Bits arg355)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg356), _)), 
              RP.Const (RP.Bits arg357), 1)); (RP.App (("ge", [32]), 
            [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''''''''), _), 32); 
                RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs2''''''''), _), 32)]); 
              RP.Const (RP.Bits arg352)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg353), _)), 
              RP.Const (RP.Bits arg354), 1)); (RP.App (("eq", [32]), 
            [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1'''''''''), _), 32); 
                RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs2'''''''), _), 32)]); 
              RP.Const (RP.Bits arg349)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg350), _)), 
              RP.Const (RP.Bits arg351), 1)); (RP.App (("ne", [32]), 
            [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''''''''), _), 32); 
                RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs2''''''), _), 32)]); 
              RP.Const (RP.Bits arg346)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg347), _)), 
              RP.Const (RP.Bits arg348), 1)); (RP.App (("conjoin", []), 
            [RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg343); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''''), _), 32)]); 
                RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg342); 
                    RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                      RP.Const (RP.Bits rs2'''''), _), 32)])]); 
              RP.App (("ne", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg341); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1''''''), _), 
                      32)]); RP.App (("bitExtract", [32; 32; 1]), 
                    [RP.Const (RP.Bits arg340); RP.App (("add", [32]), 
                        [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                          RP.Const (RP.Bits rs1'''''), _), 32); 
                          RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                            RP.Const (RP.Bits rs2''''), _), 32)])])])]), 
            RP.Store (RP.Slice (1, 21, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg344), _)), 
              RP.Const (RP.Bits arg345), 1)); (RP.App (("conjoin", []), 
            [RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg337); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1''''), _), 32)]); 
                RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg336); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs2'''), _), 32)])]); 
              RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg335); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1'''), _), 32)]); 
                  RP.App (("bitExtract", [32; 32; 1]), 
                    [RP.Const (RP.Bits arg334); 
                      RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                          Rtl.Identity, 32, RP.Const (RP.Bits rs1''), _), 32); 
                          RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                            RP.Const (RP.Bits rs2''), _), 32)])])])]), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg338), _)), RP.Const (RP.Bits arg339), 1)); 
          (RP.App (("ne", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
              [RP.Const (RP.Bits arg331); RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1'), _), 32)]); 
              RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg330); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)])]), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg332), _)), RP.Const (RP.Bits arg333), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg328), _)), 
              RP.App (("carry", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32); 
                  RP.Const (RP.Bits arg329)]), 1))] 
      when Base.to_bool (rs1 = rs1'''''''''''' && rs2 = rs2'''''''''' && 
          rs1 = rs1''''''''''' && rs2 = rs2''''''''' && rs1 = rs1'''''''''' && 
          rs2 = rs2'''''''' && rs1 = rs1''''''''' && rs2 = rs2''''''' && 
          rs1 = rs1'''''''' && rs2 = rs2'''''' && rs1 = rs1''''''' && 
          rs2 = rs2''''' && rs1 = rs1'''''' && rs1 = rs1''''' && 
          rs2 = rs2'''' && rs1 = rs1'''' && rs2 = rs2''' && rs1 = rs1''' && 
          rs1 = rs1'' && rs2 = rs2'' && rs1 = rs1' && rs2 = rs2' && (Bitops.eq 
            arg355 (Bits.of_int 0 32) && Bitops.eq arg356 (Bits.of_int 0 3) && 
          Bitops.eq arg357 (Bits.of_int 1 1) && Bitops.eq arg352 (Bits.of_int 0 
              32) && Bitops.eq arg353 (Bits.of_int 0 3) && Bitops.eq arg354 
            (Bits.of_int 0 1) && Bitops.eq arg349 (Bits.of_int 0 32) && 
          Bitops.eq arg350 (Bits.of_int 0 3) && Bitops.eq arg351 (Bits.of_int 1 
              1) && Bitops.eq arg346 (Bits.of_int 0 32) && Bitops.eq arg347 
            (Bits.of_int 0 3) && Bitops.eq arg348 (Bits.of_int 0 1) && 
          Bitops.eq arg343 (Bits.of_int 31 32) && Bitops.eq arg342 (Bits.of_int 
              31 32) && Bitops.eq arg341 (Bits.of_int 31 32) && Bitops.eq 
            arg340 (Bits.of_int 31 32) && Bitops.eq arg344 (Bits.of_int 0 3) && 
          Bitops.eq arg345 (Bits.of_int 1 1) && Bitops.eq arg337 
            (Bits.of_int 31 32) && Bitops.eq arg336 (Bits.of_int 31 32) && 
          Bitops.eq arg335 (Bits.of_int 31 32) && Bitops.eq arg334 (Bits.of_int 
              31 32) && Bitops.eq arg338 (Bits.of_int 0 3) && Bitops.eq arg339 
            (Bits.of_int 0 1) && Bitops.eq arg331 (Bits.of_int 31 32) && 
          Bitops.eq arg330 (Bits.of_int 31 32) && Bitops.eq arg332 (Bits.of_int 
              0 3) && Bitops.eq arg333 (Bits.of_int 0 1) && Bitops.eq arg328 
            (Bits.of_int 0 3) && Bitops.eq arg329 (Bits.of_int 0 1))) -> 
           Instruction.addcc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg359)]); RP.App (("zx", [1; 32]), 
                  [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg358), _)), 1)])]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg359 13 && Bitops.eq arg358 
            (Bits.of_int 0 3)) -> 
           Instruction.addx (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg359)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]); 
                RP.App (("zx", [1; 32]), 
                  [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg360), _)), 1)])]), 32))] 
      when Base.to_bool (Bitops.eq arg360 (Bits.of_int 0 3)) -> 
           Instruction.addx (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1''''''''''''), _), 32); 
                  RP.Const (RP.Bits arg405)]); RP.App (("zx", [1; 32]), 
                  [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg404), _)), 1)])]), 32)); 
          (RP.App (("lt", [32]), [RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1'''''''''''), _), 32); 
                  RP.Const (RP.Bits arg400)]); RP.App (("zx", [1; 32]), 
                  [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg399), _)), 1)])]); 
              RP.Const (RP.Bits arg401)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg402), _)), 
              RP.Const (RP.Bits arg403), 1)); 
          (RP.App (("ge", [32]), [RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1''''''''''), _), 32); 
                  RP.Const (RP.Bits arg395)]); RP.App (("zx", [1; 32]), 
                  [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg394), _)), 1)])]); 
              RP.Const (RP.Bits arg396)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg397), _)), 
              RP.Const (RP.Bits arg398), 1)); 
          (RP.App (("eq", [32]), [RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1'''''''''), _), 32); 
                  RP.Const (RP.Bits arg390)]); RP.App (("zx", [1; 32]), 
                  [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg389), _)), 1)])]); 
              RP.Const (RP.Bits arg391)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg392), _)), 
              RP.Const (RP.Bits arg393), 1)); 
          (RP.App (("ne", [32]), [RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1''''''''), _), 32); 
                  RP.Const (RP.Bits arg385)]); RP.App (("zx", [1; 32]), 
                  [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg384), _)), 1)])]); 
              RP.Const (RP.Bits arg386)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg387), _)), 
              RP.Const (RP.Bits arg388), 1)); (RP.App (("conjoin", []), 
            [RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg380); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''''), _), 32)]); 
                RP.Const (RP.Bits arg381)]); 
              RP.App (("ne", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg379); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1''''''), _), 
                      32)]); RP.App (("bitExtract", [32; 32; 1]), 
                    [RP.Const (RP.Bits arg378); RP.App (("add", [32]), 
                        [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                            Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''), _), 
                            32); RP.Const (RP.Bits arg377)]); RP.App (("zx", 
                            [1; 32]), [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', 
                                Rtl.Identity, 32, RP.Const (RP.Bits arg376), 
                                _)), 1)])])])])]), RP.Store (RP.Slice (1, 21, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg382), _)), 
              RP.Const (RP.Bits arg383), 1)); (RP.App (("conjoin", []), 
            [RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg372); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1''''), _), 32)]); 
                RP.Const (RP.Bits arg373)]); 
              RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg371); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1'''), _), 32)]); 
                  RP.App (("bitExtract", [32; 32; 1]), 
                    [RP.Const (RP.Bits arg370); RP.App (("add", [32]), 
                        [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                            Rtl.Identity, 32, RP.Const (RP.Bits rs1''), _), 
                            32); RP.Const (RP.Bits arg369)]); 
                          RP.App (("zx", [1; 32]), [RP.Fetch (RP.Slice (1, 20, 
                              RP.Cell ('i', Rtl.Identity, 32, 
                                RP.Const (RP.Bits arg368), _)), 1)])])])])]), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg374), _)), RP.Const (RP.Bits arg375), 1)); 
          (RP.App (("ne", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
              [RP.Const (RP.Bits arg364); RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1'), _), 32)]); 
              RP.Const (RP.Bits arg365)]), RP.Store (RP.Slice (1, 21, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg366), _)), 
              RP.Const (RP.Bits arg367), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg361), _)), RP.App (("carry", [32]), 
                [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                  RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg363); 
                  RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg362), _)), 1)]), 1))] 
      when Base.to_bool (rs1 = rs1'''''''''''' && rs1 = rs1''''''''''' && 
          rs1 = rs1'''''''''' && rs1 = rs1''''''''' && rs1 = rs1'''''''' && 
          rs1 = rs1''''''' && rs1 = rs1'''''' && rs1 = rs1''''' && 
          rs1 = rs1'''' && rs1 = rs1''' && rs1 = rs1'' && rs1 = rs1' && 
          (Bitops.fits_signed arg405 13 && Bitops.eq arg404 (Bits.of_int 0 
              3) && Bitops.eq arg399 (Bits.of_int 0 3) && Bitops.eq arg401 
            (Bits.of_int 0 32) && Bitops.eq arg402 (Bits.of_int 0 3) && 
          Bitops.eq arg403 (Bits.of_int 1 1) && Bitops.eq arg394 (Bits.of_int 0 
              3) && Bitops.eq arg396 (Bits.of_int 0 32) && Bitops.eq arg397 
            (Bits.of_int 0 3) && Bitops.eq arg398 (Bits.of_int 0 1) && 
          Bitops.eq arg389 (Bits.of_int 0 3) && Bitops.eq arg391 (Bits.of_int 0 
              32) && Bitops.eq arg392 (Bits.of_int 0 3) && Bitops.eq arg393 
            (Bits.of_int 1 1) && Bitops.eq arg384 (Bits.of_int 0 3) && 
          Bitops.eq arg386 (Bits.of_int 0 32) && Bitops.eq arg387 (Bits.of_int 
              0 3) && Bitops.eq arg388 (Bits.of_int 0 1) && Bitops.eq arg380 
            (Bits.of_int 31 32) && Bitops.eq arg379 (Bits.of_int 31 32) && 
          Bitops.eq arg378 (Bits.of_int 31 32) && Bitops.eq arg376 (Bits.of_int 
              0 3) && Bitops.eq arg382 (Bits.of_int 0 3) && Bitops.eq arg383 
            (Bits.of_int 1 1) && Bitops.eq arg372 (Bits.of_int 31 32) && 
          Bitops.eq arg371 (Bits.of_int 31 32) && Bitops.eq arg370 (Bits.of_int 
              31 32) && Bitops.eq arg368 (Bits.of_int 0 3) && Bitops.eq arg374 
            (Bits.of_int 0 3) && Bitops.eq arg375 (Bits.of_int 0 1) && 
          Bitops.eq arg364 (Bits.of_int 31 32) && Bitops.eq arg366 (Bits.of_int 
              0 3) && Bitops.eq arg367 (Bits.of_int 0 1) && Bitops.eq arg361 
            (Bits.of_int 0 3) && Bitops.eq arg362 (Bits.of_int 0 3))) -> 
           Instruction.addxcc (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg405)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits rd), _), RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1''''''''''''), _), 32); 
                  RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs2''''''''''), _), 32)]); RP.App (("zx", 
                  [1; 32]), [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', 
                      Rtl.Identity, 32, RP.Const (RP.Bits arg442), _)), 1)])]), 
            32)); (RP.App (("lt", [32]), [RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1'''''''''''), _), 32); 
                  RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs2'''''''''), _), 32)]); RP.App (("zx", 
                  [1; 32]), [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', 
                      Rtl.Identity, 32, RP.Const (RP.Bits arg438), _)), 1)])]); 
              RP.Const (RP.Bits arg439)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg440), _)), 
              RP.Const (RP.Bits arg441), 1)); 
          (RP.App (("ge", [32]), [RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1''''''''''), _), 32); 
                  RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs2''''''''), _), 32)]); RP.App (("zx", 
                  [1; 32]), [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', 
                      Rtl.Identity, 32, RP.Const (RP.Bits arg434), _)), 1)])]); 
              RP.Const (RP.Bits arg435)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg436), _)), 
              RP.Const (RP.Bits arg437), 1)); 
          (RP.App (("eq", [32]), [RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1'''''''''), _), 32); 
                  RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs2'''''''), _), 32)]); RP.App (("zx", 
                  [1; 32]), [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', 
                      Rtl.Identity, 32, RP.Const (RP.Bits arg430), _)), 1)])]); 
              RP.Const (RP.Bits arg431)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg432), _)), 
              RP.Const (RP.Bits arg433), 1)); 
          (RP.App (("ne", [32]), [RP.App (("add", [32]), 
              [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1''''''''), _), 32); 
                  RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs2''''''), _), 32)]); RP.App (("zx", 
                  [1; 32]), [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', 
                      Rtl.Identity, 32, RP.Const (RP.Bits arg426), _)), 1)])]); 
              RP.Const (RP.Bits arg427)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg428), _)), 
              RP.Const (RP.Bits arg429), 1)); (RP.App (("conjoin", []), 
            [RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg423); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''''), _), 32)]); 
                RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg422); 
                    RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                      RP.Const (RP.Bits rs2'''''), _), 32)])]); 
              RP.App (("ne", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg421); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1''''''), _), 
                      32)]); RP.App (("bitExtract", [32; 32; 1]), 
                    [RP.Const (RP.Bits arg420); RP.App (("add", [32]), 
                        [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                            Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''), _), 
                            32); RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                              RP.Const (RP.Bits rs2''''), _), 32)]); 
                          RP.App (("zx", [1; 32]), [RP.Fetch (RP.Slice (1, 20, 
                              RP.Cell ('i', Rtl.Identity, 32, 
                                RP.Const (RP.Bits arg419), _)), 1)])])])])]), 
            RP.Store (RP.Slice (1, 21, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg424), _)), 
              RP.Const (RP.Bits arg425), 1)); (RP.App (("conjoin", []), 
            [RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg416); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1''''), _), 32)]); 
                RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg415); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs2'''), _), 32)])]); 
              RP.App (("eq", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
                  [RP.Const (RP.Bits arg414); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1'''), _), 32)]); 
                  RP.App (("bitExtract", [32; 32; 1]), 
                    [RP.Const (RP.Bits arg413); RP.App (("add", [32]), 
                        [RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', 
                            Rtl.Identity, 32, RP.Const (RP.Bits rs1''), _), 
                            32); RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                              RP.Const (RP.Bits rs2''), _), 32)]); 
                          RP.App (("zx", [1; 32]), [RP.Fetch (RP.Slice (1, 20, 
                              RP.Cell ('i', Rtl.Identity, 32, 
                                RP.Const (RP.Bits arg412), _)), 1)])])])])]), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg417), _)), RP.Const (RP.Bits arg418), 1)); 
          (RP.App (("ne", [1]), [RP.App (("bitExtract", [32; 32; 1]), 
              [RP.Const (RP.Bits arg409); RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1'), _), 32)]); 
              RP.App (("bitExtract", [32; 32; 1]), 
                [RP.Const (RP.Bits arg408); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)])]), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg410), _)), RP.Const (RP.Bits arg411), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg406), _)), 
              RP.App (("carry", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32); 
                  RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg407), _)), 1)]), 1))] 
      when Base.to_bool (rs1 = rs1'''''''''''' && rs2 = rs2'''''''''' && 
          rs1 = rs1''''''''''' && rs2 = rs2''''''''' && rs1 = rs1'''''''''' && 
          rs2 = rs2'''''''' && rs1 = rs1''''''''' && rs2 = rs2''''''' && 
          rs1 = rs1'''''''' && rs2 = rs2'''''' && rs1 = rs1''''''' && 
          rs2 = rs2''''' && rs1 = rs1'''''' && rs1 = rs1''''' && 
          rs2 = rs2'''' && rs1 = rs1'''' && rs2 = rs2''' && rs1 = rs1''' && 
          rs1 = rs1'' && rs2 = rs2'' && rs1 = rs1' && rs2 = rs2' && (Bitops.eq 
            arg442 (Bits.of_int 0 3) && Bitops.eq arg438 (Bits.of_int 0 3) && 
          Bitops.eq arg439 (Bits.of_int 0 32) && Bitops.eq arg440 (Bits.of_int 
              0 3) && Bitops.eq arg441 (Bits.of_int 1 1) && Bitops.eq arg434 
            (Bits.of_int 0 3) && Bitops.eq arg435 (Bits.of_int 0 32) && 
          Bitops.eq arg436 (Bits.of_int 0 3) && Bitops.eq arg437 (Bits.of_int 0 
              1) && Bitops.eq arg430 (Bits.of_int 0 3) && Bitops.eq arg431 
            (Bits.of_int 0 32) && Bitops.eq arg432 (Bits.of_int 0 3) && 
          Bitops.eq arg433 (Bits.of_int 1 1) && Bitops.eq arg426 (Bits.of_int 0 
              3) && Bitops.eq arg427 (Bits.of_int 0 32) && Bitops.eq arg428 
            (Bits.of_int 0 3) && Bitops.eq arg429 (Bits.of_int 0 1) && 
          Bitops.eq arg423 (Bits.of_int 31 32) && Bitops.eq arg422 (Bits.of_int 
              31 32) && Bitops.eq arg421 (Bits.of_int 31 32) && Bitops.eq 
            arg420 (Bits.of_int 31 32) && Bitops.eq arg419 (Bits.of_int 0 3) && 
          Bitops.eq arg424 (Bits.of_int 0 3) && Bitops.eq arg425 (Bits.of_int 1 
              1) && Bitops.eq arg416 (Bits.of_int 31 32) && Bitops.eq arg415 
            (Bits.of_int 31 32) && Bitops.eq arg414 (Bits.of_int 31 32) && 
          Bitops.eq arg413 (Bits.of_int 31 32) && Bitops.eq arg412 (Bits.of_int 
              0 3) && Bitops.eq arg417 (Bits.of_int 0 3) && Bitops.eq arg418 
            (Bits.of_int 0 1) && Bitops.eq arg409 (Bits.of_int 31 32) && 
          Bitops.eq arg408 (Bits.of_int 31 32) && Bitops.eq arg410 (Bits.of_int 
              0 3) && Bitops.eq arg411 (Bits.of_int 0 1) && Bitops.eq arg406 
            (Bits.of_int 0 3) && Bitops.eq arg407 (Bits.of_int 0 3))) -> 
           Instruction.addxcc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg445), _), 
            RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg447); 
                RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'), _), 32); 
                    RP.Const (RP.Bits arg446)])]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), 
              RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg444); 
                  RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                      RP.Const (RP.Bits arg443)])]), 32))] 
      when Base.to_bool (rs1 = rs1' && (Bitops.fits_signed arg446 13 && 
          Bitops.eq arg445 (Bits.of_int 3 3) && Bitops.eq arg447 
            (Bits.of_int 32 32) && Bitops.eq arg444 (Bits.of_int 0 32))) -> 
           Instruction.umul (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg446)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg449), _), RP.App (("bitExtract", [64; 32; 
                32]), [RP.Const (RP.Bits arg450); RP.App (("mulu", [32; 64]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1'), _), 32); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)])]), 
            32)); (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
              RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg448); 
                  RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                      RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                        RP.Const (RP.Bits rs2), _), 32)])]), 32))] 
      when Base.to_bool (rs1 = rs1' && rs2 = rs2' && 
          (Bitops.eq arg449 (Bits.of_int 3 3) && Bitops.eq arg450 
            (Bits.of_int 32 32) && Bitops.eq arg448 (Bits.of_int 0 32))) -> 
           Instruction.umul (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg453), _), 
            RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg455); 
                RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'), _), 32); 
                    RP.Const (RP.Bits arg454)])]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), 
              RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg452); 
                  RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                      RP.Const (RP.Bits arg451)])]), 32))] 
      when Base.to_bool (rs1 = rs1' && (Bitops.fits_signed arg454 13 && 
          Bitops.eq arg453 (Bits.of_int 3 3) && Bitops.eq arg455 
            (Bits.of_int 32 32) && Bitops.eq arg452 (Bits.of_int 0 32))) -> 
           Instruction.smul (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg454)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg457), _), RP.App (("bitExtract", [64; 32; 
                32]), [RP.Const (RP.Bits arg458); RP.App (("mul", [32; 64]), 
                  [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                    RP.Const (RP.Bits rs1'), _), 32); RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)])]), 
            32)); (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits rd), _), 
              RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg456); 
                  RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32); 
                      RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                        RP.Const (RP.Bits rs2), _), 32)])]), 32))] 
      when Base.to_bool (rs1 = rs1' && rs2 = rs2' && 
          (Bitops.eq arg457 (Bits.of_int 3 3) && Bitops.eq arg458 
            (Bits.of_int 32 32) && Bitops.eq arg456 (Bits.of_int 0 32))) -> 
           Instruction.smul (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg481), _), 
            RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg483); 
                RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''), _), 32); 
                    RP.Const (RP.Bits arg482)])]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), 
              RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg480); 
                  RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1''''), _), 32); 
                      RP.Const (RP.Bits arg479)])]), 32)); (RP.App (("lt", 
            [64]), [RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs1'''), _), 32); 
                RP.Const (RP.Bits arg475)]); RP.Const (RP.Bits arg476)]), 
            RP.Store (RP.Slice (1, 23, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg477), _)), RP.Const (RP.Bits arg478), 1)); 
          (RP.App (("ge", [64]), [RP.App (("mulu", [32; 64]), 
              [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Const (RP.Bits arg471)]); 
              RP.Const (RP.Bits arg472)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg473), _)), 
              RP.Const (RP.Bits arg474), 1)); (RP.App (("eq", [64]), 
            [RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1'), _), 32); 
                RP.Const (RP.Bits arg467)]); RP.Const (RP.Bits arg468)]), 
            RP.Store (RP.Slice (1, 22, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg469), _)), RP.Const (RP.Bits arg470), 1)); 
          (RP.App (("ne", [64]), [RP.App (("mulu", [32; 64]), 
              [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg463)]); 
              RP.Const (RP.Bits arg464)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg465), _)), 
              RP.Const (RP.Bits arg466), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg461), _)), RP.Const (RP.Bits arg462), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg459), _)), 
              RP.Const (RP.Bits arg460), 1))] 
      when Base.to_bool (rs1 = rs1''''' && rs1 = rs1'''' && rs1 = rs1''' && 
          rs1 = rs1'' && rs1 = rs1' && (Bitops.fits_signed arg482 13 && 
          Bitops.eq arg481 (Bits.of_int 3 3) && Bitops.eq arg483 (Bits.of_int 
              32 32) && Bitops.eq arg480 (Bits.of_int 0 32) && Bitops.eq arg476 
            (Bits.of_int 0 64) && Bitops.eq arg477 (Bits.of_int 0 3) && 
          Bitops.eq arg478 (Bits.of_int 1 1) && Bitops.eq arg472 (Bits.of_int 0 
              64) && Bitops.eq arg473 (Bits.of_int 0 3) && Bitops.eq arg474 
            (Bits.of_int 0 1) && Bitops.eq arg468 (Bits.of_int 0 64) && 
          Bitops.eq arg469 (Bits.of_int 0 3) && Bitops.eq arg470 
            (Bits.of_int 1 1) && Bitops.eq arg464 (Bits.of_int 0 64) && 
          Bitops.eq arg465 (Bits.of_int 0 3) && Bitops.eq arg466 
            (Bits.of_int 0 1) && Bitops.eq arg461 (Bits.of_int 0 3) && 
          Bitops.eq arg462 (Bits.of_int 0 1) && Bitops.eq arg459 
            (Bits.of_int 0 3) && Bitops.eq arg460 (Bits.of_int 0 1))) -> 
           Instruction.umulcc (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg482)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg501), _), 
            RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg502); 
                RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''), _), 32); 
                    RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                      RP.Const (RP.Bits rs2'''''), _), 32)])]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), 
              RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg500); 
                  RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1''''), _), 32); 
                      RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                        RP.Const (RP.Bits rs2''''), _), 32)])]), 32)); 
          (RP.App (("lt", [64]), 
            [RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1'''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'''), _), 32)]); 
              RP.Const (RP.Bits arg497)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg498), _)), 
              RP.Const (RP.Bits arg499), 1)); (RP.App (("ge", [64]), 
            [RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2''), _), 32)]); 
              RP.Const (RP.Bits arg494)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg495), _)), 
              RP.Const (RP.Bits arg496), 1)); (RP.App (("eq", [64]), 
            [RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1'), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)]); 
              RP.Const (RP.Bits arg491)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg492), _)), 
              RP.Const (RP.Bits arg493), 1)); (RP.App (("ne", [64]), 
            [RP.App (("mulu", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]); 
              RP.Const (RP.Bits arg488)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg489), _)), 
              RP.Const (RP.Bits arg490), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg486), _)), RP.Const (RP.Bits arg487), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg484), _)), 
              RP.Const (RP.Bits arg485), 1))] 
      when Base.to_bool (rs1 = rs1''''' && rs2 = rs2''''' && rs1 = rs1'''' && 
          rs2 = rs2'''' && rs1 = rs1''' && rs2 = rs2''' && rs1 = rs1'' && 
          rs2 = rs2'' && rs1 = rs1' && rs2 = rs2' && (Bitops.eq arg501 
            (Bits.of_int 3 3) && Bitops.eq arg502 (Bits.of_int 32 32) && 
          Bitops.eq arg500 (Bits.of_int 0 32) && Bitops.eq arg497 (Bits.of_int 
              0 64) && Bitops.eq arg498 (Bits.of_int 0 3) && Bitops.eq arg499 
            (Bits.of_int 1 1) && Bitops.eq arg494 (Bits.of_int 0 64) && 
          Bitops.eq arg495 (Bits.of_int 0 3) && Bitops.eq arg496 
            (Bits.of_int 0 1) && Bitops.eq arg491 (Bits.of_int 0 64) && 
          Bitops.eq arg492 (Bits.of_int 0 3) && Bitops.eq arg493 
            (Bits.of_int 1 1) && Bitops.eq arg488 (Bits.of_int 0 64) && 
          Bitops.eq arg489 (Bits.of_int 0 3) && Bitops.eq arg490 
            (Bits.of_int 0 1) && Bitops.eq arg486 (Bits.of_int 0 3) && 
          Bitops.eq arg487 (Bits.of_int 0 1) && Bitops.eq arg484 
            (Bits.of_int 0 3) && Bitops.eq arg485 (Bits.of_int 0 1))) -> 
           Instruction.umulcc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg525), _), 
            RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg527); 
                RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''), _), 32); 
                    RP.Const (RP.Bits arg526)])]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), 
              RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg524); 
                  RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1''''), _), 32); 
                      RP.Const (RP.Bits arg523)])]), 32)); (RP.App (("lt", 
            [64]), [RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits rs1'''), _), 32); 
                RP.Const (RP.Bits arg519)]); RP.Const (RP.Bits arg520)]), 
            RP.Store (RP.Slice (1, 23, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg521), _)), RP.Const (RP.Bits arg522), 1)); 
          (RP.App (("ge", [64]), [RP.App (("mul", [32; 64]), 
              [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1''), _), 32); RP.Const (RP.Bits arg515)]); 
              RP.Const (RP.Bits arg516)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg517), _)), 
              RP.Const (RP.Bits arg518), 1)); (RP.App (("eq", [64]), 
            [RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1'), _), 32); 
                RP.Const (RP.Bits arg511)]); RP.Const (RP.Bits arg512)]), 
            RP.Store (RP.Slice (1, 22, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg513), _)), RP.Const (RP.Bits arg514), 1)); 
          (RP.App (("ne", [64]), [RP.App (("mul", [32; 64]), 
              [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg507)]); 
              RP.Const (RP.Bits arg508)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg509), _)), 
              RP.Const (RP.Bits arg510), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg505), _)), RP.Const (RP.Bits arg506), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg503), _)), 
              RP.Const (RP.Bits arg504), 1))] 
      when Base.to_bool (rs1 = rs1''''' && rs1 = rs1'''' && rs1 = rs1''' && 
          rs1 = rs1'' && rs1 = rs1' && (Bitops.fits_signed arg526 13 && 
          Bitops.eq arg525 (Bits.of_int 3 3) && Bitops.eq arg527 (Bits.of_int 
              32 32) && Bitops.eq arg524 (Bits.of_int 0 32) && Bitops.eq arg520 
            (Bits.of_int 0 64) && Bitops.eq arg521 (Bits.of_int 0 3) && 
          Bitops.eq arg522 (Bits.of_int 1 1) && Bitops.eq arg516 (Bits.of_int 0 
              64) && Bitops.eq arg517 (Bits.of_int 0 3) && Bitops.eq arg518 
            (Bits.of_int 0 1) && Bitops.eq arg512 (Bits.of_int 0 64) && 
          Bitops.eq arg513 (Bits.of_int 0 3) && Bitops.eq arg514 
            (Bits.of_int 1 1) && Bitops.eq arg508 (Bits.of_int 0 64) && 
          Bitops.eq arg509 (Bits.of_int 0 3) && Bitops.eq arg510 
            (Bits.of_int 0 1) && Bitops.eq arg505 (Bits.of_int 0 3) && 
          Bitops.eq arg506 (Bits.of_int 0 1) && Bitops.eq arg503 
            (Bits.of_int 0 3) && Bitops.eq arg504 (Bits.of_int 0 1))) -> 
           Instruction.smulcc (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg526)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg545), _), 
            RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg546); 
                RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs1'''''), _), 32); 
                    RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                      RP.Const (RP.Bits rs2'''''), _), 32)])]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), 
              RP.App (("bitExtract", [64; 32; 32]), [RP.Const (RP.Bits arg544); 
                  RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', 
                      Rtl.Identity, 32, RP.Const (RP.Bits rs1''''), _), 32); 
                      RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                        RP.Const (RP.Bits rs2''''), _), 32)])]), 32)); 
          (RP.App (("lt", [64]), 
            [RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1'''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'''), _), 32)]); 
              RP.Const (RP.Bits arg541)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg542), _)), 
              RP.Const (RP.Bits arg543), 1)); (RP.App (("ge", [64]), 
            [RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1''), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2''), _), 32)]); 
              RP.Const (RP.Bits arg538)]), RP.Store (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg539), _)), 
              RP.Const (RP.Bits arg540), 1)); (RP.App (("eq", [64]), 
            [RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1'), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2'), _), 32)]); 
              RP.Const (RP.Bits arg535)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg536), _)), 
              RP.Const (RP.Bits arg537), 1)); (RP.App (("ne", [64]), 
            [RP.App (("mul", [32; 64]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]); 
              RP.Const (RP.Bits arg532)]), RP.Store (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg533), _)), 
              RP.Const (RP.Bits arg534), 1)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg530), _)), RP.Const (RP.Bits arg531), 1)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg528), _)), 
              RP.Const (RP.Bits arg529), 1))] 
      when Base.to_bool (rs1 = rs1''''' && rs2 = rs2''''' && rs1 = rs1'''' && 
          rs2 = rs2'''' && rs1 = rs1''' && rs2 = rs2''' && rs1 = rs1'' && 
          rs2 = rs2'' && rs1 = rs1' && rs2 = rs2' && (Bitops.eq arg545 
            (Bits.of_int 3 3) && Bitops.eq arg546 (Bits.of_int 32 32) && 
          Bitops.eq arg544 (Bits.of_int 0 32) && Bitops.eq arg541 (Bits.of_int 
              0 64) && Bitops.eq arg542 (Bits.of_int 0 3) && Bitops.eq arg543 
            (Bits.of_int 1 1) && Bitops.eq arg538 (Bits.of_int 0 64) && 
          Bitops.eq arg539 (Bits.of_int 0 3) && Bitops.eq arg540 
            (Bits.of_int 0 1) && Bitops.eq arg535 (Bits.of_int 0 64) && 
          Bitops.eq arg536 (Bits.of_int 0 3) && Bitops.eq arg537 
            (Bits.of_int 1 1) && Bitops.eq arg532 (Bits.of_int 0 64) && 
          Bitops.eq arg533 (Bits.of_int 0 3) && Bitops.eq arg534 
            (Bits.of_int 0 1) && Bitops.eq arg530 (Bits.of_int 0 3) && 
          Bitops.eq arg531 (Bits.of_int 0 1) && Bitops.eq arg528 
            (Bits.of_int 0 3) && Bitops.eq arg529 (Bits.of_int 0 1))) -> 
           Instruction.smulcc (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg612), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg613), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg610), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg611), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg608), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg609), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg606), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg607), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg604), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg605), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg602), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg603), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg600), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg601), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg598), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg599), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg595), _), 32); 
                  RP.Const (RP.Bits arg596)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg597), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg592), _), 32); 
                  RP.Const (RP.Bits arg593)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg594), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg589), _), 32); 
                  RP.Const (RP.Bits arg590)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg591), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg586), _), 32); 
                  RP.Const (RP.Bits arg587)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg588), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg583), _), 32); 
                  RP.Const (RP.Bits arg584)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg585), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg580), _), 32); 
                  RP.Const (RP.Bits arg581)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg582), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg577), _), 32); 
                  RP.Const (RP.Bits arg578)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg579), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg574), _), 32); 
                  RP.Const (RP.Bits arg575)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg576), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg572), _), 32), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg573), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg569), _), 32); 
                  RP.Const (RP.Bits arg570)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg571), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg566), _), 32); 
                  RP.Const (RP.Bits arg567)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg568), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg563), _), 32); 
                  RP.Const (RP.Bits arg564)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg565), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg560), _), 32); 
                  RP.Const (RP.Bits arg561)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg562), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg557), _), 32); 
                  RP.Const (RP.Bits arg558)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg559), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg554), _), 32); 
                  RP.Const (RP.Bits arg555)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg556), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg551), _), 32); 
                  RP.Const (RP.Bits arg552)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg553), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg548), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg549), _), 32); 
                  RP.Const (RP.Bits arg550)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg547)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg547 13 && Bitops.eq arg612 
            (Bits.of_int 24 5) && Bitops.eq arg613 (Bits.of_int 8 5) && 
          Bitops.eq arg610 (Bits.of_int 25 5) && Bitops.eq arg611 (Bits.of_int 
              9 5) && Bitops.eq arg608 (Bits.of_int 26 5) && Bitops.eq arg609 
            (Bits.of_int 10 5) && Bitops.eq arg606 (Bits.of_int 27 5) && 
          Bitops.eq arg607 (Bits.of_int 11 5) && Bitops.eq arg604 (Bits.of_int 
              28 5) && Bitops.eq arg605 (Bits.of_int 12 5) && Bitops.eq arg602 
            (Bits.of_int 29 5) && Bitops.eq arg603 (Bits.of_int 13 5) && 
          Bitops.eq arg600 (Bits.of_int 30 5) && Bitops.eq arg601 (Bits.of_int 
              14 5) && Bitops.eq arg598 (Bits.of_int 31 5) && Bitops.eq arg599 
            (Bits.of_int 15 5) && Bitops.eq arg595 (Bits.of_int 0 1) && 
          Bitops.eq arg596 (Bits.of_int 8 32) && Bitops.eq arg597 (Bits.of_int 
              16 5) && Bitops.eq arg592 (Bits.of_int 0 1) && Bitops.eq arg593 
            (Bits.of_int 9 32) && Bitops.eq arg594 (Bits.of_int 17 5) && 
          Bitops.eq arg589 (Bits.of_int 0 1) && Bitops.eq arg590 (Bits.of_int 
              10 32) && Bitops.eq arg591 (Bits.of_int 18 5) && Bitops.eq arg586 
            (Bits.of_int 0 1) && Bitops.eq arg587 (Bits.of_int 11 32) && 
          Bitops.eq arg588 (Bits.of_int 19 5) && Bitops.eq arg583 (Bits.of_int 
              0 1) && Bitops.eq arg584 (Bits.of_int 12 32) && Bitops.eq arg585 
            (Bits.of_int 20 5) && Bitops.eq arg580 (Bits.of_int 0 1) && 
          Bitops.eq arg581 (Bits.of_int 13 32) && Bitops.eq arg582 (Bits.of_int 
              21 5) && Bitops.eq arg577 (Bits.of_int 0 1) && Bitops.eq arg578 
            (Bits.of_int 14 32) && Bitops.eq arg579 (Bits.of_int 22 5) && 
          Bitops.eq arg574 (Bits.of_int 0 1) && Bitops.eq arg575 (Bits.of_int 
              15 32) && Bitops.eq arg576 (Bits.of_int 23 5) && Bitops.eq arg572 
            (Bits.of_int 0 1) && Bitops.eq arg573 (Bits.of_int 24 5) && 
          Bitops.eq arg569 (Bits.of_int 0 1) && Bitops.eq arg570 (Bits.of_int 1 
              32) && Bitops.eq arg571 (Bits.of_int 25 5) && Bitops.eq arg566 
            (Bits.of_int 0 1) && Bitops.eq arg567 (Bits.of_int 2 32) && 
          Bitops.eq arg568 (Bits.of_int 26 5) && Bitops.eq arg563 (Bits.of_int 
              0 1) && Bitops.eq arg564 (Bits.of_int 3 32) && Bitops.eq arg565 
            (Bits.of_int 27 5) && Bitops.eq arg560 (Bits.of_int 0 1) && 
          Bitops.eq arg561 (Bits.of_int 4 32) && Bitops.eq arg562 (Bits.of_int 
              28 5) && Bitops.eq arg557 (Bits.of_int 0 1) && Bitops.eq arg558 
            (Bits.of_int 5 32) && Bitops.eq arg559 (Bits.of_int 29 5) && 
          Bitops.eq arg554 (Bits.of_int 0 1) && Bitops.eq arg555 (Bits.of_int 6 
              32) && Bitops.eq arg556 (Bits.of_int 30 5) && Bitops.eq arg551 
            (Bits.of_int 0 1) && Bitops.eq arg552 (Bits.of_int 7 32) && 
          Bitops.eq arg553 (Bits.of_int 31 5) && Bitops.eq arg548 (Bits.of_int 
              0 1) && Bitops.eq arg549 (Bits.of_int 0 1) && Bitops.eq arg550 
            (Bits.of_int 16 32) && Bitops.ne rd (Bits.of_int 24 5) && Bitops.ne 
            rd (Bits.of_int 25 5) && Bitops.ne rd (Bits.of_int 26 5) && 
          Bitops.ne rd (Bits.of_int 27 5) && Bitops.ne rd (Bits.of_int 28 5) && 
          Bitops.ne rd (Bits.of_int 29 5) && Bitops.ne rd (Bits.of_int 30 5) && 
          Bitops.ne rd (Bits.of_int 31 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg547)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg677), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg678), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg675), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg676), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg673), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg674), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg671), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg672), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg669), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg670), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg667), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg668), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg665), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg666), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg662), _), 32); 
                  RP.Const (RP.Bits arg663)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg664), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg659), _), 32); 
                  RP.Const (RP.Bits arg660)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg661), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg656), _), 32); 
                  RP.Const (RP.Bits arg657)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg658), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg653), _), 32); 
                  RP.Const (RP.Bits arg654)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg655), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg650), _), 32); 
                  RP.Const (RP.Bits arg651)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg652), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg647), _), 32); 
                  RP.Const (RP.Bits arg648)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg649), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg644), _), 32); 
                  RP.Const (RP.Bits arg645)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg646), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg641), _), 32); 
                  RP.Const (RP.Bits arg642)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg643), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg639), _), 32), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg640), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg636), _), 32); 
                  RP.Const (RP.Bits arg637)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg638), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg633), _), 32); 
                  RP.Const (RP.Bits arg634)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg635), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg630), _), 32); 
                  RP.Const (RP.Bits arg631)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg632), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg627), _), 32); 
                  RP.Const (RP.Bits arg628)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg629), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg624), _), 32); 
                  RP.Const (RP.Bits arg625)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg626), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg621), _), 32); 
                  RP.Const (RP.Bits arg622)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg623), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg618), _), 32); 
                  RP.Const (RP.Bits arg619)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg620), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg615), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg616), _), 32); 
                  RP.Const (RP.Bits arg617)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg614)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg614 13 && Bitops.eq arg677 
            (Bits.of_int 24 5) && Bitops.eq arg678 (Bits.of_int 8 5) && 
          Bitops.eq arg675 (Bits.of_int 25 5) && Bitops.eq arg676 (Bits.of_int 
              9 5) && Bitops.eq arg673 (Bits.of_int 26 5) && Bitops.eq arg674 
            (Bits.of_int 10 5) && Bitops.eq arg671 (Bits.of_int 27 5) && 
          Bitops.eq arg672 (Bits.of_int 11 5) && Bitops.eq arg669 (Bits.of_int 
              28 5) && Bitops.eq arg670 (Bits.of_int 12 5) && Bitops.eq arg667 
            (Bits.of_int 29 5) && Bitops.eq arg668 (Bits.of_int 13 5) && 
          Bitops.eq arg665 (Bits.of_int 30 5) && Bitops.eq arg666 (Bits.of_int 
              14 5) && Bitops.eq arg662 (Bits.of_int 0 1) && Bitops.eq arg663 
            (Bits.of_int 8 32) && Bitops.eq arg664 (Bits.of_int 16 5) && 
          Bitops.eq arg659 (Bits.of_int 0 1) && Bitops.eq arg660 (Bits.of_int 9 
              32) && Bitops.eq arg661 (Bits.of_int 17 5) && Bitops.eq arg656 
            (Bits.of_int 0 1) && Bitops.eq arg657 (Bits.of_int 10 32) && 
          Bitops.eq arg658 (Bits.of_int 18 5) && Bitops.eq arg653 (Bits.of_int 
              0 1) && Bitops.eq arg654 (Bits.of_int 11 32) && Bitops.eq arg655 
            (Bits.of_int 19 5) && Bitops.eq arg650 (Bits.of_int 0 1) && 
          Bitops.eq arg651 (Bits.of_int 12 32) && Bitops.eq arg652 (Bits.of_int 
              20 5) && Bitops.eq arg647 (Bits.of_int 0 1) && Bitops.eq arg648 
            (Bits.of_int 13 32) && Bitops.eq arg649 (Bits.of_int 21 5) && 
          Bitops.eq arg644 (Bits.of_int 0 1) && Bitops.eq arg645 (Bits.of_int 
              14 32) && Bitops.eq arg646 (Bits.of_int 22 5) && Bitops.eq arg641 
            (Bits.of_int 0 1) && Bitops.eq arg642 (Bits.of_int 15 32) && 
          Bitops.eq arg643 (Bits.of_int 23 5) && Bitops.eq arg639 (Bits.of_int 
              0 1) && Bitops.eq arg640 (Bits.of_int 24 5) && Bitops.eq arg636 
            (Bits.of_int 0 1) && Bitops.eq arg637 (Bits.of_int 1 32) && 
          Bitops.eq arg638 (Bits.of_int 25 5) && Bitops.eq arg633 (Bits.of_int 
              0 1) && Bitops.eq arg634 (Bits.of_int 2 32) && Bitops.eq arg635 
            (Bits.of_int 26 5) && Bitops.eq arg630 (Bits.of_int 0 1) && 
          Bitops.eq arg631 (Bits.of_int 3 32) && Bitops.eq arg632 (Bits.of_int 
              27 5) && Bitops.eq arg627 (Bits.of_int 0 1) && Bitops.eq arg628 
            (Bits.of_int 4 32) && Bitops.eq arg629 (Bits.of_int 28 5) && 
          Bitops.eq arg624 (Bits.of_int 0 1) && Bitops.eq arg625 (Bits.of_int 5 
              32) && Bitops.eq arg626 (Bits.of_int 29 5) && Bitops.eq arg621 
            (Bits.of_int 0 1) && Bitops.eq arg622 (Bits.of_int 6 32) && 
          Bitops.eq arg623 (Bits.of_int 30 5) && Bitops.eq arg618 (Bits.of_int 
              0 1) && Bitops.eq arg619 (Bits.of_int 7 32) && Bitops.eq arg620 
            (Bits.of_int 31 5) && Bitops.eq arg615 (Bits.of_int 0 1) && 
          Bitops.eq arg616 (Bits.of_int 0 1) && Bitops.eq arg617 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 31 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg614)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg742), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg743), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg740), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg741), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg738), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg739), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg736), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg737), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg734), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg735), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg732), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg733), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg730), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg731), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg727), _), 32); 
                  RP.Const (RP.Bits arg728)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg729), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg724), _), 32); 
                  RP.Const (RP.Bits arg725)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg726), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg721), _), 32); 
                  RP.Const (RP.Bits arg722)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg723), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg718), _), 32); 
                  RP.Const (RP.Bits arg719)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg720), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg715), _), 32); 
                  RP.Const (RP.Bits arg716)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg717), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg712), _), 32); 
                  RP.Const (RP.Bits arg713)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg714), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg709), _), 32); 
                  RP.Const (RP.Bits arg710)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg711), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg706), _), 32); 
                  RP.Const (RP.Bits arg707)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg708), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg704), _), 32), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg705), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg701), _), 32); 
                  RP.Const (RP.Bits arg702)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg703), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg698), _), 32); 
                  RP.Const (RP.Bits arg699)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg700), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg695), _), 32); 
                  RP.Const (RP.Bits arg696)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg697), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg692), _), 32); 
                  RP.Const (RP.Bits arg693)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg694), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg689), _), 32); 
                  RP.Const (RP.Bits arg690)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg691), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg686), _), 32); 
                  RP.Const (RP.Bits arg687)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg688), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg683), _), 32); 
                  RP.Const (RP.Bits arg684)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg685), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg680), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg681), _), 32); 
                  RP.Const (RP.Bits arg682)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg679)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg679 13 && Bitops.eq arg742 
            (Bits.of_int 24 5) && Bitops.eq arg743 (Bits.of_int 8 5) && 
          Bitops.eq arg740 (Bits.of_int 25 5) && Bitops.eq arg741 (Bits.of_int 
              9 5) && Bitops.eq arg738 (Bits.of_int 26 5) && Bitops.eq arg739 
            (Bits.of_int 10 5) && Bitops.eq arg736 (Bits.of_int 27 5) && 
          Bitops.eq arg737 (Bits.of_int 11 5) && Bitops.eq arg734 (Bits.of_int 
              28 5) && Bitops.eq arg735 (Bits.of_int 12 5) && Bitops.eq arg732 
            (Bits.of_int 29 5) && Bitops.eq arg733 (Bits.of_int 13 5) && 
          Bitops.eq arg730 (Bits.of_int 31 5) && Bitops.eq arg731 (Bits.of_int 
              15 5) && Bitops.eq arg727 (Bits.of_int 0 1) && Bitops.eq arg728 
            (Bits.of_int 8 32) && Bitops.eq arg729 (Bits.of_int 16 5) && 
          Bitops.eq arg724 (Bits.of_int 0 1) && Bitops.eq arg725 (Bits.of_int 9 
              32) && Bitops.eq arg726 (Bits.of_int 17 5) && Bitops.eq arg721 
            (Bits.of_int 0 1) && Bitops.eq arg722 (Bits.of_int 10 32) && 
          Bitops.eq arg723 (Bits.of_int 18 5) && Bitops.eq arg718 (Bits.of_int 
              0 1) && Bitops.eq arg719 (Bits.of_int 11 32) && Bitops.eq arg720 
            (Bits.of_int 19 5) && Bitops.eq arg715 (Bits.of_int 0 1) && 
          Bitops.eq arg716 (Bits.of_int 12 32) && Bitops.eq arg717 (Bits.of_int 
              20 5) && Bitops.eq arg712 (Bits.of_int 0 1) && Bitops.eq arg713 
            (Bits.of_int 13 32) && Bitops.eq arg714 (Bits.of_int 21 5) && 
          Bitops.eq arg709 (Bits.of_int 0 1) && Bitops.eq arg710 (Bits.of_int 
              14 32) && Bitops.eq arg711 (Bits.of_int 22 5) && Bitops.eq arg706 
            (Bits.of_int 0 1) && Bitops.eq arg707 (Bits.of_int 15 32) && 
          Bitops.eq arg708 (Bits.of_int 23 5) && Bitops.eq arg704 (Bits.of_int 
              0 1) && Bitops.eq arg705 (Bits.of_int 24 5) && Bitops.eq arg701 
            (Bits.of_int 0 1) && Bitops.eq arg702 (Bits.of_int 1 32) && 
          Bitops.eq arg703 (Bits.of_int 25 5) && Bitops.eq arg698 (Bits.of_int 
              0 1) && Bitops.eq arg699 (Bits.of_int 2 32) && Bitops.eq arg700 
            (Bits.of_int 26 5) && Bitops.eq arg695 (Bits.of_int 0 1) && 
          Bitops.eq arg696 (Bits.of_int 3 32) && Bitops.eq arg697 (Bits.of_int 
              27 5) && Bitops.eq arg692 (Bits.of_int 0 1) && Bitops.eq arg693 
            (Bits.of_int 4 32) && Bitops.eq arg694 (Bits.of_int 28 5) && 
          Bitops.eq arg689 (Bits.of_int 0 1) && Bitops.eq arg690 (Bits.of_int 5 
              32) && Bitops.eq arg691 (Bits.of_int 29 5) && Bitops.eq arg686 
            (Bits.of_int 0 1) && Bitops.eq arg687 (Bits.of_int 6 32) && 
          Bitops.eq arg688 (Bits.of_int 30 5) && Bitops.eq arg683 (Bits.of_int 
              0 1) && Bitops.eq arg684 (Bits.of_int 7 32) && Bitops.eq arg685 
            (Bits.of_int 31 5) && Bitops.eq arg680 (Bits.of_int 0 1) && 
          Bitops.eq arg681 (Bits.of_int 0 1) && Bitops.eq arg682 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 30 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg679)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg807), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg808), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg805), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg806), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg803), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg804), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg801), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg802), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg799), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg800), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg797), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg798), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg795), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg796), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg792), _), 32); 
                  RP.Const (RP.Bits arg793)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg794), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg789), _), 32); 
                  RP.Const (RP.Bits arg790)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg791), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg786), _), 32); 
                  RP.Const (RP.Bits arg787)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg788), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg783), _), 32); 
                  RP.Const (RP.Bits arg784)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg785), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg780), _), 32); 
                  RP.Const (RP.Bits arg781)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg782), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg777), _), 32); 
                  RP.Const (RP.Bits arg778)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg779), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg774), _), 32); 
                  RP.Const (RP.Bits arg775)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg776), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg771), _), 32); 
                  RP.Const (RP.Bits arg772)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg773), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg769), _), 32), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg770), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg766), _), 32); 
                  RP.Const (RP.Bits arg767)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg768), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg763), _), 32); 
                  RP.Const (RP.Bits arg764)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg765), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg760), _), 32); 
                  RP.Const (RP.Bits arg761)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg762), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg757), _), 32); 
                  RP.Const (RP.Bits arg758)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg759), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg754), _), 32); 
                  RP.Const (RP.Bits arg755)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg756), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg751), _), 32); 
                  RP.Const (RP.Bits arg752)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg753), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg748), _), 32); 
                  RP.Const (RP.Bits arg749)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg750), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg745), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg746), _), 32); 
                  RP.Const (RP.Bits arg747)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg744)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg744 13 && Bitops.eq arg807 
            (Bits.of_int 24 5) && Bitops.eq arg808 (Bits.of_int 8 5) && 
          Bitops.eq arg805 (Bits.of_int 25 5) && Bitops.eq arg806 (Bits.of_int 
              9 5) && Bitops.eq arg803 (Bits.of_int 26 5) && Bitops.eq arg804 
            (Bits.of_int 10 5) && Bitops.eq arg801 (Bits.of_int 27 5) && 
          Bitops.eq arg802 (Bits.of_int 11 5) && Bitops.eq arg799 (Bits.of_int 
              28 5) && Bitops.eq arg800 (Bits.of_int 12 5) && Bitops.eq arg797 
            (Bits.of_int 30 5) && Bitops.eq arg798 (Bits.of_int 14 5) && 
          Bitops.eq arg795 (Bits.of_int 31 5) && Bitops.eq arg796 (Bits.of_int 
              15 5) && Bitops.eq arg792 (Bits.of_int 0 1) && Bitops.eq arg793 
            (Bits.of_int 8 32) && Bitops.eq arg794 (Bits.of_int 16 5) && 
          Bitops.eq arg789 (Bits.of_int 0 1) && Bitops.eq arg790 (Bits.of_int 9 
              32) && Bitops.eq arg791 (Bits.of_int 17 5) && Bitops.eq arg786 
            (Bits.of_int 0 1) && Bitops.eq arg787 (Bits.of_int 10 32) && 
          Bitops.eq arg788 (Bits.of_int 18 5) && Bitops.eq arg783 (Bits.of_int 
              0 1) && Bitops.eq arg784 (Bits.of_int 11 32) && Bitops.eq arg785 
            (Bits.of_int 19 5) && Bitops.eq arg780 (Bits.of_int 0 1) && 
          Bitops.eq arg781 (Bits.of_int 12 32) && Bitops.eq arg782 (Bits.of_int 
              20 5) && Bitops.eq arg777 (Bits.of_int 0 1) && Bitops.eq arg778 
            (Bits.of_int 13 32) && Bitops.eq arg779 (Bits.of_int 21 5) && 
          Bitops.eq arg774 (Bits.of_int 0 1) && Bitops.eq arg775 (Bits.of_int 
              14 32) && Bitops.eq arg776 (Bits.of_int 22 5) && Bitops.eq arg771 
            (Bits.of_int 0 1) && Bitops.eq arg772 (Bits.of_int 15 32) && 
          Bitops.eq arg773 (Bits.of_int 23 5) && Bitops.eq arg769 (Bits.of_int 
              0 1) && Bitops.eq arg770 (Bits.of_int 24 5) && Bitops.eq arg766 
            (Bits.of_int 0 1) && Bitops.eq arg767 (Bits.of_int 1 32) && 
          Bitops.eq arg768 (Bits.of_int 25 5) && Bitops.eq arg763 (Bits.of_int 
              0 1) && Bitops.eq arg764 (Bits.of_int 2 32) && Bitops.eq arg765 
            (Bits.of_int 26 5) && Bitops.eq arg760 (Bits.of_int 0 1) && 
          Bitops.eq arg761 (Bits.of_int 3 32) && Bitops.eq arg762 (Bits.of_int 
              27 5) && Bitops.eq arg757 (Bits.of_int 0 1) && Bitops.eq arg758 
            (Bits.of_int 4 32) && Bitops.eq arg759 (Bits.of_int 28 5) && 
          Bitops.eq arg754 (Bits.of_int 0 1) && Bitops.eq arg755 (Bits.of_int 5 
              32) && Bitops.eq arg756 (Bits.of_int 29 5) && Bitops.eq arg751 
            (Bits.of_int 0 1) && Bitops.eq arg752 (Bits.of_int 6 32) && 
          Bitops.eq arg753 (Bits.of_int 30 5) && Bitops.eq arg748 (Bits.of_int 
              0 1) && Bitops.eq arg749 (Bits.of_int 7 32) && Bitops.eq arg750 
            (Bits.of_int 31 5) && Bitops.eq arg745 (Bits.of_int 0 1) && 
          Bitops.eq arg746 (Bits.of_int 0 1) && Bitops.eq arg747 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 29 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg744)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg872), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg873), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg870), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg871), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg868), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg869), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg866), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg867), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg864), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg865), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg862), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg863), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg860), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg861), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg857), _), 32); 
                  RP.Const (RP.Bits arg858)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg859), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg854), _), 32); 
                  RP.Const (RP.Bits arg855)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg856), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg851), _), 32); 
                  RP.Const (RP.Bits arg852)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg853), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg848), _), 32); 
                  RP.Const (RP.Bits arg849)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg850), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg845), _), 32); 
                  RP.Const (RP.Bits arg846)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg847), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg842), _), 32); 
                  RP.Const (RP.Bits arg843)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg844), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg839), _), 32); 
                  RP.Const (RP.Bits arg840)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg841), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg836), _), 32); 
                  RP.Const (RP.Bits arg837)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg838), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg834), _), 32), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg835), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg831), _), 32); 
                  RP.Const (RP.Bits arg832)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg833), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg828), _), 32); 
                  RP.Const (RP.Bits arg829)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg830), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg825), _), 32); 
                  RP.Const (RP.Bits arg826)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg827), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg822), _), 32); 
                  RP.Const (RP.Bits arg823)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg824), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg819), _), 32); 
                  RP.Const (RP.Bits arg820)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg821), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg816), _), 32); 
                  RP.Const (RP.Bits arg817)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg818), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg813), _), 32); 
                  RP.Const (RP.Bits arg814)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg815), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg810), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg811), _), 32); 
                  RP.Const (RP.Bits arg812)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg809)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg809 13 && Bitops.eq arg872 
            (Bits.of_int 24 5) && Bitops.eq arg873 (Bits.of_int 8 5) && 
          Bitops.eq arg870 (Bits.of_int 25 5) && Bitops.eq arg871 (Bits.of_int 
              9 5) && Bitops.eq arg868 (Bits.of_int 26 5) && Bitops.eq arg869 
            (Bits.of_int 10 5) && Bitops.eq arg866 (Bits.of_int 27 5) && 
          Bitops.eq arg867 (Bits.of_int 11 5) && Bitops.eq arg864 (Bits.of_int 
              29 5) && Bitops.eq arg865 (Bits.of_int 13 5) && Bitops.eq arg862 
            (Bits.of_int 30 5) && Bitops.eq arg863 (Bits.of_int 14 5) && 
          Bitops.eq arg860 (Bits.of_int 31 5) && Bitops.eq arg861 (Bits.of_int 
              15 5) && Bitops.eq arg857 (Bits.of_int 0 1) && Bitops.eq arg858 
            (Bits.of_int 8 32) && Bitops.eq arg859 (Bits.of_int 16 5) && 
          Bitops.eq arg854 (Bits.of_int 0 1) && Bitops.eq arg855 (Bits.of_int 9 
              32) && Bitops.eq arg856 (Bits.of_int 17 5) && Bitops.eq arg851 
            (Bits.of_int 0 1) && Bitops.eq arg852 (Bits.of_int 10 32) && 
          Bitops.eq arg853 (Bits.of_int 18 5) && Bitops.eq arg848 (Bits.of_int 
              0 1) && Bitops.eq arg849 (Bits.of_int 11 32) && Bitops.eq arg850 
            (Bits.of_int 19 5) && Bitops.eq arg845 (Bits.of_int 0 1) && 
          Bitops.eq arg846 (Bits.of_int 12 32) && Bitops.eq arg847 (Bits.of_int 
              20 5) && Bitops.eq arg842 (Bits.of_int 0 1) && Bitops.eq arg843 
            (Bits.of_int 13 32) && Bitops.eq arg844 (Bits.of_int 21 5) && 
          Bitops.eq arg839 (Bits.of_int 0 1) && Bitops.eq arg840 (Bits.of_int 
              14 32) && Bitops.eq arg841 (Bits.of_int 22 5) && Bitops.eq arg836 
            (Bits.of_int 0 1) && Bitops.eq arg837 (Bits.of_int 15 32) && 
          Bitops.eq arg838 (Bits.of_int 23 5) && Bitops.eq arg834 (Bits.of_int 
              0 1) && Bitops.eq arg835 (Bits.of_int 24 5) && Bitops.eq arg831 
            (Bits.of_int 0 1) && Bitops.eq arg832 (Bits.of_int 1 32) && 
          Bitops.eq arg833 (Bits.of_int 25 5) && Bitops.eq arg828 (Bits.of_int 
              0 1) && Bitops.eq arg829 (Bits.of_int 2 32) && Bitops.eq arg830 
            (Bits.of_int 26 5) && Bitops.eq arg825 (Bits.of_int 0 1) && 
          Bitops.eq arg826 (Bits.of_int 3 32) && Bitops.eq arg827 (Bits.of_int 
              27 5) && Bitops.eq arg822 (Bits.of_int 0 1) && Bitops.eq arg823 
            (Bits.of_int 4 32) && Bitops.eq arg824 (Bits.of_int 28 5) && 
          Bitops.eq arg819 (Bits.of_int 0 1) && Bitops.eq arg820 (Bits.of_int 5 
              32) && Bitops.eq arg821 (Bits.of_int 29 5) && Bitops.eq arg816 
            (Bits.of_int 0 1) && Bitops.eq arg817 (Bits.of_int 6 32) && 
          Bitops.eq arg818 (Bits.of_int 30 5) && Bitops.eq arg813 (Bits.of_int 
              0 1) && Bitops.eq arg814 (Bits.of_int 7 32) && Bitops.eq arg815 
            (Bits.of_int 31 5) && Bitops.eq arg810 (Bits.of_int 0 1) && 
          Bitops.eq arg811 (Bits.of_int 0 1) && Bitops.eq arg812 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 28 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg809)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg937), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg938), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg935), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg936), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg933), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg934), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg931), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg932), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg929), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg930), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg927), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg928), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg925), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg926), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg922), _), 32); 
                  RP.Const (RP.Bits arg923)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg924), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg919), _), 32); 
                  RP.Const (RP.Bits arg920)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg921), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg916), _), 32); 
                  RP.Const (RP.Bits arg917)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg918), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg913), _), 32); 
                  RP.Const (RP.Bits arg914)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg915), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg910), _), 32); 
                  RP.Const (RP.Bits arg911)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg912), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg907), _), 32); 
                  RP.Const (RP.Bits arg908)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg909), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg904), _), 32); 
                  RP.Const (RP.Bits arg905)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg906), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg901), _), 32); 
                  RP.Const (RP.Bits arg902)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg903), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg899), _), 32), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg900), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg896), _), 32); 
                  RP.Const (RP.Bits arg897)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg898), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg893), _), 32); 
                  RP.Const (RP.Bits arg894)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg895), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg890), _), 32); 
                  RP.Const (RP.Bits arg891)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg892), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg887), _), 32); 
                  RP.Const (RP.Bits arg888)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg889), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg884), _), 32); 
                  RP.Const (RP.Bits arg885)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg886), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg881), _), 32); 
                  RP.Const (RP.Bits arg882)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg883), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg878), _), 32); 
                  RP.Const (RP.Bits arg879)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg880), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg875), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg876), _), 32); 
                  RP.Const (RP.Bits arg877)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg874)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg874 13 && Bitops.eq arg937 
            (Bits.of_int 24 5) && Bitops.eq arg938 (Bits.of_int 8 5) && 
          Bitops.eq arg935 (Bits.of_int 25 5) && Bitops.eq arg936 (Bits.of_int 
              9 5) && Bitops.eq arg933 (Bits.of_int 26 5) && Bitops.eq arg934 
            (Bits.of_int 10 5) && Bitops.eq arg931 (Bits.of_int 28 5) && 
          Bitops.eq arg932 (Bits.of_int 12 5) && Bitops.eq arg929 (Bits.of_int 
              29 5) && Bitops.eq arg930 (Bits.of_int 13 5) && Bitops.eq arg927 
            (Bits.of_int 30 5) && Bitops.eq arg928 (Bits.of_int 14 5) && 
          Bitops.eq arg925 (Bits.of_int 31 5) && Bitops.eq arg926 (Bits.of_int 
              15 5) && Bitops.eq arg922 (Bits.of_int 0 1) && Bitops.eq arg923 
            (Bits.of_int 8 32) && Bitops.eq arg924 (Bits.of_int 16 5) && 
          Bitops.eq arg919 (Bits.of_int 0 1) && Bitops.eq arg920 (Bits.of_int 9 
              32) && Bitops.eq arg921 (Bits.of_int 17 5) && Bitops.eq arg916 
            (Bits.of_int 0 1) && Bitops.eq arg917 (Bits.of_int 10 32) && 
          Bitops.eq arg918 (Bits.of_int 18 5) && Bitops.eq arg913 (Bits.of_int 
              0 1) && Bitops.eq arg914 (Bits.of_int 11 32) && Bitops.eq arg915 
            (Bits.of_int 19 5) && Bitops.eq arg910 (Bits.of_int 0 1) && 
          Bitops.eq arg911 (Bits.of_int 12 32) && Bitops.eq arg912 (Bits.of_int 
              20 5) && Bitops.eq arg907 (Bits.of_int 0 1) && Bitops.eq arg908 
            (Bits.of_int 13 32) && Bitops.eq arg909 (Bits.of_int 21 5) && 
          Bitops.eq arg904 (Bits.of_int 0 1) && Bitops.eq arg905 (Bits.of_int 
              14 32) && Bitops.eq arg906 (Bits.of_int 22 5) && Bitops.eq arg901 
            (Bits.of_int 0 1) && Bitops.eq arg902 (Bits.of_int 15 32) && 
          Bitops.eq arg903 (Bits.of_int 23 5) && Bitops.eq arg899 (Bits.of_int 
              0 1) && Bitops.eq arg900 (Bits.of_int 24 5) && Bitops.eq arg896 
            (Bits.of_int 0 1) && Bitops.eq arg897 (Bits.of_int 1 32) && 
          Bitops.eq arg898 (Bits.of_int 25 5) && Bitops.eq arg893 (Bits.of_int 
              0 1) && Bitops.eq arg894 (Bits.of_int 2 32) && Bitops.eq arg895 
            (Bits.of_int 26 5) && Bitops.eq arg890 (Bits.of_int 0 1) && 
          Bitops.eq arg891 (Bits.of_int 3 32) && Bitops.eq arg892 (Bits.of_int 
              27 5) && Bitops.eq arg887 (Bits.of_int 0 1) && Bitops.eq arg888 
            (Bits.of_int 4 32) && Bitops.eq arg889 (Bits.of_int 28 5) && 
          Bitops.eq arg884 (Bits.of_int 0 1) && Bitops.eq arg885 (Bits.of_int 5 
              32) && Bitops.eq arg886 (Bits.of_int 29 5) && Bitops.eq arg881 
            (Bits.of_int 0 1) && Bitops.eq arg882 (Bits.of_int 6 32) && 
          Bitops.eq arg883 (Bits.of_int 30 5) && Bitops.eq arg878 (Bits.of_int 
              0 1) && Bitops.eq arg879 (Bits.of_int 7 32) && Bitops.eq arg880 
            (Bits.of_int 31 5) && Bitops.eq arg875 (Bits.of_int 0 1) && 
          Bitops.eq arg876 (Bits.of_int 0 1) && Bitops.eq arg877 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 27 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg874)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1002), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1003), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1000), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1001), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg998), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg999), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg996), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg997), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg994), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg995), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg992), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg993), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg990), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg991), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg987), _), 32); 
                  RP.Const (RP.Bits arg988)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg989), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg984), _), 32); 
                  RP.Const (RP.Bits arg985)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg986), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg981), _), 32); 
                  RP.Const (RP.Bits arg982)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg983), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg978), _), 32); 
                  RP.Const (RP.Bits arg979)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg980), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg975), _), 32); 
                  RP.Const (RP.Bits arg976)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg977), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg972), _), 32); 
                  RP.Const (RP.Bits arg973)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg974), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg969), _), 32); 
                  RP.Const (RP.Bits arg970)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg971), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg966), _), 32); 
                  RP.Const (RP.Bits arg967)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg968), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg964), _), 32), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg965), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg961), _), 32); 
                  RP.Const (RP.Bits arg962)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg963), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg958), _), 32); 
                  RP.Const (RP.Bits arg959)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg960), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg955), _), 32); 
                  RP.Const (RP.Bits arg956)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg957), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg952), _), 32); 
                  RP.Const (RP.Bits arg953)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg954), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg949), _), 32); 
                  RP.Const (RP.Bits arg950)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg951), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg946), _), 32); 
                  RP.Const (RP.Bits arg947)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg948), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg943), _), 32); 
                  RP.Const (RP.Bits arg944)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg945), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg940), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg941), _), 32); 
                  RP.Const (RP.Bits arg942)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg939)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg939 13 && Bitops.eq arg1002 
            (Bits.of_int 24 5) && Bitops.eq arg1003 (Bits.of_int 8 5) && 
          Bitops.eq arg1000 (Bits.of_int 25 5) && Bitops.eq arg1001 
            (Bits.of_int 9 5) && Bitops.eq arg998 (Bits.of_int 27 5) && 
          Bitops.eq arg999 (Bits.of_int 11 5) && Bitops.eq arg996 (Bits.of_int 
              28 5) && Bitops.eq arg997 (Bits.of_int 12 5) && Bitops.eq arg994 
            (Bits.of_int 29 5) && Bitops.eq arg995 (Bits.of_int 13 5) && 
          Bitops.eq arg992 (Bits.of_int 30 5) && Bitops.eq arg993 (Bits.of_int 
              14 5) && Bitops.eq arg990 (Bits.of_int 31 5) && Bitops.eq arg991 
            (Bits.of_int 15 5) && Bitops.eq arg987 (Bits.of_int 0 1) && 
          Bitops.eq arg988 (Bits.of_int 8 32) && Bitops.eq arg989 (Bits.of_int 
              16 5) && Bitops.eq arg984 (Bits.of_int 0 1) && Bitops.eq arg985 
            (Bits.of_int 9 32) && Bitops.eq arg986 (Bits.of_int 17 5) && 
          Bitops.eq arg981 (Bits.of_int 0 1) && Bitops.eq arg982 (Bits.of_int 
              10 32) && Bitops.eq arg983 (Bits.of_int 18 5) && Bitops.eq arg978 
            (Bits.of_int 0 1) && Bitops.eq arg979 (Bits.of_int 11 32) && 
          Bitops.eq arg980 (Bits.of_int 19 5) && Bitops.eq arg975 (Bits.of_int 
              0 1) && Bitops.eq arg976 (Bits.of_int 12 32) && Bitops.eq arg977 
            (Bits.of_int 20 5) && Bitops.eq arg972 (Bits.of_int 0 1) && 
          Bitops.eq arg973 (Bits.of_int 13 32) && Bitops.eq arg974 (Bits.of_int 
              21 5) && Bitops.eq arg969 (Bits.of_int 0 1) && Bitops.eq arg970 
            (Bits.of_int 14 32) && Bitops.eq arg971 (Bits.of_int 22 5) && 
          Bitops.eq arg966 (Bits.of_int 0 1) && Bitops.eq arg967 (Bits.of_int 
              15 32) && Bitops.eq arg968 (Bits.of_int 23 5) && Bitops.eq arg964 
            (Bits.of_int 0 1) && Bitops.eq arg965 (Bits.of_int 24 5) && 
          Bitops.eq arg961 (Bits.of_int 0 1) && Bitops.eq arg962 (Bits.of_int 1 
              32) && Bitops.eq arg963 (Bits.of_int 25 5) && Bitops.eq arg958 
            (Bits.of_int 0 1) && Bitops.eq arg959 (Bits.of_int 2 32) && 
          Bitops.eq arg960 (Bits.of_int 26 5) && Bitops.eq arg955 (Bits.of_int 
              0 1) && Bitops.eq arg956 (Bits.of_int 3 32) && Bitops.eq arg957 
            (Bits.of_int 27 5) && Bitops.eq arg952 (Bits.of_int 0 1) && 
          Bitops.eq arg953 (Bits.of_int 4 32) && Bitops.eq arg954 (Bits.of_int 
              28 5) && Bitops.eq arg949 (Bits.of_int 0 1) && Bitops.eq arg950 
            (Bits.of_int 5 32) && Bitops.eq arg951 (Bits.of_int 29 5) && 
          Bitops.eq arg946 (Bits.of_int 0 1) && Bitops.eq arg947 (Bits.of_int 6 
              32) && Bitops.eq arg948 (Bits.of_int 30 5) && Bitops.eq arg943 
            (Bits.of_int 0 1) && Bitops.eq arg944 (Bits.of_int 7 32) && 
          Bitops.eq arg945 (Bits.of_int 31 5) && Bitops.eq arg940 (Bits.of_int 
              0 1) && Bitops.eq arg941 (Bits.of_int 0 1) && Bitops.eq arg942 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 26 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg939)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1067), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1068), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1065), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1066), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1063), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1064), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1061), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1062), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1059), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1060), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1057), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1058), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1055), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1056), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1052), _), 32); 
                  RP.Const (RP.Bits arg1053)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1054), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1049), _), 32); 
                  RP.Const (RP.Bits arg1050)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1051), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1046), _), 32); 
                  RP.Const (RP.Bits arg1047)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1048), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1043), _), 32); 
                  RP.Const (RP.Bits arg1044)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1045), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1040), _), 32); 
                  RP.Const (RP.Bits arg1041)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1042), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1037), _), 32); 
                  RP.Const (RP.Bits arg1038)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1039), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1034), _), 32); 
                  RP.Const (RP.Bits arg1035)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1036), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1031), _), 32); 
                  RP.Const (RP.Bits arg1032)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1033), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1029), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1030), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1026), _), 32); 
                  RP.Const (RP.Bits arg1027)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1028), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1023), _), 32); 
                  RP.Const (RP.Bits arg1024)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1025), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1020), _), 32); 
                  RP.Const (RP.Bits arg1021)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1022), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1017), _), 32); 
                  RP.Const (RP.Bits arg1018)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1019), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1014), _), 32); 
                  RP.Const (RP.Bits arg1015)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1016), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1011), _), 32); 
                  RP.Const (RP.Bits arg1012)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1013), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1008), _), 32); 
                  RP.Const (RP.Bits arg1009)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1010), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1005), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1006), _), 32); 
                  RP.Const (RP.Bits arg1007)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg1004)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg1004 13 && Bitops.eq arg1067 
            (Bits.of_int 24 5) && Bitops.eq arg1068 (Bits.of_int 8 5) && 
          Bitops.eq arg1065 (Bits.of_int 26 5) && Bitops.eq arg1066 
            (Bits.of_int 10 5) && Bitops.eq arg1063 (Bits.of_int 27 5) && 
          Bitops.eq arg1064 (Bits.of_int 11 5) && Bitops.eq arg1061 
            (Bits.of_int 28 5) && Bitops.eq arg1062 (Bits.of_int 12 5) && 
          Bitops.eq arg1059 (Bits.of_int 29 5) && Bitops.eq arg1060 
            (Bits.of_int 13 5) && Bitops.eq arg1057 (Bits.of_int 30 5) && 
          Bitops.eq arg1058 (Bits.of_int 14 5) && Bitops.eq arg1055 
            (Bits.of_int 31 5) && Bitops.eq arg1056 (Bits.of_int 15 5) && 
          Bitops.eq arg1052 (Bits.of_int 0 1) && Bitops.eq arg1053 
            (Bits.of_int 8 32) && Bitops.eq arg1054 (Bits.of_int 16 5) && 
          Bitops.eq arg1049 (Bits.of_int 0 1) && Bitops.eq arg1050 
            (Bits.of_int 9 32) && Bitops.eq arg1051 (Bits.of_int 17 5) && 
          Bitops.eq arg1046 (Bits.of_int 0 1) && Bitops.eq arg1047 
            (Bits.of_int 10 32) && Bitops.eq arg1048 (Bits.of_int 18 5) && 
          Bitops.eq arg1043 (Bits.of_int 0 1) && Bitops.eq arg1044 
            (Bits.of_int 11 32) && Bitops.eq arg1045 (Bits.of_int 19 5) && 
          Bitops.eq arg1040 (Bits.of_int 0 1) && Bitops.eq arg1041 
            (Bits.of_int 12 32) && Bitops.eq arg1042 (Bits.of_int 20 5) && 
          Bitops.eq arg1037 (Bits.of_int 0 1) && Bitops.eq arg1038 
            (Bits.of_int 13 32) && Bitops.eq arg1039 (Bits.of_int 21 5) && 
          Bitops.eq arg1034 (Bits.of_int 0 1) && Bitops.eq arg1035 
            (Bits.of_int 14 32) && Bitops.eq arg1036 (Bits.of_int 22 5) && 
          Bitops.eq arg1031 (Bits.of_int 0 1) && Bitops.eq arg1032 
            (Bits.of_int 15 32) && Bitops.eq arg1033 (Bits.of_int 23 5) && 
          Bitops.eq arg1029 (Bits.of_int 0 1) && Bitops.eq arg1030 
            (Bits.of_int 24 5) && Bitops.eq arg1026 (Bits.of_int 0 1) && 
          Bitops.eq arg1027 (Bits.of_int 1 32) && Bitops.eq arg1028 
            (Bits.of_int 25 5) && Bitops.eq arg1023 (Bits.of_int 0 1) && 
          Bitops.eq arg1024 (Bits.of_int 2 32) && Bitops.eq arg1025 
            (Bits.of_int 26 5) && Bitops.eq arg1020 (Bits.of_int 0 1) && 
          Bitops.eq arg1021 (Bits.of_int 3 32) && Bitops.eq arg1022 
            (Bits.of_int 27 5) && Bitops.eq arg1017 (Bits.of_int 0 1) && 
          Bitops.eq arg1018 (Bits.of_int 4 32) && Bitops.eq arg1019 
            (Bits.of_int 28 5) && Bitops.eq arg1014 (Bits.of_int 0 1) && 
          Bitops.eq arg1015 (Bits.of_int 5 32) && Bitops.eq arg1016 
            (Bits.of_int 29 5) && Bitops.eq arg1011 (Bits.of_int 0 1) && 
          Bitops.eq arg1012 (Bits.of_int 6 32) && Bitops.eq arg1013 
            (Bits.of_int 30 5) && Bitops.eq arg1008 (Bits.of_int 0 1) && 
          Bitops.eq arg1009 (Bits.of_int 7 32) && Bitops.eq arg1010 
            (Bits.of_int 31 5) && Bitops.eq arg1005 (Bits.of_int 0 1) && 
          Bitops.eq arg1006 (Bits.of_int 0 1) && Bitops.eq arg1007 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 25 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg1004)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1132), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1133), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1130), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1131), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1128), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1129), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1126), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1127), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1124), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1125), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1122), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1123), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1120), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1121), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1117), _), 32); 
                  RP.Const (RP.Bits arg1118)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1119), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1114), _), 32); 
                  RP.Const (RP.Bits arg1115)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1116), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1111), _), 32); 
                  RP.Const (RP.Bits arg1112)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1113), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1108), _), 32); 
                  RP.Const (RP.Bits arg1109)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1110), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1105), _), 32); 
                  RP.Const (RP.Bits arg1106)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1107), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1102), _), 32); 
                  RP.Const (RP.Bits arg1103)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1104), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1099), _), 32); 
                  RP.Const (RP.Bits arg1100)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1101), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1096), _), 32); 
                  RP.Const (RP.Bits arg1097)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1098), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1094), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1095), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1091), _), 32); 
                  RP.Const (RP.Bits arg1092)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1093), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1088), _), 32); 
                  RP.Const (RP.Bits arg1089)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1090), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1085), _), 32); 
                  RP.Const (RP.Bits arg1086)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1087), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1082), _), 32); 
                  RP.Const (RP.Bits arg1083)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1084), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1079), _), 32); 
                  RP.Const (RP.Bits arg1080)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1081), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1076), _), 32); 
                  RP.Const (RP.Bits arg1077)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1078), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1073), _), 32); 
                  RP.Const (RP.Bits arg1074)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1075), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1070), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1071), _), 32); 
                  RP.Const (RP.Bits arg1072)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg1069)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg1069 13 && Bitops.eq arg1132 
            (Bits.of_int 25 5) && Bitops.eq arg1133 (Bits.of_int 9 5) && 
          Bitops.eq arg1130 (Bits.of_int 26 5) && Bitops.eq arg1131 
            (Bits.of_int 10 5) && Bitops.eq arg1128 (Bits.of_int 27 5) && 
          Bitops.eq arg1129 (Bits.of_int 11 5) && Bitops.eq arg1126 
            (Bits.of_int 28 5) && Bitops.eq arg1127 (Bits.of_int 12 5) && 
          Bitops.eq arg1124 (Bits.of_int 29 5) && Bitops.eq arg1125 
            (Bits.of_int 13 5) && Bitops.eq arg1122 (Bits.of_int 30 5) && 
          Bitops.eq arg1123 (Bits.of_int 14 5) && Bitops.eq arg1120 
            (Bits.of_int 31 5) && Bitops.eq arg1121 (Bits.of_int 15 5) && 
          Bitops.eq arg1117 (Bits.of_int 0 1) && Bitops.eq arg1118 
            (Bits.of_int 8 32) && Bitops.eq arg1119 (Bits.of_int 16 5) && 
          Bitops.eq arg1114 (Bits.of_int 0 1) && Bitops.eq arg1115 
            (Bits.of_int 9 32) && Bitops.eq arg1116 (Bits.of_int 17 5) && 
          Bitops.eq arg1111 (Bits.of_int 0 1) && Bitops.eq arg1112 
            (Bits.of_int 10 32) && Bitops.eq arg1113 (Bits.of_int 18 5) && 
          Bitops.eq arg1108 (Bits.of_int 0 1) && Bitops.eq arg1109 
            (Bits.of_int 11 32) && Bitops.eq arg1110 (Bits.of_int 19 5) && 
          Bitops.eq arg1105 (Bits.of_int 0 1) && Bitops.eq arg1106 
            (Bits.of_int 12 32) && Bitops.eq arg1107 (Bits.of_int 20 5) && 
          Bitops.eq arg1102 (Bits.of_int 0 1) && Bitops.eq arg1103 
            (Bits.of_int 13 32) && Bitops.eq arg1104 (Bits.of_int 21 5) && 
          Bitops.eq arg1099 (Bits.of_int 0 1) && Bitops.eq arg1100 
            (Bits.of_int 14 32) && Bitops.eq arg1101 (Bits.of_int 22 5) && 
          Bitops.eq arg1096 (Bits.of_int 0 1) && Bitops.eq arg1097 
            (Bits.of_int 15 32) && Bitops.eq arg1098 (Bits.of_int 23 5) && 
          Bitops.eq arg1094 (Bits.of_int 0 1) && Bitops.eq arg1095 
            (Bits.of_int 24 5) && Bitops.eq arg1091 (Bits.of_int 0 1) && 
          Bitops.eq arg1092 (Bits.of_int 1 32) && Bitops.eq arg1093 
            (Bits.of_int 25 5) && Bitops.eq arg1088 (Bits.of_int 0 1) && 
          Bitops.eq arg1089 (Bits.of_int 2 32) && Bitops.eq arg1090 
            (Bits.of_int 26 5) && Bitops.eq arg1085 (Bits.of_int 0 1) && 
          Bitops.eq arg1086 (Bits.of_int 3 32) && Bitops.eq arg1087 
            (Bits.of_int 27 5) && Bitops.eq arg1082 (Bits.of_int 0 1) && 
          Bitops.eq arg1083 (Bits.of_int 4 32) && Bitops.eq arg1084 
            (Bits.of_int 28 5) && Bitops.eq arg1079 (Bits.of_int 0 1) && 
          Bitops.eq arg1080 (Bits.of_int 5 32) && Bitops.eq arg1081 
            (Bits.of_int 29 5) && Bitops.eq arg1076 (Bits.of_int 0 1) && 
          Bitops.eq arg1077 (Bits.of_int 6 32) && Bitops.eq arg1078 
            (Bits.of_int 30 5) && Bitops.eq arg1073 (Bits.of_int 0 1) && 
          Bitops.eq arg1074 (Bits.of_int 7 32) && Bitops.eq arg1075 
            (Bits.of_int 31 5) && Bitops.eq arg1070 (Bits.of_int 0 1) && 
          Bitops.eq arg1071 (Bits.of_int 0 1) && Bitops.eq arg1072 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 24 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg1069)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1198), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1199), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1196), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1197), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1194), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1195), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1192), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1193), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1190), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1191), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1188), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1189), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1186), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1187), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1184), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1185), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1181), _), 32); 
                  RP.Const (RP.Bits arg1182)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1183), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1178), _), 32); 
                  RP.Const (RP.Bits arg1179)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1180), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1175), _), 32); 
                  RP.Const (RP.Bits arg1176)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1177), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1172), _), 32); 
                  RP.Const (RP.Bits arg1173)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1174), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1169), _), 32); 
                  RP.Const (RP.Bits arg1170)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1171), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1166), _), 32); 
                  RP.Const (RP.Bits arg1167)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1168), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1163), _), 32); 
                  RP.Const (RP.Bits arg1164)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1165), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1160), _), 32); 
                  RP.Const (RP.Bits arg1161)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1162), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1158), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1159), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1155), _), 32); 
                  RP.Const (RP.Bits arg1156)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1157), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1152), _), 32); 
                  RP.Const (RP.Bits arg1153)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1154), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1149), _), 32); 
                  RP.Const (RP.Bits arg1150)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1151), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1146), _), 32); 
                  RP.Const (RP.Bits arg1147)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1148), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1143), _), 32); 
                  RP.Const (RP.Bits arg1144)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1145), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1140), _), 32); 
                  RP.Const (RP.Bits arg1141)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1142), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1137), _), 32); 
                  RP.Const (RP.Bits arg1138)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1139), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1134), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1135), _), 32); 
                  RP.Const (RP.Bits arg1136)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1198 (Bits.of_int 24 5) && Bitops.eq 
            arg1199 (Bits.of_int 8 5) && Bitops.eq arg1196 
            (Bits.of_int 25 5) && Bitops.eq arg1197 (Bits.of_int 9 5) && 
          Bitops.eq arg1194 (Bits.of_int 26 5) && Bitops.eq arg1195 
            (Bits.of_int 10 5) && Bitops.eq arg1192 (Bits.of_int 27 5) && 
          Bitops.eq arg1193 (Bits.of_int 11 5) && Bitops.eq arg1190 
            (Bits.of_int 28 5) && Bitops.eq arg1191 (Bits.of_int 12 5) && 
          Bitops.eq arg1188 (Bits.of_int 29 5) && Bitops.eq arg1189 
            (Bits.of_int 13 5) && Bitops.eq arg1186 (Bits.of_int 30 5) && 
          Bitops.eq arg1187 (Bits.of_int 14 5) && Bitops.eq arg1184 
            (Bits.of_int 31 5) && Bitops.eq arg1185 (Bits.of_int 15 5) && 
          Bitops.eq arg1181 (Bits.of_int 0 1) && Bitops.eq arg1182 
            (Bits.of_int 8 32) && Bitops.eq arg1183 (Bits.of_int 16 5) && 
          Bitops.eq arg1178 (Bits.of_int 0 1) && Bitops.eq arg1179 
            (Bits.of_int 9 32) && Bitops.eq arg1180 (Bits.of_int 17 5) && 
          Bitops.eq arg1175 (Bits.of_int 0 1) && Bitops.eq arg1176 
            (Bits.of_int 10 32) && Bitops.eq arg1177 (Bits.of_int 18 5) && 
          Bitops.eq arg1172 (Bits.of_int 0 1) && Bitops.eq arg1173 
            (Bits.of_int 11 32) && Bitops.eq arg1174 (Bits.of_int 19 5) && 
          Bitops.eq arg1169 (Bits.of_int 0 1) && Bitops.eq arg1170 
            (Bits.of_int 12 32) && Bitops.eq arg1171 (Bits.of_int 20 5) && 
          Bitops.eq arg1166 (Bits.of_int 0 1) && Bitops.eq arg1167 
            (Bits.of_int 13 32) && Bitops.eq arg1168 (Bits.of_int 21 5) && 
          Bitops.eq arg1163 (Bits.of_int 0 1) && Bitops.eq arg1164 
            (Bits.of_int 14 32) && Bitops.eq arg1165 (Bits.of_int 22 5) && 
          Bitops.eq arg1160 (Bits.of_int 0 1) && Bitops.eq arg1161 
            (Bits.of_int 15 32) && Bitops.eq arg1162 (Bits.of_int 23 5) && 
          Bitops.eq arg1158 (Bits.of_int 0 1) && Bitops.eq arg1159 
            (Bits.of_int 24 5) && Bitops.eq arg1155 (Bits.of_int 0 1) && 
          Bitops.eq arg1156 (Bits.of_int 1 32) && Bitops.eq arg1157 
            (Bits.of_int 25 5) && Bitops.eq arg1152 (Bits.of_int 0 1) && 
          Bitops.eq arg1153 (Bits.of_int 2 32) && Bitops.eq arg1154 
            (Bits.of_int 26 5) && Bitops.eq arg1149 (Bits.of_int 0 1) && 
          Bitops.eq arg1150 (Bits.of_int 3 32) && Bitops.eq arg1151 
            (Bits.of_int 27 5) && Bitops.eq arg1146 (Bits.of_int 0 1) && 
          Bitops.eq arg1147 (Bits.of_int 4 32) && Bitops.eq arg1148 
            (Bits.of_int 28 5) && Bitops.eq arg1143 (Bits.of_int 0 1) && 
          Bitops.eq arg1144 (Bits.of_int 5 32) && Bitops.eq arg1145 
            (Bits.of_int 29 5) && Bitops.eq arg1140 (Bits.of_int 0 1) && 
          Bitops.eq arg1141 (Bits.of_int 6 32) && Bitops.eq arg1142 
            (Bits.of_int 30 5) && Bitops.eq arg1137 (Bits.of_int 0 1) && 
          Bitops.eq arg1138 (Bits.of_int 7 32) && Bitops.eq arg1139 
            (Bits.of_int 31 5) && Bitops.eq arg1134 (Bits.of_int 0 1) && 
          Bitops.eq arg1135 (Bits.of_int 0 1) && Bitops.eq arg1136 
            (Bits.of_int 16 32) && Bitops.ne rd (Bits.of_int 24 5) && Bitops.ne 
            rd (Bits.of_int 25 5) && Bitops.ne rd (Bits.of_int 26 5) && 
          Bitops.ne rd (Bits.of_int 27 5) && Bitops.ne rd (Bits.of_int 28 5) && 
          Bitops.ne rd (Bits.of_int 29 5) && Bitops.ne rd (Bits.of_int 30 5) && 
          Bitops.ne rd (Bits.of_int 31 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1262), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1263), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1260), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1261), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1258), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1259), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1256), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1257), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1254), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1255), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1252), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1253), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1250), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1251), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1247), _), 32); 
                  RP.Const (RP.Bits arg1248)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1249), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1244), _), 32); 
                  RP.Const (RP.Bits arg1245)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1246), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1241), _), 32); 
                  RP.Const (RP.Bits arg1242)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1243), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1238), _), 32); 
                  RP.Const (RP.Bits arg1239)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1240), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1235), _), 32); 
                  RP.Const (RP.Bits arg1236)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1237), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1232), _), 32); 
                  RP.Const (RP.Bits arg1233)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1234), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1229), _), 32); 
                  RP.Const (RP.Bits arg1230)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1231), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1226), _), 32); 
                  RP.Const (RP.Bits arg1227)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1228), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1224), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1225), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1221), _), 32); 
                  RP.Const (RP.Bits arg1222)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1223), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1218), _), 32); 
                  RP.Const (RP.Bits arg1219)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1220), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1215), _), 32); 
                  RP.Const (RP.Bits arg1216)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1217), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1212), _), 32); 
                  RP.Const (RP.Bits arg1213)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1214), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1209), _), 32); 
                  RP.Const (RP.Bits arg1210)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1211), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1206), _), 32); 
                  RP.Const (RP.Bits arg1207)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1208), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1203), _), 32); 
                  RP.Const (RP.Bits arg1204)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1205), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1200), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1201), _), 32); 
                  RP.Const (RP.Bits arg1202)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1262 (Bits.of_int 24 5) && Bitops.eq 
            arg1263 (Bits.of_int 8 5) && Bitops.eq arg1260 
            (Bits.of_int 25 5) && Bitops.eq arg1261 (Bits.of_int 9 5) && 
          Bitops.eq arg1258 (Bits.of_int 26 5) && Bitops.eq arg1259 
            (Bits.of_int 10 5) && Bitops.eq arg1256 (Bits.of_int 27 5) && 
          Bitops.eq arg1257 (Bits.of_int 11 5) && Bitops.eq arg1254 
            (Bits.of_int 28 5) && Bitops.eq arg1255 (Bits.of_int 12 5) && 
          Bitops.eq arg1252 (Bits.of_int 29 5) && Bitops.eq arg1253 
            (Bits.of_int 13 5) && Bitops.eq arg1250 (Bits.of_int 30 5) && 
          Bitops.eq arg1251 (Bits.of_int 14 5) && Bitops.eq arg1247 
            (Bits.of_int 0 1) && Bitops.eq arg1248 (Bits.of_int 8 32) && 
          Bitops.eq arg1249 (Bits.of_int 16 5) && Bitops.eq arg1244 
            (Bits.of_int 0 1) && Bitops.eq arg1245 (Bits.of_int 9 32) && 
          Bitops.eq arg1246 (Bits.of_int 17 5) && Bitops.eq arg1241 
            (Bits.of_int 0 1) && Bitops.eq arg1242 (Bits.of_int 10 32) && 
          Bitops.eq arg1243 (Bits.of_int 18 5) && Bitops.eq arg1238 
            (Bits.of_int 0 1) && Bitops.eq arg1239 (Bits.of_int 11 32) && 
          Bitops.eq arg1240 (Bits.of_int 19 5) && Bitops.eq arg1235 
            (Bits.of_int 0 1) && Bitops.eq arg1236 (Bits.of_int 12 32) && 
          Bitops.eq arg1237 (Bits.of_int 20 5) && Bitops.eq arg1232 
            (Bits.of_int 0 1) && Bitops.eq arg1233 (Bits.of_int 13 32) && 
          Bitops.eq arg1234 (Bits.of_int 21 5) && Bitops.eq arg1229 
            (Bits.of_int 0 1) && Bitops.eq arg1230 (Bits.of_int 14 32) && 
          Bitops.eq arg1231 (Bits.of_int 22 5) && Bitops.eq arg1226 
            (Bits.of_int 0 1) && Bitops.eq arg1227 (Bits.of_int 15 32) && 
          Bitops.eq arg1228 (Bits.of_int 23 5) && Bitops.eq arg1224 
            (Bits.of_int 0 1) && Bitops.eq arg1225 (Bits.of_int 24 5) && 
          Bitops.eq arg1221 (Bits.of_int 0 1) && Bitops.eq arg1222 
            (Bits.of_int 1 32) && Bitops.eq arg1223 (Bits.of_int 25 5) && 
          Bitops.eq arg1218 (Bits.of_int 0 1) && Bitops.eq arg1219 
            (Bits.of_int 2 32) && Bitops.eq arg1220 (Bits.of_int 26 5) && 
          Bitops.eq arg1215 (Bits.of_int 0 1) && Bitops.eq arg1216 
            (Bits.of_int 3 32) && Bitops.eq arg1217 (Bits.of_int 27 5) && 
          Bitops.eq arg1212 (Bits.of_int 0 1) && Bitops.eq arg1213 
            (Bits.of_int 4 32) && Bitops.eq arg1214 (Bits.of_int 28 5) && 
          Bitops.eq arg1209 (Bits.of_int 0 1) && Bitops.eq arg1210 
            (Bits.of_int 5 32) && Bitops.eq arg1211 (Bits.of_int 29 5) && 
          Bitops.eq arg1206 (Bits.of_int 0 1) && Bitops.eq arg1207 
            (Bits.of_int 6 32) && Bitops.eq arg1208 (Bits.of_int 30 5) && 
          Bitops.eq arg1203 (Bits.of_int 0 1) && Bitops.eq arg1204 
            (Bits.of_int 7 32) && Bitops.eq arg1205 (Bits.of_int 31 5) && 
          Bitops.eq arg1200 (Bits.of_int 0 1) && Bitops.eq arg1201 
            (Bits.of_int 0 1) && Bitops.eq arg1202 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 31 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1326), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1327), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1324), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1325), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1322), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1323), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1320), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1321), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1318), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1319), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1316), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1317), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1314), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1315), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1311), _), 32); 
                  RP.Const (RP.Bits arg1312)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1313), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1308), _), 32); 
                  RP.Const (RP.Bits arg1309)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1310), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1305), _), 32); 
                  RP.Const (RP.Bits arg1306)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1307), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1302), _), 32); 
                  RP.Const (RP.Bits arg1303)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1304), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1299), _), 32); 
                  RP.Const (RP.Bits arg1300)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1301), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1296), _), 32); 
                  RP.Const (RP.Bits arg1297)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1298), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1293), _), 32); 
                  RP.Const (RP.Bits arg1294)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1295), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1290), _), 32); 
                  RP.Const (RP.Bits arg1291)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1292), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1288), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1289), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1285), _), 32); 
                  RP.Const (RP.Bits arg1286)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1287), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1282), _), 32); 
                  RP.Const (RP.Bits arg1283)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1284), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1279), _), 32); 
                  RP.Const (RP.Bits arg1280)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1281), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1276), _), 32); 
                  RP.Const (RP.Bits arg1277)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1278), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1273), _), 32); 
                  RP.Const (RP.Bits arg1274)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1275), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1270), _), 32); 
                  RP.Const (RP.Bits arg1271)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1272), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1267), _), 32); 
                  RP.Const (RP.Bits arg1268)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1269), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1264), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1265), _), 32); 
                  RP.Const (RP.Bits arg1266)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1326 (Bits.of_int 24 5) && Bitops.eq 
            arg1327 (Bits.of_int 8 5) && Bitops.eq arg1324 
            (Bits.of_int 25 5) && Bitops.eq arg1325 (Bits.of_int 9 5) && 
          Bitops.eq arg1322 (Bits.of_int 26 5) && Bitops.eq arg1323 
            (Bits.of_int 10 5) && Bitops.eq arg1320 (Bits.of_int 27 5) && 
          Bitops.eq arg1321 (Bits.of_int 11 5) && Bitops.eq arg1318 
            (Bits.of_int 28 5) && Bitops.eq arg1319 (Bits.of_int 12 5) && 
          Bitops.eq arg1316 (Bits.of_int 29 5) && Bitops.eq arg1317 
            (Bits.of_int 13 5) && Bitops.eq arg1314 (Bits.of_int 31 5) && 
          Bitops.eq arg1315 (Bits.of_int 15 5) && Bitops.eq arg1311 
            (Bits.of_int 0 1) && Bitops.eq arg1312 (Bits.of_int 8 32) && 
          Bitops.eq arg1313 (Bits.of_int 16 5) && Bitops.eq arg1308 
            (Bits.of_int 0 1) && Bitops.eq arg1309 (Bits.of_int 9 32) && 
          Bitops.eq arg1310 (Bits.of_int 17 5) && Bitops.eq arg1305 
            (Bits.of_int 0 1) && Bitops.eq arg1306 (Bits.of_int 10 32) && 
          Bitops.eq arg1307 (Bits.of_int 18 5) && Bitops.eq arg1302 
            (Bits.of_int 0 1) && Bitops.eq arg1303 (Bits.of_int 11 32) && 
          Bitops.eq arg1304 (Bits.of_int 19 5) && Bitops.eq arg1299 
            (Bits.of_int 0 1) && Bitops.eq arg1300 (Bits.of_int 12 32) && 
          Bitops.eq arg1301 (Bits.of_int 20 5) && Bitops.eq arg1296 
            (Bits.of_int 0 1) && Bitops.eq arg1297 (Bits.of_int 13 32) && 
          Bitops.eq arg1298 (Bits.of_int 21 5) && Bitops.eq arg1293 
            (Bits.of_int 0 1) && Bitops.eq arg1294 (Bits.of_int 14 32) && 
          Bitops.eq arg1295 (Bits.of_int 22 5) && Bitops.eq arg1290 
            (Bits.of_int 0 1) && Bitops.eq arg1291 (Bits.of_int 15 32) && 
          Bitops.eq arg1292 (Bits.of_int 23 5) && Bitops.eq arg1288 
            (Bits.of_int 0 1) && Bitops.eq arg1289 (Bits.of_int 24 5) && 
          Bitops.eq arg1285 (Bits.of_int 0 1) && Bitops.eq arg1286 
            (Bits.of_int 1 32) && Bitops.eq arg1287 (Bits.of_int 25 5) && 
          Bitops.eq arg1282 (Bits.of_int 0 1) && Bitops.eq arg1283 
            (Bits.of_int 2 32) && Bitops.eq arg1284 (Bits.of_int 26 5) && 
          Bitops.eq arg1279 (Bits.of_int 0 1) && Bitops.eq arg1280 
            (Bits.of_int 3 32) && Bitops.eq arg1281 (Bits.of_int 27 5) && 
          Bitops.eq arg1276 (Bits.of_int 0 1) && Bitops.eq arg1277 
            (Bits.of_int 4 32) && Bitops.eq arg1278 (Bits.of_int 28 5) && 
          Bitops.eq arg1273 (Bits.of_int 0 1) && Bitops.eq arg1274 
            (Bits.of_int 5 32) && Bitops.eq arg1275 (Bits.of_int 29 5) && 
          Bitops.eq arg1270 (Bits.of_int 0 1) && Bitops.eq arg1271 
            (Bits.of_int 6 32) && Bitops.eq arg1272 (Bits.of_int 30 5) && 
          Bitops.eq arg1267 (Bits.of_int 0 1) && Bitops.eq arg1268 
            (Bits.of_int 7 32) && Bitops.eq arg1269 (Bits.of_int 31 5) && 
          Bitops.eq arg1264 (Bits.of_int 0 1) && Bitops.eq arg1265 
            (Bits.of_int 0 1) && Bitops.eq arg1266 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 30 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1390), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1391), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1388), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1389), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1386), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1387), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1384), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1385), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1382), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1383), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1380), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1381), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1378), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1379), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1375), _), 32); 
                  RP.Const (RP.Bits arg1376)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1377), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1372), _), 32); 
                  RP.Const (RP.Bits arg1373)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1374), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1369), _), 32); 
                  RP.Const (RP.Bits arg1370)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1371), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1366), _), 32); 
                  RP.Const (RP.Bits arg1367)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1368), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1363), _), 32); 
                  RP.Const (RP.Bits arg1364)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1365), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1360), _), 32); 
                  RP.Const (RP.Bits arg1361)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1362), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1357), _), 32); 
                  RP.Const (RP.Bits arg1358)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1359), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1354), _), 32); 
                  RP.Const (RP.Bits arg1355)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1356), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1352), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1353), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1349), _), 32); 
                  RP.Const (RP.Bits arg1350)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1351), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1346), _), 32); 
                  RP.Const (RP.Bits arg1347)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1348), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1343), _), 32); 
                  RP.Const (RP.Bits arg1344)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1345), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1340), _), 32); 
                  RP.Const (RP.Bits arg1341)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1342), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1337), _), 32); 
                  RP.Const (RP.Bits arg1338)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1339), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1334), _), 32); 
                  RP.Const (RP.Bits arg1335)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1336), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1331), _), 32); 
                  RP.Const (RP.Bits arg1332)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1333), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1328), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1329), _), 32); 
                  RP.Const (RP.Bits arg1330)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1390 (Bits.of_int 24 5) && Bitops.eq 
            arg1391 (Bits.of_int 8 5) && Bitops.eq arg1388 
            (Bits.of_int 25 5) && Bitops.eq arg1389 (Bits.of_int 9 5) && 
          Bitops.eq arg1386 (Bits.of_int 26 5) && Bitops.eq arg1387 
            (Bits.of_int 10 5) && Bitops.eq arg1384 (Bits.of_int 27 5) && 
          Bitops.eq arg1385 (Bits.of_int 11 5) && Bitops.eq arg1382 
            (Bits.of_int 28 5) && Bitops.eq arg1383 (Bits.of_int 12 5) && 
          Bitops.eq arg1380 (Bits.of_int 30 5) && Bitops.eq arg1381 
            (Bits.of_int 14 5) && Bitops.eq arg1378 (Bits.of_int 31 5) && 
          Bitops.eq arg1379 (Bits.of_int 15 5) && Bitops.eq arg1375 
            (Bits.of_int 0 1) && Bitops.eq arg1376 (Bits.of_int 8 32) && 
          Bitops.eq arg1377 (Bits.of_int 16 5) && Bitops.eq arg1372 
            (Bits.of_int 0 1) && Bitops.eq arg1373 (Bits.of_int 9 32) && 
          Bitops.eq arg1374 (Bits.of_int 17 5) && Bitops.eq arg1369 
            (Bits.of_int 0 1) && Bitops.eq arg1370 (Bits.of_int 10 32) && 
          Bitops.eq arg1371 (Bits.of_int 18 5) && Bitops.eq arg1366 
            (Bits.of_int 0 1) && Bitops.eq arg1367 (Bits.of_int 11 32) && 
          Bitops.eq arg1368 (Bits.of_int 19 5) && Bitops.eq arg1363 
            (Bits.of_int 0 1) && Bitops.eq arg1364 (Bits.of_int 12 32) && 
          Bitops.eq arg1365 (Bits.of_int 20 5) && Bitops.eq arg1360 
            (Bits.of_int 0 1) && Bitops.eq arg1361 (Bits.of_int 13 32) && 
          Bitops.eq arg1362 (Bits.of_int 21 5) && Bitops.eq arg1357 
            (Bits.of_int 0 1) && Bitops.eq arg1358 (Bits.of_int 14 32) && 
          Bitops.eq arg1359 (Bits.of_int 22 5) && Bitops.eq arg1354 
            (Bits.of_int 0 1) && Bitops.eq arg1355 (Bits.of_int 15 32) && 
          Bitops.eq arg1356 (Bits.of_int 23 5) && Bitops.eq arg1352 
            (Bits.of_int 0 1) && Bitops.eq arg1353 (Bits.of_int 24 5) && 
          Bitops.eq arg1349 (Bits.of_int 0 1) && Bitops.eq arg1350 
            (Bits.of_int 1 32) && Bitops.eq arg1351 (Bits.of_int 25 5) && 
          Bitops.eq arg1346 (Bits.of_int 0 1) && Bitops.eq arg1347 
            (Bits.of_int 2 32) && Bitops.eq arg1348 (Bits.of_int 26 5) && 
          Bitops.eq arg1343 (Bits.of_int 0 1) && Bitops.eq arg1344 
            (Bits.of_int 3 32) && Bitops.eq arg1345 (Bits.of_int 27 5) && 
          Bitops.eq arg1340 (Bits.of_int 0 1) && Bitops.eq arg1341 
            (Bits.of_int 4 32) && Bitops.eq arg1342 (Bits.of_int 28 5) && 
          Bitops.eq arg1337 (Bits.of_int 0 1) && Bitops.eq arg1338 
            (Bits.of_int 5 32) && Bitops.eq arg1339 (Bits.of_int 29 5) && 
          Bitops.eq arg1334 (Bits.of_int 0 1) && Bitops.eq arg1335 
            (Bits.of_int 6 32) && Bitops.eq arg1336 (Bits.of_int 30 5) && 
          Bitops.eq arg1331 (Bits.of_int 0 1) && Bitops.eq arg1332 
            (Bits.of_int 7 32) && Bitops.eq arg1333 (Bits.of_int 31 5) && 
          Bitops.eq arg1328 (Bits.of_int 0 1) && Bitops.eq arg1329 
            (Bits.of_int 0 1) && Bitops.eq arg1330 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 29 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1454), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1455), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1452), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1453), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1450), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1451), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1448), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1449), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1446), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1447), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1444), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1445), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1442), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1443), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1439), _), 32); 
                  RP.Const (RP.Bits arg1440)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1441), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1436), _), 32); 
                  RP.Const (RP.Bits arg1437)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1438), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1433), _), 32); 
                  RP.Const (RP.Bits arg1434)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1435), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1430), _), 32); 
                  RP.Const (RP.Bits arg1431)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1432), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1427), _), 32); 
                  RP.Const (RP.Bits arg1428)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1429), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1424), _), 32); 
                  RP.Const (RP.Bits arg1425)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1426), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1421), _), 32); 
                  RP.Const (RP.Bits arg1422)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1423), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1418), _), 32); 
                  RP.Const (RP.Bits arg1419)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1420), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1416), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1417), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1413), _), 32); 
                  RP.Const (RP.Bits arg1414)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1415), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1410), _), 32); 
                  RP.Const (RP.Bits arg1411)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1412), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1407), _), 32); 
                  RP.Const (RP.Bits arg1408)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1409), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1404), _), 32); 
                  RP.Const (RP.Bits arg1405)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1406), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1401), _), 32); 
                  RP.Const (RP.Bits arg1402)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1403), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1398), _), 32); 
                  RP.Const (RP.Bits arg1399)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1400), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1395), _), 32); 
                  RP.Const (RP.Bits arg1396)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1397), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1392), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1393), _), 32); 
                  RP.Const (RP.Bits arg1394)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1454 (Bits.of_int 24 5) && Bitops.eq 
            arg1455 (Bits.of_int 8 5) && Bitops.eq arg1452 
            (Bits.of_int 25 5) && Bitops.eq arg1453 (Bits.of_int 9 5) && 
          Bitops.eq arg1450 (Bits.of_int 26 5) && Bitops.eq arg1451 
            (Bits.of_int 10 5) && Bitops.eq arg1448 (Bits.of_int 27 5) && 
          Bitops.eq arg1449 (Bits.of_int 11 5) && Bitops.eq arg1446 
            (Bits.of_int 29 5) && Bitops.eq arg1447 (Bits.of_int 13 5) && 
          Bitops.eq arg1444 (Bits.of_int 30 5) && Bitops.eq arg1445 
            (Bits.of_int 14 5) && Bitops.eq arg1442 (Bits.of_int 31 5) && 
          Bitops.eq arg1443 (Bits.of_int 15 5) && Bitops.eq arg1439 
            (Bits.of_int 0 1) && Bitops.eq arg1440 (Bits.of_int 8 32) && 
          Bitops.eq arg1441 (Bits.of_int 16 5) && Bitops.eq arg1436 
            (Bits.of_int 0 1) && Bitops.eq arg1437 (Bits.of_int 9 32) && 
          Bitops.eq arg1438 (Bits.of_int 17 5) && Bitops.eq arg1433 
            (Bits.of_int 0 1) && Bitops.eq arg1434 (Bits.of_int 10 32) && 
          Bitops.eq arg1435 (Bits.of_int 18 5) && Bitops.eq arg1430 
            (Bits.of_int 0 1) && Bitops.eq arg1431 (Bits.of_int 11 32) && 
          Bitops.eq arg1432 (Bits.of_int 19 5) && Bitops.eq arg1427 
            (Bits.of_int 0 1) && Bitops.eq arg1428 (Bits.of_int 12 32) && 
          Bitops.eq arg1429 (Bits.of_int 20 5) && Bitops.eq arg1424 
            (Bits.of_int 0 1) && Bitops.eq arg1425 (Bits.of_int 13 32) && 
          Bitops.eq arg1426 (Bits.of_int 21 5) && Bitops.eq arg1421 
            (Bits.of_int 0 1) && Bitops.eq arg1422 (Bits.of_int 14 32) && 
          Bitops.eq arg1423 (Bits.of_int 22 5) && Bitops.eq arg1418 
            (Bits.of_int 0 1) && Bitops.eq arg1419 (Bits.of_int 15 32) && 
          Bitops.eq arg1420 (Bits.of_int 23 5) && Bitops.eq arg1416 
            (Bits.of_int 0 1) && Bitops.eq arg1417 (Bits.of_int 24 5) && 
          Bitops.eq arg1413 (Bits.of_int 0 1) && Bitops.eq arg1414 
            (Bits.of_int 1 32) && Bitops.eq arg1415 (Bits.of_int 25 5) && 
          Bitops.eq arg1410 (Bits.of_int 0 1) && Bitops.eq arg1411 
            (Bits.of_int 2 32) && Bitops.eq arg1412 (Bits.of_int 26 5) && 
          Bitops.eq arg1407 (Bits.of_int 0 1) && Bitops.eq arg1408 
            (Bits.of_int 3 32) && Bitops.eq arg1409 (Bits.of_int 27 5) && 
          Bitops.eq arg1404 (Bits.of_int 0 1) && Bitops.eq arg1405 
            (Bits.of_int 4 32) && Bitops.eq arg1406 (Bits.of_int 28 5) && 
          Bitops.eq arg1401 (Bits.of_int 0 1) && Bitops.eq arg1402 
            (Bits.of_int 5 32) && Bitops.eq arg1403 (Bits.of_int 29 5) && 
          Bitops.eq arg1398 (Bits.of_int 0 1) && Bitops.eq arg1399 
            (Bits.of_int 6 32) && Bitops.eq arg1400 (Bits.of_int 30 5) && 
          Bitops.eq arg1395 (Bits.of_int 0 1) && Bitops.eq arg1396 
            (Bits.of_int 7 32) && Bitops.eq arg1397 (Bits.of_int 31 5) && 
          Bitops.eq arg1392 (Bits.of_int 0 1) && Bitops.eq arg1393 
            (Bits.of_int 0 1) && Bitops.eq arg1394 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 28 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1518), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1519), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1516), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1517), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1514), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1515), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1512), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1513), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1510), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1511), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1508), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1509), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1506), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1507), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1503), _), 32); 
                  RP.Const (RP.Bits arg1504)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1505), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1500), _), 32); 
                  RP.Const (RP.Bits arg1501)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1502), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1497), _), 32); 
                  RP.Const (RP.Bits arg1498)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1499), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1494), _), 32); 
                  RP.Const (RP.Bits arg1495)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1496), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1491), _), 32); 
                  RP.Const (RP.Bits arg1492)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1493), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1488), _), 32); 
                  RP.Const (RP.Bits arg1489)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1490), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1485), _), 32); 
                  RP.Const (RP.Bits arg1486)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1487), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1482), _), 32); 
                  RP.Const (RP.Bits arg1483)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1484), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1480), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1481), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1477), _), 32); 
                  RP.Const (RP.Bits arg1478)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1479), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1474), _), 32); 
                  RP.Const (RP.Bits arg1475)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1476), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1471), _), 32); 
                  RP.Const (RP.Bits arg1472)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1473), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1468), _), 32); 
                  RP.Const (RP.Bits arg1469)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1470), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1465), _), 32); 
                  RP.Const (RP.Bits arg1466)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1467), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1462), _), 32); 
                  RP.Const (RP.Bits arg1463)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1464), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1459), _), 32); 
                  RP.Const (RP.Bits arg1460)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1461), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1456), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1457), _), 32); 
                  RP.Const (RP.Bits arg1458)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1518 (Bits.of_int 24 5) && Bitops.eq 
            arg1519 (Bits.of_int 8 5) && Bitops.eq arg1516 
            (Bits.of_int 25 5) && Bitops.eq arg1517 (Bits.of_int 9 5) && 
          Bitops.eq arg1514 (Bits.of_int 26 5) && Bitops.eq arg1515 
            (Bits.of_int 10 5) && Bitops.eq arg1512 (Bits.of_int 28 5) && 
          Bitops.eq arg1513 (Bits.of_int 12 5) && Bitops.eq arg1510 
            (Bits.of_int 29 5) && Bitops.eq arg1511 (Bits.of_int 13 5) && 
          Bitops.eq arg1508 (Bits.of_int 30 5) && Bitops.eq arg1509 
            (Bits.of_int 14 5) && Bitops.eq arg1506 (Bits.of_int 31 5) && 
          Bitops.eq arg1507 (Bits.of_int 15 5) && Bitops.eq arg1503 
            (Bits.of_int 0 1) && Bitops.eq arg1504 (Bits.of_int 8 32) && 
          Bitops.eq arg1505 (Bits.of_int 16 5) && Bitops.eq arg1500 
            (Bits.of_int 0 1) && Bitops.eq arg1501 (Bits.of_int 9 32) && 
          Bitops.eq arg1502 (Bits.of_int 17 5) && Bitops.eq arg1497 
            (Bits.of_int 0 1) && Bitops.eq arg1498 (Bits.of_int 10 32) && 
          Bitops.eq arg1499 (Bits.of_int 18 5) && Bitops.eq arg1494 
            (Bits.of_int 0 1) && Bitops.eq arg1495 (Bits.of_int 11 32) && 
          Bitops.eq arg1496 (Bits.of_int 19 5) && Bitops.eq arg1491 
            (Bits.of_int 0 1) && Bitops.eq arg1492 (Bits.of_int 12 32) && 
          Bitops.eq arg1493 (Bits.of_int 20 5) && Bitops.eq arg1488 
            (Bits.of_int 0 1) && Bitops.eq arg1489 (Bits.of_int 13 32) && 
          Bitops.eq arg1490 (Bits.of_int 21 5) && Bitops.eq arg1485 
            (Bits.of_int 0 1) && Bitops.eq arg1486 (Bits.of_int 14 32) && 
          Bitops.eq arg1487 (Bits.of_int 22 5) && Bitops.eq arg1482 
            (Bits.of_int 0 1) && Bitops.eq arg1483 (Bits.of_int 15 32) && 
          Bitops.eq arg1484 (Bits.of_int 23 5) && Bitops.eq arg1480 
            (Bits.of_int 0 1) && Bitops.eq arg1481 (Bits.of_int 24 5) && 
          Bitops.eq arg1477 (Bits.of_int 0 1) && Bitops.eq arg1478 
            (Bits.of_int 1 32) && Bitops.eq arg1479 (Bits.of_int 25 5) && 
          Bitops.eq arg1474 (Bits.of_int 0 1) && Bitops.eq arg1475 
            (Bits.of_int 2 32) && Bitops.eq arg1476 (Bits.of_int 26 5) && 
          Bitops.eq arg1471 (Bits.of_int 0 1) && Bitops.eq arg1472 
            (Bits.of_int 3 32) && Bitops.eq arg1473 (Bits.of_int 27 5) && 
          Bitops.eq arg1468 (Bits.of_int 0 1) && Bitops.eq arg1469 
            (Bits.of_int 4 32) && Bitops.eq arg1470 (Bits.of_int 28 5) && 
          Bitops.eq arg1465 (Bits.of_int 0 1) && Bitops.eq arg1466 
            (Bits.of_int 5 32) && Bitops.eq arg1467 (Bits.of_int 29 5) && 
          Bitops.eq arg1462 (Bits.of_int 0 1) && Bitops.eq arg1463 
            (Bits.of_int 6 32) && Bitops.eq arg1464 (Bits.of_int 30 5) && 
          Bitops.eq arg1459 (Bits.of_int 0 1) && Bitops.eq arg1460 
            (Bits.of_int 7 32) && Bitops.eq arg1461 (Bits.of_int 31 5) && 
          Bitops.eq arg1456 (Bits.of_int 0 1) && Bitops.eq arg1457 
            (Bits.of_int 0 1) && Bitops.eq arg1458 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 27 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1582), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1583), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1580), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1581), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1578), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1579), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1576), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1577), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1574), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1575), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1572), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1573), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1570), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1571), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1567), _), 32); 
                  RP.Const (RP.Bits arg1568)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1569), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1564), _), 32); 
                  RP.Const (RP.Bits arg1565)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1566), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1561), _), 32); 
                  RP.Const (RP.Bits arg1562)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1563), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1558), _), 32); 
                  RP.Const (RP.Bits arg1559)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1560), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1555), _), 32); 
                  RP.Const (RP.Bits arg1556)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1557), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1552), _), 32); 
                  RP.Const (RP.Bits arg1553)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1554), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1549), _), 32); 
                  RP.Const (RP.Bits arg1550)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1551), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1546), _), 32); 
                  RP.Const (RP.Bits arg1547)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1548), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1544), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1545), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1541), _), 32); 
                  RP.Const (RP.Bits arg1542)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1543), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1538), _), 32); 
                  RP.Const (RP.Bits arg1539)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1540), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1535), _), 32); 
                  RP.Const (RP.Bits arg1536)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1537), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1532), _), 32); 
                  RP.Const (RP.Bits arg1533)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1534), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1529), _), 32); 
                  RP.Const (RP.Bits arg1530)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1531), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1526), _), 32); 
                  RP.Const (RP.Bits arg1527)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1528), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1523), _), 32); 
                  RP.Const (RP.Bits arg1524)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1525), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1520), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1521), _), 32); 
                  RP.Const (RP.Bits arg1522)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1582 (Bits.of_int 24 5) && Bitops.eq 
            arg1583 (Bits.of_int 8 5) && Bitops.eq arg1580 
            (Bits.of_int 25 5) && Bitops.eq arg1581 (Bits.of_int 9 5) && 
          Bitops.eq arg1578 (Bits.of_int 27 5) && Bitops.eq arg1579 
            (Bits.of_int 11 5) && Bitops.eq arg1576 (Bits.of_int 28 5) && 
          Bitops.eq arg1577 (Bits.of_int 12 5) && Bitops.eq arg1574 
            (Bits.of_int 29 5) && Bitops.eq arg1575 (Bits.of_int 13 5) && 
          Bitops.eq arg1572 (Bits.of_int 30 5) && Bitops.eq arg1573 
            (Bits.of_int 14 5) && Bitops.eq arg1570 (Bits.of_int 31 5) && 
          Bitops.eq arg1571 (Bits.of_int 15 5) && Bitops.eq arg1567 
            (Bits.of_int 0 1) && Bitops.eq arg1568 (Bits.of_int 8 32) && 
          Bitops.eq arg1569 (Bits.of_int 16 5) && Bitops.eq arg1564 
            (Bits.of_int 0 1) && Bitops.eq arg1565 (Bits.of_int 9 32) && 
          Bitops.eq arg1566 (Bits.of_int 17 5) && Bitops.eq arg1561 
            (Bits.of_int 0 1) && Bitops.eq arg1562 (Bits.of_int 10 32) && 
          Bitops.eq arg1563 (Bits.of_int 18 5) && Bitops.eq arg1558 
            (Bits.of_int 0 1) && Bitops.eq arg1559 (Bits.of_int 11 32) && 
          Bitops.eq arg1560 (Bits.of_int 19 5) && Bitops.eq arg1555 
            (Bits.of_int 0 1) && Bitops.eq arg1556 (Bits.of_int 12 32) && 
          Bitops.eq arg1557 (Bits.of_int 20 5) && Bitops.eq arg1552 
            (Bits.of_int 0 1) && Bitops.eq arg1553 (Bits.of_int 13 32) && 
          Bitops.eq arg1554 (Bits.of_int 21 5) && Bitops.eq arg1549 
            (Bits.of_int 0 1) && Bitops.eq arg1550 (Bits.of_int 14 32) && 
          Bitops.eq arg1551 (Bits.of_int 22 5) && Bitops.eq arg1546 
            (Bits.of_int 0 1) && Bitops.eq arg1547 (Bits.of_int 15 32) && 
          Bitops.eq arg1548 (Bits.of_int 23 5) && Bitops.eq arg1544 
            (Bits.of_int 0 1) && Bitops.eq arg1545 (Bits.of_int 24 5) && 
          Bitops.eq arg1541 (Bits.of_int 0 1) && Bitops.eq arg1542 
            (Bits.of_int 1 32) && Bitops.eq arg1543 (Bits.of_int 25 5) && 
          Bitops.eq arg1538 (Bits.of_int 0 1) && Bitops.eq arg1539 
            (Bits.of_int 2 32) && Bitops.eq arg1540 (Bits.of_int 26 5) && 
          Bitops.eq arg1535 (Bits.of_int 0 1) && Bitops.eq arg1536 
            (Bits.of_int 3 32) && Bitops.eq arg1537 (Bits.of_int 27 5) && 
          Bitops.eq arg1532 (Bits.of_int 0 1) && Bitops.eq arg1533 
            (Bits.of_int 4 32) && Bitops.eq arg1534 (Bits.of_int 28 5) && 
          Bitops.eq arg1529 (Bits.of_int 0 1) && Bitops.eq arg1530 
            (Bits.of_int 5 32) && Bitops.eq arg1531 (Bits.of_int 29 5) && 
          Bitops.eq arg1526 (Bits.of_int 0 1) && Bitops.eq arg1527 
            (Bits.of_int 6 32) && Bitops.eq arg1528 (Bits.of_int 30 5) && 
          Bitops.eq arg1523 (Bits.of_int 0 1) && Bitops.eq arg1524 
            (Bits.of_int 7 32) && Bitops.eq arg1525 (Bits.of_int 31 5) && 
          Bitops.eq arg1520 (Bits.of_int 0 1) && Bitops.eq arg1521 
            (Bits.of_int 0 1) && Bitops.eq arg1522 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 26 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1646), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1647), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1644), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1645), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1642), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1643), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1640), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1641), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1638), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1639), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1636), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1637), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1634), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1635), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1631), _), 32); 
                  RP.Const (RP.Bits arg1632)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1633), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1628), _), 32); 
                  RP.Const (RP.Bits arg1629)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1630), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1625), _), 32); 
                  RP.Const (RP.Bits arg1626)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1627), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1622), _), 32); 
                  RP.Const (RP.Bits arg1623)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1624), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1619), _), 32); 
                  RP.Const (RP.Bits arg1620)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1621), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1616), _), 32); 
                  RP.Const (RP.Bits arg1617)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1618), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1613), _), 32); 
                  RP.Const (RP.Bits arg1614)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1615), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1610), _), 32); 
                  RP.Const (RP.Bits arg1611)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1612), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1608), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1609), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1605), _), 32); 
                  RP.Const (RP.Bits arg1606)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1607), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1602), _), 32); 
                  RP.Const (RP.Bits arg1603)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1604), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1599), _), 32); 
                  RP.Const (RP.Bits arg1600)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1601), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1596), _), 32); 
                  RP.Const (RP.Bits arg1597)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1598), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1593), _), 32); 
                  RP.Const (RP.Bits arg1594)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1595), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1590), _), 32); 
                  RP.Const (RP.Bits arg1591)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1592), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1587), _), 32); 
                  RP.Const (RP.Bits arg1588)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1589), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1584), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1585), _), 32); 
                  RP.Const (RP.Bits arg1586)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1646 (Bits.of_int 24 5) && Bitops.eq 
            arg1647 (Bits.of_int 8 5) && Bitops.eq arg1644 
            (Bits.of_int 26 5) && Bitops.eq arg1645 (Bits.of_int 10 5) && 
          Bitops.eq arg1642 (Bits.of_int 27 5) && Bitops.eq arg1643 
            (Bits.of_int 11 5) && Bitops.eq arg1640 (Bits.of_int 28 5) && 
          Bitops.eq arg1641 (Bits.of_int 12 5) && Bitops.eq arg1638 
            (Bits.of_int 29 5) && Bitops.eq arg1639 (Bits.of_int 13 5) && 
          Bitops.eq arg1636 (Bits.of_int 30 5) && Bitops.eq arg1637 
            (Bits.of_int 14 5) && Bitops.eq arg1634 (Bits.of_int 31 5) && 
          Bitops.eq arg1635 (Bits.of_int 15 5) && Bitops.eq arg1631 
            (Bits.of_int 0 1) && Bitops.eq arg1632 (Bits.of_int 8 32) && 
          Bitops.eq arg1633 (Bits.of_int 16 5) && Bitops.eq arg1628 
            (Bits.of_int 0 1) && Bitops.eq arg1629 (Bits.of_int 9 32) && 
          Bitops.eq arg1630 (Bits.of_int 17 5) && Bitops.eq arg1625 
            (Bits.of_int 0 1) && Bitops.eq arg1626 (Bits.of_int 10 32) && 
          Bitops.eq arg1627 (Bits.of_int 18 5) && Bitops.eq arg1622 
            (Bits.of_int 0 1) && Bitops.eq arg1623 (Bits.of_int 11 32) && 
          Bitops.eq arg1624 (Bits.of_int 19 5) && Bitops.eq arg1619 
            (Bits.of_int 0 1) && Bitops.eq arg1620 (Bits.of_int 12 32) && 
          Bitops.eq arg1621 (Bits.of_int 20 5) && Bitops.eq arg1616 
            (Bits.of_int 0 1) && Bitops.eq arg1617 (Bits.of_int 13 32) && 
          Bitops.eq arg1618 (Bits.of_int 21 5) && Bitops.eq arg1613 
            (Bits.of_int 0 1) && Bitops.eq arg1614 (Bits.of_int 14 32) && 
          Bitops.eq arg1615 (Bits.of_int 22 5) && Bitops.eq arg1610 
            (Bits.of_int 0 1) && Bitops.eq arg1611 (Bits.of_int 15 32) && 
          Bitops.eq arg1612 (Bits.of_int 23 5) && Bitops.eq arg1608 
            (Bits.of_int 0 1) && Bitops.eq arg1609 (Bits.of_int 24 5) && 
          Bitops.eq arg1605 (Bits.of_int 0 1) && Bitops.eq arg1606 
            (Bits.of_int 1 32) && Bitops.eq arg1607 (Bits.of_int 25 5) && 
          Bitops.eq arg1602 (Bits.of_int 0 1) && Bitops.eq arg1603 
            (Bits.of_int 2 32) && Bitops.eq arg1604 (Bits.of_int 26 5) && 
          Bitops.eq arg1599 (Bits.of_int 0 1) && Bitops.eq arg1600 
            (Bits.of_int 3 32) && Bitops.eq arg1601 (Bits.of_int 27 5) && 
          Bitops.eq arg1596 (Bits.of_int 0 1) && Bitops.eq arg1597 
            (Bits.of_int 4 32) && Bitops.eq arg1598 (Bits.of_int 28 5) && 
          Bitops.eq arg1593 (Bits.of_int 0 1) && Bitops.eq arg1594 
            (Bits.of_int 5 32) && Bitops.eq arg1595 (Bits.of_int 29 5) && 
          Bitops.eq arg1590 (Bits.of_int 0 1) && Bitops.eq arg1591 
            (Bits.of_int 6 32) && Bitops.eq arg1592 (Bits.of_int 30 5) && 
          Bitops.eq arg1587 (Bits.of_int 0 1) && Bitops.eq arg1588 
            (Bits.of_int 7 32) && Bitops.eq arg1589 (Bits.of_int 31 5) && 
          Bitops.eq arg1584 (Bits.of_int 0 1) && Bitops.eq arg1585 
            (Bits.of_int 0 1) && Bitops.eq arg1586 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 25 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1710), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1711), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1708), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1709), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1706), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1707), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1704), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1705), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1702), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1703), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1700), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1701), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1698), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1699), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1695), _), 32); 
                  RP.Const (RP.Bits arg1696)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1697), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1692), _), 32); 
                  RP.Const (RP.Bits arg1693)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1694), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1689), _), 32); 
                  RP.Const (RP.Bits arg1690)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1691), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1686), _), 32); 
                  RP.Const (RP.Bits arg1687)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1688), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1683), _), 32); 
                  RP.Const (RP.Bits arg1684)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1685), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1680), _), 32); 
                  RP.Const (RP.Bits arg1681)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1682), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1677), _), 32); 
                  RP.Const (RP.Bits arg1678)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1679), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1674), _), 32); 
                  RP.Const (RP.Bits arg1675)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1676), _), 32), 32)); 
          (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('w', Rtl.Identity, 32, RP.Fetch (RP.Cell ('W', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1672), _), 32), _), 
              RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg1673), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1669), _), 32); 
                  RP.Const (RP.Bits arg1670)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1671), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1666), _), 32); 
                  RP.Const (RP.Bits arg1667)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1668), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1663), _), 32); 
                  RP.Const (RP.Bits arg1664)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1665), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1660), _), 32); 
                  RP.Const (RP.Bits arg1661)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1662), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1657), _), 32); 
                  RP.Const (RP.Bits arg1658)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1659), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1654), _), 32); 
                  RP.Const (RP.Bits arg1655)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1656), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('w', Rtl.Identity, 32, 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1651), _), 32); 
                  RP.Const (RP.Bits arg1652)]), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1653), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1648), _), 
              RP.App (("add", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1649), _), 32); 
                  RP.Const (RP.Bits arg1650)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1710 (Bits.of_int 25 5) && Bitops.eq 
            arg1711 (Bits.of_int 9 5) && Bitops.eq arg1708 
            (Bits.of_int 26 5) && Bitops.eq arg1709 (Bits.of_int 10 5) && 
          Bitops.eq arg1706 (Bits.of_int 27 5) && Bitops.eq arg1707 
            (Bits.of_int 11 5) && Bitops.eq arg1704 (Bits.of_int 28 5) && 
          Bitops.eq arg1705 (Bits.of_int 12 5) && Bitops.eq arg1702 
            (Bits.of_int 29 5) && Bitops.eq arg1703 (Bits.of_int 13 5) && 
          Bitops.eq arg1700 (Bits.of_int 30 5) && Bitops.eq arg1701 
            (Bits.of_int 14 5) && Bitops.eq arg1698 (Bits.of_int 31 5) && 
          Bitops.eq arg1699 (Bits.of_int 15 5) && Bitops.eq arg1695 
            (Bits.of_int 0 1) && Bitops.eq arg1696 (Bits.of_int 8 32) && 
          Bitops.eq arg1697 (Bits.of_int 16 5) && Bitops.eq arg1692 
            (Bits.of_int 0 1) && Bitops.eq arg1693 (Bits.of_int 9 32) && 
          Bitops.eq arg1694 (Bits.of_int 17 5) && Bitops.eq arg1689 
            (Bits.of_int 0 1) && Bitops.eq arg1690 (Bits.of_int 10 32) && 
          Bitops.eq arg1691 (Bits.of_int 18 5) && Bitops.eq arg1686 
            (Bits.of_int 0 1) && Bitops.eq arg1687 (Bits.of_int 11 32) && 
          Bitops.eq arg1688 (Bits.of_int 19 5) && Bitops.eq arg1683 
            (Bits.of_int 0 1) && Bitops.eq arg1684 (Bits.of_int 12 32) && 
          Bitops.eq arg1685 (Bits.of_int 20 5) && Bitops.eq arg1680 
            (Bits.of_int 0 1) && Bitops.eq arg1681 (Bits.of_int 13 32) && 
          Bitops.eq arg1682 (Bits.of_int 21 5) && Bitops.eq arg1677 
            (Bits.of_int 0 1) && Bitops.eq arg1678 (Bits.of_int 14 32) && 
          Bitops.eq arg1679 (Bits.of_int 22 5) && Bitops.eq arg1674 
            (Bits.of_int 0 1) && Bitops.eq arg1675 (Bits.of_int 15 32) && 
          Bitops.eq arg1676 (Bits.of_int 23 5) && Bitops.eq arg1672 
            (Bits.of_int 0 1) && Bitops.eq arg1673 (Bits.of_int 24 5) && 
          Bitops.eq arg1669 (Bits.of_int 0 1) && Bitops.eq arg1670 
            (Bits.of_int 1 32) && Bitops.eq arg1671 (Bits.of_int 25 5) && 
          Bitops.eq arg1666 (Bits.of_int 0 1) && Bitops.eq arg1667 
            (Bits.of_int 2 32) && Bitops.eq arg1668 (Bits.of_int 26 5) && 
          Bitops.eq arg1663 (Bits.of_int 0 1) && Bitops.eq arg1664 
            (Bits.of_int 3 32) && Bitops.eq arg1665 (Bits.of_int 27 5) && 
          Bitops.eq arg1660 (Bits.of_int 0 1) && Bitops.eq arg1661 
            (Bits.of_int 4 32) && Bitops.eq arg1662 (Bits.of_int 28 5) && 
          Bitops.eq arg1657 (Bits.of_int 0 1) && Bitops.eq arg1658 
            (Bits.of_int 5 32) && Bitops.eq arg1659 (Bits.of_int 29 5) && 
          Bitops.eq arg1654 (Bits.of_int 0 1) && Bitops.eq arg1655 
            (Bits.of_int 6 32) && Bitops.eq arg1656 (Bits.of_int 30 5) && 
          Bitops.eq arg1651 (Bits.of_int 0 1) && Bitops.eq arg1652 
            (Bits.of_int 7 32) && Bitops.eq arg1653 (Bits.of_int 31 5) && 
          Bitops.eq arg1648 (Bits.of_int 0 1) && Bitops.eq arg1649 
            (Bits.of_int 0 1) && Bitops.eq arg1650 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 24 5)) -> 
           Instruction.save (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1778), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1779), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1776), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1777), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1774), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1775), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1772), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1773), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1770), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1771), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1768), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1769), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1766), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1767), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1764), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1765), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1761), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1762), _), 32); 
                    RP.Const (RP.Bits arg1763)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1758), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1759), _), 32); 
                    RP.Const (RP.Bits arg1760)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1755), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1756), _), 32); 
                    RP.Const (RP.Bits arg1757)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1752), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1753), _), 32); 
                    RP.Const (RP.Bits arg1754)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1749), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1750), _), 32); 
                    RP.Const (RP.Bits arg1751)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1746), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1747), _), 32); 
                    RP.Const (RP.Bits arg1748)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1743), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1744), _), 32); 
                    RP.Const (RP.Bits arg1745)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1740), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1741), _), 32); 
                    RP.Const (RP.Bits arg1742)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1737), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1738), _), 32); 
                    RP.Const (RP.Bits arg1739)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1734), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1735), _), 32); 
                    RP.Const (RP.Bits arg1736)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1731), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1732), _), 32); 
                    RP.Const (RP.Bits arg1733)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1728), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1729), _), 32); 
                    RP.Const (RP.Bits arg1730)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1725), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1726), _), 32); 
                    RP.Const (RP.Bits arg1727)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1722), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1723), _), 32); 
                    RP.Const (RP.Bits arg1724)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1719), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1720), _), 32); 
                    RP.Const (RP.Bits arg1721)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1716), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1717), _), 32); 
                    RP.Const (RP.Bits arg1718)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1713), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1714), _), 32); 
                  RP.Const (RP.Bits arg1715)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg1712)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg1712 13 && Bitops.eq arg1778 
            (Bits.of_int 8 5) && Bitops.eq arg1779 (Bits.of_int 24 5) && 
          Bitops.eq arg1776 (Bits.of_int 9 5) && Bitops.eq arg1777 
            (Bits.of_int 25 5) && Bitops.eq arg1774 (Bits.of_int 10 5) && 
          Bitops.eq arg1775 (Bits.of_int 26 5) && Bitops.eq arg1772 
            (Bits.of_int 11 5) && Bitops.eq arg1773 (Bits.of_int 27 5) && 
          Bitops.eq arg1770 (Bits.of_int 12 5) && Bitops.eq arg1771 
            (Bits.of_int 28 5) && Bitops.eq arg1768 (Bits.of_int 13 5) && 
          Bitops.eq arg1769 (Bits.of_int 29 5) && Bitops.eq arg1766 
            (Bits.of_int 14 5) && Bitops.eq arg1767 (Bits.of_int 30 5) && 
          Bitops.eq arg1764 (Bits.of_int 15 5) && Bitops.eq arg1765 
            (Bits.of_int 31 5) && Bitops.eq arg1761 (Bits.of_int 16 5) && 
          Bitops.eq arg1762 (Bits.of_int 0 1) && Bitops.eq arg1763 
            (Bits.of_int 8 32) && Bitops.eq arg1758 (Bits.of_int 17 5) && 
          Bitops.eq arg1759 (Bits.of_int 0 1) && Bitops.eq arg1760 
            (Bits.of_int 7 32) && Bitops.eq arg1755 (Bits.of_int 18 5) && 
          Bitops.eq arg1756 (Bits.of_int 0 1) && Bitops.eq arg1757 
            (Bits.of_int 6 32) && Bitops.eq arg1752 (Bits.of_int 19 5) && 
          Bitops.eq arg1753 (Bits.of_int 0 1) && Bitops.eq arg1754 
            (Bits.of_int 5 32) && Bitops.eq arg1749 (Bits.of_int 20 5) && 
          Bitops.eq arg1750 (Bits.of_int 0 1) && Bitops.eq arg1751 
            (Bits.of_int 4 32) && Bitops.eq arg1746 (Bits.of_int 21 5) && 
          Bitops.eq arg1747 (Bits.of_int 0 1) && Bitops.eq arg1748 
            (Bits.of_int 3 32) && Bitops.eq arg1743 (Bits.of_int 22 5) && 
          Bitops.eq arg1744 (Bits.of_int 0 1) && Bitops.eq arg1745 
            (Bits.of_int 2 32) && Bitops.eq arg1740 (Bits.of_int 23 5) && 
          Bitops.eq arg1741 (Bits.of_int 0 1) && Bitops.eq arg1742 
            (Bits.of_int 1 32) && Bitops.eq arg1737 (Bits.of_int 24 5) && 
          Bitops.eq arg1738 (Bits.of_int 0 1) && Bitops.eq arg1739 
            (Bits.of_int 16 32) && Bitops.eq arg1734 (Bits.of_int 25 5) && 
          Bitops.eq arg1735 (Bits.of_int 0 1) && Bitops.eq arg1736 
            (Bits.of_int 15 32) && Bitops.eq arg1731 (Bits.of_int 26 5) && 
          Bitops.eq arg1732 (Bits.of_int 0 1) && Bitops.eq arg1733 
            (Bits.of_int 14 32) && Bitops.eq arg1728 (Bits.of_int 27 5) && 
          Bitops.eq arg1729 (Bits.of_int 0 1) && Bitops.eq arg1730 
            (Bits.of_int 13 32) && Bitops.eq arg1725 (Bits.of_int 28 5) && 
          Bitops.eq arg1726 (Bits.of_int 0 1) && Bitops.eq arg1727 
            (Bits.of_int 12 32) && Bitops.eq arg1722 (Bits.of_int 29 5) && 
          Bitops.eq arg1723 (Bits.of_int 0 1) && Bitops.eq arg1724 
            (Bits.of_int 11 32) && Bitops.eq arg1719 (Bits.of_int 30 5) && 
          Bitops.eq arg1720 (Bits.of_int 0 1) && Bitops.eq arg1721 
            (Bits.of_int 10 32) && Bitops.eq arg1716 (Bits.of_int 31 5) && 
          Bitops.eq arg1717 (Bits.of_int 0 1) && Bitops.eq arg1718 
            (Bits.of_int 9 32) && Bitops.eq arg1713 (Bits.of_int 0 1) && 
          Bitops.eq arg1714 (Bits.of_int 0 1) && Bitops.eq arg1715 
            (Bits.of_int 16 32) && Bitops.ne rd (Bits.of_int 8 5) && Bitops.ne 
            rd (Bits.of_int 9 5) && Bitops.ne rd (Bits.of_int 10 5) && 
          Bitops.ne rd (Bits.of_int 11 5) && Bitops.ne rd (Bits.of_int 12 5) && 
          Bitops.ne rd (Bits.of_int 13 5) && Bitops.ne rd (Bits.of_int 14 5) && 
          Bitops.ne rd (Bits.of_int 15 5) && Bitops.ne rd (Bits.of_int 16 5) && 
          Bitops.ne rd (Bits.of_int 17 5) && Bitops.ne rd (Bits.of_int 18 5) && 
          Bitops.ne rd (Bits.of_int 19 5) && Bitops.ne rd (Bits.of_int 20 5) && 
          Bitops.ne rd (Bits.of_int 21 5) && Bitops.ne rd (Bits.of_int 22 5) && 
          Bitops.ne rd (Bits.of_int 23 5) && Bitops.ne rd (Bits.of_int 24 5) && 
          Bitops.ne rd (Bits.of_int 25 5) && Bitops.ne rd (Bits.of_int 26 5) && 
          Bitops.ne rd (Bits.of_int 27 5) && Bitops.ne rd (Bits.of_int 28 5) && 
          Bitops.ne rd (Bits.of_int 29 5) && Bitops.ne rd (Bits.of_int 30 5) && 
          Bitops.ne rd (Bits.of_int 31 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg1712)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1843), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1844), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1841), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1842), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1839), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1840), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1837), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1838), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1835), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1836), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1833), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1834), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1831), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1832), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1829), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1830), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1826), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1827), _), 32); 
                    RP.Const (RP.Bits arg1828)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1823), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1824), _), 32); 
                    RP.Const (RP.Bits arg1825)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1820), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1821), _), 32); 
                    RP.Const (RP.Bits arg1822)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1817), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1818), _), 32); 
                    RP.Const (RP.Bits arg1819)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1814), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1815), _), 32); 
                    RP.Const (RP.Bits arg1816)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1811), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1812), _), 32); 
                    RP.Const (RP.Bits arg1813)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1808), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1809), _), 32); 
                    RP.Const (RP.Bits arg1810)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1805), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1806), _), 32); 
                    RP.Const (RP.Bits arg1807)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1802), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1803), _), 32); 
                    RP.Const (RP.Bits arg1804)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1799), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1800), _), 32); 
                    RP.Const (RP.Bits arg1801)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1796), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1797), _), 32); 
                    RP.Const (RP.Bits arg1798)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1793), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1794), _), 32); 
                    RP.Const (RP.Bits arg1795)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1790), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1791), _), 32); 
                    RP.Const (RP.Bits arg1792)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1787), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1788), _), 32); 
                    RP.Const (RP.Bits arg1789)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1784), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1785), _), 32); 
                    RP.Const (RP.Bits arg1786)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1781), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1782), _), 32); 
                  RP.Const (RP.Bits arg1783)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg1780)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg1780 13 && Bitops.eq arg1843 
            (Bits.of_int 8 5) && Bitops.eq arg1844 (Bits.of_int 24 5) && 
          Bitops.eq arg1841 (Bits.of_int 9 5) && Bitops.eq arg1842 
            (Bits.of_int 25 5) && Bitops.eq arg1839 (Bits.of_int 10 5) && 
          Bitops.eq arg1840 (Bits.of_int 26 5) && Bitops.eq arg1837 
            (Bits.of_int 11 5) && Bitops.eq arg1838 (Bits.of_int 27 5) && 
          Bitops.eq arg1835 (Bits.of_int 12 5) && Bitops.eq arg1836 
            (Bits.of_int 28 5) && Bitops.eq arg1833 (Bits.of_int 13 5) && 
          Bitops.eq arg1834 (Bits.of_int 29 5) && Bitops.eq arg1831 
            (Bits.of_int 14 5) && Bitops.eq arg1832 (Bits.of_int 30 5) && 
          Bitops.eq arg1829 (Bits.of_int 15 5) && Bitops.eq arg1830 
            (Bits.of_int 31 5) && Bitops.eq arg1826 (Bits.of_int 16 5) && 
          Bitops.eq arg1827 (Bits.of_int 0 1) && Bitops.eq arg1828 
            (Bits.of_int 8 32) && Bitops.eq arg1823 (Bits.of_int 17 5) && 
          Bitops.eq arg1824 (Bits.of_int 0 1) && Bitops.eq arg1825 
            (Bits.of_int 7 32) && Bitops.eq arg1820 (Bits.of_int 18 5) && 
          Bitops.eq arg1821 (Bits.of_int 0 1) && Bitops.eq arg1822 
            (Bits.of_int 6 32) && Bitops.eq arg1817 (Bits.of_int 19 5) && 
          Bitops.eq arg1818 (Bits.of_int 0 1) && Bitops.eq arg1819 
            (Bits.of_int 5 32) && Bitops.eq arg1814 (Bits.of_int 20 5) && 
          Bitops.eq arg1815 (Bits.of_int 0 1) && Bitops.eq arg1816 
            (Bits.of_int 4 32) && Bitops.eq arg1811 (Bits.of_int 21 5) && 
          Bitops.eq arg1812 (Bits.of_int 0 1) && Bitops.eq arg1813 
            (Bits.of_int 3 32) && Bitops.eq arg1808 (Bits.of_int 22 5) && 
          Bitops.eq arg1809 (Bits.of_int 0 1) && Bitops.eq arg1810 
            (Bits.of_int 2 32) && Bitops.eq arg1805 (Bits.of_int 23 5) && 
          Bitops.eq arg1806 (Bits.of_int 0 1) && Bitops.eq arg1807 
            (Bits.of_int 1 32) && Bitops.eq arg1802 (Bits.of_int 24 5) && 
          Bitops.eq arg1803 (Bits.of_int 0 1) && Bitops.eq arg1804 
            (Bits.of_int 16 32) && Bitops.eq arg1799 (Bits.of_int 25 5) && 
          Bitops.eq arg1800 (Bits.of_int 0 1) && Bitops.eq arg1801 
            (Bits.of_int 15 32) && Bitops.eq arg1796 (Bits.of_int 26 5) && 
          Bitops.eq arg1797 (Bits.of_int 0 1) && Bitops.eq arg1798 
            (Bits.of_int 14 32) && Bitops.eq arg1793 (Bits.of_int 27 5) && 
          Bitops.eq arg1794 (Bits.of_int 0 1) && Bitops.eq arg1795 
            (Bits.of_int 13 32) && Bitops.eq arg1790 (Bits.of_int 28 5) && 
          Bitops.eq arg1791 (Bits.of_int 0 1) && Bitops.eq arg1792 
            (Bits.of_int 12 32) && Bitops.eq arg1787 (Bits.of_int 29 5) && 
          Bitops.eq arg1788 (Bits.of_int 0 1) && Bitops.eq arg1789 
            (Bits.of_int 11 32) && Bitops.eq arg1784 (Bits.of_int 30 5) && 
          Bitops.eq arg1785 (Bits.of_int 0 1) && Bitops.eq arg1786 
            (Bits.of_int 10 32) && Bitops.eq arg1781 (Bits.of_int 0 1) && 
          Bitops.eq arg1782 (Bits.of_int 0 1) && Bitops.eq arg1783 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 31 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg1780)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1908), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1909), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1906), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1907), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1904), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1905), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1902), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1903), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1900), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1901), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1898), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1899), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1896), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1897), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1894), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1895), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1891), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1892), _), 32); 
                    RP.Const (RP.Bits arg1893)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1888), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1889), _), 32); 
                    RP.Const (RP.Bits arg1890)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1885), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1886), _), 32); 
                    RP.Const (RP.Bits arg1887)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1882), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1883), _), 32); 
                    RP.Const (RP.Bits arg1884)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1879), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1880), _), 32); 
                    RP.Const (RP.Bits arg1881)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1876), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1877), _), 32); 
                    RP.Const (RP.Bits arg1878)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1873), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1874), _), 32); 
                    RP.Const (RP.Bits arg1875)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1870), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1871), _), 32); 
                    RP.Const (RP.Bits arg1872)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1867), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1868), _), 32); 
                    RP.Const (RP.Bits arg1869)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1864), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1865), _), 32); 
                    RP.Const (RP.Bits arg1866)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1861), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1862), _), 32); 
                    RP.Const (RP.Bits arg1863)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1858), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1859), _), 32); 
                    RP.Const (RP.Bits arg1860)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1855), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1856), _), 32); 
                    RP.Const (RP.Bits arg1857)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1852), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1853), _), 32); 
                    RP.Const (RP.Bits arg1854)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1849), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1850), _), 32); 
                    RP.Const (RP.Bits arg1851)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1846), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1847), _), 32); 
                  RP.Const (RP.Bits arg1848)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg1845)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg1845 13 && Bitops.eq arg1908 
            (Bits.of_int 8 5) && Bitops.eq arg1909 (Bits.of_int 24 5) && 
          Bitops.eq arg1906 (Bits.of_int 9 5) && Bitops.eq arg1907 
            (Bits.of_int 25 5) && Bitops.eq arg1904 (Bits.of_int 10 5) && 
          Bitops.eq arg1905 (Bits.of_int 26 5) && Bitops.eq arg1902 
            (Bits.of_int 11 5) && Bitops.eq arg1903 (Bits.of_int 27 5) && 
          Bitops.eq arg1900 (Bits.of_int 12 5) && Bitops.eq arg1901 
            (Bits.of_int 28 5) && Bitops.eq arg1898 (Bits.of_int 13 5) && 
          Bitops.eq arg1899 (Bits.of_int 29 5) && Bitops.eq arg1896 
            (Bits.of_int 14 5) && Bitops.eq arg1897 (Bits.of_int 30 5) && 
          Bitops.eq arg1894 (Bits.of_int 15 5) && Bitops.eq arg1895 
            (Bits.of_int 31 5) && Bitops.eq arg1891 (Bits.of_int 16 5) && 
          Bitops.eq arg1892 (Bits.of_int 0 1) && Bitops.eq arg1893 
            (Bits.of_int 8 32) && Bitops.eq arg1888 (Bits.of_int 17 5) && 
          Bitops.eq arg1889 (Bits.of_int 0 1) && Bitops.eq arg1890 
            (Bits.of_int 7 32) && Bitops.eq arg1885 (Bits.of_int 18 5) && 
          Bitops.eq arg1886 (Bits.of_int 0 1) && Bitops.eq arg1887 
            (Bits.of_int 6 32) && Bitops.eq arg1882 (Bits.of_int 19 5) && 
          Bitops.eq arg1883 (Bits.of_int 0 1) && Bitops.eq arg1884 
            (Bits.of_int 5 32) && Bitops.eq arg1879 (Bits.of_int 20 5) && 
          Bitops.eq arg1880 (Bits.of_int 0 1) && Bitops.eq arg1881 
            (Bits.of_int 4 32) && Bitops.eq arg1876 (Bits.of_int 21 5) && 
          Bitops.eq arg1877 (Bits.of_int 0 1) && Bitops.eq arg1878 
            (Bits.of_int 3 32) && Bitops.eq arg1873 (Bits.of_int 22 5) && 
          Bitops.eq arg1874 (Bits.of_int 0 1) && Bitops.eq arg1875 
            (Bits.of_int 2 32) && Bitops.eq arg1870 (Bits.of_int 23 5) && 
          Bitops.eq arg1871 (Bits.of_int 0 1) && Bitops.eq arg1872 
            (Bits.of_int 1 32) && Bitops.eq arg1867 (Bits.of_int 24 5) && 
          Bitops.eq arg1868 (Bits.of_int 0 1) && Bitops.eq arg1869 
            (Bits.of_int 16 32) && Bitops.eq arg1864 (Bits.of_int 25 5) && 
          Bitops.eq arg1865 (Bits.of_int 0 1) && Bitops.eq arg1866 
            (Bits.of_int 15 32) && Bitops.eq arg1861 (Bits.of_int 26 5) && 
          Bitops.eq arg1862 (Bits.of_int 0 1) && Bitops.eq arg1863 
            (Bits.of_int 14 32) && Bitops.eq arg1858 (Bits.of_int 27 5) && 
          Bitops.eq arg1859 (Bits.of_int 0 1) && Bitops.eq arg1860 
            (Bits.of_int 13 32) && Bitops.eq arg1855 (Bits.of_int 28 5) && 
          Bitops.eq arg1856 (Bits.of_int 0 1) && Bitops.eq arg1857 
            (Bits.of_int 12 32) && Bitops.eq arg1852 (Bits.of_int 29 5) && 
          Bitops.eq arg1853 (Bits.of_int 0 1) && Bitops.eq arg1854 
            (Bits.of_int 11 32) && Bitops.eq arg1849 (Bits.of_int 31 5) && 
          Bitops.eq arg1850 (Bits.of_int 0 1) && Bitops.eq arg1851 
            (Bits.of_int 9 32) && Bitops.eq arg1846 (Bits.of_int 0 1) && 
          Bitops.eq arg1847 (Bits.of_int 0 1) && Bitops.eq arg1848 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 30 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg1845)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg1973), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg1974), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1971), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1972), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1969), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1970), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1967), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1968), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1965), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1966), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1963), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1964), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1961), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1962), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1959), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg1960), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1956), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1957), _), 32); 
                    RP.Const (RP.Bits arg1958)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1953), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1954), _), 32); 
                    RP.Const (RP.Bits arg1955)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1950), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1951), _), 32); 
                    RP.Const (RP.Bits arg1952)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1947), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1948), _), 32); 
                    RP.Const (RP.Bits arg1949)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1944), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1945), _), 32); 
                    RP.Const (RP.Bits arg1946)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1941), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1942), _), 32); 
                    RP.Const (RP.Bits arg1943)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1938), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1939), _), 32); 
                    RP.Const (RP.Bits arg1940)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1935), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1936), _), 32); 
                    RP.Const (RP.Bits arg1937)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1932), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1933), _), 32); 
                    RP.Const (RP.Bits arg1934)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1929), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1930), _), 32); 
                    RP.Const (RP.Bits arg1931)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1926), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1927), _), 32); 
                    RP.Const (RP.Bits arg1928)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1923), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1924), _), 32); 
                    RP.Const (RP.Bits arg1925)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1920), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1921), _), 32); 
                    RP.Const (RP.Bits arg1922)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1917), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1918), _), 32); 
                    RP.Const (RP.Bits arg1919)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1914), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1915), _), 32); 
                    RP.Const (RP.Bits arg1916)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1911), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1912), _), 32); 
                  RP.Const (RP.Bits arg1913)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg1910)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg1910 13 && Bitops.eq arg1973 
            (Bits.of_int 8 5) && Bitops.eq arg1974 (Bits.of_int 24 5) && 
          Bitops.eq arg1971 (Bits.of_int 9 5) && Bitops.eq arg1972 
            (Bits.of_int 25 5) && Bitops.eq arg1969 (Bits.of_int 10 5) && 
          Bitops.eq arg1970 (Bits.of_int 26 5) && Bitops.eq arg1967 
            (Bits.of_int 11 5) && Bitops.eq arg1968 (Bits.of_int 27 5) && 
          Bitops.eq arg1965 (Bits.of_int 12 5) && Bitops.eq arg1966 
            (Bits.of_int 28 5) && Bitops.eq arg1963 (Bits.of_int 13 5) && 
          Bitops.eq arg1964 (Bits.of_int 29 5) && Bitops.eq arg1961 
            (Bits.of_int 14 5) && Bitops.eq arg1962 (Bits.of_int 30 5) && 
          Bitops.eq arg1959 (Bits.of_int 15 5) && Bitops.eq arg1960 
            (Bits.of_int 31 5) && Bitops.eq arg1956 (Bits.of_int 16 5) && 
          Bitops.eq arg1957 (Bits.of_int 0 1) && Bitops.eq arg1958 
            (Bits.of_int 8 32) && Bitops.eq arg1953 (Bits.of_int 17 5) && 
          Bitops.eq arg1954 (Bits.of_int 0 1) && Bitops.eq arg1955 
            (Bits.of_int 7 32) && Bitops.eq arg1950 (Bits.of_int 18 5) && 
          Bitops.eq arg1951 (Bits.of_int 0 1) && Bitops.eq arg1952 
            (Bits.of_int 6 32) && Bitops.eq arg1947 (Bits.of_int 19 5) && 
          Bitops.eq arg1948 (Bits.of_int 0 1) && Bitops.eq arg1949 
            (Bits.of_int 5 32) && Bitops.eq arg1944 (Bits.of_int 20 5) && 
          Bitops.eq arg1945 (Bits.of_int 0 1) && Bitops.eq arg1946 
            (Bits.of_int 4 32) && Bitops.eq arg1941 (Bits.of_int 21 5) && 
          Bitops.eq arg1942 (Bits.of_int 0 1) && Bitops.eq arg1943 
            (Bits.of_int 3 32) && Bitops.eq arg1938 (Bits.of_int 22 5) && 
          Bitops.eq arg1939 (Bits.of_int 0 1) && Bitops.eq arg1940 
            (Bits.of_int 2 32) && Bitops.eq arg1935 (Bits.of_int 23 5) && 
          Bitops.eq arg1936 (Bits.of_int 0 1) && Bitops.eq arg1937 
            (Bits.of_int 1 32) && Bitops.eq arg1932 (Bits.of_int 24 5) && 
          Bitops.eq arg1933 (Bits.of_int 0 1) && Bitops.eq arg1934 
            (Bits.of_int 16 32) && Bitops.eq arg1929 (Bits.of_int 25 5) && 
          Bitops.eq arg1930 (Bits.of_int 0 1) && Bitops.eq arg1931 
            (Bits.of_int 15 32) && Bitops.eq arg1926 (Bits.of_int 26 5) && 
          Bitops.eq arg1927 (Bits.of_int 0 1) && Bitops.eq arg1928 
            (Bits.of_int 14 32) && Bitops.eq arg1923 (Bits.of_int 27 5) && 
          Bitops.eq arg1924 (Bits.of_int 0 1) && Bitops.eq arg1925 
            (Bits.of_int 13 32) && Bitops.eq arg1920 (Bits.of_int 28 5) && 
          Bitops.eq arg1921 (Bits.of_int 0 1) && Bitops.eq arg1922 
            (Bits.of_int 12 32) && Bitops.eq arg1917 (Bits.of_int 30 5) && 
          Bitops.eq arg1918 (Bits.of_int 0 1) && Bitops.eq arg1919 
            (Bits.of_int 10 32) && Bitops.eq arg1914 (Bits.of_int 31 5) && 
          Bitops.eq arg1915 (Bits.of_int 0 1) && Bitops.eq arg1916 
            (Bits.of_int 9 32) && Bitops.eq arg1911 (Bits.of_int 0 1) && 
          Bitops.eq arg1912 (Bits.of_int 0 1) && Bitops.eq arg1913 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 29 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg1910)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2038), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2039), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2036), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2037), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2034), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2035), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2032), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2033), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2030), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2031), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2028), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2029), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2026), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2027), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2024), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2025), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2021), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2022), _), 32); 
                    RP.Const (RP.Bits arg2023)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2018), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2019), _), 32); 
                    RP.Const (RP.Bits arg2020)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2015), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2016), _), 32); 
                    RP.Const (RP.Bits arg2017)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2012), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2013), _), 32); 
                    RP.Const (RP.Bits arg2014)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2009), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2010), _), 32); 
                    RP.Const (RP.Bits arg2011)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2006), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2007), _), 32); 
                    RP.Const (RP.Bits arg2008)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2003), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2004), _), 32); 
                    RP.Const (RP.Bits arg2005)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2000), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2001), _), 32); 
                    RP.Const (RP.Bits arg2002)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1997), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1998), _), 32); 
                    RP.Const (RP.Bits arg1999)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1994), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1995), _), 32); 
                    RP.Const (RP.Bits arg1996)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1991), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1992), _), 32); 
                    RP.Const (RP.Bits arg1993)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1988), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1989), _), 32); 
                    RP.Const (RP.Bits arg1990)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1985), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1986), _), 32); 
                    RP.Const (RP.Bits arg1987)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1982), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1983), _), 32); 
                    RP.Const (RP.Bits arg1984)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1979), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg1980), _), 32); 
                    RP.Const (RP.Bits arg1981)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg1976), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg1977), _), 32); 
                  RP.Const (RP.Bits arg1978)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg1975)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg1975 13 && Bitops.eq arg2038 
            (Bits.of_int 8 5) && Bitops.eq arg2039 (Bits.of_int 24 5) && 
          Bitops.eq arg2036 (Bits.of_int 9 5) && Bitops.eq arg2037 
            (Bits.of_int 25 5) && Bitops.eq arg2034 (Bits.of_int 10 5) && 
          Bitops.eq arg2035 (Bits.of_int 26 5) && Bitops.eq arg2032 
            (Bits.of_int 11 5) && Bitops.eq arg2033 (Bits.of_int 27 5) && 
          Bitops.eq arg2030 (Bits.of_int 12 5) && Bitops.eq arg2031 
            (Bits.of_int 28 5) && Bitops.eq arg2028 (Bits.of_int 13 5) && 
          Bitops.eq arg2029 (Bits.of_int 29 5) && Bitops.eq arg2026 
            (Bits.of_int 14 5) && Bitops.eq arg2027 (Bits.of_int 30 5) && 
          Bitops.eq arg2024 (Bits.of_int 15 5) && Bitops.eq arg2025 
            (Bits.of_int 31 5) && Bitops.eq arg2021 (Bits.of_int 16 5) && 
          Bitops.eq arg2022 (Bits.of_int 0 1) && Bitops.eq arg2023 
            (Bits.of_int 8 32) && Bitops.eq arg2018 (Bits.of_int 17 5) && 
          Bitops.eq arg2019 (Bits.of_int 0 1) && Bitops.eq arg2020 
            (Bits.of_int 7 32) && Bitops.eq arg2015 (Bits.of_int 18 5) && 
          Bitops.eq arg2016 (Bits.of_int 0 1) && Bitops.eq arg2017 
            (Bits.of_int 6 32) && Bitops.eq arg2012 (Bits.of_int 19 5) && 
          Bitops.eq arg2013 (Bits.of_int 0 1) && Bitops.eq arg2014 
            (Bits.of_int 5 32) && Bitops.eq arg2009 (Bits.of_int 20 5) && 
          Bitops.eq arg2010 (Bits.of_int 0 1) && Bitops.eq arg2011 
            (Bits.of_int 4 32) && Bitops.eq arg2006 (Bits.of_int 21 5) && 
          Bitops.eq arg2007 (Bits.of_int 0 1) && Bitops.eq arg2008 
            (Bits.of_int 3 32) && Bitops.eq arg2003 (Bits.of_int 22 5) && 
          Bitops.eq arg2004 (Bits.of_int 0 1) && Bitops.eq arg2005 
            (Bits.of_int 2 32) && Bitops.eq arg2000 (Bits.of_int 23 5) && 
          Bitops.eq arg2001 (Bits.of_int 0 1) && Bitops.eq arg2002 
            (Bits.of_int 1 32) && Bitops.eq arg1997 (Bits.of_int 24 5) && 
          Bitops.eq arg1998 (Bits.of_int 0 1) && Bitops.eq arg1999 
            (Bits.of_int 16 32) && Bitops.eq arg1994 (Bits.of_int 25 5) && 
          Bitops.eq arg1995 (Bits.of_int 0 1) && Bitops.eq arg1996 
            (Bits.of_int 15 32) && Bitops.eq arg1991 (Bits.of_int 26 5) && 
          Bitops.eq arg1992 (Bits.of_int 0 1) && Bitops.eq arg1993 
            (Bits.of_int 14 32) && Bitops.eq arg1988 (Bits.of_int 27 5) && 
          Bitops.eq arg1989 (Bits.of_int 0 1) && Bitops.eq arg1990 
            (Bits.of_int 13 32) && Bitops.eq arg1985 (Bits.of_int 29 5) && 
          Bitops.eq arg1986 (Bits.of_int 0 1) && Bitops.eq arg1987 
            (Bits.of_int 11 32) && Bitops.eq arg1982 (Bits.of_int 30 5) && 
          Bitops.eq arg1983 (Bits.of_int 0 1) && Bitops.eq arg1984 
            (Bits.of_int 10 32) && Bitops.eq arg1979 (Bits.of_int 31 5) && 
          Bitops.eq arg1980 (Bits.of_int 0 1) && Bitops.eq arg1981 
            (Bits.of_int 9 32) && Bitops.eq arg1976 (Bits.of_int 0 1) && 
          Bitops.eq arg1977 (Bits.of_int 0 1) && Bitops.eq arg1978 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 28 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg1975)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2103), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2104), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2101), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2102), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2099), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2100), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2097), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2098), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2095), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2096), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2093), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2094), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2091), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2092), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2089), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2090), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2086), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2087), _), 32); 
                    RP.Const (RP.Bits arg2088)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2083), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2084), _), 32); 
                    RP.Const (RP.Bits arg2085)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2080), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2081), _), 32); 
                    RP.Const (RP.Bits arg2082)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2077), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2078), _), 32); 
                    RP.Const (RP.Bits arg2079)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2074), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2075), _), 32); 
                    RP.Const (RP.Bits arg2076)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2071), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2072), _), 32); 
                    RP.Const (RP.Bits arg2073)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2068), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2069), _), 32); 
                    RP.Const (RP.Bits arg2070)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2065), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2066), _), 32); 
                    RP.Const (RP.Bits arg2067)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2062), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2063), _), 32); 
                    RP.Const (RP.Bits arg2064)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2059), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2060), _), 32); 
                    RP.Const (RP.Bits arg2061)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2056), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2057), _), 32); 
                    RP.Const (RP.Bits arg2058)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2053), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2054), _), 32); 
                    RP.Const (RP.Bits arg2055)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2050), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2051), _), 32); 
                    RP.Const (RP.Bits arg2052)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2047), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2048), _), 32); 
                    RP.Const (RP.Bits arg2049)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2044), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2045), _), 32); 
                    RP.Const (RP.Bits arg2046)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2041), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2042), _), 32); 
                  RP.Const (RP.Bits arg2043)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2040)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2040 13 && Bitops.eq arg2103 
            (Bits.of_int 8 5) && Bitops.eq arg2104 (Bits.of_int 24 5) && 
          Bitops.eq arg2101 (Bits.of_int 9 5) && Bitops.eq arg2102 
            (Bits.of_int 25 5) && Bitops.eq arg2099 (Bits.of_int 10 5) && 
          Bitops.eq arg2100 (Bits.of_int 26 5) && Bitops.eq arg2097 
            (Bits.of_int 11 5) && Bitops.eq arg2098 (Bits.of_int 27 5) && 
          Bitops.eq arg2095 (Bits.of_int 12 5) && Bitops.eq arg2096 
            (Bits.of_int 28 5) && Bitops.eq arg2093 (Bits.of_int 13 5) && 
          Bitops.eq arg2094 (Bits.of_int 29 5) && Bitops.eq arg2091 
            (Bits.of_int 14 5) && Bitops.eq arg2092 (Bits.of_int 30 5) && 
          Bitops.eq arg2089 (Bits.of_int 15 5) && Bitops.eq arg2090 
            (Bits.of_int 31 5) && Bitops.eq arg2086 (Bits.of_int 16 5) && 
          Bitops.eq arg2087 (Bits.of_int 0 1) && Bitops.eq arg2088 
            (Bits.of_int 8 32) && Bitops.eq arg2083 (Bits.of_int 17 5) && 
          Bitops.eq arg2084 (Bits.of_int 0 1) && Bitops.eq arg2085 
            (Bits.of_int 7 32) && Bitops.eq arg2080 (Bits.of_int 18 5) && 
          Bitops.eq arg2081 (Bits.of_int 0 1) && Bitops.eq arg2082 
            (Bits.of_int 6 32) && Bitops.eq arg2077 (Bits.of_int 19 5) && 
          Bitops.eq arg2078 (Bits.of_int 0 1) && Bitops.eq arg2079 
            (Bits.of_int 5 32) && Bitops.eq arg2074 (Bits.of_int 20 5) && 
          Bitops.eq arg2075 (Bits.of_int 0 1) && Bitops.eq arg2076 
            (Bits.of_int 4 32) && Bitops.eq arg2071 (Bits.of_int 21 5) && 
          Bitops.eq arg2072 (Bits.of_int 0 1) && Bitops.eq arg2073 
            (Bits.of_int 3 32) && Bitops.eq arg2068 (Bits.of_int 22 5) && 
          Bitops.eq arg2069 (Bits.of_int 0 1) && Bitops.eq arg2070 
            (Bits.of_int 2 32) && Bitops.eq arg2065 (Bits.of_int 23 5) && 
          Bitops.eq arg2066 (Bits.of_int 0 1) && Bitops.eq arg2067 
            (Bits.of_int 1 32) && Bitops.eq arg2062 (Bits.of_int 24 5) && 
          Bitops.eq arg2063 (Bits.of_int 0 1) && Bitops.eq arg2064 
            (Bits.of_int 16 32) && Bitops.eq arg2059 (Bits.of_int 25 5) && 
          Bitops.eq arg2060 (Bits.of_int 0 1) && Bitops.eq arg2061 
            (Bits.of_int 15 32) && Bitops.eq arg2056 (Bits.of_int 26 5) && 
          Bitops.eq arg2057 (Bits.of_int 0 1) && Bitops.eq arg2058 
            (Bits.of_int 14 32) && Bitops.eq arg2053 (Bits.of_int 28 5) && 
          Bitops.eq arg2054 (Bits.of_int 0 1) && Bitops.eq arg2055 
            (Bits.of_int 12 32) && Bitops.eq arg2050 (Bits.of_int 29 5) && 
          Bitops.eq arg2051 (Bits.of_int 0 1) && Bitops.eq arg2052 
            (Bits.of_int 11 32) && Bitops.eq arg2047 (Bits.of_int 30 5) && 
          Bitops.eq arg2048 (Bits.of_int 0 1) && Bitops.eq arg2049 
            (Bits.of_int 10 32) && Bitops.eq arg2044 (Bits.of_int 31 5) && 
          Bitops.eq arg2045 (Bits.of_int 0 1) && Bitops.eq arg2046 
            (Bits.of_int 9 32) && Bitops.eq arg2041 (Bits.of_int 0 1) && 
          Bitops.eq arg2042 (Bits.of_int 0 1) && Bitops.eq arg2043 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 27 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2040)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2168), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2169), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2166), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2167), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2164), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2165), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2162), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2163), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2160), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2161), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2158), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2159), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2156), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2157), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2154), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2155), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2151), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2152), _), 32); 
                    RP.Const (RP.Bits arg2153)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2148), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2149), _), 32); 
                    RP.Const (RP.Bits arg2150)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2145), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2146), _), 32); 
                    RP.Const (RP.Bits arg2147)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2142), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2143), _), 32); 
                    RP.Const (RP.Bits arg2144)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2139), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2140), _), 32); 
                    RP.Const (RP.Bits arg2141)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2136), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2137), _), 32); 
                    RP.Const (RP.Bits arg2138)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2133), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2134), _), 32); 
                    RP.Const (RP.Bits arg2135)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2130), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2131), _), 32); 
                    RP.Const (RP.Bits arg2132)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2127), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2128), _), 32); 
                    RP.Const (RP.Bits arg2129)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2124), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2125), _), 32); 
                    RP.Const (RP.Bits arg2126)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2121), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2122), _), 32); 
                    RP.Const (RP.Bits arg2123)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2118), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2119), _), 32); 
                    RP.Const (RP.Bits arg2120)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2115), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2116), _), 32); 
                    RP.Const (RP.Bits arg2117)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2112), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2113), _), 32); 
                    RP.Const (RP.Bits arg2114)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2109), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2110), _), 32); 
                    RP.Const (RP.Bits arg2111)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2106), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2107), _), 32); 
                  RP.Const (RP.Bits arg2108)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2105)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2105 13 && Bitops.eq arg2168 
            (Bits.of_int 8 5) && Bitops.eq arg2169 (Bits.of_int 24 5) && 
          Bitops.eq arg2166 (Bits.of_int 9 5) && Bitops.eq arg2167 
            (Bits.of_int 25 5) && Bitops.eq arg2164 (Bits.of_int 10 5) && 
          Bitops.eq arg2165 (Bits.of_int 26 5) && Bitops.eq arg2162 
            (Bits.of_int 11 5) && Bitops.eq arg2163 (Bits.of_int 27 5) && 
          Bitops.eq arg2160 (Bits.of_int 12 5) && Bitops.eq arg2161 
            (Bits.of_int 28 5) && Bitops.eq arg2158 (Bits.of_int 13 5) && 
          Bitops.eq arg2159 (Bits.of_int 29 5) && Bitops.eq arg2156 
            (Bits.of_int 14 5) && Bitops.eq arg2157 (Bits.of_int 30 5) && 
          Bitops.eq arg2154 (Bits.of_int 15 5) && Bitops.eq arg2155 
            (Bits.of_int 31 5) && Bitops.eq arg2151 (Bits.of_int 16 5) && 
          Bitops.eq arg2152 (Bits.of_int 0 1) && Bitops.eq arg2153 
            (Bits.of_int 8 32) && Bitops.eq arg2148 (Bits.of_int 17 5) && 
          Bitops.eq arg2149 (Bits.of_int 0 1) && Bitops.eq arg2150 
            (Bits.of_int 7 32) && Bitops.eq arg2145 (Bits.of_int 18 5) && 
          Bitops.eq arg2146 (Bits.of_int 0 1) && Bitops.eq arg2147 
            (Bits.of_int 6 32) && Bitops.eq arg2142 (Bits.of_int 19 5) && 
          Bitops.eq arg2143 (Bits.of_int 0 1) && Bitops.eq arg2144 
            (Bits.of_int 5 32) && Bitops.eq arg2139 (Bits.of_int 20 5) && 
          Bitops.eq arg2140 (Bits.of_int 0 1) && Bitops.eq arg2141 
            (Bits.of_int 4 32) && Bitops.eq arg2136 (Bits.of_int 21 5) && 
          Bitops.eq arg2137 (Bits.of_int 0 1) && Bitops.eq arg2138 
            (Bits.of_int 3 32) && Bitops.eq arg2133 (Bits.of_int 22 5) && 
          Bitops.eq arg2134 (Bits.of_int 0 1) && Bitops.eq arg2135 
            (Bits.of_int 2 32) && Bitops.eq arg2130 (Bits.of_int 23 5) && 
          Bitops.eq arg2131 (Bits.of_int 0 1) && Bitops.eq arg2132 
            (Bits.of_int 1 32) && Bitops.eq arg2127 (Bits.of_int 24 5) && 
          Bitops.eq arg2128 (Bits.of_int 0 1) && Bitops.eq arg2129 
            (Bits.of_int 16 32) && Bitops.eq arg2124 (Bits.of_int 25 5) && 
          Bitops.eq arg2125 (Bits.of_int 0 1) && Bitops.eq arg2126 
            (Bits.of_int 15 32) && Bitops.eq arg2121 (Bits.of_int 27 5) && 
          Bitops.eq arg2122 (Bits.of_int 0 1) && Bitops.eq arg2123 
            (Bits.of_int 13 32) && Bitops.eq arg2118 (Bits.of_int 28 5) && 
          Bitops.eq arg2119 (Bits.of_int 0 1) && Bitops.eq arg2120 
            (Bits.of_int 12 32) && Bitops.eq arg2115 (Bits.of_int 29 5) && 
          Bitops.eq arg2116 (Bits.of_int 0 1) && Bitops.eq arg2117 
            (Bits.of_int 11 32) && Bitops.eq arg2112 (Bits.of_int 30 5) && 
          Bitops.eq arg2113 (Bits.of_int 0 1) && Bitops.eq arg2114 
            (Bits.of_int 10 32) && Bitops.eq arg2109 (Bits.of_int 31 5) && 
          Bitops.eq arg2110 (Bits.of_int 0 1) && Bitops.eq arg2111 
            (Bits.of_int 9 32) && Bitops.eq arg2106 (Bits.of_int 0 1) && 
          Bitops.eq arg2107 (Bits.of_int 0 1) && Bitops.eq arg2108 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 26 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2105)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2233), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2234), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2231), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2232), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2229), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2230), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2227), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2228), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2225), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2226), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2223), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2224), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2221), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2222), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2219), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2220), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2216), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2217), _), 32); 
                    RP.Const (RP.Bits arg2218)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2213), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2214), _), 32); 
                    RP.Const (RP.Bits arg2215)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2210), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2211), _), 32); 
                    RP.Const (RP.Bits arg2212)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2207), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2208), _), 32); 
                    RP.Const (RP.Bits arg2209)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2204), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2205), _), 32); 
                    RP.Const (RP.Bits arg2206)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2201), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2202), _), 32); 
                    RP.Const (RP.Bits arg2203)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2198), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2199), _), 32); 
                    RP.Const (RP.Bits arg2200)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2195), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2196), _), 32); 
                    RP.Const (RP.Bits arg2197)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2192), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2193), _), 32); 
                    RP.Const (RP.Bits arg2194)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2189), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2190), _), 32); 
                    RP.Const (RP.Bits arg2191)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2186), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2187), _), 32); 
                    RP.Const (RP.Bits arg2188)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2183), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2184), _), 32); 
                    RP.Const (RP.Bits arg2185)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2180), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2181), _), 32); 
                    RP.Const (RP.Bits arg2182)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2177), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2178), _), 32); 
                    RP.Const (RP.Bits arg2179)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2174), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2175), _), 32); 
                    RP.Const (RP.Bits arg2176)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2171), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2172), _), 32); 
                  RP.Const (RP.Bits arg2173)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2170)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2170 13 && Bitops.eq arg2233 
            (Bits.of_int 8 5) && Bitops.eq arg2234 (Bits.of_int 24 5) && 
          Bitops.eq arg2231 (Bits.of_int 9 5) && Bitops.eq arg2232 
            (Bits.of_int 25 5) && Bitops.eq arg2229 (Bits.of_int 10 5) && 
          Bitops.eq arg2230 (Bits.of_int 26 5) && Bitops.eq arg2227 
            (Bits.of_int 11 5) && Bitops.eq arg2228 (Bits.of_int 27 5) && 
          Bitops.eq arg2225 (Bits.of_int 12 5) && Bitops.eq arg2226 
            (Bits.of_int 28 5) && Bitops.eq arg2223 (Bits.of_int 13 5) && 
          Bitops.eq arg2224 (Bits.of_int 29 5) && Bitops.eq arg2221 
            (Bits.of_int 14 5) && Bitops.eq arg2222 (Bits.of_int 30 5) && 
          Bitops.eq arg2219 (Bits.of_int 15 5) && Bitops.eq arg2220 
            (Bits.of_int 31 5) && Bitops.eq arg2216 (Bits.of_int 16 5) && 
          Bitops.eq arg2217 (Bits.of_int 0 1) && Bitops.eq arg2218 
            (Bits.of_int 8 32) && Bitops.eq arg2213 (Bits.of_int 17 5) && 
          Bitops.eq arg2214 (Bits.of_int 0 1) && Bitops.eq arg2215 
            (Bits.of_int 7 32) && Bitops.eq arg2210 (Bits.of_int 18 5) && 
          Bitops.eq arg2211 (Bits.of_int 0 1) && Bitops.eq arg2212 
            (Bits.of_int 6 32) && Bitops.eq arg2207 (Bits.of_int 19 5) && 
          Bitops.eq arg2208 (Bits.of_int 0 1) && Bitops.eq arg2209 
            (Bits.of_int 5 32) && Bitops.eq arg2204 (Bits.of_int 20 5) && 
          Bitops.eq arg2205 (Bits.of_int 0 1) && Bitops.eq arg2206 
            (Bits.of_int 4 32) && Bitops.eq arg2201 (Bits.of_int 21 5) && 
          Bitops.eq arg2202 (Bits.of_int 0 1) && Bitops.eq arg2203 
            (Bits.of_int 3 32) && Bitops.eq arg2198 (Bits.of_int 22 5) && 
          Bitops.eq arg2199 (Bits.of_int 0 1) && Bitops.eq arg2200 
            (Bits.of_int 2 32) && Bitops.eq arg2195 (Bits.of_int 23 5) && 
          Bitops.eq arg2196 (Bits.of_int 0 1) && Bitops.eq arg2197 
            (Bits.of_int 1 32) && Bitops.eq arg2192 (Bits.of_int 24 5) && 
          Bitops.eq arg2193 (Bits.of_int 0 1) && Bitops.eq arg2194 
            (Bits.of_int 16 32) && Bitops.eq arg2189 (Bits.of_int 26 5) && 
          Bitops.eq arg2190 (Bits.of_int 0 1) && Bitops.eq arg2191 
            (Bits.of_int 14 32) && Bitops.eq arg2186 (Bits.of_int 27 5) && 
          Bitops.eq arg2187 (Bits.of_int 0 1) && Bitops.eq arg2188 
            (Bits.of_int 13 32) && Bitops.eq arg2183 (Bits.of_int 28 5) && 
          Bitops.eq arg2184 (Bits.of_int 0 1) && Bitops.eq arg2185 
            (Bits.of_int 12 32) && Bitops.eq arg2180 (Bits.of_int 29 5) && 
          Bitops.eq arg2181 (Bits.of_int 0 1) && Bitops.eq arg2182 
            (Bits.of_int 11 32) && Bitops.eq arg2177 (Bits.of_int 30 5) && 
          Bitops.eq arg2178 (Bits.of_int 0 1) && Bitops.eq arg2179 
            (Bits.of_int 10 32) && Bitops.eq arg2174 (Bits.of_int 31 5) && 
          Bitops.eq arg2175 (Bits.of_int 0 1) && Bitops.eq arg2176 
            (Bits.of_int 9 32) && Bitops.eq arg2171 (Bits.of_int 0 1) && 
          Bitops.eq arg2172 (Bits.of_int 0 1) && Bitops.eq arg2173 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 25 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2170)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2298), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2299), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2296), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2297), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2294), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2295), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2292), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2293), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2290), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2291), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2288), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2289), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2286), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2287), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2284), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2285), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2281), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2282), _), 32); 
                    RP.Const (RP.Bits arg2283)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2278), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2279), _), 32); 
                    RP.Const (RP.Bits arg2280)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2275), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2276), _), 32); 
                    RP.Const (RP.Bits arg2277)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2272), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2273), _), 32); 
                    RP.Const (RP.Bits arg2274)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2269), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2270), _), 32); 
                    RP.Const (RP.Bits arg2271)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2266), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2267), _), 32); 
                    RP.Const (RP.Bits arg2268)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2263), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2264), _), 32); 
                    RP.Const (RP.Bits arg2265)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2260), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2261), _), 32); 
                    RP.Const (RP.Bits arg2262)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2257), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2258), _), 32); 
                    RP.Const (RP.Bits arg2259)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2254), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2255), _), 32); 
                    RP.Const (RP.Bits arg2256)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2251), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2252), _), 32); 
                    RP.Const (RP.Bits arg2253)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2248), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2249), _), 32); 
                    RP.Const (RP.Bits arg2250)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2245), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2246), _), 32); 
                    RP.Const (RP.Bits arg2247)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2242), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2243), _), 32); 
                    RP.Const (RP.Bits arg2244)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2239), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2240), _), 32); 
                    RP.Const (RP.Bits arg2241)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2236), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2237), _), 32); 
                  RP.Const (RP.Bits arg2238)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2235)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2235 13 && Bitops.eq arg2298 
            (Bits.of_int 8 5) && Bitops.eq arg2299 (Bits.of_int 24 5) && 
          Bitops.eq arg2296 (Bits.of_int 9 5) && Bitops.eq arg2297 
            (Bits.of_int 25 5) && Bitops.eq arg2294 (Bits.of_int 10 5) && 
          Bitops.eq arg2295 (Bits.of_int 26 5) && Bitops.eq arg2292 
            (Bits.of_int 11 5) && Bitops.eq arg2293 (Bits.of_int 27 5) && 
          Bitops.eq arg2290 (Bits.of_int 12 5) && Bitops.eq arg2291 
            (Bits.of_int 28 5) && Bitops.eq arg2288 (Bits.of_int 13 5) && 
          Bitops.eq arg2289 (Bits.of_int 29 5) && Bitops.eq arg2286 
            (Bits.of_int 14 5) && Bitops.eq arg2287 (Bits.of_int 30 5) && 
          Bitops.eq arg2284 (Bits.of_int 15 5) && Bitops.eq arg2285 
            (Bits.of_int 31 5) && Bitops.eq arg2281 (Bits.of_int 16 5) && 
          Bitops.eq arg2282 (Bits.of_int 0 1) && Bitops.eq arg2283 
            (Bits.of_int 8 32) && Bitops.eq arg2278 (Bits.of_int 17 5) && 
          Bitops.eq arg2279 (Bits.of_int 0 1) && Bitops.eq arg2280 
            (Bits.of_int 7 32) && Bitops.eq arg2275 (Bits.of_int 18 5) && 
          Bitops.eq arg2276 (Bits.of_int 0 1) && Bitops.eq arg2277 
            (Bits.of_int 6 32) && Bitops.eq arg2272 (Bits.of_int 19 5) && 
          Bitops.eq arg2273 (Bits.of_int 0 1) && Bitops.eq arg2274 
            (Bits.of_int 5 32) && Bitops.eq arg2269 (Bits.of_int 20 5) && 
          Bitops.eq arg2270 (Bits.of_int 0 1) && Bitops.eq arg2271 
            (Bits.of_int 4 32) && Bitops.eq arg2266 (Bits.of_int 21 5) && 
          Bitops.eq arg2267 (Bits.of_int 0 1) && Bitops.eq arg2268 
            (Bits.of_int 3 32) && Bitops.eq arg2263 (Bits.of_int 22 5) && 
          Bitops.eq arg2264 (Bits.of_int 0 1) && Bitops.eq arg2265 
            (Bits.of_int 2 32) && Bitops.eq arg2260 (Bits.of_int 23 5) && 
          Bitops.eq arg2261 (Bits.of_int 0 1) && Bitops.eq arg2262 
            (Bits.of_int 1 32) && Bitops.eq arg2257 (Bits.of_int 25 5) && 
          Bitops.eq arg2258 (Bits.of_int 0 1) && Bitops.eq arg2259 
            (Bits.of_int 15 32) && Bitops.eq arg2254 (Bits.of_int 26 5) && 
          Bitops.eq arg2255 (Bits.of_int 0 1) && Bitops.eq arg2256 
            (Bits.of_int 14 32) && Bitops.eq arg2251 (Bits.of_int 27 5) && 
          Bitops.eq arg2252 (Bits.of_int 0 1) && Bitops.eq arg2253 
            (Bits.of_int 13 32) && Bitops.eq arg2248 (Bits.of_int 28 5) && 
          Bitops.eq arg2249 (Bits.of_int 0 1) && Bitops.eq arg2250 
            (Bits.of_int 12 32) && Bitops.eq arg2245 (Bits.of_int 29 5) && 
          Bitops.eq arg2246 (Bits.of_int 0 1) && Bitops.eq arg2247 
            (Bits.of_int 11 32) && Bitops.eq arg2242 (Bits.of_int 30 5) && 
          Bitops.eq arg2243 (Bits.of_int 0 1) && Bitops.eq arg2244 
            (Bits.of_int 10 32) && Bitops.eq arg2239 (Bits.of_int 31 5) && 
          Bitops.eq arg2240 (Bits.of_int 0 1) && Bitops.eq arg2241 
            (Bits.of_int 9 32) && Bitops.eq arg2236 (Bits.of_int 0 1) && 
          Bitops.eq arg2237 (Bits.of_int 0 1) && Bitops.eq arg2238 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 24 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2235)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2363), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2364), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2361), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2362), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2359), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2360), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2357), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2358), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2355), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2356), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2353), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2354), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2351), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2352), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2349), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2350), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2346), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2347), _), 32); 
                    RP.Const (RP.Bits arg2348)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2343), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2344), _), 32); 
                    RP.Const (RP.Bits arg2345)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2340), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2341), _), 32); 
                    RP.Const (RP.Bits arg2342)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2337), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2338), _), 32); 
                    RP.Const (RP.Bits arg2339)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2334), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2335), _), 32); 
                    RP.Const (RP.Bits arg2336)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2331), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2332), _), 32); 
                    RP.Const (RP.Bits arg2333)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2328), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2329), _), 32); 
                    RP.Const (RP.Bits arg2330)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2325), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2326), _), 32); 
                    RP.Const (RP.Bits arg2327)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2322), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2323), _), 32); 
                    RP.Const (RP.Bits arg2324)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2319), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2320), _), 32); 
                    RP.Const (RP.Bits arg2321)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2316), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2317), _), 32); 
                    RP.Const (RP.Bits arg2318)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2313), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2314), _), 32); 
                    RP.Const (RP.Bits arg2315)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2310), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2311), _), 32); 
                    RP.Const (RP.Bits arg2312)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2307), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2308), _), 32); 
                    RP.Const (RP.Bits arg2309)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2304), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2305), _), 32); 
                    RP.Const (RP.Bits arg2306)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2301), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2302), _), 32); 
                  RP.Const (RP.Bits arg2303)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2300)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2300 13 && Bitops.eq arg2363 
            (Bits.of_int 8 5) && Bitops.eq arg2364 (Bits.of_int 24 5) && 
          Bitops.eq arg2361 (Bits.of_int 9 5) && Bitops.eq arg2362 
            (Bits.of_int 25 5) && Bitops.eq arg2359 (Bits.of_int 10 5) && 
          Bitops.eq arg2360 (Bits.of_int 26 5) && Bitops.eq arg2357 
            (Bits.of_int 11 5) && Bitops.eq arg2358 (Bits.of_int 27 5) && 
          Bitops.eq arg2355 (Bits.of_int 12 5) && Bitops.eq arg2356 
            (Bits.of_int 28 5) && Bitops.eq arg2353 (Bits.of_int 13 5) && 
          Bitops.eq arg2354 (Bits.of_int 29 5) && Bitops.eq arg2351 
            (Bits.of_int 14 5) && Bitops.eq arg2352 (Bits.of_int 30 5) && 
          Bitops.eq arg2349 (Bits.of_int 15 5) && Bitops.eq arg2350 
            (Bits.of_int 31 5) && Bitops.eq arg2346 (Bits.of_int 16 5) && 
          Bitops.eq arg2347 (Bits.of_int 0 1) && Bitops.eq arg2348 
            (Bits.of_int 8 32) && Bitops.eq arg2343 (Bits.of_int 17 5) && 
          Bitops.eq arg2344 (Bits.of_int 0 1) && Bitops.eq arg2345 
            (Bits.of_int 7 32) && Bitops.eq arg2340 (Bits.of_int 18 5) && 
          Bitops.eq arg2341 (Bits.of_int 0 1) && Bitops.eq arg2342 
            (Bits.of_int 6 32) && Bitops.eq arg2337 (Bits.of_int 19 5) && 
          Bitops.eq arg2338 (Bits.of_int 0 1) && Bitops.eq arg2339 
            (Bits.of_int 5 32) && Bitops.eq arg2334 (Bits.of_int 20 5) && 
          Bitops.eq arg2335 (Bits.of_int 0 1) && Bitops.eq arg2336 
            (Bits.of_int 4 32) && Bitops.eq arg2331 (Bits.of_int 21 5) && 
          Bitops.eq arg2332 (Bits.of_int 0 1) && Bitops.eq arg2333 
            (Bits.of_int 3 32) && Bitops.eq arg2328 (Bits.of_int 22 5) && 
          Bitops.eq arg2329 (Bits.of_int 0 1) && Bitops.eq arg2330 
            (Bits.of_int 2 32) && Bitops.eq arg2325 (Bits.of_int 24 5) && 
          Bitops.eq arg2326 (Bits.of_int 0 1) && Bitops.eq arg2327 
            (Bits.of_int 16 32) && Bitops.eq arg2322 (Bits.of_int 25 5) && 
          Bitops.eq arg2323 (Bits.of_int 0 1) && Bitops.eq arg2324 
            (Bits.of_int 15 32) && Bitops.eq arg2319 (Bits.of_int 26 5) && 
          Bitops.eq arg2320 (Bits.of_int 0 1) && Bitops.eq arg2321 
            (Bits.of_int 14 32) && Bitops.eq arg2316 (Bits.of_int 27 5) && 
          Bitops.eq arg2317 (Bits.of_int 0 1) && Bitops.eq arg2318 
            (Bits.of_int 13 32) && Bitops.eq arg2313 (Bits.of_int 28 5) && 
          Bitops.eq arg2314 (Bits.of_int 0 1) && Bitops.eq arg2315 
            (Bits.of_int 12 32) && Bitops.eq arg2310 (Bits.of_int 29 5) && 
          Bitops.eq arg2311 (Bits.of_int 0 1) && Bitops.eq arg2312 
            (Bits.of_int 11 32) && Bitops.eq arg2307 (Bits.of_int 30 5) && 
          Bitops.eq arg2308 (Bits.of_int 0 1) && Bitops.eq arg2309 
            (Bits.of_int 10 32) && Bitops.eq arg2304 (Bits.of_int 31 5) && 
          Bitops.eq arg2305 (Bits.of_int 0 1) && Bitops.eq arg2306 
            (Bits.of_int 9 32) && Bitops.eq arg2301 (Bits.of_int 0 1) && 
          Bitops.eq arg2302 (Bits.of_int 0 1) && Bitops.eq arg2303 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 23 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2300)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2428), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2429), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2426), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2427), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2424), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2425), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2422), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2423), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2420), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2421), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2418), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2419), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2416), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2417), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2414), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2415), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2411), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2412), _), 32); 
                    RP.Const (RP.Bits arg2413)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2408), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2409), _), 32); 
                    RP.Const (RP.Bits arg2410)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2405), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2406), _), 32); 
                    RP.Const (RP.Bits arg2407)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2402), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2403), _), 32); 
                    RP.Const (RP.Bits arg2404)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2399), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2400), _), 32); 
                    RP.Const (RP.Bits arg2401)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2396), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2397), _), 32); 
                    RP.Const (RP.Bits arg2398)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2393), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2394), _), 32); 
                    RP.Const (RP.Bits arg2395)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2390), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2391), _), 32); 
                    RP.Const (RP.Bits arg2392)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2387), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2388), _), 32); 
                    RP.Const (RP.Bits arg2389)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2384), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2385), _), 32); 
                    RP.Const (RP.Bits arg2386)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2381), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2382), _), 32); 
                    RP.Const (RP.Bits arg2383)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2378), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2379), _), 32); 
                    RP.Const (RP.Bits arg2380)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2375), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2376), _), 32); 
                    RP.Const (RP.Bits arg2377)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2372), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2373), _), 32); 
                    RP.Const (RP.Bits arg2374)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2369), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2370), _), 32); 
                    RP.Const (RP.Bits arg2371)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2366), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2367), _), 32); 
                  RP.Const (RP.Bits arg2368)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2365)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2365 13 && Bitops.eq arg2428 
            (Bits.of_int 8 5) && Bitops.eq arg2429 (Bits.of_int 24 5) && 
          Bitops.eq arg2426 (Bits.of_int 9 5) && Bitops.eq arg2427 
            (Bits.of_int 25 5) && Bitops.eq arg2424 (Bits.of_int 10 5) && 
          Bitops.eq arg2425 (Bits.of_int 26 5) && Bitops.eq arg2422 
            (Bits.of_int 11 5) && Bitops.eq arg2423 (Bits.of_int 27 5) && 
          Bitops.eq arg2420 (Bits.of_int 12 5) && Bitops.eq arg2421 
            (Bits.of_int 28 5) && Bitops.eq arg2418 (Bits.of_int 13 5) && 
          Bitops.eq arg2419 (Bits.of_int 29 5) && Bitops.eq arg2416 
            (Bits.of_int 14 5) && Bitops.eq arg2417 (Bits.of_int 30 5) && 
          Bitops.eq arg2414 (Bits.of_int 15 5) && Bitops.eq arg2415 
            (Bits.of_int 31 5) && Bitops.eq arg2411 (Bits.of_int 16 5) && 
          Bitops.eq arg2412 (Bits.of_int 0 1) && Bitops.eq arg2413 
            (Bits.of_int 8 32) && Bitops.eq arg2408 (Bits.of_int 17 5) && 
          Bitops.eq arg2409 (Bits.of_int 0 1) && Bitops.eq arg2410 
            (Bits.of_int 7 32) && Bitops.eq arg2405 (Bits.of_int 18 5) && 
          Bitops.eq arg2406 (Bits.of_int 0 1) && Bitops.eq arg2407 
            (Bits.of_int 6 32) && Bitops.eq arg2402 (Bits.of_int 19 5) && 
          Bitops.eq arg2403 (Bits.of_int 0 1) && Bitops.eq arg2404 
            (Bits.of_int 5 32) && Bitops.eq arg2399 (Bits.of_int 20 5) && 
          Bitops.eq arg2400 (Bits.of_int 0 1) && Bitops.eq arg2401 
            (Bits.of_int 4 32) && Bitops.eq arg2396 (Bits.of_int 21 5) && 
          Bitops.eq arg2397 (Bits.of_int 0 1) && Bitops.eq arg2398 
            (Bits.of_int 3 32) && Bitops.eq arg2393 (Bits.of_int 23 5) && 
          Bitops.eq arg2394 (Bits.of_int 0 1) && Bitops.eq arg2395 
            (Bits.of_int 1 32) && Bitops.eq arg2390 (Bits.of_int 24 5) && 
          Bitops.eq arg2391 (Bits.of_int 0 1) && Bitops.eq arg2392 
            (Bits.of_int 16 32) && Bitops.eq arg2387 (Bits.of_int 25 5) && 
          Bitops.eq arg2388 (Bits.of_int 0 1) && Bitops.eq arg2389 
            (Bits.of_int 15 32) && Bitops.eq arg2384 (Bits.of_int 26 5) && 
          Bitops.eq arg2385 (Bits.of_int 0 1) && Bitops.eq arg2386 
            (Bits.of_int 14 32) && Bitops.eq arg2381 (Bits.of_int 27 5) && 
          Bitops.eq arg2382 (Bits.of_int 0 1) && Bitops.eq arg2383 
            (Bits.of_int 13 32) && Bitops.eq arg2378 (Bits.of_int 28 5) && 
          Bitops.eq arg2379 (Bits.of_int 0 1) && Bitops.eq arg2380 
            (Bits.of_int 12 32) && Bitops.eq arg2375 (Bits.of_int 29 5) && 
          Bitops.eq arg2376 (Bits.of_int 0 1) && Bitops.eq arg2377 
            (Bits.of_int 11 32) && Bitops.eq arg2372 (Bits.of_int 30 5) && 
          Bitops.eq arg2373 (Bits.of_int 0 1) && Bitops.eq arg2374 
            (Bits.of_int 10 32) && Bitops.eq arg2369 (Bits.of_int 31 5) && 
          Bitops.eq arg2370 (Bits.of_int 0 1) && Bitops.eq arg2371 
            (Bits.of_int 9 32) && Bitops.eq arg2366 (Bits.of_int 0 1) && 
          Bitops.eq arg2367 (Bits.of_int 0 1) && Bitops.eq arg2368 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 22 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2365)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2493), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2494), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2491), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2492), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2489), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2490), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2487), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2488), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2485), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2486), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2483), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2484), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2481), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2482), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2479), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2480), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2476), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2477), _), 32); 
                    RP.Const (RP.Bits arg2478)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2473), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2474), _), 32); 
                    RP.Const (RP.Bits arg2475)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2470), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2471), _), 32); 
                    RP.Const (RP.Bits arg2472)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2467), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2468), _), 32); 
                    RP.Const (RP.Bits arg2469)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2464), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2465), _), 32); 
                    RP.Const (RP.Bits arg2466)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2461), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2462), _), 32); 
                    RP.Const (RP.Bits arg2463)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2458), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2459), _), 32); 
                    RP.Const (RP.Bits arg2460)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2455), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2456), _), 32); 
                    RP.Const (RP.Bits arg2457)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2452), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2453), _), 32); 
                    RP.Const (RP.Bits arg2454)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2449), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2450), _), 32); 
                    RP.Const (RP.Bits arg2451)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2446), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2447), _), 32); 
                    RP.Const (RP.Bits arg2448)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2443), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2444), _), 32); 
                    RP.Const (RP.Bits arg2445)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2440), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2441), _), 32); 
                    RP.Const (RP.Bits arg2442)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2437), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2438), _), 32); 
                    RP.Const (RP.Bits arg2439)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2434), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2435), _), 32); 
                    RP.Const (RP.Bits arg2436)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2431), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2432), _), 32); 
                  RP.Const (RP.Bits arg2433)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2430)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2430 13 && Bitops.eq arg2493 
            (Bits.of_int 8 5) && Bitops.eq arg2494 (Bits.of_int 24 5) && 
          Bitops.eq arg2491 (Bits.of_int 9 5) && Bitops.eq arg2492 
            (Bits.of_int 25 5) && Bitops.eq arg2489 (Bits.of_int 10 5) && 
          Bitops.eq arg2490 (Bits.of_int 26 5) && Bitops.eq arg2487 
            (Bits.of_int 11 5) && Bitops.eq arg2488 (Bits.of_int 27 5) && 
          Bitops.eq arg2485 (Bits.of_int 12 5) && Bitops.eq arg2486 
            (Bits.of_int 28 5) && Bitops.eq arg2483 (Bits.of_int 13 5) && 
          Bitops.eq arg2484 (Bits.of_int 29 5) && Bitops.eq arg2481 
            (Bits.of_int 14 5) && Bitops.eq arg2482 (Bits.of_int 30 5) && 
          Bitops.eq arg2479 (Bits.of_int 15 5) && Bitops.eq arg2480 
            (Bits.of_int 31 5) && Bitops.eq arg2476 (Bits.of_int 16 5) && 
          Bitops.eq arg2477 (Bits.of_int 0 1) && Bitops.eq arg2478 
            (Bits.of_int 8 32) && Bitops.eq arg2473 (Bits.of_int 17 5) && 
          Bitops.eq arg2474 (Bits.of_int 0 1) && Bitops.eq arg2475 
            (Bits.of_int 7 32) && Bitops.eq arg2470 (Bits.of_int 18 5) && 
          Bitops.eq arg2471 (Bits.of_int 0 1) && Bitops.eq arg2472 
            (Bits.of_int 6 32) && Bitops.eq arg2467 (Bits.of_int 19 5) && 
          Bitops.eq arg2468 (Bits.of_int 0 1) && Bitops.eq arg2469 
            (Bits.of_int 5 32) && Bitops.eq arg2464 (Bits.of_int 20 5) && 
          Bitops.eq arg2465 (Bits.of_int 0 1) && Bitops.eq arg2466 
            (Bits.of_int 4 32) && Bitops.eq arg2461 (Bits.of_int 22 5) && 
          Bitops.eq arg2462 (Bits.of_int 0 1) && Bitops.eq arg2463 
            (Bits.of_int 2 32) && Bitops.eq arg2458 (Bits.of_int 23 5) && 
          Bitops.eq arg2459 (Bits.of_int 0 1) && Bitops.eq arg2460 
            (Bits.of_int 1 32) && Bitops.eq arg2455 (Bits.of_int 24 5) && 
          Bitops.eq arg2456 (Bits.of_int 0 1) && Bitops.eq arg2457 
            (Bits.of_int 16 32) && Bitops.eq arg2452 (Bits.of_int 25 5) && 
          Bitops.eq arg2453 (Bits.of_int 0 1) && Bitops.eq arg2454 
            (Bits.of_int 15 32) && Bitops.eq arg2449 (Bits.of_int 26 5) && 
          Bitops.eq arg2450 (Bits.of_int 0 1) && Bitops.eq arg2451 
            (Bits.of_int 14 32) && Bitops.eq arg2446 (Bits.of_int 27 5) && 
          Bitops.eq arg2447 (Bits.of_int 0 1) && Bitops.eq arg2448 
            (Bits.of_int 13 32) && Bitops.eq arg2443 (Bits.of_int 28 5) && 
          Bitops.eq arg2444 (Bits.of_int 0 1) && Bitops.eq arg2445 
            (Bits.of_int 12 32) && Bitops.eq arg2440 (Bits.of_int 29 5) && 
          Bitops.eq arg2441 (Bits.of_int 0 1) && Bitops.eq arg2442 
            (Bits.of_int 11 32) && Bitops.eq arg2437 (Bits.of_int 30 5) && 
          Bitops.eq arg2438 (Bits.of_int 0 1) && Bitops.eq arg2439 
            (Bits.of_int 10 32) && Bitops.eq arg2434 (Bits.of_int 31 5) && 
          Bitops.eq arg2435 (Bits.of_int 0 1) && Bitops.eq arg2436 
            (Bits.of_int 9 32) && Bitops.eq arg2431 (Bits.of_int 0 1) && 
          Bitops.eq arg2432 (Bits.of_int 0 1) && Bitops.eq arg2433 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 21 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2430)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2558), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2559), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2556), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2557), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2554), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2555), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2552), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2553), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2550), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2551), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2548), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2549), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2546), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2547), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2544), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2545), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2541), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2542), _), 32); 
                    RP.Const (RP.Bits arg2543)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2538), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2539), _), 32); 
                    RP.Const (RP.Bits arg2540)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2535), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2536), _), 32); 
                    RP.Const (RP.Bits arg2537)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2532), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2533), _), 32); 
                    RP.Const (RP.Bits arg2534)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2529), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2530), _), 32); 
                    RP.Const (RP.Bits arg2531)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2526), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2527), _), 32); 
                    RP.Const (RP.Bits arg2528)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2523), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2524), _), 32); 
                    RP.Const (RP.Bits arg2525)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2520), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2521), _), 32); 
                    RP.Const (RP.Bits arg2522)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2517), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2518), _), 32); 
                    RP.Const (RP.Bits arg2519)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2514), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2515), _), 32); 
                    RP.Const (RP.Bits arg2516)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2511), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2512), _), 32); 
                    RP.Const (RP.Bits arg2513)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2508), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2509), _), 32); 
                    RP.Const (RP.Bits arg2510)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2505), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2506), _), 32); 
                    RP.Const (RP.Bits arg2507)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2502), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2503), _), 32); 
                    RP.Const (RP.Bits arg2504)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2499), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2500), _), 32); 
                    RP.Const (RP.Bits arg2501)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2496), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2497), _), 32); 
                  RP.Const (RP.Bits arg2498)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2495)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2495 13 && Bitops.eq arg2558 
            (Bits.of_int 8 5) && Bitops.eq arg2559 (Bits.of_int 24 5) && 
          Bitops.eq arg2556 (Bits.of_int 9 5) && Bitops.eq arg2557 
            (Bits.of_int 25 5) && Bitops.eq arg2554 (Bits.of_int 10 5) && 
          Bitops.eq arg2555 (Bits.of_int 26 5) && Bitops.eq arg2552 
            (Bits.of_int 11 5) && Bitops.eq arg2553 (Bits.of_int 27 5) && 
          Bitops.eq arg2550 (Bits.of_int 12 5) && Bitops.eq arg2551 
            (Bits.of_int 28 5) && Bitops.eq arg2548 (Bits.of_int 13 5) && 
          Bitops.eq arg2549 (Bits.of_int 29 5) && Bitops.eq arg2546 
            (Bits.of_int 14 5) && Bitops.eq arg2547 (Bits.of_int 30 5) && 
          Bitops.eq arg2544 (Bits.of_int 15 5) && Bitops.eq arg2545 
            (Bits.of_int 31 5) && Bitops.eq arg2541 (Bits.of_int 16 5) && 
          Bitops.eq arg2542 (Bits.of_int 0 1) && Bitops.eq arg2543 
            (Bits.of_int 8 32) && Bitops.eq arg2538 (Bits.of_int 17 5) && 
          Bitops.eq arg2539 (Bits.of_int 0 1) && Bitops.eq arg2540 
            (Bits.of_int 7 32) && Bitops.eq arg2535 (Bits.of_int 18 5) && 
          Bitops.eq arg2536 (Bits.of_int 0 1) && Bitops.eq arg2537 
            (Bits.of_int 6 32) && Bitops.eq arg2532 (Bits.of_int 19 5) && 
          Bitops.eq arg2533 (Bits.of_int 0 1) && Bitops.eq arg2534 
            (Bits.of_int 5 32) && Bitops.eq arg2529 (Bits.of_int 21 5) && 
          Bitops.eq arg2530 (Bits.of_int 0 1) && Bitops.eq arg2531 
            (Bits.of_int 3 32) && Bitops.eq arg2526 (Bits.of_int 22 5) && 
          Bitops.eq arg2527 (Bits.of_int 0 1) && Bitops.eq arg2528 
            (Bits.of_int 2 32) && Bitops.eq arg2523 (Bits.of_int 23 5) && 
          Bitops.eq arg2524 (Bits.of_int 0 1) && Bitops.eq arg2525 
            (Bits.of_int 1 32) && Bitops.eq arg2520 (Bits.of_int 24 5) && 
          Bitops.eq arg2521 (Bits.of_int 0 1) && Bitops.eq arg2522 
            (Bits.of_int 16 32) && Bitops.eq arg2517 (Bits.of_int 25 5) && 
          Bitops.eq arg2518 (Bits.of_int 0 1) && Bitops.eq arg2519 
            (Bits.of_int 15 32) && Bitops.eq arg2514 (Bits.of_int 26 5) && 
          Bitops.eq arg2515 (Bits.of_int 0 1) && Bitops.eq arg2516 
            (Bits.of_int 14 32) && Bitops.eq arg2511 (Bits.of_int 27 5) && 
          Bitops.eq arg2512 (Bits.of_int 0 1) && Bitops.eq arg2513 
            (Bits.of_int 13 32) && Bitops.eq arg2508 (Bits.of_int 28 5) && 
          Bitops.eq arg2509 (Bits.of_int 0 1) && Bitops.eq arg2510 
            (Bits.of_int 12 32) && Bitops.eq arg2505 (Bits.of_int 29 5) && 
          Bitops.eq arg2506 (Bits.of_int 0 1) && Bitops.eq arg2507 
            (Bits.of_int 11 32) && Bitops.eq arg2502 (Bits.of_int 30 5) && 
          Bitops.eq arg2503 (Bits.of_int 0 1) && Bitops.eq arg2504 
            (Bits.of_int 10 32) && Bitops.eq arg2499 (Bits.of_int 31 5) && 
          Bitops.eq arg2500 (Bits.of_int 0 1) && Bitops.eq arg2501 
            (Bits.of_int 9 32) && Bitops.eq arg2496 (Bits.of_int 0 1) && 
          Bitops.eq arg2497 (Bits.of_int 0 1) && Bitops.eq arg2498 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 20 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2495)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2623), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2624), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2621), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2622), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2619), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2620), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2617), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2618), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2615), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2616), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2613), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2614), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2611), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2612), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2609), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2610), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2606), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2607), _), 32); 
                    RP.Const (RP.Bits arg2608)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2603), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2604), _), 32); 
                    RP.Const (RP.Bits arg2605)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2600), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2601), _), 32); 
                    RP.Const (RP.Bits arg2602)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2597), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2598), _), 32); 
                    RP.Const (RP.Bits arg2599)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2594), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2595), _), 32); 
                    RP.Const (RP.Bits arg2596)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2591), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2592), _), 32); 
                    RP.Const (RP.Bits arg2593)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2588), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2589), _), 32); 
                    RP.Const (RP.Bits arg2590)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2585), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2586), _), 32); 
                    RP.Const (RP.Bits arg2587)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2582), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2583), _), 32); 
                    RP.Const (RP.Bits arg2584)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2579), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2580), _), 32); 
                    RP.Const (RP.Bits arg2581)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2576), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2577), _), 32); 
                    RP.Const (RP.Bits arg2578)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2573), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2574), _), 32); 
                    RP.Const (RP.Bits arg2575)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2570), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2571), _), 32); 
                    RP.Const (RP.Bits arg2572)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2567), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2568), _), 32); 
                    RP.Const (RP.Bits arg2569)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2564), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2565), _), 32); 
                    RP.Const (RP.Bits arg2566)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2561), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2562), _), 32); 
                  RP.Const (RP.Bits arg2563)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2560)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2560 13 && Bitops.eq arg2623 
            (Bits.of_int 8 5) && Bitops.eq arg2624 (Bits.of_int 24 5) && 
          Bitops.eq arg2621 (Bits.of_int 9 5) && Bitops.eq arg2622 
            (Bits.of_int 25 5) && Bitops.eq arg2619 (Bits.of_int 10 5) && 
          Bitops.eq arg2620 (Bits.of_int 26 5) && Bitops.eq arg2617 
            (Bits.of_int 11 5) && Bitops.eq arg2618 (Bits.of_int 27 5) && 
          Bitops.eq arg2615 (Bits.of_int 12 5) && Bitops.eq arg2616 
            (Bits.of_int 28 5) && Bitops.eq arg2613 (Bits.of_int 13 5) && 
          Bitops.eq arg2614 (Bits.of_int 29 5) && Bitops.eq arg2611 
            (Bits.of_int 14 5) && Bitops.eq arg2612 (Bits.of_int 30 5) && 
          Bitops.eq arg2609 (Bits.of_int 15 5) && Bitops.eq arg2610 
            (Bits.of_int 31 5) && Bitops.eq arg2606 (Bits.of_int 16 5) && 
          Bitops.eq arg2607 (Bits.of_int 0 1) && Bitops.eq arg2608 
            (Bits.of_int 8 32) && Bitops.eq arg2603 (Bits.of_int 17 5) && 
          Bitops.eq arg2604 (Bits.of_int 0 1) && Bitops.eq arg2605 
            (Bits.of_int 7 32) && Bitops.eq arg2600 (Bits.of_int 18 5) && 
          Bitops.eq arg2601 (Bits.of_int 0 1) && Bitops.eq arg2602 
            (Bits.of_int 6 32) && Bitops.eq arg2597 (Bits.of_int 20 5) && 
          Bitops.eq arg2598 (Bits.of_int 0 1) && Bitops.eq arg2599 
            (Bits.of_int 4 32) && Bitops.eq arg2594 (Bits.of_int 21 5) && 
          Bitops.eq arg2595 (Bits.of_int 0 1) && Bitops.eq arg2596 
            (Bits.of_int 3 32) && Bitops.eq arg2591 (Bits.of_int 22 5) && 
          Bitops.eq arg2592 (Bits.of_int 0 1) && Bitops.eq arg2593 
            (Bits.of_int 2 32) && Bitops.eq arg2588 (Bits.of_int 23 5) && 
          Bitops.eq arg2589 (Bits.of_int 0 1) && Bitops.eq arg2590 
            (Bits.of_int 1 32) && Bitops.eq arg2585 (Bits.of_int 24 5) && 
          Bitops.eq arg2586 (Bits.of_int 0 1) && Bitops.eq arg2587 
            (Bits.of_int 16 32) && Bitops.eq arg2582 (Bits.of_int 25 5) && 
          Bitops.eq arg2583 (Bits.of_int 0 1) && Bitops.eq arg2584 
            (Bits.of_int 15 32) && Bitops.eq arg2579 (Bits.of_int 26 5) && 
          Bitops.eq arg2580 (Bits.of_int 0 1) && Bitops.eq arg2581 
            (Bits.of_int 14 32) && Bitops.eq arg2576 (Bits.of_int 27 5) && 
          Bitops.eq arg2577 (Bits.of_int 0 1) && Bitops.eq arg2578 
            (Bits.of_int 13 32) && Bitops.eq arg2573 (Bits.of_int 28 5) && 
          Bitops.eq arg2574 (Bits.of_int 0 1) && Bitops.eq arg2575 
            (Bits.of_int 12 32) && Bitops.eq arg2570 (Bits.of_int 29 5) && 
          Bitops.eq arg2571 (Bits.of_int 0 1) && Bitops.eq arg2572 
            (Bits.of_int 11 32) && Bitops.eq arg2567 (Bits.of_int 30 5) && 
          Bitops.eq arg2568 (Bits.of_int 0 1) && Bitops.eq arg2569 
            (Bits.of_int 10 32) && Bitops.eq arg2564 (Bits.of_int 31 5) && 
          Bitops.eq arg2565 (Bits.of_int 0 1) && Bitops.eq arg2566 
            (Bits.of_int 9 32) && Bitops.eq arg2561 (Bits.of_int 0 1) && 
          Bitops.eq arg2562 (Bits.of_int 0 1) && Bitops.eq arg2563 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 19 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2560)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2688), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2689), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2686), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2687), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2684), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2685), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2682), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2683), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2680), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2681), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2678), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2679), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2676), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2677), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2674), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2675), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2671), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2672), _), 32); 
                    RP.Const (RP.Bits arg2673)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2668), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2669), _), 32); 
                    RP.Const (RP.Bits arg2670)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2665), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2666), _), 32); 
                    RP.Const (RP.Bits arg2667)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2662), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2663), _), 32); 
                    RP.Const (RP.Bits arg2664)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2659), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2660), _), 32); 
                    RP.Const (RP.Bits arg2661)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2656), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2657), _), 32); 
                    RP.Const (RP.Bits arg2658)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2653), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2654), _), 32); 
                    RP.Const (RP.Bits arg2655)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2650), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2651), _), 32); 
                    RP.Const (RP.Bits arg2652)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2647), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2648), _), 32); 
                    RP.Const (RP.Bits arg2649)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2644), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2645), _), 32); 
                    RP.Const (RP.Bits arg2646)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2641), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2642), _), 32); 
                    RP.Const (RP.Bits arg2643)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2638), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2639), _), 32); 
                    RP.Const (RP.Bits arg2640)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2635), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2636), _), 32); 
                    RP.Const (RP.Bits arg2637)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2632), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2633), _), 32); 
                    RP.Const (RP.Bits arg2634)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2629), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2630), _), 32); 
                    RP.Const (RP.Bits arg2631)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2626), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2627), _), 32); 
                  RP.Const (RP.Bits arg2628)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2625)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2625 13 && Bitops.eq arg2688 
            (Bits.of_int 8 5) && Bitops.eq arg2689 (Bits.of_int 24 5) && 
          Bitops.eq arg2686 (Bits.of_int 9 5) && Bitops.eq arg2687 
            (Bits.of_int 25 5) && Bitops.eq arg2684 (Bits.of_int 10 5) && 
          Bitops.eq arg2685 (Bits.of_int 26 5) && Bitops.eq arg2682 
            (Bits.of_int 11 5) && Bitops.eq arg2683 (Bits.of_int 27 5) && 
          Bitops.eq arg2680 (Bits.of_int 12 5) && Bitops.eq arg2681 
            (Bits.of_int 28 5) && Bitops.eq arg2678 (Bits.of_int 13 5) && 
          Bitops.eq arg2679 (Bits.of_int 29 5) && Bitops.eq arg2676 
            (Bits.of_int 14 5) && Bitops.eq arg2677 (Bits.of_int 30 5) && 
          Bitops.eq arg2674 (Bits.of_int 15 5) && Bitops.eq arg2675 
            (Bits.of_int 31 5) && Bitops.eq arg2671 (Bits.of_int 16 5) && 
          Bitops.eq arg2672 (Bits.of_int 0 1) && Bitops.eq arg2673 
            (Bits.of_int 8 32) && Bitops.eq arg2668 (Bits.of_int 17 5) && 
          Bitops.eq arg2669 (Bits.of_int 0 1) && Bitops.eq arg2670 
            (Bits.of_int 7 32) && Bitops.eq arg2665 (Bits.of_int 19 5) && 
          Bitops.eq arg2666 (Bits.of_int 0 1) && Bitops.eq arg2667 
            (Bits.of_int 5 32) && Bitops.eq arg2662 (Bits.of_int 20 5) && 
          Bitops.eq arg2663 (Bits.of_int 0 1) && Bitops.eq arg2664 
            (Bits.of_int 4 32) && Bitops.eq arg2659 (Bits.of_int 21 5) && 
          Bitops.eq arg2660 (Bits.of_int 0 1) && Bitops.eq arg2661 
            (Bits.of_int 3 32) && Bitops.eq arg2656 (Bits.of_int 22 5) && 
          Bitops.eq arg2657 (Bits.of_int 0 1) && Bitops.eq arg2658 
            (Bits.of_int 2 32) && Bitops.eq arg2653 (Bits.of_int 23 5) && 
          Bitops.eq arg2654 (Bits.of_int 0 1) && Bitops.eq arg2655 
            (Bits.of_int 1 32) && Bitops.eq arg2650 (Bits.of_int 24 5) && 
          Bitops.eq arg2651 (Bits.of_int 0 1) && Bitops.eq arg2652 
            (Bits.of_int 16 32) && Bitops.eq arg2647 (Bits.of_int 25 5) && 
          Bitops.eq arg2648 (Bits.of_int 0 1) && Bitops.eq arg2649 
            (Bits.of_int 15 32) && Bitops.eq arg2644 (Bits.of_int 26 5) && 
          Bitops.eq arg2645 (Bits.of_int 0 1) && Bitops.eq arg2646 
            (Bits.of_int 14 32) && Bitops.eq arg2641 (Bits.of_int 27 5) && 
          Bitops.eq arg2642 (Bits.of_int 0 1) && Bitops.eq arg2643 
            (Bits.of_int 13 32) && Bitops.eq arg2638 (Bits.of_int 28 5) && 
          Bitops.eq arg2639 (Bits.of_int 0 1) && Bitops.eq arg2640 
            (Bits.of_int 12 32) && Bitops.eq arg2635 (Bits.of_int 29 5) && 
          Bitops.eq arg2636 (Bits.of_int 0 1) && Bitops.eq arg2637 
            (Bits.of_int 11 32) && Bitops.eq arg2632 (Bits.of_int 30 5) && 
          Bitops.eq arg2633 (Bits.of_int 0 1) && Bitops.eq arg2634 
            (Bits.of_int 10 32) && Bitops.eq arg2629 (Bits.of_int 31 5) && 
          Bitops.eq arg2630 (Bits.of_int 0 1) && Bitops.eq arg2631 
            (Bits.of_int 9 32) && Bitops.eq arg2626 (Bits.of_int 0 1) && 
          Bitops.eq arg2627 (Bits.of_int 0 1) && Bitops.eq arg2628 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 18 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2625)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2753), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2754), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2751), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2752), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2749), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2750), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2747), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2748), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2745), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2746), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2743), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2744), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2741), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2742), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2739), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2740), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2736), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2737), _), 32); 
                    RP.Const (RP.Bits arg2738)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2733), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2734), _), 32); 
                    RP.Const (RP.Bits arg2735)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2730), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2731), _), 32); 
                    RP.Const (RP.Bits arg2732)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2727), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2728), _), 32); 
                    RP.Const (RP.Bits arg2729)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2724), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2725), _), 32); 
                    RP.Const (RP.Bits arg2726)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2721), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2722), _), 32); 
                    RP.Const (RP.Bits arg2723)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2718), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2719), _), 32); 
                    RP.Const (RP.Bits arg2720)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2715), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2716), _), 32); 
                    RP.Const (RP.Bits arg2717)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2712), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2713), _), 32); 
                    RP.Const (RP.Bits arg2714)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2709), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2710), _), 32); 
                    RP.Const (RP.Bits arg2711)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2706), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2707), _), 32); 
                    RP.Const (RP.Bits arg2708)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2703), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2704), _), 32); 
                    RP.Const (RP.Bits arg2705)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2700), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2701), _), 32); 
                    RP.Const (RP.Bits arg2702)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2697), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2698), _), 32); 
                    RP.Const (RP.Bits arg2699)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2694), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2695), _), 32); 
                    RP.Const (RP.Bits arg2696)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2691), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2692), _), 32); 
                  RP.Const (RP.Bits arg2693)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2690)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2690 13 && Bitops.eq arg2753 
            (Bits.of_int 8 5) && Bitops.eq arg2754 (Bits.of_int 24 5) && 
          Bitops.eq arg2751 (Bits.of_int 9 5) && Bitops.eq arg2752 
            (Bits.of_int 25 5) && Bitops.eq arg2749 (Bits.of_int 10 5) && 
          Bitops.eq arg2750 (Bits.of_int 26 5) && Bitops.eq arg2747 
            (Bits.of_int 11 5) && Bitops.eq arg2748 (Bits.of_int 27 5) && 
          Bitops.eq arg2745 (Bits.of_int 12 5) && Bitops.eq arg2746 
            (Bits.of_int 28 5) && Bitops.eq arg2743 (Bits.of_int 13 5) && 
          Bitops.eq arg2744 (Bits.of_int 29 5) && Bitops.eq arg2741 
            (Bits.of_int 14 5) && Bitops.eq arg2742 (Bits.of_int 30 5) && 
          Bitops.eq arg2739 (Bits.of_int 15 5) && Bitops.eq arg2740 
            (Bits.of_int 31 5) && Bitops.eq arg2736 (Bits.of_int 16 5) && 
          Bitops.eq arg2737 (Bits.of_int 0 1) && Bitops.eq arg2738 
            (Bits.of_int 8 32) && Bitops.eq arg2733 (Bits.of_int 18 5) && 
          Bitops.eq arg2734 (Bits.of_int 0 1) && Bitops.eq arg2735 
            (Bits.of_int 6 32) && Bitops.eq arg2730 (Bits.of_int 19 5) && 
          Bitops.eq arg2731 (Bits.of_int 0 1) && Bitops.eq arg2732 
            (Bits.of_int 5 32) && Bitops.eq arg2727 (Bits.of_int 20 5) && 
          Bitops.eq arg2728 (Bits.of_int 0 1) && Bitops.eq arg2729 
            (Bits.of_int 4 32) && Bitops.eq arg2724 (Bits.of_int 21 5) && 
          Bitops.eq arg2725 (Bits.of_int 0 1) && Bitops.eq arg2726 
            (Bits.of_int 3 32) && Bitops.eq arg2721 (Bits.of_int 22 5) && 
          Bitops.eq arg2722 (Bits.of_int 0 1) && Bitops.eq arg2723 
            (Bits.of_int 2 32) && Bitops.eq arg2718 (Bits.of_int 23 5) && 
          Bitops.eq arg2719 (Bits.of_int 0 1) && Bitops.eq arg2720 
            (Bits.of_int 1 32) && Bitops.eq arg2715 (Bits.of_int 24 5) && 
          Bitops.eq arg2716 (Bits.of_int 0 1) && Bitops.eq arg2717 
            (Bits.of_int 16 32) && Bitops.eq arg2712 (Bits.of_int 25 5) && 
          Bitops.eq arg2713 (Bits.of_int 0 1) && Bitops.eq arg2714 
            (Bits.of_int 15 32) && Bitops.eq arg2709 (Bits.of_int 26 5) && 
          Bitops.eq arg2710 (Bits.of_int 0 1) && Bitops.eq arg2711 
            (Bits.of_int 14 32) && Bitops.eq arg2706 (Bits.of_int 27 5) && 
          Bitops.eq arg2707 (Bits.of_int 0 1) && Bitops.eq arg2708 
            (Bits.of_int 13 32) && Bitops.eq arg2703 (Bits.of_int 28 5) && 
          Bitops.eq arg2704 (Bits.of_int 0 1) && Bitops.eq arg2705 
            (Bits.of_int 12 32) && Bitops.eq arg2700 (Bits.of_int 29 5) && 
          Bitops.eq arg2701 (Bits.of_int 0 1) && Bitops.eq arg2702 
            (Bits.of_int 11 32) && Bitops.eq arg2697 (Bits.of_int 30 5) && 
          Bitops.eq arg2698 (Bits.of_int 0 1) && Bitops.eq arg2699 
            (Bits.of_int 10 32) && Bitops.eq arg2694 (Bits.of_int 31 5) && 
          Bitops.eq arg2695 (Bits.of_int 0 1) && Bitops.eq arg2696 
            (Bits.of_int 9 32) && Bitops.eq arg2691 (Bits.of_int 0 1) && 
          Bitops.eq arg2692 (Bits.of_int 0 1) && Bitops.eq arg2693 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 17 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2690)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2818), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2819), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2816), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2817), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2814), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2815), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2812), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2813), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2810), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2811), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2808), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2809), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2806), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2807), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2804), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2805), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2801), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2802), _), 32); 
                    RP.Const (RP.Bits arg2803)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2798), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2799), _), 32); 
                    RP.Const (RP.Bits arg2800)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2795), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2796), _), 32); 
                    RP.Const (RP.Bits arg2797)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2792), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2793), _), 32); 
                    RP.Const (RP.Bits arg2794)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2789), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2790), _), 32); 
                    RP.Const (RP.Bits arg2791)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2786), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2787), _), 32); 
                    RP.Const (RP.Bits arg2788)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2783), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2784), _), 32); 
                    RP.Const (RP.Bits arg2785)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2780), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2781), _), 32); 
                    RP.Const (RP.Bits arg2782)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2777), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2778), _), 32); 
                    RP.Const (RP.Bits arg2779)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2774), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2775), _), 32); 
                    RP.Const (RP.Bits arg2776)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2771), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2772), _), 32); 
                    RP.Const (RP.Bits arg2773)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2768), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2769), _), 32); 
                    RP.Const (RP.Bits arg2770)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2765), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2766), _), 32); 
                    RP.Const (RP.Bits arg2767)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2762), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2763), _), 32); 
                    RP.Const (RP.Bits arg2764)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2759), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2760), _), 32); 
                    RP.Const (RP.Bits arg2761)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2756), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2757), _), 32); 
                  RP.Const (RP.Bits arg2758)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2755)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2755 13 && Bitops.eq arg2818 
            (Bits.of_int 8 5) && Bitops.eq arg2819 (Bits.of_int 24 5) && 
          Bitops.eq arg2816 (Bits.of_int 9 5) && Bitops.eq arg2817 
            (Bits.of_int 25 5) && Bitops.eq arg2814 (Bits.of_int 10 5) && 
          Bitops.eq arg2815 (Bits.of_int 26 5) && Bitops.eq arg2812 
            (Bits.of_int 11 5) && Bitops.eq arg2813 (Bits.of_int 27 5) && 
          Bitops.eq arg2810 (Bits.of_int 12 5) && Bitops.eq arg2811 
            (Bits.of_int 28 5) && Bitops.eq arg2808 (Bits.of_int 13 5) && 
          Bitops.eq arg2809 (Bits.of_int 29 5) && Bitops.eq arg2806 
            (Bits.of_int 14 5) && Bitops.eq arg2807 (Bits.of_int 30 5) && 
          Bitops.eq arg2804 (Bits.of_int 15 5) && Bitops.eq arg2805 
            (Bits.of_int 31 5) && Bitops.eq arg2801 (Bits.of_int 17 5) && 
          Bitops.eq arg2802 (Bits.of_int 0 1) && Bitops.eq arg2803 
            (Bits.of_int 7 32) && Bitops.eq arg2798 (Bits.of_int 18 5) && 
          Bitops.eq arg2799 (Bits.of_int 0 1) && Bitops.eq arg2800 
            (Bits.of_int 6 32) && Bitops.eq arg2795 (Bits.of_int 19 5) && 
          Bitops.eq arg2796 (Bits.of_int 0 1) && Bitops.eq arg2797 
            (Bits.of_int 5 32) && Bitops.eq arg2792 (Bits.of_int 20 5) && 
          Bitops.eq arg2793 (Bits.of_int 0 1) && Bitops.eq arg2794 
            (Bits.of_int 4 32) && Bitops.eq arg2789 (Bits.of_int 21 5) && 
          Bitops.eq arg2790 (Bits.of_int 0 1) && Bitops.eq arg2791 
            (Bits.of_int 3 32) && Bitops.eq arg2786 (Bits.of_int 22 5) && 
          Bitops.eq arg2787 (Bits.of_int 0 1) && Bitops.eq arg2788 
            (Bits.of_int 2 32) && Bitops.eq arg2783 (Bits.of_int 23 5) && 
          Bitops.eq arg2784 (Bits.of_int 0 1) && Bitops.eq arg2785 
            (Bits.of_int 1 32) && Bitops.eq arg2780 (Bits.of_int 24 5) && 
          Bitops.eq arg2781 (Bits.of_int 0 1) && Bitops.eq arg2782 
            (Bits.of_int 16 32) && Bitops.eq arg2777 (Bits.of_int 25 5) && 
          Bitops.eq arg2778 (Bits.of_int 0 1) && Bitops.eq arg2779 
            (Bits.of_int 15 32) && Bitops.eq arg2774 (Bits.of_int 26 5) && 
          Bitops.eq arg2775 (Bits.of_int 0 1) && Bitops.eq arg2776 
            (Bits.of_int 14 32) && Bitops.eq arg2771 (Bits.of_int 27 5) && 
          Bitops.eq arg2772 (Bits.of_int 0 1) && Bitops.eq arg2773 
            (Bits.of_int 13 32) && Bitops.eq arg2768 (Bits.of_int 28 5) && 
          Bitops.eq arg2769 (Bits.of_int 0 1) && Bitops.eq arg2770 
            (Bits.of_int 12 32) && Bitops.eq arg2765 (Bits.of_int 29 5) && 
          Bitops.eq arg2766 (Bits.of_int 0 1) && Bitops.eq arg2767 
            (Bits.of_int 11 32) && Bitops.eq arg2762 (Bits.of_int 30 5) && 
          Bitops.eq arg2763 (Bits.of_int 0 1) && Bitops.eq arg2764 
            (Bits.of_int 10 32) && Bitops.eq arg2759 (Bits.of_int 31 5) && 
          Bitops.eq arg2760 (Bits.of_int 0 1) && Bitops.eq arg2761 
            (Bits.of_int 9 32) && Bitops.eq arg2756 (Bits.of_int 0 1) && 
          Bitops.eq arg2757 (Bits.of_int 0 1) && Bitops.eq arg2758 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 16 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2755)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2884), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2885), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2882), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2883), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2880), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2881), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2878), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2879), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2876), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2877), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2874), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2875), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2872), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2873), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2869), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2870), _), 32); 
                    RP.Const (RP.Bits arg2871)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2866), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2867), _), 32); 
                    RP.Const (RP.Bits arg2868)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2863), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2864), _), 32); 
                    RP.Const (RP.Bits arg2865)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2860), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2861), _), 32); 
                    RP.Const (RP.Bits arg2862)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2857), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2858), _), 32); 
                    RP.Const (RP.Bits arg2859)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2854), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2855), _), 32); 
                    RP.Const (RP.Bits arg2856)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2851), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2852), _), 32); 
                    RP.Const (RP.Bits arg2853)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2848), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2849), _), 32); 
                    RP.Const (RP.Bits arg2850)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2845), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2846), _), 32); 
                    RP.Const (RP.Bits arg2847)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2842), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2843), _), 32); 
                    RP.Const (RP.Bits arg2844)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2839), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2840), _), 32); 
                    RP.Const (RP.Bits arg2841)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2836), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2837), _), 32); 
                    RP.Const (RP.Bits arg2838)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2833), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2834), _), 32); 
                    RP.Const (RP.Bits arg2835)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2830), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2831), _), 32); 
                    RP.Const (RP.Bits arg2832)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2827), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2828), _), 32); 
                    RP.Const (RP.Bits arg2829)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2824), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2825), _), 32); 
                    RP.Const (RP.Bits arg2826)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2821), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2822), _), 32); 
                  RP.Const (RP.Bits arg2823)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2820)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2820 13 && Bitops.eq arg2884 
            (Bits.of_int 8 5) && Bitops.eq arg2885 (Bits.of_int 24 5) && 
          Bitops.eq arg2882 (Bits.of_int 9 5) && Bitops.eq arg2883 
            (Bits.of_int 25 5) && Bitops.eq arg2880 (Bits.of_int 10 5) && 
          Bitops.eq arg2881 (Bits.of_int 26 5) && Bitops.eq arg2878 
            (Bits.of_int 11 5) && Bitops.eq arg2879 (Bits.of_int 27 5) && 
          Bitops.eq arg2876 (Bits.of_int 12 5) && Bitops.eq arg2877 
            (Bits.of_int 28 5) && Bitops.eq arg2874 (Bits.of_int 13 5) && 
          Bitops.eq arg2875 (Bits.of_int 29 5) && Bitops.eq arg2872 
            (Bits.of_int 14 5) && Bitops.eq arg2873 (Bits.of_int 30 5) && 
          Bitops.eq arg2869 (Bits.of_int 16 5) && Bitops.eq arg2870 
            (Bits.of_int 0 1) && Bitops.eq arg2871 (Bits.of_int 8 32) && 
          Bitops.eq arg2866 (Bits.of_int 17 5) && Bitops.eq arg2867 
            (Bits.of_int 0 1) && Bitops.eq arg2868 (Bits.of_int 7 32) && 
          Bitops.eq arg2863 (Bits.of_int 18 5) && Bitops.eq arg2864 
            (Bits.of_int 0 1) && Bitops.eq arg2865 (Bits.of_int 6 32) && 
          Bitops.eq arg2860 (Bits.of_int 19 5) && Bitops.eq arg2861 
            (Bits.of_int 0 1) && Bitops.eq arg2862 (Bits.of_int 5 32) && 
          Bitops.eq arg2857 (Bits.of_int 20 5) && Bitops.eq arg2858 
            (Bits.of_int 0 1) && Bitops.eq arg2859 (Bits.of_int 4 32) && 
          Bitops.eq arg2854 (Bits.of_int 21 5) && Bitops.eq arg2855 
            (Bits.of_int 0 1) && Bitops.eq arg2856 (Bits.of_int 3 32) && 
          Bitops.eq arg2851 (Bits.of_int 22 5) && Bitops.eq arg2852 
            (Bits.of_int 0 1) && Bitops.eq arg2853 (Bits.of_int 2 32) && 
          Bitops.eq arg2848 (Bits.of_int 23 5) && Bitops.eq arg2849 
            (Bits.of_int 0 1) && Bitops.eq arg2850 (Bits.of_int 1 32) && 
          Bitops.eq arg2845 (Bits.of_int 24 5) && Bitops.eq arg2846 
            (Bits.of_int 0 1) && Bitops.eq arg2847 (Bits.of_int 16 32) && 
          Bitops.eq arg2842 (Bits.of_int 25 5) && Bitops.eq arg2843 
            (Bits.of_int 0 1) && Bitops.eq arg2844 (Bits.of_int 15 32) && 
          Bitops.eq arg2839 (Bits.of_int 26 5) && Bitops.eq arg2840 
            (Bits.of_int 0 1) && Bitops.eq arg2841 (Bits.of_int 14 32) && 
          Bitops.eq arg2836 (Bits.of_int 27 5) && Bitops.eq arg2837 
            (Bits.of_int 0 1) && Bitops.eq arg2838 (Bits.of_int 13 32) && 
          Bitops.eq arg2833 (Bits.of_int 28 5) && Bitops.eq arg2834 
            (Bits.of_int 0 1) && Bitops.eq arg2835 (Bits.of_int 12 32) && 
          Bitops.eq arg2830 (Bits.of_int 29 5) && Bitops.eq arg2831 
            (Bits.of_int 0 1) && Bitops.eq arg2832 (Bits.of_int 11 32) && 
          Bitops.eq arg2827 (Bits.of_int 30 5) && Bitops.eq arg2828 
            (Bits.of_int 0 1) && Bitops.eq arg2829 (Bits.of_int 10 32) && 
          Bitops.eq arg2824 (Bits.of_int 31 5) && Bitops.eq arg2825 
            (Bits.of_int 0 1) && Bitops.eq arg2826 (Bits.of_int 9 32) && 
          Bitops.eq arg2821 (Bits.of_int 0 1) && Bitops.eq arg2822 
            (Bits.of_int 0 1) && Bitops.eq arg2823 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 15 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2820)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg2950), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg2951), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2948), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2949), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2946), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2947), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2944), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2945), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2942), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2943), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2940), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2941), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2938), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg2939), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2935), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2936), _), 32); 
                    RP.Const (RP.Bits arg2937)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2932), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2933), _), 32); 
                    RP.Const (RP.Bits arg2934)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2929), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2930), _), 32); 
                    RP.Const (RP.Bits arg2931)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2926), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2927), _), 32); 
                    RP.Const (RP.Bits arg2928)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2923), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2924), _), 32); 
                    RP.Const (RP.Bits arg2925)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2920), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2921), _), 32); 
                    RP.Const (RP.Bits arg2922)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2917), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2918), _), 32); 
                    RP.Const (RP.Bits arg2919)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2914), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2915), _), 32); 
                    RP.Const (RP.Bits arg2916)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2911), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2912), _), 32); 
                    RP.Const (RP.Bits arg2913)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2908), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2909), _), 32); 
                    RP.Const (RP.Bits arg2910)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2905), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2906), _), 32); 
                    RP.Const (RP.Bits arg2907)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2902), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2903), _), 32); 
                    RP.Const (RP.Bits arg2904)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2899), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2900), _), 32); 
                    RP.Const (RP.Bits arg2901)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2896), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2897), _), 32); 
                    RP.Const (RP.Bits arg2898)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2893), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2894), _), 32); 
                    RP.Const (RP.Bits arg2895)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2890), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2891), _), 32); 
                    RP.Const (RP.Bits arg2892)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2887), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2888), _), 32); 
                  RP.Const (RP.Bits arg2889)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2886)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2886 13 && Bitops.eq arg2950 
            (Bits.of_int 8 5) && Bitops.eq arg2951 (Bits.of_int 24 5) && 
          Bitops.eq arg2948 (Bits.of_int 9 5) && Bitops.eq arg2949 
            (Bits.of_int 25 5) && Bitops.eq arg2946 (Bits.of_int 10 5) && 
          Bitops.eq arg2947 (Bits.of_int 26 5) && Bitops.eq arg2944 
            (Bits.of_int 11 5) && Bitops.eq arg2945 (Bits.of_int 27 5) && 
          Bitops.eq arg2942 (Bits.of_int 12 5) && Bitops.eq arg2943 
            (Bits.of_int 28 5) && Bitops.eq arg2940 (Bits.of_int 13 5) && 
          Bitops.eq arg2941 (Bits.of_int 29 5) && Bitops.eq arg2938 
            (Bits.of_int 15 5) && Bitops.eq arg2939 (Bits.of_int 31 5) && 
          Bitops.eq arg2935 (Bits.of_int 16 5) && Bitops.eq arg2936 
            (Bits.of_int 0 1) && Bitops.eq arg2937 (Bits.of_int 8 32) && 
          Bitops.eq arg2932 (Bits.of_int 17 5) && Bitops.eq arg2933 
            (Bits.of_int 0 1) && Bitops.eq arg2934 (Bits.of_int 7 32) && 
          Bitops.eq arg2929 (Bits.of_int 18 5) && Bitops.eq arg2930 
            (Bits.of_int 0 1) && Bitops.eq arg2931 (Bits.of_int 6 32) && 
          Bitops.eq arg2926 (Bits.of_int 19 5) && Bitops.eq arg2927 
            (Bits.of_int 0 1) && Bitops.eq arg2928 (Bits.of_int 5 32) && 
          Bitops.eq arg2923 (Bits.of_int 20 5) && Bitops.eq arg2924 
            (Bits.of_int 0 1) && Bitops.eq arg2925 (Bits.of_int 4 32) && 
          Bitops.eq arg2920 (Bits.of_int 21 5) && Bitops.eq arg2921 
            (Bits.of_int 0 1) && Bitops.eq arg2922 (Bits.of_int 3 32) && 
          Bitops.eq arg2917 (Bits.of_int 22 5) && Bitops.eq arg2918 
            (Bits.of_int 0 1) && Bitops.eq arg2919 (Bits.of_int 2 32) && 
          Bitops.eq arg2914 (Bits.of_int 23 5) && Bitops.eq arg2915 
            (Bits.of_int 0 1) && Bitops.eq arg2916 (Bits.of_int 1 32) && 
          Bitops.eq arg2911 (Bits.of_int 24 5) && Bitops.eq arg2912 
            (Bits.of_int 0 1) && Bitops.eq arg2913 (Bits.of_int 16 32) && 
          Bitops.eq arg2908 (Bits.of_int 25 5) && Bitops.eq arg2909 
            (Bits.of_int 0 1) && Bitops.eq arg2910 (Bits.of_int 15 32) && 
          Bitops.eq arg2905 (Bits.of_int 26 5) && Bitops.eq arg2906 
            (Bits.of_int 0 1) && Bitops.eq arg2907 (Bits.of_int 14 32) && 
          Bitops.eq arg2902 (Bits.of_int 27 5) && Bitops.eq arg2903 
            (Bits.of_int 0 1) && Bitops.eq arg2904 (Bits.of_int 13 32) && 
          Bitops.eq arg2899 (Bits.of_int 28 5) && Bitops.eq arg2900 
            (Bits.of_int 0 1) && Bitops.eq arg2901 (Bits.of_int 12 32) && 
          Bitops.eq arg2896 (Bits.of_int 29 5) && Bitops.eq arg2897 
            (Bits.of_int 0 1) && Bitops.eq arg2898 (Bits.of_int 11 32) && 
          Bitops.eq arg2893 (Bits.of_int 30 5) && Bitops.eq arg2894 
            (Bits.of_int 0 1) && Bitops.eq arg2895 (Bits.of_int 10 32) && 
          Bitops.eq arg2890 (Bits.of_int 31 5) && Bitops.eq arg2891 
            (Bits.of_int 0 1) && Bitops.eq arg2892 (Bits.of_int 9 32) && 
          Bitops.eq arg2887 (Bits.of_int 0 1) && Bitops.eq arg2888 
            (Bits.of_int 0 1) && Bitops.eq arg2889 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 14 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2886)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3016), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3017), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3014), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3015), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3012), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3013), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3010), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3011), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3008), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3009), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3006), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3007), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3004), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3005), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3001), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3002), _), 32); 
                    RP.Const (RP.Bits arg3003)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2998), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2999), _), 32); 
                    RP.Const (RP.Bits arg3000)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2995), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2996), _), 32); 
                    RP.Const (RP.Bits arg2997)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2992), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2993), _), 32); 
                    RP.Const (RP.Bits arg2994)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2989), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2990), _), 32); 
                    RP.Const (RP.Bits arg2991)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2986), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2987), _), 32); 
                    RP.Const (RP.Bits arg2988)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2983), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2984), _), 32); 
                    RP.Const (RP.Bits arg2985)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2980), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2981), _), 32); 
                    RP.Const (RP.Bits arg2982)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2977), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2978), _), 32); 
                    RP.Const (RP.Bits arg2979)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2974), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2975), _), 32); 
                    RP.Const (RP.Bits arg2976)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2971), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2972), _), 32); 
                    RP.Const (RP.Bits arg2973)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2968), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2969), _), 32); 
                    RP.Const (RP.Bits arg2970)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2965), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2966), _), 32); 
                    RP.Const (RP.Bits arg2967)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2962), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2963), _), 32); 
                    RP.Const (RP.Bits arg2964)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2959), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2960), _), 32); 
                    RP.Const (RP.Bits arg2961)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2956), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg2957), _), 32); 
                    RP.Const (RP.Bits arg2958)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg2953), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg2954), _), 32); 
                  RP.Const (RP.Bits arg2955)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg2952)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg2952 13 && Bitops.eq arg3016 
            (Bits.of_int 8 5) && Bitops.eq arg3017 (Bits.of_int 24 5) && 
          Bitops.eq arg3014 (Bits.of_int 9 5) && Bitops.eq arg3015 
            (Bits.of_int 25 5) && Bitops.eq arg3012 (Bits.of_int 10 5) && 
          Bitops.eq arg3013 (Bits.of_int 26 5) && Bitops.eq arg3010 
            (Bits.of_int 11 5) && Bitops.eq arg3011 (Bits.of_int 27 5) && 
          Bitops.eq arg3008 (Bits.of_int 12 5) && Bitops.eq arg3009 
            (Bits.of_int 28 5) && Bitops.eq arg3006 (Bits.of_int 14 5) && 
          Bitops.eq arg3007 (Bits.of_int 30 5) && Bitops.eq arg3004 
            (Bits.of_int 15 5) && Bitops.eq arg3005 (Bits.of_int 31 5) && 
          Bitops.eq arg3001 (Bits.of_int 16 5) && Bitops.eq arg3002 
            (Bits.of_int 0 1) && Bitops.eq arg3003 (Bits.of_int 8 32) && 
          Bitops.eq arg2998 (Bits.of_int 17 5) && Bitops.eq arg2999 
            (Bits.of_int 0 1) && Bitops.eq arg3000 (Bits.of_int 7 32) && 
          Bitops.eq arg2995 (Bits.of_int 18 5) && Bitops.eq arg2996 
            (Bits.of_int 0 1) && Bitops.eq arg2997 (Bits.of_int 6 32) && 
          Bitops.eq arg2992 (Bits.of_int 19 5) && Bitops.eq arg2993 
            (Bits.of_int 0 1) && Bitops.eq arg2994 (Bits.of_int 5 32) && 
          Bitops.eq arg2989 (Bits.of_int 20 5) && Bitops.eq arg2990 
            (Bits.of_int 0 1) && Bitops.eq arg2991 (Bits.of_int 4 32) && 
          Bitops.eq arg2986 (Bits.of_int 21 5) && Bitops.eq arg2987 
            (Bits.of_int 0 1) && Bitops.eq arg2988 (Bits.of_int 3 32) && 
          Bitops.eq arg2983 (Bits.of_int 22 5) && Bitops.eq arg2984 
            (Bits.of_int 0 1) && Bitops.eq arg2985 (Bits.of_int 2 32) && 
          Bitops.eq arg2980 (Bits.of_int 23 5) && Bitops.eq arg2981 
            (Bits.of_int 0 1) && Bitops.eq arg2982 (Bits.of_int 1 32) && 
          Bitops.eq arg2977 (Bits.of_int 24 5) && Bitops.eq arg2978 
            (Bits.of_int 0 1) && Bitops.eq arg2979 (Bits.of_int 16 32) && 
          Bitops.eq arg2974 (Bits.of_int 25 5) && Bitops.eq arg2975 
            (Bits.of_int 0 1) && Bitops.eq arg2976 (Bits.of_int 15 32) && 
          Bitops.eq arg2971 (Bits.of_int 26 5) && Bitops.eq arg2972 
            (Bits.of_int 0 1) && Bitops.eq arg2973 (Bits.of_int 14 32) && 
          Bitops.eq arg2968 (Bits.of_int 27 5) && Bitops.eq arg2969 
            (Bits.of_int 0 1) && Bitops.eq arg2970 (Bits.of_int 13 32) && 
          Bitops.eq arg2965 (Bits.of_int 28 5) && Bitops.eq arg2966 
            (Bits.of_int 0 1) && Bitops.eq arg2967 (Bits.of_int 12 32) && 
          Bitops.eq arg2962 (Bits.of_int 29 5) && Bitops.eq arg2963 
            (Bits.of_int 0 1) && Bitops.eq arg2964 (Bits.of_int 11 32) && 
          Bitops.eq arg2959 (Bits.of_int 30 5) && Bitops.eq arg2960 
            (Bits.of_int 0 1) && Bitops.eq arg2961 (Bits.of_int 10 32) && 
          Bitops.eq arg2956 (Bits.of_int 31 5) && Bitops.eq arg2957 
            (Bits.of_int 0 1) && Bitops.eq arg2958 (Bits.of_int 9 32) && 
          Bitops.eq arg2953 (Bits.of_int 0 1) && Bitops.eq arg2954 
            (Bits.of_int 0 1) && Bitops.eq arg2955 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 13 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg2952)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3082), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3083), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3080), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3081), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3078), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3079), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3076), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3077), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3074), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3075), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3072), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3073), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3070), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3071), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3067), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3068), _), 32); 
                    RP.Const (RP.Bits arg3069)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3064), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3065), _), 32); 
                    RP.Const (RP.Bits arg3066)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3061), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3062), _), 32); 
                    RP.Const (RP.Bits arg3063)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3058), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3059), _), 32); 
                    RP.Const (RP.Bits arg3060)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3055), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3056), _), 32); 
                    RP.Const (RP.Bits arg3057)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3052), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3053), _), 32); 
                    RP.Const (RP.Bits arg3054)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3049), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3050), _), 32); 
                    RP.Const (RP.Bits arg3051)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3046), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3047), _), 32); 
                    RP.Const (RP.Bits arg3048)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3043), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3044), _), 32); 
                    RP.Const (RP.Bits arg3045)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3040), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3041), _), 32); 
                    RP.Const (RP.Bits arg3042)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3037), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3038), _), 32); 
                    RP.Const (RP.Bits arg3039)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3034), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3035), _), 32); 
                    RP.Const (RP.Bits arg3036)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3031), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3032), _), 32); 
                    RP.Const (RP.Bits arg3033)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3028), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3029), _), 32); 
                    RP.Const (RP.Bits arg3030)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3025), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3026), _), 32); 
                    RP.Const (RP.Bits arg3027)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3022), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3023), _), 32); 
                    RP.Const (RP.Bits arg3024)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3019), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3020), _), 32); 
                  RP.Const (RP.Bits arg3021)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg3018)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg3018 13 && Bitops.eq arg3082 
            (Bits.of_int 8 5) && Bitops.eq arg3083 (Bits.of_int 24 5) && 
          Bitops.eq arg3080 (Bits.of_int 9 5) && Bitops.eq arg3081 
            (Bits.of_int 25 5) && Bitops.eq arg3078 (Bits.of_int 10 5) && 
          Bitops.eq arg3079 (Bits.of_int 26 5) && Bitops.eq arg3076 
            (Bits.of_int 11 5) && Bitops.eq arg3077 (Bits.of_int 27 5) && 
          Bitops.eq arg3074 (Bits.of_int 13 5) && Bitops.eq arg3075 
            (Bits.of_int 29 5) && Bitops.eq arg3072 (Bits.of_int 14 5) && 
          Bitops.eq arg3073 (Bits.of_int 30 5) && Bitops.eq arg3070 
            (Bits.of_int 15 5) && Bitops.eq arg3071 (Bits.of_int 31 5) && 
          Bitops.eq arg3067 (Bits.of_int 16 5) && Bitops.eq arg3068 
            (Bits.of_int 0 1) && Bitops.eq arg3069 (Bits.of_int 8 32) && 
          Bitops.eq arg3064 (Bits.of_int 17 5) && Bitops.eq arg3065 
            (Bits.of_int 0 1) && Bitops.eq arg3066 (Bits.of_int 7 32) && 
          Bitops.eq arg3061 (Bits.of_int 18 5) && Bitops.eq arg3062 
            (Bits.of_int 0 1) && Bitops.eq arg3063 (Bits.of_int 6 32) && 
          Bitops.eq arg3058 (Bits.of_int 19 5) && Bitops.eq arg3059 
            (Bits.of_int 0 1) && Bitops.eq arg3060 (Bits.of_int 5 32) && 
          Bitops.eq arg3055 (Bits.of_int 20 5) && Bitops.eq arg3056 
            (Bits.of_int 0 1) && Bitops.eq arg3057 (Bits.of_int 4 32) && 
          Bitops.eq arg3052 (Bits.of_int 21 5) && Bitops.eq arg3053 
            (Bits.of_int 0 1) && Bitops.eq arg3054 (Bits.of_int 3 32) && 
          Bitops.eq arg3049 (Bits.of_int 22 5) && Bitops.eq arg3050 
            (Bits.of_int 0 1) && Bitops.eq arg3051 (Bits.of_int 2 32) && 
          Bitops.eq arg3046 (Bits.of_int 23 5) && Bitops.eq arg3047 
            (Bits.of_int 0 1) && Bitops.eq arg3048 (Bits.of_int 1 32) && 
          Bitops.eq arg3043 (Bits.of_int 24 5) && Bitops.eq arg3044 
            (Bits.of_int 0 1) && Bitops.eq arg3045 (Bits.of_int 16 32) && 
          Bitops.eq arg3040 (Bits.of_int 25 5) && Bitops.eq arg3041 
            (Bits.of_int 0 1) && Bitops.eq arg3042 (Bits.of_int 15 32) && 
          Bitops.eq arg3037 (Bits.of_int 26 5) && Bitops.eq arg3038 
            (Bits.of_int 0 1) && Bitops.eq arg3039 (Bits.of_int 14 32) && 
          Bitops.eq arg3034 (Bits.of_int 27 5) && Bitops.eq arg3035 
            (Bits.of_int 0 1) && Bitops.eq arg3036 (Bits.of_int 13 32) && 
          Bitops.eq arg3031 (Bits.of_int 28 5) && Bitops.eq arg3032 
            (Bits.of_int 0 1) && Bitops.eq arg3033 (Bits.of_int 12 32) && 
          Bitops.eq arg3028 (Bits.of_int 29 5) && Bitops.eq arg3029 
            (Bits.of_int 0 1) && Bitops.eq arg3030 (Bits.of_int 11 32) && 
          Bitops.eq arg3025 (Bits.of_int 30 5) && Bitops.eq arg3026 
            (Bits.of_int 0 1) && Bitops.eq arg3027 (Bits.of_int 10 32) && 
          Bitops.eq arg3022 (Bits.of_int 31 5) && Bitops.eq arg3023 
            (Bits.of_int 0 1) && Bitops.eq arg3024 (Bits.of_int 9 32) && 
          Bitops.eq arg3019 (Bits.of_int 0 1) && Bitops.eq arg3020 
            (Bits.of_int 0 1) && Bitops.eq arg3021 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 12 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg3018)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3148), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3149), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3146), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3147), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3144), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3145), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3142), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3143), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3140), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3141), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3138), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3139), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3136), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3137), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3133), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3134), _), 32); 
                    RP.Const (RP.Bits arg3135)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3130), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3131), _), 32); 
                    RP.Const (RP.Bits arg3132)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3127), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3128), _), 32); 
                    RP.Const (RP.Bits arg3129)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3124), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3125), _), 32); 
                    RP.Const (RP.Bits arg3126)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3121), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3122), _), 32); 
                    RP.Const (RP.Bits arg3123)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3118), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3119), _), 32); 
                    RP.Const (RP.Bits arg3120)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3115), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3116), _), 32); 
                    RP.Const (RP.Bits arg3117)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3112), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3113), _), 32); 
                    RP.Const (RP.Bits arg3114)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3109), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3110), _), 32); 
                    RP.Const (RP.Bits arg3111)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3106), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3107), _), 32); 
                    RP.Const (RP.Bits arg3108)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3103), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3104), _), 32); 
                    RP.Const (RP.Bits arg3105)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3100), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3101), _), 32); 
                    RP.Const (RP.Bits arg3102)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3097), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3098), _), 32); 
                    RP.Const (RP.Bits arg3099)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3094), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3095), _), 32); 
                    RP.Const (RP.Bits arg3096)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3091), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3092), _), 32); 
                    RP.Const (RP.Bits arg3093)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3088), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3089), _), 32); 
                    RP.Const (RP.Bits arg3090)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3085), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3086), _), 32); 
                  RP.Const (RP.Bits arg3087)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg3084)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg3084 13 && Bitops.eq arg3148 
            (Bits.of_int 8 5) && Bitops.eq arg3149 (Bits.of_int 24 5) && 
          Bitops.eq arg3146 (Bits.of_int 9 5) && Bitops.eq arg3147 
            (Bits.of_int 25 5) && Bitops.eq arg3144 (Bits.of_int 10 5) && 
          Bitops.eq arg3145 (Bits.of_int 26 5) && Bitops.eq arg3142 
            (Bits.of_int 12 5) && Bitops.eq arg3143 (Bits.of_int 28 5) && 
          Bitops.eq arg3140 (Bits.of_int 13 5) && Bitops.eq arg3141 
            (Bits.of_int 29 5) && Bitops.eq arg3138 (Bits.of_int 14 5) && 
          Bitops.eq arg3139 (Bits.of_int 30 5) && Bitops.eq arg3136 
            (Bits.of_int 15 5) && Bitops.eq arg3137 (Bits.of_int 31 5) && 
          Bitops.eq arg3133 (Bits.of_int 16 5) && Bitops.eq arg3134 
            (Bits.of_int 0 1) && Bitops.eq arg3135 (Bits.of_int 8 32) && 
          Bitops.eq arg3130 (Bits.of_int 17 5) && Bitops.eq arg3131 
            (Bits.of_int 0 1) && Bitops.eq arg3132 (Bits.of_int 7 32) && 
          Bitops.eq arg3127 (Bits.of_int 18 5) && Bitops.eq arg3128 
            (Bits.of_int 0 1) && Bitops.eq arg3129 (Bits.of_int 6 32) && 
          Bitops.eq arg3124 (Bits.of_int 19 5) && Bitops.eq arg3125 
            (Bits.of_int 0 1) && Bitops.eq arg3126 (Bits.of_int 5 32) && 
          Bitops.eq arg3121 (Bits.of_int 20 5) && Bitops.eq arg3122 
            (Bits.of_int 0 1) && Bitops.eq arg3123 (Bits.of_int 4 32) && 
          Bitops.eq arg3118 (Bits.of_int 21 5) && Bitops.eq arg3119 
            (Bits.of_int 0 1) && Bitops.eq arg3120 (Bits.of_int 3 32) && 
          Bitops.eq arg3115 (Bits.of_int 22 5) && Bitops.eq arg3116 
            (Bits.of_int 0 1) && Bitops.eq arg3117 (Bits.of_int 2 32) && 
          Bitops.eq arg3112 (Bits.of_int 23 5) && Bitops.eq arg3113 
            (Bits.of_int 0 1) && Bitops.eq arg3114 (Bits.of_int 1 32) && 
          Bitops.eq arg3109 (Bits.of_int 24 5) && Bitops.eq arg3110 
            (Bits.of_int 0 1) && Bitops.eq arg3111 (Bits.of_int 16 32) && 
          Bitops.eq arg3106 (Bits.of_int 25 5) && Bitops.eq arg3107 
            (Bits.of_int 0 1) && Bitops.eq arg3108 (Bits.of_int 15 32) && 
          Bitops.eq arg3103 (Bits.of_int 26 5) && Bitops.eq arg3104 
            (Bits.of_int 0 1) && Bitops.eq arg3105 (Bits.of_int 14 32) && 
          Bitops.eq arg3100 (Bits.of_int 27 5) && Bitops.eq arg3101 
            (Bits.of_int 0 1) && Bitops.eq arg3102 (Bits.of_int 13 32) && 
          Bitops.eq arg3097 (Bits.of_int 28 5) && Bitops.eq arg3098 
            (Bits.of_int 0 1) && Bitops.eq arg3099 (Bits.of_int 12 32) && 
          Bitops.eq arg3094 (Bits.of_int 29 5) && Bitops.eq arg3095 
            (Bits.of_int 0 1) && Bitops.eq arg3096 (Bits.of_int 11 32) && 
          Bitops.eq arg3091 (Bits.of_int 30 5) && Bitops.eq arg3092 
            (Bits.of_int 0 1) && Bitops.eq arg3093 (Bits.of_int 10 32) && 
          Bitops.eq arg3088 (Bits.of_int 31 5) && Bitops.eq arg3089 
            (Bits.of_int 0 1) && Bitops.eq arg3090 (Bits.of_int 9 32) && 
          Bitops.eq arg3085 (Bits.of_int 0 1) && Bitops.eq arg3086 
            (Bits.of_int 0 1) && Bitops.eq arg3087 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 11 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg3084)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3214), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3215), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3212), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3213), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3210), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3211), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3208), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3209), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3206), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3207), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3204), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3205), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3202), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3203), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3199), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3200), _), 32); 
                    RP.Const (RP.Bits arg3201)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3196), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3197), _), 32); 
                    RP.Const (RP.Bits arg3198)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3193), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3194), _), 32); 
                    RP.Const (RP.Bits arg3195)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3190), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3191), _), 32); 
                    RP.Const (RP.Bits arg3192)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3187), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3188), _), 32); 
                    RP.Const (RP.Bits arg3189)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3184), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3185), _), 32); 
                    RP.Const (RP.Bits arg3186)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3181), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3182), _), 32); 
                    RP.Const (RP.Bits arg3183)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3178), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3179), _), 32); 
                    RP.Const (RP.Bits arg3180)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3175), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3176), _), 32); 
                    RP.Const (RP.Bits arg3177)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3172), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3173), _), 32); 
                    RP.Const (RP.Bits arg3174)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3169), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3170), _), 32); 
                    RP.Const (RP.Bits arg3171)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3166), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3167), _), 32); 
                    RP.Const (RP.Bits arg3168)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3163), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3164), _), 32); 
                    RP.Const (RP.Bits arg3165)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3160), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3161), _), 32); 
                    RP.Const (RP.Bits arg3162)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3157), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3158), _), 32); 
                    RP.Const (RP.Bits arg3159)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3154), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3155), _), 32); 
                    RP.Const (RP.Bits arg3156)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3151), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3152), _), 32); 
                  RP.Const (RP.Bits arg3153)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg3150)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg3150 13 && Bitops.eq arg3214 
            (Bits.of_int 8 5) && Bitops.eq arg3215 (Bits.of_int 24 5) && 
          Bitops.eq arg3212 (Bits.of_int 9 5) && Bitops.eq arg3213 
            (Bits.of_int 25 5) && Bitops.eq arg3210 (Bits.of_int 11 5) && 
          Bitops.eq arg3211 (Bits.of_int 27 5) && Bitops.eq arg3208 
            (Bits.of_int 12 5) && Bitops.eq arg3209 (Bits.of_int 28 5) && 
          Bitops.eq arg3206 (Bits.of_int 13 5) && Bitops.eq arg3207 
            (Bits.of_int 29 5) && Bitops.eq arg3204 (Bits.of_int 14 5) && 
          Bitops.eq arg3205 (Bits.of_int 30 5) && Bitops.eq arg3202 
            (Bits.of_int 15 5) && Bitops.eq arg3203 (Bits.of_int 31 5) && 
          Bitops.eq arg3199 (Bits.of_int 16 5) && Bitops.eq arg3200 
            (Bits.of_int 0 1) && Bitops.eq arg3201 (Bits.of_int 8 32) && 
          Bitops.eq arg3196 (Bits.of_int 17 5) && Bitops.eq arg3197 
            (Bits.of_int 0 1) && Bitops.eq arg3198 (Bits.of_int 7 32) && 
          Bitops.eq arg3193 (Bits.of_int 18 5) && Bitops.eq arg3194 
            (Bits.of_int 0 1) && Bitops.eq arg3195 (Bits.of_int 6 32) && 
          Bitops.eq arg3190 (Bits.of_int 19 5) && Bitops.eq arg3191 
            (Bits.of_int 0 1) && Bitops.eq arg3192 (Bits.of_int 5 32) && 
          Bitops.eq arg3187 (Bits.of_int 20 5) && Bitops.eq arg3188 
            (Bits.of_int 0 1) && Bitops.eq arg3189 (Bits.of_int 4 32) && 
          Bitops.eq arg3184 (Bits.of_int 21 5) && Bitops.eq arg3185 
            (Bits.of_int 0 1) && Bitops.eq arg3186 (Bits.of_int 3 32) && 
          Bitops.eq arg3181 (Bits.of_int 22 5) && Bitops.eq arg3182 
            (Bits.of_int 0 1) && Bitops.eq arg3183 (Bits.of_int 2 32) && 
          Bitops.eq arg3178 (Bits.of_int 23 5) && Bitops.eq arg3179 
            (Bits.of_int 0 1) && Bitops.eq arg3180 (Bits.of_int 1 32) && 
          Bitops.eq arg3175 (Bits.of_int 24 5) && Bitops.eq arg3176 
            (Bits.of_int 0 1) && Bitops.eq arg3177 (Bits.of_int 16 32) && 
          Bitops.eq arg3172 (Bits.of_int 25 5) && Bitops.eq arg3173 
            (Bits.of_int 0 1) && Bitops.eq arg3174 (Bits.of_int 15 32) && 
          Bitops.eq arg3169 (Bits.of_int 26 5) && Bitops.eq arg3170 
            (Bits.of_int 0 1) && Bitops.eq arg3171 (Bits.of_int 14 32) && 
          Bitops.eq arg3166 (Bits.of_int 27 5) && Bitops.eq arg3167 
            (Bits.of_int 0 1) && Bitops.eq arg3168 (Bits.of_int 13 32) && 
          Bitops.eq arg3163 (Bits.of_int 28 5) && Bitops.eq arg3164 
            (Bits.of_int 0 1) && Bitops.eq arg3165 (Bits.of_int 12 32) && 
          Bitops.eq arg3160 (Bits.of_int 29 5) && Bitops.eq arg3161 
            (Bits.of_int 0 1) && Bitops.eq arg3162 (Bits.of_int 11 32) && 
          Bitops.eq arg3157 (Bits.of_int 30 5) && Bitops.eq arg3158 
            (Bits.of_int 0 1) && Bitops.eq arg3159 (Bits.of_int 10 32) && 
          Bitops.eq arg3154 (Bits.of_int 31 5) && Bitops.eq arg3155 
            (Bits.of_int 0 1) && Bitops.eq arg3156 (Bits.of_int 9 32) && 
          Bitops.eq arg3151 (Bits.of_int 0 1) && Bitops.eq arg3152 
            (Bits.of_int 0 1) && Bitops.eq arg3153 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 10 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg3150)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3280), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3281), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3278), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3279), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3276), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3277), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3274), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3275), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3272), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3273), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3270), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3271), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3268), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3269), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3265), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3266), _), 32); 
                    RP.Const (RP.Bits arg3267)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3262), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3263), _), 32); 
                    RP.Const (RP.Bits arg3264)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3259), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3260), _), 32); 
                    RP.Const (RP.Bits arg3261)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3256), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3257), _), 32); 
                    RP.Const (RP.Bits arg3258)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3253), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3254), _), 32); 
                    RP.Const (RP.Bits arg3255)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3250), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3251), _), 32); 
                    RP.Const (RP.Bits arg3252)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3247), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3248), _), 32); 
                    RP.Const (RP.Bits arg3249)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3244), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3245), _), 32); 
                    RP.Const (RP.Bits arg3246)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3241), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3242), _), 32); 
                    RP.Const (RP.Bits arg3243)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3238), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3239), _), 32); 
                    RP.Const (RP.Bits arg3240)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3235), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3236), _), 32); 
                    RP.Const (RP.Bits arg3237)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3232), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3233), _), 32); 
                    RP.Const (RP.Bits arg3234)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3229), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3230), _), 32); 
                    RP.Const (RP.Bits arg3231)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3226), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3227), _), 32); 
                    RP.Const (RP.Bits arg3228)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3223), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3224), _), 32); 
                    RP.Const (RP.Bits arg3225)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3220), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3221), _), 32); 
                    RP.Const (RP.Bits arg3222)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3217), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3218), _), 32); 
                  RP.Const (RP.Bits arg3219)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg3216)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg3216 13 && Bitops.eq arg3280 
            (Bits.of_int 8 5) && Bitops.eq arg3281 (Bits.of_int 24 5) && 
          Bitops.eq arg3278 (Bits.of_int 10 5) && Bitops.eq arg3279 
            (Bits.of_int 26 5) && Bitops.eq arg3276 (Bits.of_int 11 5) && 
          Bitops.eq arg3277 (Bits.of_int 27 5) && Bitops.eq arg3274 
            (Bits.of_int 12 5) && Bitops.eq arg3275 (Bits.of_int 28 5) && 
          Bitops.eq arg3272 (Bits.of_int 13 5) && Bitops.eq arg3273 
            (Bits.of_int 29 5) && Bitops.eq arg3270 (Bits.of_int 14 5) && 
          Bitops.eq arg3271 (Bits.of_int 30 5) && Bitops.eq arg3268 
            (Bits.of_int 15 5) && Bitops.eq arg3269 (Bits.of_int 31 5) && 
          Bitops.eq arg3265 (Bits.of_int 16 5) && Bitops.eq arg3266 
            (Bits.of_int 0 1) && Bitops.eq arg3267 (Bits.of_int 8 32) && 
          Bitops.eq arg3262 (Bits.of_int 17 5) && Bitops.eq arg3263 
            (Bits.of_int 0 1) && Bitops.eq arg3264 (Bits.of_int 7 32) && 
          Bitops.eq arg3259 (Bits.of_int 18 5) && Bitops.eq arg3260 
            (Bits.of_int 0 1) && Bitops.eq arg3261 (Bits.of_int 6 32) && 
          Bitops.eq arg3256 (Bits.of_int 19 5) && Bitops.eq arg3257 
            (Bits.of_int 0 1) && Bitops.eq arg3258 (Bits.of_int 5 32) && 
          Bitops.eq arg3253 (Bits.of_int 20 5) && Bitops.eq arg3254 
            (Bits.of_int 0 1) && Bitops.eq arg3255 (Bits.of_int 4 32) && 
          Bitops.eq arg3250 (Bits.of_int 21 5) && Bitops.eq arg3251 
            (Bits.of_int 0 1) && Bitops.eq arg3252 (Bits.of_int 3 32) && 
          Bitops.eq arg3247 (Bits.of_int 22 5) && Bitops.eq arg3248 
            (Bits.of_int 0 1) && Bitops.eq arg3249 (Bits.of_int 2 32) && 
          Bitops.eq arg3244 (Bits.of_int 23 5) && Bitops.eq arg3245 
            (Bits.of_int 0 1) && Bitops.eq arg3246 (Bits.of_int 1 32) && 
          Bitops.eq arg3241 (Bits.of_int 24 5) && Bitops.eq arg3242 
            (Bits.of_int 0 1) && Bitops.eq arg3243 (Bits.of_int 16 32) && 
          Bitops.eq arg3238 (Bits.of_int 25 5) && Bitops.eq arg3239 
            (Bits.of_int 0 1) && Bitops.eq arg3240 (Bits.of_int 15 32) && 
          Bitops.eq arg3235 (Bits.of_int 26 5) && Bitops.eq arg3236 
            (Bits.of_int 0 1) && Bitops.eq arg3237 (Bits.of_int 14 32) && 
          Bitops.eq arg3232 (Bits.of_int 27 5) && Bitops.eq arg3233 
            (Bits.of_int 0 1) && Bitops.eq arg3234 (Bits.of_int 13 32) && 
          Bitops.eq arg3229 (Bits.of_int 28 5) && Bitops.eq arg3230 
            (Bits.of_int 0 1) && Bitops.eq arg3231 (Bits.of_int 12 32) && 
          Bitops.eq arg3226 (Bits.of_int 29 5) && Bitops.eq arg3227 
            (Bits.of_int 0 1) && Bitops.eq arg3228 (Bits.of_int 11 32) && 
          Bitops.eq arg3223 (Bits.of_int 30 5) && Bitops.eq arg3224 
            (Bits.of_int 0 1) && Bitops.eq arg3225 (Bits.of_int 10 32) && 
          Bitops.eq arg3220 (Bits.of_int 31 5) && Bitops.eq arg3221 
            (Bits.of_int 0 1) && Bitops.eq arg3222 (Bits.of_int 9 32) && 
          Bitops.eq arg3217 (Bits.of_int 0 1) && Bitops.eq arg3218 
            (Bits.of_int 0 1) && Bitops.eq arg3219 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 9 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg3216)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3346), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3347), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3344), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3345), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3342), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3343), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3340), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3341), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3338), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3339), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3336), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3337), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3334), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3335), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3331), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3332), _), 32); 
                    RP.Const (RP.Bits arg3333)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3328), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3329), _), 32); 
                    RP.Const (RP.Bits arg3330)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3325), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3326), _), 32); 
                    RP.Const (RP.Bits arg3327)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3322), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3323), _), 32); 
                    RP.Const (RP.Bits arg3324)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3319), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3320), _), 32); 
                    RP.Const (RP.Bits arg3321)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3316), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3317), _), 32); 
                    RP.Const (RP.Bits arg3318)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3313), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3314), _), 32); 
                    RP.Const (RP.Bits arg3315)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3310), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3311), _), 32); 
                    RP.Const (RP.Bits arg3312)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3307), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3308), _), 32); 
                    RP.Const (RP.Bits arg3309)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3304), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3305), _), 32); 
                    RP.Const (RP.Bits arg3306)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3301), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3302), _), 32); 
                    RP.Const (RP.Bits arg3303)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3298), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3299), _), 32); 
                    RP.Const (RP.Bits arg3300)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3295), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3296), _), 32); 
                    RP.Const (RP.Bits arg3297)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3292), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3293), _), 32); 
                    RP.Const (RP.Bits arg3294)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3289), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3290), _), 32); 
                    RP.Const (RP.Bits arg3291)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3286), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3287), _), 32); 
                    RP.Const (RP.Bits arg3288)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3283), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3284), _), 32); 
                  RP.Const (RP.Bits arg3285)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); 
                  RP.Const (RP.Bits arg3282)]), 32))] 
      when Base.to_bool (Bitops.fits_signed arg3282 13 && Bitops.eq arg3346 
            (Bits.of_int 9 5) && Bitops.eq arg3347 (Bits.of_int 25 5) && 
          Bitops.eq arg3344 (Bits.of_int 10 5) && Bitops.eq arg3345 
            (Bits.of_int 26 5) && Bitops.eq arg3342 (Bits.of_int 11 5) && 
          Bitops.eq arg3343 (Bits.of_int 27 5) && Bitops.eq arg3340 
            (Bits.of_int 12 5) && Bitops.eq arg3341 (Bits.of_int 28 5) && 
          Bitops.eq arg3338 (Bits.of_int 13 5) && Bitops.eq arg3339 
            (Bits.of_int 29 5) && Bitops.eq arg3336 (Bits.of_int 14 5) && 
          Bitops.eq arg3337 (Bits.of_int 30 5) && Bitops.eq arg3334 
            (Bits.of_int 15 5) && Bitops.eq arg3335 (Bits.of_int 31 5) && 
          Bitops.eq arg3331 (Bits.of_int 16 5) && Bitops.eq arg3332 
            (Bits.of_int 0 1) && Bitops.eq arg3333 (Bits.of_int 8 32) && 
          Bitops.eq arg3328 (Bits.of_int 17 5) && Bitops.eq arg3329 
            (Bits.of_int 0 1) && Bitops.eq arg3330 (Bits.of_int 7 32) && 
          Bitops.eq arg3325 (Bits.of_int 18 5) && Bitops.eq arg3326 
            (Bits.of_int 0 1) && Bitops.eq arg3327 (Bits.of_int 6 32) && 
          Bitops.eq arg3322 (Bits.of_int 19 5) && Bitops.eq arg3323 
            (Bits.of_int 0 1) && Bitops.eq arg3324 (Bits.of_int 5 32) && 
          Bitops.eq arg3319 (Bits.of_int 20 5) && Bitops.eq arg3320 
            (Bits.of_int 0 1) && Bitops.eq arg3321 (Bits.of_int 4 32) && 
          Bitops.eq arg3316 (Bits.of_int 21 5) && Bitops.eq arg3317 
            (Bits.of_int 0 1) && Bitops.eq arg3318 (Bits.of_int 3 32) && 
          Bitops.eq arg3313 (Bits.of_int 22 5) && Bitops.eq arg3314 
            (Bits.of_int 0 1) && Bitops.eq arg3315 (Bits.of_int 2 32) && 
          Bitops.eq arg3310 (Bits.of_int 23 5) && Bitops.eq arg3311 
            (Bits.of_int 0 1) && Bitops.eq arg3312 (Bits.of_int 1 32) && 
          Bitops.eq arg3307 (Bits.of_int 24 5) && Bitops.eq arg3308 
            (Bits.of_int 0 1) && Bitops.eq arg3309 (Bits.of_int 16 32) && 
          Bitops.eq arg3304 (Bits.of_int 25 5) && Bitops.eq arg3305 
            (Bits.of_int 0 1) && Bitops.eq arg3306 (Bits.of_int 15 32) && 
          Bitops.eq arg3301 (Bits.of_int 26 5) && Bitops.eq arg3302 
            (Bits.of_int 0 1) && Bitops.eq arg3303 (Bits.of_int 14 32) && 
          Bitops.eq arg3298 (Bits.of_int 27 5) && Bitops.eq arg3299 
            (Bits.of_int 0 1) && Bitops.eq arg3300 (Bits.of_int 13 32) && 
          Bitops.eq arg3295 (Bits.of_int 28 5) && Bitops.eq arg3296 
            (Bits.of_int 0 1) && Bitops.eq arg3297 (Bits.of_int 12 32) && 
          Bitops.eq arg3292 (Bits.of_int 29 5) && Bitops.eq arg3293 
            (Bits.of_int 0 1) && Bitops.eq arg3294 (Bits.of_int 11 32) && 
          Bitops.eq arg3289 (Bits.of_int 30 5) && Bitops.eq arg3290 
            (Bits.of_int 0 1) && Bitops.eq arg3291 (Bits.of_int 10 32) && 
          Bitops.eq arg3286 (Bits.of_int 31 5) && Bitops.eq arg3287 
            (Bits.of_int 0 1) && Bitops.eq arg3288 (Bits.of_int 9 32) && 
          Bitops.eq arg3283 (Bits.of_int 0 1) && Bitops.eq arg3284 
            (Bits.of_int 0 1) && Bitops.eq arg3285 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 8 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.imode 
                 (Bits.to_nativeint arg3282)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3413), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3414), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3411), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3412), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3409), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3410), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3407), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3408), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3405), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3406), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3403), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3404), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3401), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3402), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3399), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3400), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3396), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3397), _), 32); 
                    RP.Const (RP.Bits arg3398)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3393), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3394), _), 32); 
                    RP.Const (RP.Bits arg3395)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3390), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3391), _), 32); 
                    RP.Const (RP.Bits arg3392)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3387), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3388), _), 32); 
                    RP.Const (RP.Bits arg3389)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3384), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3385), _), 32); 
                    RP.Const (RP.Bits arg3386)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3381), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3382), _), 32); 
                    RP.Const (RP.Bits arg3383)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3378), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3379), _), 32); 
                    RP.Const (RP.Bits arg3380)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3375), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3376), _), 32); 
                    RP.Const (RP.Bits arg3377)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3372), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3373), _), 32); 
                    RP.Const (RP.Bits arg3374)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3369), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3370), _), 32); 
                    RP.Const (RP.Bits arg3371)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3366), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3367), _), 32); 
                    RP.Const (RP.Bits arg3368)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3363), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3364), _), 32); 
                    RP.Const (RP.Bits arg3365)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3360), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3361), _), 32); 
                    RP.Const (RP.Bits arg3362)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3357), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3358), _), 32); 
                    RP.Const (RP.Bits arg3359)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3354), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3355), _), 32); 
                    RP.Const (RP.Bits arg3356)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3351), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3352), _), 32); 
                    RP.Const (RP.Bits arg3353)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3348), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3349), _), 32); 
                  RP.Const (RP.Bits arg3350)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3413 (Bits.of_int 8 5) && Bitops.eq 
            arg3414 (Bits.of_int 24 5) && Bitops.eq arg3411 
            (Bits.of_int 9 5) && Bitops.eq arg3412 (Bits.of_int 25 5) && 
          Bitops.eq arg3409 (Bits.of_int 10 5) && Bitops.eq arg3410 
            (Bits.of_int 26 5) && Bitops.eq arg3407 (Bits.of_int 11 5) && 
          Bitops.eq arg3408 (Bits.of_int 27 5) && Bitops.eq arg3405 
            (Bits.of_int 12 5) && Bitops.eq arg3406 (Bits.of_int 28 5) && 
          Bitops.eq arg3403 (Bits.of_int 13 5) && Bitops.eq arg3404 
            (Bits.of_int 29 5) && Bitops.eq arg3401 (Bits.of_int 14 5) && 
          Bitops.eq arg3402 (Bits.of_int 30 5) && Bitops.eq arg3399 
            (Bits.of_int 15 5) && Bitops.eq arg3400 (Bits.of_int 31 5) && 
          Bitops.eq arg3396 (Bits.of_int 16 5) && Bitops.eq arg3397 
            (Bits.of_int 0 1) && Bitops.eq arg3398 (Bits.of_int 8 32) && 
          Bitops.eq arg3393 (Bits.of_int 17 5) && Bitops.eq arg3394 
            (Bits.of_int 0 1) && Bitops.eq arg3395 (Bits.of_int 7 32) && 
          Bitops.eq arg3390 (Bits.of_int 18 5) && Bitops.eq arg3391 
            (Bits.of_int 0 1) && Bitops.eq arg3392 (Bits.of_int 6 32) && 
          Bitops.eq arg3387 (Bits.of_int 19 5) && Bitops.eq arg3388 
            (Bits.of_int 0 1) && Bitops.eq arg3389 (Bits.of_int 5 32) && 
          Bitops.eq arg3384 (Bits.of_int 20 5) && Bitops.eq arg3385 
            (Bits.of_int 0 1) && Bitops.eq arg3386 (Bits.of_int 4 32) && 
          Bitops.eq arg3381 (Bits.of_int 21 5) && Bitops.eq arg3382 
            (Bits.of_int 0 1) && Bitops.eq arg3383 (Bits.of_int 3 32) && 
          Bitops.eq arg3378 (Bits.of_int 22 5) && Bitops.eq arg3379 
            (Bits.of_int 0 1) && Bitops.eq arg3380 (Bits.of_int 2 32) && 
          Bitops.eq arg3375 (Bits.of_int 23 5) && Bitops.eq arg3376 
            (Bits.of_int 0 1) && Bitops.eq arg3377 (Bits.of_int 1 32) && 
          Bitops.eq arg3372 (Bits.of_int 24 5) && Bitops.eq arg3373 
            (Bits.of_int 0 1) && Bitops.eq arg3374 (Bits.of_int 16 32) && 
          Bitops.eq arg3369 (Bits.of_int 25 5) && Bitops.eq arg3370 
            (Bits.of_int 0 1) && Bitops.eq arg3371 (Bits.of_int 15 32) && 
          Bitops.eq arg3366 (Bits.of_int 26 5) && Bitops.eq arg3367 
            (Bits.of_int 0 1) && Bitops.eq arg3368 (Bits.of_int 14 32) && 
          Bitops.eq arg3363 (Bits.of_int 27 5) && Bitops.eq arg3364 
            (Bits.of_int 0 1) && Bitops.eq arg3365 (Bits.of_int 13 32) && 
          Bitops.eq arg3360 (Bits.of_int 28 5) && Bitops.eq arg3361 
            (Bits.of_int 0 1) && Bitops.eq arg3362 (Bits.of_int 12 32) && 
          Bitops.eq arg3357 (Bits.of_int 29 5) && Bitops.eq arg3358 
            (Bits.of_int 0 1) && Bitops.eq arg3359 (Bits.of_int 11 32) && 
          Bitops.eq arg3354 (Bits.of_int 30 5) && Bitops.eq arg3355 
            (Bits.of_int 0 1) && Bitops.eq arg3356 (Bits.of_int 10 32) && 
          Bitops.eq arg3351 (Bits.of_int 31 5) && Bitops.eq arg3352 
            (Bits.of_int 0 1) && Bitops.eq arg3353 (Bits.of_int 9 32) && 
          Bitops.eq arg3348 (Bits.of_int 0 1) && Bitops.eq arg3349 
            (Bits.of_int 0 1) && Bitops.eq arg3350 (Bits.of_int 16 32) && 
          Bitops.ne rd (Bits.of_int 8 5) && Bitops.ne rd (Bits.of_int 9 5) && 
          Bitops.ne rd (Bits.of_int 10 5) && Bitops.ne rd (Bits.of_int 11 5) && 
          Bitops.ne rd (Bits.of_int 12 5) && Bitops.ne rd (Bits.of_int 13 5) && 
          Bitops.ne rd (Bits.of_int 14 5) && Bitops.ne rd (Bits.of_int 15 5) && 
          Bitops.ne rd (Bits.of_int 16 5) && Bitops.ne rd (Bits.of_int 17 5) && 
          Bitops.ne rd (Bits.of_int 18 5) && Bitops.ne rd (Bits.of_int 19 5) && 
          Bitops.ne rd (Bits.of_int 20 5) && Bitops.ne rd (Bits.of_int 21 5) && 
          Bitops.ne rd (Bits.of_int 22 5) && Bitops.ne rd (Bits.of_int 23 5) && 
          Bitops.ne rd (Bits.of_int 24 5) && Bitops.ne rd (Bits.of_int 25 5) && 
          Bitops.ne rd (Bits.of_int 26 5) && Bitops.ne rd (Bits.of_int 27 5) && 
          Bitops.ne rd (Bits.of_int 28 5) && Bitops.ne rd (Bits.of_int 29 5) && 
          Bitops.ne rd (Bits.of_int 30 5) && Bitops.ne rd 
            (Bits.of_int 31 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3477), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3478), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3475), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3476), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3473), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3474), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3471), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3472), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3469), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3470), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3467), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3468), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3465), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3466), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3463), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3464), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3460), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3461), _), 32); 
                    RP.Const (RP.Bits arg3462)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3457), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3458), _), 32); 
                    RP.Const (RP.Bits arg3459)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3454), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3455), _), 32); 
                    RP.Const (RP.Bits arg3456)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3451), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3452), _), 32); 
                    RP.Const (RP.Bits arg3453)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3448), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3449), _), 32); 
                    RP.Const (RP.Bits arg3450)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3445), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3446), _), 32); 
                    RP.Const (RP.Bits arg3447)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3442), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3443), _), 32); 
                    RP.Const (RP.Bits arg3444)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3439), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3440), _), 32); 
                    RP.Const (RP.Bits arg3441)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3436), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3437), _), 32); 
                    RP.Const (RP.Bits arg3438)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3433), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3434), _), 32); 
                    RP.Const (RP.Bits arg3435)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3430), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3431), _), 32); 
                    RP.Const (RP.Bits arg3432)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3427), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3428), _), 32); 
                    RP.Const (RP.Bits arg3429)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3424), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3425), _), 32); 
                    RP.Const (RP.Bits arg3426)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3421), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3422), _), 32); 
                    RP.Const (RP.Bits arg3423)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3418), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3419), _), 32); 
                    RP.Const (RP.Bits arg3420)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3415), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3416), _), 32); 
                  RP.Const (RP.Bits arg3417)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3477 (Bits.of_int 8 5) && Bitops.eq 
            arg3478 (Bits.of_int 24 5) && Bitops.eq arg3475 
            (Bits.of_int 9 5) && Bitops.eq arg3476 (Bits.of_int 25 5) && 
          Bitops.eq arg3473 (Bits.of_int 10 5) && Bitops.eq arg3474 
            (Bits.of_int 26 5) && Bitops.eq arg3471 (Bits.of_int 11 5) && 
          Bitops.eq arg3472 (Bits.of_int 27 5) && Bitops.eq arg3469 
            (Bits.of_int 12 5) && Bitops.eq arg3470 (Bits.of_int 28 5) && 
          Bitops.eq arg3467 (Bits.of_int 13 5) && Bitops.eq arg3468 
            (Bits.of_int 29 5) && Bitops.eq arg3465 (Bits.of_int 14 5) && 
          Bitops.eq arg3466 (Bits.of_int 30 5) && Bitops.eq arg3463 
            (Bits.of_int 15 5) && Bitops.eq arg3464 (Bits.of_int 31 5) && 
          Bitops.eq arg3460 (Bits.of_int 16 5) && Bitops.eq arg3461 
            (Bits.of_int 0 1) && Bitops.eq arg3462 (Bits.of_int 8 32) && 
          Bitops.eq arg3457 (Bits.of_int 17 5) && Bitops.eq arg3458 
            (Bits.of_int 0 1) && Bitops.eq arg3459 (Bits.of_int 7 32) && 
          Bitops.eq arg3454 (Bits.of_int 18 5) && Bitops.eq arg3455 
            (Bits.of_int 0 1) && Bitops.eq arg3456 (Bits.of_int 6 32) && 
          Bitops.eq arg3451 (Bits.of_int 19 5) && Bitops.eq arg3452 
            (Bits.of_int 0 1) && Bitops.eq arg3453 (Bits.of_int 5 32) && 
          Bitops.eq arg3448 (Bits.of_int 20 5) && Bitops.eq arg3449 
            (Bits.of_int 0 1) && Bitops.eq arg3450 (Bits.of_int 4 32) && 
          Bitops.eq arg3445 (Bits.of_int 21 5) && Bitops.eq arg3446 
            (Bits.of_int 0 1) && Bitops.eq arg3447 (Bits.of_int 3 32) && 
          Bitops.eq arg3442 (Bits.of_int 22 5) && Bitops.eq arg3443 
            (Bits.of_int 0 1) && Bitops.eq arg3444 (Bits.of_int 2 32) && 
          Bitops.eq arg3439 (Bits.of_int 23 5) && Bitops.eq arg3440 
            (Bits.of_int 0 1) && Bitops.eq arg3441 (Bits.of_int 1 32) && 
          Bitops.eq arg3436 (Bits.of_int 24 5) && Bitops.eq arg3437 
            (Bits.of_int 0 1) && Bitops.eq arg3438 (Bits.of_int 16 32) && 
          Bitops.eq arg3433 (Bits.of_int 25 5) && Bitops.eq arg3434 
            (Bits.of_int 0 1) && Bitops.eq arg3435 (Bits.of_int 15 32) && 
          Bitops.eq arg3430 (Bits.of_int 26 5) && Bitops.eq arg3431 
            (Bits.of_int 0 1) && Bitops.eq arg3432 (Bits.of_int 14 32) && 
          Bitops.eq arg3427 (Bits.of_int 27 5) && Bitops.eq arg3428 
            (Bits.of_int 0 1) && Bitops.eq arg3429 (Bits.of_int 13 32) && 
          Bitops.eq arg3424 (Bits.of_int 28 5) && Bitops.eq arg3425 
            (Bits.of_int 0 1) && Bitops.eq arg3426 (Bits.of_int 12 32) && 
          Bitops.eq arg3421 (Bits.of_int 29 5) && Bitops.eq arg3422 
            (Bits.of_int 0 1) && Bitops.eq arg3423 (Bits.of_int 11 32) && 
          Bitops.eq arg3418 (Bits.of_int 30 5) && Bitops.eq arg3419 
            (Bits.of_int 0 1) && Bitops.eq arg3420 (Bits.of_int 10 32) && 
          Bitops.eq arg3415 (Bits.of_int 0 1) && Bitops.eq arg3416 
            (Bits.of_int 0 1) && Bitops.eq arg3417 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 31 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3541), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3542), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3539), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3540), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3537), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3538), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3535), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3536), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3533), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3534), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3531), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3532), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3529), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3530), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3527), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3528), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3524), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3525), _), 32); 
                    RP.Const (RP.Bits arg3526)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3521), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3522), _), 32); 
                    RP.Const (RP.Bits arg3523)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3518), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3519), _), 32); 
                    RP.Const (RP.Bits arg3520)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3515), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3516), _), 32); 
                    RP.Const (RP.Bits arg3517)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3512), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3513), _), 32); 
                    RP.Const (RP.Bits arg3514)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3509), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3510), _), 32); 
                    RP.Const (RP.Bits arg3511)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3506), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3507), _), 32); 
                    RP.Const (RP.Bits arg3508)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3503), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3504), _), 32); 
                    RP.Const (RP.Bits arg3505)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3500), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3501), _), 32); 
                    RP.Const (RP.Bits arg3502)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3497), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3498), _), 32); 
                    RP.Const (RP.Bits arg3499)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3494), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3495), _), 32); 
                    RP.Const (RP.Bits arg3496)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3491), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3492), _), 32); 
                    RP.Const (RP.Bits arg3493)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3488), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3489), _), 32); 
                    RP.Const (RP.Bits arg3490)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3485), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3486), _), 32); 
                    RP.Const (RP.Bits arg3487)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3482), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3483), _), 32); 
                    RP.Const (RP.Bits arg3484)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3479), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3480), _), 32); 
                  RP.Const (RP.Bits arg3481)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3541 (Bits.of_int 8 5) && Bitops.eq 
            arg3542 (Bits.of_int 24 5) && Bitops.eq arg3539 
            (Bits.of_int 9 5) && Bitops.eq arg3540 (Bits.of_int 25 5) && 
          Bitops.eq arg3537 (Bits.of_int 10 5) && Bitops.eq arg3538 
            (Bits.of_int 26 5) && Bitops.eq arg3535 (Bits.of_int 11 5) && 
          Bitops.eq arg3536 (Bits.of_int 27 5) && Bitops.eq arg3533 
            (Bits.of_int 12 5) && Bitops.eq arg3534 (Bits.of_int 28 5) && 
          Bitops.eq arg3531 (Bits.of_int 13 5) && Bitops.eq arg3532 
            (Bits.of_int 29 5) && Bitops.eq arg3529 (Bits.of_int 14 5) && 
          Bitops.eq arg3530 (Bits.of_int 30 5) && Bitops.eq arg3527 
            (Bits.of_int 15 5) && Bitops.eq arg3528 (Bits.of_int 31 5) && 
          Bitops.eq arg3524 (Bits.of_int 16 5) && Bitops.eq arg3525 
            (Bits.of_int 0 1) && Bitops.eq arg3526 (Bits.of_int 8 32) && 
          Bitops.eq arg3521 (Bits.of_int 17 5) && Bitops.eq arg3522 
            (Bits.of_int 0 1) && Bitops.eq arg3523 (Bits.of_int 7 32) && 
          Bitops.eq arg3518 (Bits.of_int 18 5) && Bitops.eq arg3519 
            (Bits.of_int 0 1) && Bitops.eq arg3520 (Bits.of_int 6 32) && 
          Bitops.eq arg3515 (Bits.of_int 19 5) && Bitops.eq arg3516 
            (Bits.of_int 0 1) && Bitops.eq arg3517 (Bits.of_int 5 32) && 
          Bitops.eq arg3512 (Bits.of_int 20 5) && Bitops.eq arg3513 
            (Bits.of_int 0 1) && Bitops.eq arg3514 (Bits.of_int 4 32) && 
          Bitops.eq arg3509 (Bits.of_int 21 5) && Bitops.eq arg3510 
            (Bits.of_int 0 1) && Bitops.eq arg3511 (Bits.of_int 3 32) && 
          Bitops.eq arg3506 (Bits.of_int 22 5) && Bitops.eq arg3507 
            (Bits.of_int 0 1) && Bitops.eq arg3508 (Bits.of_int 2 32) && 
          Bitops.eq arg3503 (Bits.of_int 23 5) && Bitops.eq arg3504 
            (Bits.of_int 0 1) && Bitops.eq arg3505 (Bits.of_int 1 32) && 
          Bitops.eq arg3500 (Bits.of_int 24 5) && Bitops.eq arg3501 
            (Bits.of_int 0 1) && Bitops.eq arg3502 (Bits.of_int 16 32) && 
          Bitops.eq arg3497 (Bits.of_int 25 5) && Bitops.eq arg3498 
            (Bits.of_int 0 1) && Bitops.eq arg3499 (Bits.of_int 15 32) && 
          Bitops.eq arg3494 (Bits.of_int 26 5) && Bitops.eq arg3495 
            (Bits.of_int 0 1) && Bitops.eq arg3496 (Bits.of_int 14 32) && 
          Bitops.eq arg3491 (Bits.of_int 27 5) && Bitops.eq arg3492 
            (Bits.of_int 0 1) && Bitops.eq arg3493 (Bits.of_int 13 32) && 
          Bitops.eq arg3488 (Bits.of_int 28 5) && Bitops.eq arg3489 
            (Bits.of_int 0 1) && Bitops.eq arg3490 (Bits.of_int 12 32) && 
          Bitops.eq arg3485 (Bits.of_int 29 5) && Bitops.eq arg3486 
            (Bits.of_int 0 1) && Bitops.eq arg3487 (Bits.of_int 11 32) && 
          Bitops.eq arg3482 (Bits.of_int 31 5) && Bitops.eq arg3483 
            (Bits.of_int 0 1) && Bitops.eq arg3484 (Bits.of_int 9 32) && 
          Bitops.eq arg3479 (Bits.of_int 0 1) && Bitops.eq arg3480 
            (Bits.of_int 0 1) && Bitops.eq arg3481 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 30 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3605), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3606), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3603), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3604), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3601), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3602), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3599), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3600), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3597), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3598), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3595), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3596), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3593), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3594), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3591), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3592), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3588), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3589), _), 32); 
                    RP.Const (RP.Bits arg3590)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3585), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3586), _), 32); 
                    RP.Const (RP.Bits arg3587)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3582), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3583), _), 32); 
                    RP.Const (RP.Bits arg3584)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3579), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3580), _), 32); 
                    RP.Const (RP.Bits arg3581)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3576), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3577), _), 32); 
                    RP.Const (RP.Bits arg3578)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3573), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3574), _), 32); 
                    RP.Const (RP.Bits arg3575)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3570), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3571), _), 32); 
                    RP.Const (RP.Bits arg3572)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3567), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3568), _), 32); 
                    RP.Const (RP.Bits arg3569)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3564), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3565), _), 32); 
                    RP.Const (RP.Bits arg3566)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3561), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3562), _), 32); 
                    RP.Const (RP.Bits arg3563)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3558), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3559), _), 32); 
                    RP.Const (RP.Bits arg3560)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3555), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3556), _), 32); 
                    RP.Const (RP.Bits arg3557)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3552), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3553), _), 32); 
                    RP.Const (RP.Bits arg3554)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3549), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3550), _), 32); 
                    RP.Const (RP.Bits arg3551)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3546), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3547), _), 32); 
                    RP.Const (RP.Bits arg3548)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3543), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3544), _), 32); 
                  RP.Const (RP.Bits arg3545)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3605 (Bits.of_int 8 5) && Bitops.eq 
            arg3606 (Bits.of_int 24 5) && Bitops.eq arg3603 
            (Bits.of_int 9 5) && Bitops.eq arg3604 (Bits.of_int 25 5) && 
          Bitops.eq arg3601 (Bits.of_int 10 5) && Bitops.eq arg3602 
            (Bits.of_int 26 5) && Bitops.eq arg3599 (Bits.of_int 11 5) && 
          Bitops.eq arg3600 (Bits.of_int 27 5) && Bitops.eq arg3597 
            (Bits.of_int 12 5) && Bitops.eq arg3598 (Bits.of_int 28 5) && 
          Bitops.eq arg3595 (Bits.of_int 13 5) && Bitops.eq arg3596 
            (Bits.of_int 29 5) && Bitops.eq arg3593 (Bits.of_int 14 5) && 
          Bitops.eq arg3594 (Bits.of_int 30 5) && Bitops.eq arg3591 
            (Bits.of_int 15 5) && Bitops.eq arg3592 (Bits.of_int 31 5) && 
          Bitops.eq arg3588 (Bits.of_int 16 5) && Bitops.eq arg3589 
            (Bits.of_int 0 1) && Bitops.eq arg3590 (Bits.of_int 8 32) && 
          Bitops.eq arg3585 (Bits.of_int 17 5) && Bitops.eq arg3586 
            (Bits.of_int 0 1) && Bitops.eq arg3587 (Bits.of_int 7 32) && 
          Bitops.eq arg3582 (Bits.of_int 18 5) && Bitops.eq arg3583 
            (Bits.of_int 0 1) && Bitops.eq arg3584 (Bits.of_int 6 32) && 
          Bitops.eq arg3579 (Bits.of_int 19 5) && Bitops.eq arg3580 
            (Bits.of_int 0 1) && Bitops.eq arg3581 (Bits.of_int 5 32) && 
          Bitops.eq arg3576 (Bits.of_int 20 5) && Bitops.eq arg3577 
            (Bits.of_int 0 1) && Bitops.eq arg3578 (Bits.of_int 4 32) && 
          Bitops.eq arg3573 (Bits.of_int 21 5) && Bitops.eq arg3574 
            (Bits.of_int 0 1) && Bitops.eq arg3575 (Bits.of_int 3 32) && 
          Bitops.eq arg3570 (Bits.of_int 22 5) && Bitops.eq arg3571 
            (Bits.of_int 0 1) && Bitops.eq arg3572 (Bits.of_int 2 32) && 
          Bitops.eq arg3567 (Bits.of_int 23 5) && Bitops.eq arg3568 
            (Bits.of_int 0 1) && Bitops.eq arg3569 (Bits.of_int 1 32) && 
          Bitops.eq arg3564 (Bits.of_int 24 5) && Bitops.eq arg3565 
            (Bits.of_int 0 1) && Bitops.eq arg3566 (Bits.of_int 16 32) && 
          Bitops.eq arg3561 (Bits.of_int 25 5) && Bitops.eq arg3562 
            (Bits.of_int 0 1) && Bitops.eq arg3563 (Bits.of_int 15 32) && 
          Bitops.eq arg3558 (Bits.of_int 26 5) && Bitops.eq arg3559 
            (Bits.of_int 0 1) && Bitops.eq arg3560 (Bits.of_int 14 32) && 
          Bitops.eq arg3555 (Bits.of_int 27 5) && Bitops.eq arg3556 
            (Bits.of_int 0 1) && Bitops.eq arg3557 (Bits.of_int 13 32) && 
          Bitops.eq arg3552 (Bits.of_int 28 5) && Bitops.eq arg3553 
            (Bits.of_int 0 1) && Bitops.eq arg3554 (Bits.of_int 12 32) && 
          Bitops.eq arg3549 (Bits.of_int 30 5) && Bitops.eq arg3550 
            (Bits.of_int 0 1) && Bitops.eq arg3551 (Bits.of_int 10 32) && 
          Bitops.eq arg3546 (Bits.of_int 31 5) && Bitops.eq arg3547 
            (Bits.of_int 0 1) && Bitops.eq arg3548 (Bits.of_int 9 32) && 
          Bitops.eq arg3543 (Bits.of_int 0 1) && Bitops.eq arg3544 
            (Bits.of_int 0 1) && Bitops.eq arg3545 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 29 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3669), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3670), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3667), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3668), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3665), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3666), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3663), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3664), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3661), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3662), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3659), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3660), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3657), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3658), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3655), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3656), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3652), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3653), _), 32); 
                    RP.Const (RP.Bits arg3654)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3649), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3650), _), 32); 
                    RP.Const (RP.Bits arg3651)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3646), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3647), _), 32); 
                    RP.Const (RP.Bits arg3648)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3643), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3644), _), 32); 
                    RP.Const (RP.Bits arg3645)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3640), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3641), _), 32); 
                    RP.Const (RP.Bits arg3642)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3637), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3638), _), 32); 
                    RP.Const (RP.Bits arg3639)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3634), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3635), _), 32); 
                    RP.Const (RP.Bits arg3636)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3631), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3632), _), 32); 
                    RP.Const (RP.Bits arg3633)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3628), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3629), _), 32); 
                    RP.Const (RP.Bits arg3630)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3625), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3626), _), 32); 
                    RP.Const (RP.Bits arg3627)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3622), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3623), _), 32); 
                    RP.Const (RP.Bits arg3624)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3619), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3620), _), 32); 
                    RP.Const (RP.Bits arg3621)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3616), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3617), _), 32); 
                    RP.Const (RP.Bits arg3618)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3613), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3614), _), 32); 
                    RP.Const (RP.Bits arg3615)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3610), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3611), _), 32); 
                    RP.Const (RP.Bits arg3612)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3607), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3608), _), 32); 
                  RP.Const (RP.Bits arg3609)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3669 (Bits.of_int 8 5) && Bitops.eq 
            arg3670 (Bits.of_int 24 5) && Bitops.eq arg3667 
            (Bits.of_int 9 5) && Bitops.eq arg3668 (Bits.of_int 25 5) && 
          Bitops.eq arg3665 (Bits.of_int 10 5) && Bitops.eq arg3666 
            (Bits.of_int 26 5) && Bitops.eq arg3663 (Bits.of_int 11 5) && 
          Bitops.eq arg3664 (Bits.of_int 27 5) && Bitops.eq arg3661 
            (Bits.of_int 12 5) && Bitops.eq arg3662 (Bits.of_int 28 5) && 
          Bitops.eq arg3659 (Bits.of_int 13 5) && Bitops.eq arg3660 
            (Bits.of_int 29 5) && Bitops.eq arg3657 (Bits.of_int 14 5) && 
          Bitops.eq arg3658 (Bits.of_int 30 5) && Bitops.eq arg3655 
            (Bits.of_int 15 5) && Bitops.eq arg3656 (Bits.of_int 31 5) && 
          Bitops.eq arg3652 (Bits.of_int 16 5) && Bitops.eq arg3653 
            (Bits.of_int 0 1) && Bitops.eq arg3654 (Bits.of_int 8 32) && 
          Bitops.eq arg3649 (Bits.of_int 17 5) && Bitops.eq arg3650 
            (Bits.of_int 0 1) && Bitops.eq arg3651 (Bits.of_int 7 32) && 
          Bitops.eq arg3646 (Bits.of_int 18 5) && Bitops.eq arg3647 
            (Bits.of_int 0 1) && Bitops.eq arg3648 (Bits.of_int 6 32) && 
          Bitops.eq arg3643 (Bits.of_int 19 5) && Bitops.eq arg3644 
            (Bits.of_int 0 1) && Bitops.eq arg3645 (Bits.of_int 5 32) && 
          Bitops.eq arg3640 (Bits.of_int 20 5) && Bitops.eq arg3641 
            (Bits.of_int 0 1) && Bitops.eq arg3642 (Bits.of_int 4 32) && 
          Bitops.eq arg3637 (Bits.of_int 21 5) && Bitops.eq arg3638 
            (Bits.of_int 0 1) && Bitops.eq arg3639 (Bits.of_int 3 32) && 
          Bitops.eq arg3634 (Bits.of_int 22 5) && Bitops.eq arg3635 
            (Bits.of_int 0 1) && Bitops.eq arg3636 (Bits.of_int 2 32) && 
          Bitops.eq arg3631 (Bits.of_int 23 5) && Bitops.eq arg3632 
            (Bits.of_int 0 1) && Bitops.eq arg3633 (Bits.of_int 1 32) && 
          Bitops.eq arg3628 (Bits.of_int 24 5) && Bitops.eq arg3629 
            (Bits.of_int 0 1) && Bitops.eq arg3630 (Bits.of_int 16 32) && 
          Bitops.eq arg3625 (Bits.of_int 25 5) && Bitops.eq arg3626 
            (Bits.of_int 0 1) && Bitops.eq arg3627 (Bits.of_int 15 32) && 
          Bitops.eq arg3622 (Bits.of_int 26 5) && Bitops.eq arg3623 
            (Bits.of_int 0 1) && Bitops.eq arg3624 (Bits.of_int 14 32) && 
          Bitops.eq arg3619 (Bits.of_int 27 5) && Bitops.eq arg3620 
            (Bits.of_int 0 1) && Bitops.eq arg3621 (Bits.of_int 13 32) && 
          Bitops.eq arg3616 (Bits.of_int 29 5) && Bitops.eq arg3617 
            (Bits.of_int 0 1) && Bitops.eq arg3618 (Bits.of_int 11 32) && 
          Bitops.eq arg3613 (Bits.of_int 30 5) && Bitops.eq arg3614 
            (Bits.of_int 0 1) && Bitops.eq arg3615 (Bits.of_int 10 32) && 
          Bitops.eq arg3610 (Bits.of_int 31 5) && Bitops.eq arg3611 
            (Bits.of_int 0 1) && Bitops.eq arg3612 (Bits.of_int 9 32) && 
          Bitops.eq arg3607 (Bits.of_int 0 1) && Bitops.eq arg3608 
            (Bits.of_int 0 1) && Bitops.eq arg3609 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 28 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3733), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3734), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3731), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3732), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3729), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3730), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3727), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3728), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3725), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3726), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3723), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3724), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3721), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3722), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3719), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3720), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3716), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3717), _), 32); 
                    RP.Const (RP.Bits arg3718)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3713), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3714), _), 32); 
                    RP.Const (RP.Bits arg3715)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3710), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3711), _), 32); 
                    RP.Const (RP.Bits arg3712)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3707), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3708), _), 32); 
                    RP.Const (RP.Bits arg3709)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3704), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3705), _), 32); 
                    RP.Const (RP.Bits arg3706)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3701), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3702), _), 32); 
                    RP.Const (RP.Bits arg3703)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3698), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3699), _), 32); 
                    RP.Const (RP.Bits arg3700)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3695), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3696), _), 32); 
                    RP.Const (RP.Bits arg3697)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3692), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3693), _), 32); 
                    RP.Const (RP.Bits arg3694)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3689), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3690), _), 32); 
                    RP.Const (RP.Bits arg3691)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3686), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3687), _), 32); 
                    RP.Const (RP.Bits arg3688)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3683), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3684), _), 32); 
                    RP.Const (RP.Bits arg3685)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3680), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3681), _), 32); 
                    RP.Const (RP.Bits arg3682)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3677), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3678), _), 32); 
                    RP.Const (RP.Bits arg3679)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3674), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3675), _), 32); 
                    RP.Const (RP.Bits arg3676)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3671), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3672), _), 32); 
                  RP.Const (RP.Bits arg3673)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3733 (Bits.of_int 8 5) && Bitops.eq 
            arg3734 (Bits.of_int 24 5) && Bitops.eq arg3731 
            (Bits.of_int 9 5) && Bitops.eq arg3732 (Bits.of_int 25 5) && 
          Bitops.eq arg3729 (Bits.of_int 10 5) && Bitops.eq arg3730 
            (Bits.of_int 26 5) && Bitops.eq arg3727 (Bits.of_int 11 5) && 
          Bitops.eq arg3728 (Bits.of_int 27 5) && Bitops.eq arg3725 
            (Bits.of_int 12 5) && Bitops.eq arg3726 (Bits.of_int 28 5) && 
          Bitops.eq arg3723 (Bits.of_int 13 5) && Bitops.eq arg3724 
            (Bits.of_int 29 5) && Bitops.eq arg3721 (Bits.of_int 14 5) && 
          Bitops.eq arg3722 (Bits.of_int 30 5) && Bitops.eq arg3719 
            (Bits.of_int 15 5) && Bitops.eq arg3720 (Bits.of_int 31 5) && 
          Bitops.eq arg3716 (Bits.of_int 16 5) && Bitops.eq arg3717 
            (Bits.of_int 0 1) && Bitops.eq arg3718 (Bits.of_int 8 32) && 
          Bitops.eq arg3713 (Bits.of_int 17 5) && Bitops.eq arg3714 
            (Bits.of_int 0 1) && Bitops.eq arg3715 (Bits.of_int 7 32) && 
          Bitops.eq arg3710 (Bits.of_int 18 5) && Bitops.eq arg3711 
            (Bits.of_int 0 1) && Bitops.eq arg3712 (Bits.of_int 6 32) && 
          Bitops.eq arg3707 (Bits.of_int 19 5) && Bitops.eq arg3708 
            (Bits.of_int 0 1) && Bitops.eq arg3709 (Bits.of_int 5 32) && 
          Bitops.eq arg3704 (Bits.of_int 20 5) && Bitops.eq arg3705 
            (Bits.of_int 0 1) && Bitops.eq arg3706 (Bits.of_int 4 32) && 
          Bitops.eq arg3701 (Bits.of_int 21 5) && Bitops.eq arg3702 
            (Bits.of_int 0 1) && Bitops.eq arg3703 (Bits.of_int 3 32) && 
          Bitops.eq arg3698 (Bits.of_int 22 5) && Bitops.eq arg3699 
            (Bits.of_int 0 1) && Bitops.eq arg3700 (Bits.of_int 2 32) && 
          Bitops.eq arg3695 (Bits.of_int 23 5) && Bitops.eq arg3696 
            (Bits.of_int 0 1) && Bitops.eq arg3697 (Bits.of_int 1 32) && 
          Bitops.eq arg3692 (Bits.of_int 24 5) && Bitops.eq arg3693 
            (Bits.of_int 0 1) && Bitops.eq arg3694 (Bits.of_int 16 32) && 
          Bitops.eq arg3689 (Bits.of_int 25 5) && Bitops.eq arg3690 
            (Bits.of_int 0 1) && Bitops.eq arg3691 (Bits.of_int 15 32) && 
          Bitops.eq arg3686 (Bits.of_int 26 5) && Bitops.eq arg3687 
            (Bits.of_int 0 1) && Bitops.eq arg3688 (Bits.of_int 14 32) && 
          Bitops.eq arg3683 (Bits.of_int 28 5) && Bitops.eq arg3684 
            (Bits.of_int 0 1) && Bitops.eq arg3685 (Bits.of_int 12 32) && 
          Bitops.eq arg3680 (Bits.of_int 29 5) && Bitops.eq arg3681 
            (Bits.of_int 0 1) && Bitops.eq arg3682 (Bits.of_int 11 32) && 
          Bitops.eq arg3677 (Bits.of_int 30 5) && Bitops.eq arg3678 
            (Bits.of_int 0 1) && Bitops.eq arg3679 (Bits.of_int 10 32) && 
          Bitops.eq arg3674 (Bits.of_int 31 5) && Bitops.eq arg3675 
            (Bits.of_int 0 1) && Bitops.eq arg3676 (Bits.of_int 9 32) && 
          Bitops.eq arg3671 (Bits.of_int 0 1) && Bitops.eq arg3672 
            (Bits.of_int 0 1) && Bitops.eq arg3673 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 27 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3797), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3798), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3795), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3796), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3793), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3794), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3791), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3792), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3789), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3790), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3787), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3788), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3785), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3786), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3783), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3784), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3780), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3781), _), 32); 
                    RP.Const (RP.Bits arg3782)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3777), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3778), _), 32); 
                    RP.Const (RP.Bits arg3779)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3774), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3775), _), 32); 
                    RP.Const (RP.Bits arg3776)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3771), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3772), _), 32); 
                    RP.Const (RP.Bits arg3773)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3768), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3769), _), 32); 
                    RP.Const (RP.Bits arg3770)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3765), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3766), _), 32); 
                    RP.Const (RP.Bits arg3767)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3762), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3763), _), 32); 
                    RP.Const (RP.Bits arg3764)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3759), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3760), _), 32); 
                    RP.Const (RP.Bits arg3761)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3756), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3757), _), 32); 
                    RP.Const (RP.Bits arg3758)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3753), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3754), _), 32); 
                    RP.Const (RP.Bits arg3755)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3750), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3751), _), 32); 
                    RP.Const (RP.Bits arg3752)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3747), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3748), _), 32); 
                    RP.Const (RP.Bits arg3749)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3744), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3745), _), 32); 
                    RP.Const (RP.Bits arg3746)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3741), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3742), _), 32); 
                    RP.Const (RP.Bits arg3743)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3738), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3739), _), 32); 
                    RP.Const (RP.Bits arg3740)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3735), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3736), _), 32); 
                  RP.Const (RP.Bits arg3737)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3797 (Bits.of_int 8 5) && Bitops.eq 
            arg3798 (Bits.of_int 24 5) && Bitops.eq arg3795 
            (Bits.of_int 9 5) && Bitops.eq arg3796 (Bits.of_int 25 5) && 
          Bitops.eq arg3793 (Bits.of_int 10 5) && Bitops.eq arg3794 
            (Bits.of_int 26 5) && Bitops.eq arg3791 (Bits.of_int 11 5) && 
          Bitops.eq arg3792 (Bits.of_int 27 5) && Bitops.eq arg3789 
            (Bits.of_int 12 5) && Bitops.eq arg3790 (Bits.of_int 28 5) && 
          Bitops.eq arg3787 (Bits.of_int 13 5) && Bitops.eq arg3788 
            (Bits.of_int 29 5) && Bitops.eq arg3785 (Bits.of_int 14 5) && 
          Bitops.eq arg3786 (Bits.of_int 30 5) && Bitops.eq arg3783 
            (Bits.of_int 15 5) && Bitops.eq arg3784 (Bits.of_int 31 5) && 
          Bitops.eq arg3780 (Bits.of_int 16 5) && Bitops.eq arg3781 
            (Bits.of_int 0 1) && Bitops.eq arg3782 (Bits.of_int 8 32) && 
          Bitops.eq arg3777 (Bits.of_int 17 5) && Bitops.eq arg3778 
            (Bits.of_int 0 1) && Bitops.eq arg3779 (Bits.of_int 7 32) && 
          Bitops.eq arg3774 (Bits.of_int 18 5) && Bitops.eq arg3775 
            (Bits.of_int 0 1) && Bitops.eq arg3776 (Bits.of_int 6 32) && 
          Bitops.eq arg3771 (Bits.of_int 19 5) && Bitops.eq arg3772 
            (Bits.of_int 0 1) && Bitops.eq arg3773 (Bits.of_int 5 32) && 
          Bitops.eq arg3768 (Bits.of_int 20 5) && Bitops.eq arg3769 
            (Bits.of_int 0 1) && Bitops.eq arg3770 (Bits.of_int 4 32) && 
          Bitops.eq arg3765 (Bits.of_int 21 5) && Bitops.eq arg3766 
            (Bits.of_int 0 1) && Bitops.eq arg3767 (Bits.of_int 3 32) && 
          Bitops.eq arg3762 (Bits.of_int 22 5) && Bitops.eq arg3763 
            (Bits.of_int 0 1) && Bitops.eq arg3764 (Bits.of_int 2 32) && 
          Bitops.eq arg3759 (Bits.of_int 23 5) && Bitops.eq arg3760 
            (Bits.of_int 0 1) && Bitops.eq arg3761 (Bits.of_int 1 32) && 
          Bitops.eq arg3756 (Bits.of_int 24 5) && Bitops.eq arg3757 
            (Bits.of_int 0 1) && Bitops.eq arg3758 (Bits.of_int 16 32) && 
          Bitops.eq arg3753 (Bits.of_int 25 5) && Bitops.eq arg3754 
            (Bits.of_int 0 1) && Bitops.eq arg3755 (Bits.of_int 15 32) && 
          Bitops.eq arg3750 (Bits.of_int 27 5) && Bitops.eq arg3751 
            (Bits.of_int 0 1) && Bitops.eq arg3752 (Bits.of_int 13 32) && 
          Bitops.eq arg3747 (Bits.of_int 28 5) && Bitops.eq arg3748 
            (Bits.of_int 0 1) && Bitops.eq arg3749 (Bits.of_int 12 32) && 
          Bitops.eq arg3744 (Bits.of_int 29 5) && Bitops.eq arg3745 
            (Bits.of_int 0 1) && Bitops.eq arg3746 (Bits.of_int 11 32) && 
          Bitops.eq arg3741 (Bits.of_int 30 5) && Bitops.eq arg3742 
            (Bits.of_int 0 1) && Bitops.eq arg3743 (Bits.of_int 10 32) && 
          Bitops.eq arg3738 (Bits.of_int 31 5) && Bitops.eq arg3739 
            (Bits.of_int 0 1) && Bitops.eq arg3740 (Bits.of_int 9 32) && 
          Bitops.eq arg3735 (Bits.of_int 0 1) && Bitops.eq arg3736 
            (Bits.of_int 0 1) && Bitops.eq arg3737 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 26 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3861), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3862), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3859), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3860), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3857), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3858), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3855), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3856), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3853), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3854), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3851), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3852), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3849), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3850), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3847), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3848), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3844), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3845), _), 32); 
                    RP.Const (RP.Bits arg3846)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3841), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3842), _), 32); 
                    RP.Const (RP.Bits arg3843)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3838), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3839), _), 32); 
                    RP.Const (RP.Bits arg3840)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3835), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3836), _), 32); 
                    RP.Const (RP.Bits arg3837)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3832), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3833), _), 32); 
                    RP.Const (RP.Bits arg3834)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3829), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3830), _), 32); 
                    RP.Const (RP.Bits arg3831)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3826), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3827), _), 32); 
                    RP.Const (RP.Bits arg3828)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3823), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3824), _), 32); 
                    RP.Const (RP.Bits arg3825)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3820), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3821), _), 32); 
                    RP.Const (RP.Bits arg3822)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3817), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3818), _), 32); 
                    RP.Const (RP.Bits arg3819)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3814), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3815), _), 32); 
                    RP.Const (RP.Bits arg3816)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3811), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3812), _), 32); 
                    RP.Const (RP.Bits arg3813)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3808), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3809), _), 32); 
                    RP.Const (RP.Bits arg3810)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3805), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3806), _), 32); 
                    RP.Const (RP.Bits arg3807)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3802), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3803), _), 32); 
                    RP.Const (RP.Bits arg3804)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3799), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3800), _), 32); 
                  RP.Const (RP.Bits arg3801)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3861 (Bits.of_int 8 5) && Bitops.eq 
            arg3862 (Bits.of_int 24 5) && Bitops.eq arg3859 
            (Bits.of_int 9 5) && Bitops.eq arg3860 (Bits.of_int 25 5) && 
          Bitops.eq arg3857 (Bits.of_int 10 5) && Bitops.eq arg3858 
            (Bits.of_int 26 5) && Bitops.eq arg3855 (Bits.of_int 11 5) && 
          Bitops.eq arg3856 (Bits.of_int 27 5) && Bitops.eq arg3853 
            (Bits.of_int 12 5) && Bitops.eq arg3854 (Bits.of_int 28 5) && 
          Bitops.eq arg3851 (Bits.of_int 13 5) && Bitops.eq arg3852 
            (Bits.of_int 29 5) && Bitops.eq arg3849 (Bits.of_int 14 5) && 
          Bitops.eq arg3850 (Bits.of_int 30 5) && Bitops.eq arg3847 
            (Bits.of_int 15 5) && Bitops.eq arg3848 (Bits.of_int 31 5) && 
          Bitops.eq arg3844 (Bits.of_int 16 5) && Bitops.eq arg3845 
            (Bits.of_int 0 1) && Bitops.eq arg3846 (Bits.of_int 8 32) && 
          Bitops.eq arg3841 (Bits.of_int 17 5) && Bitops.eq arg3842 
            (Bits.of_int 0 1) && Bitops.eq arg3843 (Bits.of_int 7 32) && 
          Bitops.eq arg3838 (Bits.of_int 18 5) && Bitops.eq arg3839 
            (Bits.of_int 0 1) && Bitops.eq arg3840 (Bits.of_int 6 32) && 
          Bitops.eq arg3835 (Bits.of_int 19 5) && Bitops.eq arg3836 
            (Bits.of_int 0 1) && Bitops.eq arg3837 (Bits.of_int 5 32) && 
          Bitops.eq arg3832 (Bits.of_int 20 5) && Bitops.eq arg3833 
            (Bits.of_int 0 1) && Bitops.eq arg3834 (Bits.of_int 4 32) && 
          Bitops.eq arg3829 (Bits.of_int 21 5) && Bitops.eq arg3830 
            (Bits.of_int 0 1) && Bitops.eq arg3831 (Bits.of_int 3 32) && 
          Bitops.eq arg3826 (Bits.of_int 22 5) && Bitops.eq arg3827 
            (Bits.of_int 0 1) && Bitops.eq arg3828 (Bits.of_int 2 32) && 
          Bitops.eq arg3823 (Bits.of_int 23 5) && Bitops.eq arg3824 
            (Bits.of_int 0 1) && Bitops.eq arg3825 (Bits.of_int 1 32) && 
          Bitops.eq arg3820 (Bits.of_int 24 5) && Bitops.eq arg3821 
            (Bits.of_int 0 1) && Bitops.eq arg3822 (Bits.of_int 16 32) && 
          Bitops.eq arg3817 (Bits.of_int 26 5) && Bitops.eq arg3818 
            (Bits.of_int 0 1) && Bitops.eq arg3819 (Bits.of_int 14 32) && 
          Bitops.eq arg3814 (Bits.of_int 27 5) && Bitops.eq arg3815 
            (Bits.of_int 0 1) && Bitops.eq arg3816 (Bits.of_int 13 32) && 
          Bitops.eq arg3811 (Bits.of_int 28 5) && Bitops.eq arg3812 
            (Bits.of_int 0 1) && Bitops.eq arg3813 (Bits.of_int 12 32) && 
          Bitops.eq arg3808 (Bits.of_int 29 5) && Bitops.eq arg3809 
            (Bits.of_int 0 1) && Bitops.eq arg3810 (Bits.of_int 11 32) && 
          Bitops.eq arg3805 (Bits.of_int 30 5) && Bitops.eq arg3806 
            (Bits.of_int 0 1) && Bitops.eq arg3807 (Bits.of_int 10 32) && 
          Bitops.eq arg3802 (Bits.of_int 31 5) && Bitops.eq arg3803 
            (Bits.of_int 0 1) && Bitops.eq arg3804 (Bits.of_int 9 32) && 
          Bitops.eq arg3799 (Bits.of_int 0 1) && Bitops.eq arg3800 
            (Bits.of_int 0 1) && Bitops.eq arg3801 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 25 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3925), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3926), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3923), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3924), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3921), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3922), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3919), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3920), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3917), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3918), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3915), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3916), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3913), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3914), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3911), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3912), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3908), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3909), _), 32); 
                    RP.Const (RP.Bits arg3910)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3905), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3906), _), 32); 
                    RP.Const (RP.Bits arg3907)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3902), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3903), _), 32); 
                    RP.Const (RP.Bits arg3904)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3899), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3900), _), 32); 
                    RP.Const (RP.Bits arg3901)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3896), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3897), _), 32); 
                    RP.Const (RP.Bits arg3898)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3893), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3894), _), 32); 
                    RP.Const (RP.Bits arg3895)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3890), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3891), _), 32); 
                    RP.Const (RP.Bits arg3892)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3887), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3888), _), 32); 
                    RP.Const (RP.Bits arg3889)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3884), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3885), _), 32); 
                    RP.Const (RP.Bits arg3886)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3881), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3882), _), 32); 
                    RP.Const (RP.Bits arg3883)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3878), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3879), _), 32); 
                    RP.Const (RP.Bits arg3880)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3875), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3876), _), 32); 
                    RP.Const (RP.Bits arg3877)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3872), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3873), _), 32); 
                    RP.Const (RP.Bits arg3874)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3869), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3870), _), 32); 
                    RP.Const (RP.Bits arg3871)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3866), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3867), _), 32); 
                    RP.Const (RP.Bits arg3868)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3863), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3864), _), 32); 
                  RP.Const (RP.Bits arg3865)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3925 (Bits.of_int 8 5) && Bitops.eq 
            arg3926 (Bits.of_int 24 5) && Bitops.eq arg3923 
            (Bits.of_int 9 5) && Bitops.eq arg3924 (Bits.of_int 25 5) && 
          Bitops.eq arg3921 (Bits.of_int 10 5) && Bitops.eq arg3922 
            (Bits.of_int 26 5) && Bitops.eq arg3919 (Bits.of_int 11 5) && 
          Bitops.eq arg3920 (Bits.of_int 27 5) && Bitops.eq arg3917 
            (Bits.of_int 12 5) && Bitops.eq arg3918 (Bits.of_int 28 5) && 
          Bitops.eq arg3915 (Bits.of_int 13 5) && Bitops.eq arg3916 
            (Bits.of_int 29 5) && Bitops.eq arg3913 (Bits.of_int 14 5) && 
          Bitops.eq arg3914 (Bits.of_int 30 5) && Bitops.eq arg3911 
            (Bits.of_int 15 5) && Bitops.eq arg3912 (Bits.of_int 31 5) && 
          Bitops.eq arg3908 (Bits.of_int 16 5) && Bitops.eq arg3909 
            (Bits.of_int 0 1) && Bitops.eq arg3910 (Bits.of_int 8 32) && 
          Bitops.eq arg3905 (Bits.of_int 17 5) && Bitops.eq arg3906 
            (Bits.of_int 0 1) && Bitops.eq arg3907 (Bits.of_int 7 32) && 
          Bitops.eq arg3902 (Bits.of_int 18 5) && Bitops.eq arg3903 
            (Bits.of_int 0 1) && Bitops.eq arg3904 (Bits.of_int 6 32) && 
          Bitops.eq arg3899 (Bits.of_int 19 5) && Bitops.eq arg3900 
            (Bits.of_int 0 1) && Bitops.eq arg3901 (Bits.of_int 5 32) && 
          Bitops.eq arg3896 (Bits.of_int 20 5) && Bitops.eq arg3897 
            (Bits.of_int 0 1) && Bitops.eq arg3898 (Bits.of_int 4 32) && 
          Bitops.eq arg3893 (Bits.of_int 21 5) && Bitops.eq arg3894 
            (Bits.of_int 0 1) && Bitops.eq arg3895 (Bits.of_int 3 32) && 
          Bitops.eq arg3890 (Bits.of_int 22 5) && Bitops.eq arg3891 
            (Bits.of_int 0 1) && Bitops.eq arg3892 (Bits.of_int 2 32) && 
          Bitops.eq arg3887 (Bits.of_int 23 5) && Bitops.eq arg3888 
            (Bits.of_int 0 1) && Bitops.eq arg3889 (Bits.of_int 1 32) && 
          Bitops.eq arg3884 (Bits.of_int 25 5) && Bitops.eq arg3885 
            (Bits.of_int 0 1) && Bitops.eq arg3886 (Bits.of_int 15 32) && 
          Bitops.eq arg3881 (Bits.of_int 26 5) && Bitops.eq arg3882 
            (Bits.of_int 0 1) && Bitops.eq arg3883 (Bits.of_int 14 32) && 
          Bitops.eq arg3878 (Bits.of_int 27 5) && Bitops.eq arg3879 
            (Bits.of_int 0 1) && Bitops.eq arg3880 (Bits.of_int 13 32) && 
          Bitops.eq arg3875 (Bits.of_int 28 5) && Bitops.eq arg3876 
            (Bits.of_int 0 1) && Bitops.eq arg3877 (Bits.of_int 12 32) && 
          Bitops.eq arg3872 (Bits.of_int 29 5) && Bitops.eq arg3873 
            (Bits.of_int 0 1) && Bitops.eq arg3874 (Bits.of_int 11 32) && 
          Bitops.eq arg3869 (Bits.of_int 30 5) && Bitops.eq arg3870 
            (Bits.of_int 0 1) && Bitops.eq arg3871 (Bits.of_int 10 32) && 
          Bitops.eq arg3866 (Bits.of_int 31 5) && Bitops.eq arg3867 
            (Bits.of_int 0 1) && Bitops.eq arg3868 (Bits.of_int 9 32) && 
          Bitops.eq arg3863 (Bits.of_int 0 1) && Bitops.eq arg3864 
            (Bits.of_int 0 1) && Bitops.eq arg3865 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 24 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg3989), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg3990), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3987), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3988), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3985), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3986), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3983), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3984), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3981), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3982), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3979), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3980), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3977), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3978), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3975), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg3976), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3972), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3973), _), 32); 
                    RP.Const (RP.Bits arg3974)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3969), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3970), _), 32); 
                    RP.Const (RP.Bits arg3971)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3966), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3967), _), 32); 
                    RP.Const (RP.Bits arg3968)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3963), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3964), _), 32); 
                    RP.Const (RP.Bits arg3965)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3960), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3961), _), 32); 
                    RP.Const (RP.Bits arg3962)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3957), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3958), _), 32); 
                    RP.Const (RP.Bits arg3959)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3954), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3955), _), 32); 
                    RP.Const (RP.Bits arg3956)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3951), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3952), _), 32); 
                    RP.Const (RP.Bits arg3953)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3948), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3949), _), 32); 
                    RP.Const (RP.Bits arg3950)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3945), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3946), _), 32); 
                    RP.Const (RP.Bits arg3947)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3942), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3943), _), 32); 
                    RP.Const (RP.Bits arg3944)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3939), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3940), _), 32); 
                    RP.Const (RP.Bits arg3941)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3936), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3937), _), 32); 
                    RP.Const (RP.Bits arg3938)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3933), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3934), _), 32); 
                    RP.Const (RP.Bits arg3935)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3930), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3931), _), 32); 
                    RP.Const (RP.Bits arg3932)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3927), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3928), _), 32); 
                  RP.Const (RP.Bits arg3929)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3989 (Bits.of_int 8 5) && Bitops.eq 
            arg3990 (Bits.of_int 24 5) && Bitops.eq arg3987 
            (Bits.of_int 9 5) && Bitops.eq arg3988 (Bits.of_int 25 5) && 
          Bitops.eq arg3985 (Bits.of_int 10 5) && Bitops.eq arg3986 
            (Bits.of_int 26 5) && Bitops.eq arg3983 (Bits.of_int 11 5) && 
          Bitops.eq arg3984 (Bits.of_int 27 5) && Bitops.eq arg3981 
            (Bits.of_int 12 5) && Bitops.eq arg3982 (Bits.of_int 28 5) && 
          Bitops.eq arg3979 (Bits.of_int 13 5) && Bitops.eq arg3980 
            (Bits.of_int 29 5) && Bitops.eq arg3977 (Bits.of_int 14 5) && 
          Bitops.eq arg3978 (Bits.of_int 30 5) && Bitops.eq arg3975 
            (Bits.of_int 15 5) && Bitops.eq arg3976 (Bits.of_int 31 5) && 
          Bitops.eq arg3972 (Bits.of_int 16 5) && Bitops.eq arg3973 
            (Bits.of_int 0 1) && Bitops.eq arg3974 (Bits.of_int 8 32) && 
          Bitops.eq arg3969 (Bits.of_int 17 5) && Bitops.eq arg3970 
            (Bits.of_int 0 1) && Bitops.eq arg3971 (Bits.of_int 7 32) && 
          Bitops.eq arg3966 (Bits.of_int 18 5) && Bitops.eq arg3967 
            (Bits.of_int 0 1) && Bitops.eq arg3968 (Bits.of_int 6 32) && 
          Bitops.eq arg3963 (Bits.of_int 19 5) && Bitops.eq arg3964 
            (Bits.of_int 0 1) && Bitops.eq arg3965 (Bits.of_int 5 32) && 
          Bitops.eq arg3960 (Bits.of_int 20 5) && Bitops.eq arg3961 
            (Bits.of_int 0 1) && Bitops.eq arg3962 (Bits.of_int 4 32) && 
          Bitops.eq arg3957 (Bits.of_int 21 5) && Bitops.eq arg3958 
            (Bits.of_int 0 1) && Bitops.eq arg3959 (Bits.of_int 3 32) && 
          Bitops.eq arg3954 (Bits.of_int 22 5) && Bitops.eq arg3955 
            (Bits.of_int 0 1) && Bitops.eq arg3956 (Bits.of_int 2 32) && 
          Bitops.eq arg3951 (Bits.of_int 24 5) && Bitops.eq arg3952 
            (Bits.of_int 0 1) && Bitops.eq arg3953 (Bits.of_int 16 32) && 
          Bitops.eq arg3948 (Bits.of_int 25 5) && Bitops.eq arg3949 
            (Bits.of_int 0 1) && Bitops.eq arg3950 (Bits.of_int 15 32) && 
          Bitops.eq arg3945 (Bits.of_int 26 5) && Bitops.eq arg3946 
            (Bits.of_int 0 1) && Bitops.eq arg3947 (Bits.of_int 14 32) && 
          Bitops.eq arg3942 (Bits.of_int 27 5) && Bitops.eq arg3943 
            (Bits.of_int 0 1) && Bitops.eq arg3944 (Bits.of_int 13 32) && 
          Bitops.eq arg3939 (Bits.of_int 28 5) && Bitops.eq arg3940 
            (Bits.of_int 0 1) && Bitops.eq arg3941 (Bits.of_int 12 32) && 
          Bitops.eq arg3936 (Bits.of_int 29 5) && Bitops.eq arg3937 
            (Bits.of_int 0 1) && Bitops.eq arg3938 (Bits.of_int 11 32) && 
          Bitops.eq arg3933 (Bits.of_int 30 5) && Bitops.eq arg3934 
            (Bits.of_int 0 1) && Bitops.eq arg3935 (Bits.of_int 10 32) && 
          Bitops.eq arg3930 (Bits.of_int 31 5) && Bitops.eq arg3931 
            (Bits.of_int 0 1) && Bitops.eq arg3932 (Bits.of_int 9 32) && 
          Bitops.eq arg3927 (Bits.of_int 0 1) && Bitops.eq arg3928 
            (Bits.of_int 0 1) && Bitops.eq arg3929 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 23 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4053), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4054), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4051), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4052), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4049), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4050), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4047), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4048), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4045), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4046), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4043), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4044), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4041), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4042), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4039), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4040), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4036), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4037), _), 32); 
                    RP.Const (RP.Bits arg4038)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4033), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4034), _), 32); 
                    RP.Const (RP.Bits arg4035)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4030), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4031), _), 32); 
                    RP.Const (RP.Bits arg4032)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4027), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4028), _), 32); 
                    RP.Const (RP.Bits arg4029)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4024), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4025), _), 32); 
                    RP.Const (RP.Bits arg4026)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4021), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4022), _), 32); 
                    RP.Const (RP.Bits arg4023)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4018), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4019), _), 32); 
                    RP.Const (RP.Bits arg4020)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4015), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4016), _), 32); 
                    RP.Const (RP.Bits arg4017)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4012), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4013), _), 32); 
                    RP.Const (RP.Bits arg4014)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4009), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4010), _), 32); 
                    RP.Const (RP.Bits arg4011)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4006), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4007), _), 32); 
                    RP.Const (RP.Bits arg4008)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4003), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4004), _), 32); 
                    RP.Const (RP.Bits arg4005)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4000), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4001), _), 32); 
                    RP.Const (RP.Bits arg4002)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3997), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3998), _), 32); 
                    RP.Const (RP.Bits arg3999)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3994), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg3995), _), 32); 
                    RP.Const (RP.Bits arg3996)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg3991), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg3992), _), 32); 
                  RP.Const (RP.Bits arg3993)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4053 (Bits.of_int 8 5) && Bitops.eq 
            arg4054 (Bits.of_int 24 5) && Bitops.eq arg4051 
            (Bits.of_int 9 5) && Bitops.eq arg4052 (Bits.of_int 25 5) && 
          Bitops.eq arg4049 (Bits.of_int 10 5) && Bitops.eq arg4050 
            (Bits.of_int 26 5) && Bitops.eq arg4047 (Bits.of_int 11 5) && 
          Bitops.eq arg4048 (Bits.of_int 27 5) && Bitops.eq arg4045 
            (Bits.of_int 12 5) && Bitops.eq arg4046 (Bits.of_int 28 5) && 
          Bitops.eq arg4043 (Bits.of_int 13 5) && Bitops.eq arg4044 
            (Bits.of_int 29 5) && Bitops.eq arg4041 (Bits.of_int 14 5) && 
          Bitops.eq arg4042 (Bits.of_int 30 5) && Bitops.eq arg4039 
            (Bits.of_int 15 5) && Bitops.eq arg4040 (Bits.of_int 31 5) && 
          Bitops.eq arg4036 (Bits.of_int 16 5) && Bitops.eq arg4037 
            (Bits.of_int 0 1) && Bitops.eq arg4038 (Bits.of_int 8 32) && 
          Bitops.eq arg4033 (Bits.of_int 17 5) && Bitops.eq arg4034 
            (Bits.of_int 0 1) && Bitops.eq arg4035 (Bits.of_int 7 32) && 
          Bitops.eq arg4030 (Bits.of_int 18 5) && Bitops.eq arg4031 
            (Bits.of_int 0 1) && Bitops.eq arg4032 (Bits.of_int 6 32) && 
          Bitops.eq arg4027 (Bits.of_int 19 5) && Bitops.eq arg4028 
            (Bits.of_int 0 1) && Bitops.eq arg4029 (Bits.of_int 5 32) && 
          Bitops.eq arg4024 (Bits.of_int 20 5) && Bitops.eq arg4025 
            (Bits.of_int 0 1) && Bitops.eq arg4026 (Bits.of_int 4 32) && 
          Bitops.eq arg4021 (Bits.of_int 21 5) && Bitops.eq arg4022 
            (Bits.of_int 0 1) && Bitops.eq arg4023 (Bits.of_int 3 32) && 
          Bitops.eq arg4018 (Bits.of_int 23 5) && Bitops.eq arg4019 
            (Bits.of_int 0 1) && Bitops.eq arg4020 (Bits.of_int 1 32) && 
          Bitops.eq arg4015 (Bits.of_int 24 5) && Bitops.eq arg4016 
            (Bits.of_int 0 1) && Bitops.eq arg4017 (Bits.of_int 16 32) && 
          Bitops.eq arg4012 (Bits.of_int 25 5) && Bitops.eq arg4013 
            (Bits.of_int 0 1) && Bitops.eq arg4014 (Bits.of_int 15 32) && 
          Bitops.eq arg4009 (Bits.of_int 26 5) && Bitops.eq arg4010 
            (Bits.of_int 0 1) && Bitops.eq arg4011 (Bits.of_int 14 32) && 
          Bitops.eq arg4006 (Bits.of_int 27 5) && Bitops.eq arg4007 
            (Bits.of_int 0 1) && Bitops.eq arg4008 (Bits.of_int 13 32) && 
          Bitops.eq arg4003 (Bits.of_int 28 5) && Bitops.eq arg4004 
            (Bits.of_int 0 1) && Bitops.eq arg4005 (Bits.of_int 12 32) && 
          Bitops.eq arg4000 (Bits.of_int 29 5) && Bitops.eq arg4001 
            (Bits.of_int 0 1) && Bitops.eq arg4002 (Bits.of_int 11 32) && 
          Bitops.eq arg3997 (Bits.of_int 30 5) && Bitops.eq arg3998 
            (Bits.of_int 0 1) && Bitops.eq arg3999 (Bits.of_int 10 32) && 
          Bitops.eq arg3994 (Bits.of_int 31 5) && Bitops.eq arg3995 
            (Bits.of_int 0 1) && Bitops.eq arg3996 (Bits.of_int 9 32) && 
          Bitops.eq arg3991 (Bits.of_int 0 1) && Bitops.eq arg3992 
            (Bits.of_int 0 1) && Bitops.eq arg3993 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 22 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4117), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4118), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4115), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4116), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4113), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4114), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4111), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4112), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4109), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4110), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4107), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4108), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4105), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4106), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4103), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4104), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4100), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4101), _), 32); 
                    RP.Const (RP.Bits arg4102)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4097), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4098), _), 32); 
                    RP.Const (RP.Bits arg4099)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4094), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4095), _), 32); 
                    RP.Const (RP.Bits arg4096)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4091), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4092), _), 32); 
                    RP.Const (RP.Bits arg4093)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4088), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4089), _), 32); 
                    RP.Const (RP.Bits arg4090)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4085), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4086), _), 32); 
                    RP.Const (RP.Bits arg4087)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4082), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4083), _), 32); 
                    RP.Const (RP.Bits arg4084)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4079), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4080), _), 32); 
                    RP.Const (RP.Bits arg4081)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4076), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4077), _), 32); 
                    RP.Const (RP.Bits arg4078)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4073), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4074), _), 32); 
                    RP.Const (RP.Bits arg4075)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4070), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4071), _), 32); 
                    RP.Const (RP.Bits arg4072)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4067), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4068), _), 32); 
                    RP.Const (RP.Bits arg4069)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4064), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4065), _), 32); 
                    RP.Const (RP.Bits arg4066)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4061), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4062), _), 32); 
                    RP.Const (RP.Bits arg4063)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4058), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4059), _), 32); 
                    RP.Const (RP.Bits arg4060)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4055), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4056), _), 32); 
                  RP.Const (RP.Bits arg4057)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4117 (Bits.of_int 8 5) && Bitops.eq 
            arg4118 (Bits.of_int 24 5) && Bitops.eq arg4115 
            (Bits.of_int 9 5) && Bitops.eq arg4116 (Bits.of_int 25 5) && 
          Bitops.eq arg4113 (Bits.of_int 10 5) && Bitops.eq arg4114 
            (Bits.of_int 26 5) && Bitops.eq arg4111 (Bits.of_int 11 5) && 
          Bitops.eq arg4112 (Bits.of_int 27 5) && Bitops.eq arg4109 
            (Bits.of_int 12 5) && Bitops.eq arg4110 (Bits.of_int 28 5) && 
          Bitops.eq arg4107 (Bits.of_int 13 5) && Bitops.eq arg4108 
            (Bits.of_int 29 5) && Bitops.eq arg4105 (Bits.of_int 14 5) && 
          Bitops.eq arg4106 (Bits.of_int 30 5) && Bitops.eq arg4103 
            (Bits.of_int 15 5) && Bitops.eq arg4104 (Bits.of_int 31 5) && 
          Bitops.eq arg4100 (Bits.of_int 16 5) && Bitops.eq arg4101 
            (Bits.of_int 0 1) && Bitops.eq arg4102 (Bits.of_int 8 32) && 
          Bitops.eq arg4097 (Bits.of_int 17 5) && Bitops.eq arg4098 
            (Bits.of_int 0 1) && Bitops.eq arg4099 (Bits.of_int 7 32) && 
          Bitops.eq arg4094 (Bits.of_int 18 5) && Bitops.eq arg4095 
            (Bits.of_int 0 1) && Bitops.eq arg4096 (Bits.of_int 6 32) && 
          Bitops.eq arg4091 (Bits.of_int 19 5) && Bitops.eq arg4092 
            (Bits.of_int 0 1) && Bitops.eq arg4093 (Bits.of_int 5 32) && 
          Bitops.eq arg4088 (Bits.of_int 20 5) && Bitops.eq arg4089 
            (Bits.of_int 0 1) && Bitops.eq arg4090 (Bits.of_int 4 32) && 
          Bitops.eq arg4085 (Bits.of_int 22 5) && Bitops.eq arg4086 
            (Bits.of_int 0 1) && Bitops.eq arg4087 (Bits.of_int 2 32) && 
          Bitops.eq arg4082 (Bits.of_int 23 5) && Bitops.eq arg4083 
            (Bits.of_int 0 1) && Bitops.eq arg4084 (Bits.of_int 1 32) && 
          Bitops.eq arg4079 (Bits.of_int 24 5) && Bitops.eq arg4080 
            (Bits.of_int 0 1) && Bitops.eq arg4081 (Bits.of_int 16 32) && 
          Bitops.eq arg4076 (Bits.of_int 25 5) && Bitops.eq arg4077 
            (Bits.of_int 0 1) && Bitops.eq arg4078 (Bits.of_int 15 32) && 
          Bitops.eq arg4073 (Bits.of_int 26 5) && Bitops.eq arg4074 
            (Bits.of_int 0 1) && Bitops.eq arg4075 (Bits.of_int 14 32) && 
          Bitops.eq arg4070 (Bits.of_int 27 5) && Bitops.eq arg4071 
            (Bits.of_int 0 1) && Bitops.eq arg4072 (Bits.of_int 13 32) && 
          Bitops.eq arg4067 (Bits.of_int 28 5) && Bitops.eq arg4068 
            (Bits.of_int 0 1) && Bitops.eq arg4069 (Bits.of_int 12 32) && 
          Bitops.eq arg4064 (Bits.of_int 29 5) && Bitops.eq arg4065 
            (Bits.of_int 0 1) && Bitops.eq arg4066 (Bits.of_int 11 32) && 
          Bitops.eq arg4061 (Bits.of_int 30 5) && Bitops.eq arg4062 
            (Bits.of_int 0 1) && Bitops.eq arg4063 (Bits.of_int 10 32) && 
          Bitops.eq arg4058 (Bits.of_int 31 5) && Bitops.eq arg4059 
            (Bits.of_int 0 1) && Bitops.eq arg4060 (Bits.of_int 9 32) && 
          Bitops.eq arg4055 (Bits.of_int 0 1) && Bitops.eq arg4056 
            (Bits.of_int 0 1) && Bitops.eq arg4057 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 21 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4181), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4182), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4179), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4180), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4177), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4178), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4175), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4176), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4173), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4174), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4171), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4172), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4169), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4170), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4167), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4168), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4164), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4165), _), 32); 
                    RP.Const (RP.Bits arg4166)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4161), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4162), _), 32); 
                    RP.Const (RP.Bits arg4163)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4158), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4159), _), 32); 
                    RP.Const (RP.Bits arg4160)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4155), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4156), _), 32); 
                    RP.Const (RP.Bits arg4157)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4152), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4153), _), 32); 
                    RP.Const (RP.Bits arg4154)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4149), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4150), _), 32); 
                    RP.Const (RP.Bits arg4151)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4146), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4147), _), 32); 
                    RP.Const (RP.Bits arg4148)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4143), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4144), _), 32); 
                    RP.Const (RP.Bits arg4145)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4140), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4141), _), 32); 
                    RP.Const (RP.Bits arg4142)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4137), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4138), _), 32); 
                    RP.Const (RP.Bits arg4139)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4134), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4135), _), 32); 
                    RP.Const (RP.Bits arg4136)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4131), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4132), _), 32); 
                    RP.Const (RP.Bits arg4133)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4128), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4129), _), 32); 
                    RP.Const (RP.Bits arg4130)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4125), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4126), _), 32); 
                    RP.Const (RP.Bits arg4127)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4122), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4123), _), 32); 
                    RP.Const (RP.Bits arg4124)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4119), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4120), _), 32); 
                  RP.Const (RP.Bits arg4121)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4181 (Bits.of_int 8 5) && Bitops.eq 
            arg4182 (Bits.of_int 24 5) && Bitops.eq arg4179 
            (Bits.of_int 9 5) && Bitops.eq arg4180 (Bits.of_int 25 5) && 
          Bitops.eq arg4177 (Bits.of_int 10 5) && Bitops.eq arg4178 
            (Bits.of_int 26 5) && Bitops.eq arg4175 (Bits.of_int 11 5) && 
          Bitops.eq arg4176 (Bits.of_int 27 5) && Bitops.eq arg4173 
            (Bits.of_int 12 5) && Bitops.eq arg4174 (Bits.of_int 28 5) && 
          Bitops.eq arg4171 (Bits.of_int 13 5) && Bitops.eq arg4172 
            (Bits.of_int 29 5) && Bitops.eq arg4169 (Bits.of_int 14 5) && 
          Bitops.eq arg4170 (Bits.of_int 30 5) && Bitops.eq arg4167 
            (Bits.of_int 15 5) && Bitops.eq arg4168 (Bits.of_int 31 5) && 
          Bitops.eq arg4164 (Bits.of_int 16 5) && Bitops.eq arg4165 
            (Bits.of_int 0 1) && Bitops.eq arg4166 (Bits.of_int 8 32) && 
          Bitops.eq arg4161 (Bits.of_int 17 5) && Bitops.eq arg4162 
            (Bits.of_int 0 1) && Bitops.eq arg4163 (Bits.of_int 7 32) && 
          Bitops.eq arg4158 (Bits.of_int 18 5) && Bitops.eq arg4159 
            (Bits.of_int 0 1) && Bitops.eq arg4160 (Bits.of_int 6 32) && 
          Bitops.eq arg4155 (Bits.of_int 19 5) && Bitops.eq arg4156 
            (Bits.of_int 0 1) && Bitops.eq arg4157 (Bits.of_int 5 32) && 
          Bitops.eq arg4152 (Bits.of_int 21 5) && Bitops.eq arg4153 
            (Bits.of_int 0 1) && Bitops.eq arg4154 (Bits.of_int 3 32) && 
          Bitops.eq arg4149 (Bits.of_int 22 5) && Bitops.eq arg4150 
            (Bits.of_int 0 1) && Bitops.eq arg4151 (Bits.of_int 2 32) && 
          Bitops.eq arg4146 (Bits.of_int 23 5) && Bitops.eq arg4147 
            (Bits.of_int 0 1) && Bitops.eq arg4148 (Bits.of_int 1 32) && 
          Bitops.eq arg4143 (Bits.of_int 24 5) && Bitops.eq arg4144 
            (Bits.of_int 0 1) && Bitops.eq arg4145 (Bits.of_int 16 32) && 
          Bitops.eq arg4140 (Bits.of_int 25 5) && Bitops.eq arg4141 
            (Bits.of_int 0 1) && Bitops.eq arg4142 (Bits.of_int 15 32) && 
          Bitops.eq arg4137 (Bits.of_int 26 5) && Bitops.eq arg4138 
            (Bits.of_int 0 1) && Bitops.eq arg4139 (Bits.of_int 14 32) && 
          Bitops.eq arg4134 (Bits.of_int 27 5) && Bitops.eq arg4135 
            (Bits.of_int 0 1) && Bitops.eq arg4136 (Bits.of_int 13 32) && 
          Bitops.eq arg4131 (Bits.of_int 28 5) && Bitops.eq arg4132 
            (Bits.of_int 0 1) && Bitops.eq arg4133 (Bits.of_int 12 32) && 
          Bitops.eq arg4128 (Bits.of_int 29 5) && Bitops.eq arg4129 
            (Bits.of_int 0 1) && Bitops.eq arg4130 (Bits.of_int 11 32) && 
          Bitops.eq arg4125 (Bits.of_int 30 5) && Bitops.eq arg4126 
            (Bits.of_int 0 1) && Bitops.eq arg4127 (Bits.of_int 10 32) && 
          Bitops.eq arg4122 (Bits.of_int 31 5) && Bitops.eq arg4123 
            (Bits.of_int 0 1) && Bitops.eq arg4124 (Bits.of_int 9 32) && 
          Bitops.eq arg4119 (Bits.of_int 0 1) && Bitops.eq arg4120 
            (Bits.of_int 0 1) && Bitops.eq arg4121 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 20 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4245), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4246), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4243), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4244), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4241), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4242), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4239), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4240), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4237), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4238), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4235), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4236), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4233), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4234), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4231), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4232), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4228), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4229), _), 32); 
                    RP.Const (RP.Bits arg4230)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4225), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4226), _), 32); 
                    RP.Const (RP.Bits arg4227)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4222), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4223), _), 32); 
                    RP.Const (RP.Bits arg4224)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4219), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4220), _), 32); 
                    RP.Const (RP.Bits arg4221)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4216), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4217), _), 32); 
                    RP.Const (RP.Bits arg4218)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4213), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4214), _), 32); 
                    RP.Const (RP.Bits arg4215)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4210), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4211), _), 32); 
                    RP.Const (RP.Bits arg4212)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4207), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4208), _), 32); 
                    RP.Const (RP.Bits arg4209)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4204), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4205), _), 32); 
                    RP.Const (RP.Bits arg4206)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4201), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4202), _), 32); 
                    RP.Const (RP.Bits arg4203)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4198), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4199), _), 32); 
                    RP.Const (RP.Bits arg4200)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4195), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4196), _), 32); 
                    RP.Const (RP.Bits arg4197)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4192), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4193), _), 32); 
                    RP.Const (RP.Bits arg4194)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4189), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4190), _), 32); 
                    RP.Const (RP.Bits arg4191)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4186), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4187), _), 32); 
                    RP.Const (RP.Bits arg4188)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4183), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4184), _), 32); 
                  RP.Const (RP.Bits arg4185)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4245 (Bits.of_int 8 5) && Bitops.eq 
            arg4246 (Bits.of_int 24 5) && Bitops.eq arg4243 
            (Bits.of_int 9 5) && Bitops.eq arg4244 (Bits.of_int 25 5) && 
          Bitops.eq arg4241 (Bits.of_int 10 5) && Bitops.eq arg4242 
            (Bits.of_int 26 5) && Bitops.eq arg4239 (Bits.of_int 11 5) && 
          Bitops.eq arg4240 (Bits.of_int 27 5) && Bitops.eq arg4237 
            (Bits.of_int 12 5) && Bitops.eq arg4238 (Bits.of_int 28 5) && 
          Bitops.eq arg4235 (Bits.of_int 13 5) && Bitops.eq arg4236 
            (Bits.of_int 29 5) && Bitops.eq arg4233 (Bits.of_int 14 5) && 
          Bitops.eq arg4234 (Bits.of_int 30 5) && Bitops.eq arg4231 
            (Bits.of_int 15 5) && Bitops.eq arg4232 (Bits.of_int 31 5) && 
          Bitops.eq arg4228 (Bits.of_int 16 5) && Bitops.eq arg4229 
            (Bits.of_int 0 1) && Bitops.eq arg4230 (Bits.of_int 8 32) && 
          Bitops.eq arg4225 (Bits.of_int 17 5) && Bitops.eq arg4226 
            (Bits.of_int 0 1) && Bitops.eq arg4227 (Bits.of_int 7 32) && 
          Bitops.eq arg4222 (Bits.of_int 18 5) && Bitops.eq arg4223 
            (Bits.of_int 0 1) && Bitops.eq arg4224 (Bits.of_int 6 32) && 
          Bitops.eq arg4219 (Bits.of_int 20 5) && Bitops.eq arg4220 
            (Bits.of_int 0 1) && Bitops.eq arg4221 (Bits.of_int 4 32) && 
          Bitops.eq arg4216 (Bits.of_int 21 5) && Bitops.eq arg4217 
            (Bits.of_int 0 1) && Bitops.eq arg4218 (Bits.of_int 3 32) && 
          Bitops.eq arg4213 (Bits.of_int 22 5) && Bitops.eq arg4214 
            (Bits.of_int 0 1) && Bitops.eq arg4215 (Bits.of_int 2 32) && 
          Bitops.eq arg4210 (Bits.of_int 23 5) && Bitops.eq arg4211 
            (Bits.of_int 0 1) && Bitops.eq arg4212 (Bits.of_int 1 32) && 
          Bitops.eq arg4207 (Bits.of_int 24 5) && Bitops.eq arg4208 
            (Bits.of_int 0 1) && Bitops.eq arg4209 (Bits.of_int 16 32) && 
          Bitops.eq arg4204 (Bits.of_int 25 5) && Bitops.eq arg4205 
            (Bits.of_int 0 1) && Bitops.eq arg4206 (Bits.of_int 15 32) && 
          Bitops.eq arg4201 (Bits.of_int 26 5) && Bitops.eq arg4202 
            (Bits.of_int 0 1) && Bitops.eq arg4203 (Bits.of_int 14 32) && 
          Bitops.eq arg4198 (Bits.of_int 27 5) && Bitops.eq arg4199 
            (Bits.of_int 0 1) && Bitops.eq arg4200 (Bits.of_int 13 32) && 
          Bitops.eq arg4195 (Bits.of_int 28 5) && Bitops.eq arg4196 
            (Bits.of_int 0 1) && Bitops.eq arg4197 (Bits.of_int 12 32) && 
          Bitops.eq arg4192 (Bits.of_int 29 5) && Bitops.eq arg4193 
            (Bits.of_int 0 1) && Bitops.eq arg4194 (Bits.of_int 11 32) && 
          Bitops.eq arg4189 (Bits.of_int 30 5) && Bitops.eq arg4190 
            (Bits.of_int 0 1) && Bitops.eq arg4191 (Bits.of_int 10 32) && 
          Bitops.eq arg4186 (Bits.of_int 31 5) && Bitops.eq arg4187 
            (Bits.of_int 0 1) && Bitops.eq arg4188 (Bits.of_int 9 32) && 
          Bitops.eq arg4183 (Bits.of_int 0 1) && Bitops.eq arg4184 
            (Bits.of_int 0 1) && Bitops.eq arg4185 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 19 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4309), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4310), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4307), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4308), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4305), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4306), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4303), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4304), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4301), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4302), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4299), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4300), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4297), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4298), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4295), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4296), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4292), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4293), _), 32); 
                    RP.Const (RP.Bits arg4294)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4289), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4290), _), 32); 
                    RP.Const (RP.Bits arg4291)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4286), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4287), _), 32); 
                    RP.Const (RP.Bits arg4288)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4283), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4284), _), 32); 
                    RP.Const (RP.Bits arg4285)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4280), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4281), _), 32); 
                    RP.Const (RP.Bits arg4282)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4277), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4278), _), 32); 
                    RP.Const (RP.Bits arg4279)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4274), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4275), _), 32); 
                    RP.Const (RP.Bits arg4276)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4271), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4272), _), 32); 
                    RP.Const (RP.Bits arg4273)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4268), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4269), _), 32); 
                    RP.Const (RP.Bits arg4270)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4265), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4266), _), 32); 
                    RP.Const (RP.Bits arg4267)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4262), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4263), _), 32); 
                    RP.Const (RP.Bits arg4264)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4259), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4260), _), 32); 
                    RP.Const (RP.Bits arg4261)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4256), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4257), _), 32); 
                    RP.Const (RP.Bits arg4258)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4253), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4254), _), 32); 
                    RP.Const (RP.Bits arg4255)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4250), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4251), _), 32); 
                    RP.Const (RP.Bits arg4252)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4247), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4248), _), 32); 
                  RP.Const (RP.Bits arg4249)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4309 (Bits.of_int 8 5) && Bitops.eq 
            arg4310 (Bits.of_int 24 5) && Bitops.eq arg4307 
            (Bits.of_int 9 5) && Bitops.eq arg4308 (Bits.of_int 25 5) && 
          Bitops.eq arg4305 (Bits.of_int 10 5) && Bitops.eq arg4306 
            (Bits.of_int 26 5) && Bitops.eq arg4303 (Bits.of_int 11 5) && 
          Bitops.eq arg4304 (Bits.of_int 27 5) && Bitops.eq arg4301 
            (Bits.of_int 12 5) && Bitops.eq arg4302 (Bits.of_int 28 5) && 
          Bitops.eq arg4299 (Bits.of_int 13 5) && Bitops.eq arg4300 
            (Bits.of_int 29 5) && Bitops.eq arg4297 (Bits.of_int 14 5) && 
          Bitops.eq arg4298 (Bits.of_int 30 5) && Bitops.eq arg4295 
            (Bits.of_int 15 5) && Bitops.eq arg4296 (Bits.of_int 31 5) && 
          Bitops.eq arg4292 (Bits.of_int 16 5) && Bitops.eq arg4293 
            (Bits.of_int 0 1) && Bitops.eq arg4294 (Bits.of_int 8 32) && 
          Bitops.eq arg4289 (Bits.of_int 17 5) && Bitops.eq arg4290 
            (Bits.of_int 0 1) && Bitops.eq arg4291 (Bits.of_int 7 32) && 
          Bitops.eq arg4286 (Bits.of_int 19 5) && Bitops.eq arg4287 
            (Bits.of_int 0 1) && Bitops.eq arg4288 (Bits.of_int 5 32) && 
          Bitops.eq arg4283 (Bits.of_int 20 5) && Bitops.eq arg4284 
            (Bits.of_int 0 1) && Bitops.eq arg4285 (Bits.of_int 4 32) && 
          Bitops.eq arg4280 (Bits.of_int 21 5) && Bitops.eq arg4281 
            (Bits.of_int 0 1) && Bitops.eq arg4282 (Bits.of_int 3 32) && 
          Bitops.eq arg4277 (Bits.of_int 22 5) && Bitops.eq arg4278 
            (Bits.of_int 0 1) && Bitops.eq arg4279 (Bits.of_int 2 32) && 
          Bitops.eq arg4274 (Bits.of_int 23 5) && Bitops.eq arg4275 
            (Bits.of_int 0 1) && Bitops.eq arg4276 (Bits.of_int 1 32) && 
          Bitops.eq arg4271 (Bits.of_int 24 5) && Bitops.eq arg4272 
            (Bits.of_int 0 1) && Bitops.eq arg4273 (Bits.of_int 16 32) && 
          Bitops.eq arg4268 (Bits.of_int 25 5) && Bitops.eq arg4269 
            (Bits.of_int 0 1) && Bitops.eq arg4270 (Bits.of_int 15 32) && 
          Bitops.eq arg4265 (Bits.of_int 26 5) && Bitops.eq arg4266 
            (Bits.of_int 0 1) && Bitops.eq arg4267 (Bits.of_int 14 32) && 
          Bitops.eq arg4262 (Bits.of_int 27 5) && Bitops.eq arg4263 
            (Bits.of_int 0 1) && Bitops.eq arg4264 (Bits.of_int 13 32) && 
          Bitops.eq arg4259 (Bits.of_int 28 5) && Bitops.eq arg4260 
            (Bits.of_int 0 1) && Bitops.eq arg4261 (Bits.of_int 12 32) && 
          Bitops.eq arg4256 (Bits.of_int 29 5) && Bitops.eq arg4257 
            (Bits.of_int 0 1) && Bitops.eq arg4258 (Bits.of_int 11 32) && 
          Bitops.eq arg4253 (Bits.of_int 30 5) && Bitops.eq arg4254 
            (Bits.of_int 0 1) && Bitops.eq arg4255 (Bits.of_int 10 32) && 
          Bitops.eq arg4250 (Bits.of_int 31 5) && Bitops.eq arg4251 
            (Bits.of_int 0 1) && Bitops.eq arg4252 (Bits.of_int 9 32) && 
          Bitops.eq arg4247 (Bits.of_int 0 1) && Bitops.eq arg4248 
            (Bits.of_int 0 1) && Bitops.eq arg4249 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 18 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4373), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4374), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4371), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4372), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4369), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4370), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4367), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4368), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4365), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4366), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4363), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4364), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4361), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4362), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4359), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4360), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4356), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4357), _), 32); 
                    RP.Const (RP.Bits arg4358)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4353), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4354), _), 32); 
                    RP.Const (RP.Bits arg4355)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4350), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4351), _), 32); 
                    RP.Const (RP.Bits arg4352)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4347), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4348), _), 32); 
                    RP.Const (RP.Bits arg4349)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4344), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4345), _), 32); 
                    RP.Const (RP.Bits arg4346)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4341), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4342), _), 32); 
                    RP.Const (RP.Bits arg4343)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4338), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4339), _), 32); 
                    RP.Const (RP.Bits arg4340)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4335), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4336), _), 32); 
                    RP.Const (RP.Bits arg4337)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4332), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4333), _), 32); 
                    RP.Const (RP.Bits arg4334)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4329), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4330), _), 32); 
                    RP.Const (RP.Bits arg4331)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4326), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4327), _), 32); 
                    RP.Const (RP.Bits arg4328)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4323), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4324), _), 32); 
                    RP.Const (RP.Bits arg4325)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4320), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4321), _), 32); 
                    RP.Const (RP.Bits arg4322)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4317), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4318), _), 32); 
                    RP.Const (RP.Bits arg4319)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4314), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4315), _), 32); 
                    RP.Const (RP.Bits arg4316)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4311), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4312), _), 32); 
                  RP.Const (RP.Bits arg4313)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4373 (Bits.of_int 8 5) && Bitops.eq 
            arg4374 (Bits.of_int 24 5) && Bitops.eq arg4371 
            (Bits.of_int 9 5) && Bitops.eq arg4372 (Bits.of_int 25 5) && 
          Bitops.eq arg4369 (Bits.of_int 10 5) && Bitops.eq arg4370 
            (Bits.of_int 26 5) && Bitops.eq arg4367 (Bits.of_int 11 5) && 
          Bitops.eq arg4368 (Bits.of_int 27 5) && Bitops.eq arg4365 
            (Bits.of_int 12 5) && Bitops.eq arg4366 (Bits.of_int 28 5) && 
          Bitops.eq arg4363 (Bits.of_int 13 5) && Bitops.eq arg4364 
            (Bits.of_int 29 5) && Bitops.eq arg4361 (Bits.of_int 14 5) && 
          Bitops.eq arg4362 (Bits.of_int 30 5) && Bitops.eq arg4359 
            (Bits.of_int 15 5) && Bitops.eq arg4360 (Bits.of_int 31 5) && 
          Bitops.eq arg4356 (Bits.of_int 16 5) && Bitops.eq arg4357 
            (Bits.of_int 0 1) && Bitops.eq arg4358 (Bits.of_int 8 32) && 
          Bitops.eq arg4353 (Bits.of_int 18 5) && Bitops.eq arg4354 
            (Bits.of_int 0 1) && Bitops.eq arg4355 (Bits.of_int 6 32) && 
          Bitops.eq arg4350 (Bits.of_int 19 5) && Bitops.eq arg4351 
            (Bits.of_int 0 1) && Bitops.eq arg4352 (Bits.of_int 5 32) && 
          Bitops.eq arg4347 (Bits.of_int 20 5) && Bitops.eq arg4348 
            (Bits.of_int 0 1) && Bitops.eq arg4349 (Bits.of_int 4 32) && 
          Bitops.eq arg4344 (Bits.of_int 21 5) && Bitops.eq arg4345 
            (Bits.of_int 0 1) && Bitops.eq arg4346 (Bits.of_int 3 32) && 
          Bitops.eq arg4341 (Bits.of_int 22 5) && Bitops.eq arg4342 
            (Bits.of_int 0 1) && Bitops.eq arg4343 (Bits.of_int 2 32) && 
          Bitops.eq arg4338 (Bits.of_int 23 5) && Bitops.eq arg4339 
            (Bits.of_int 0 1) && Bitops.eq arg4340 (Bits.of_int 1 32) && 
          Bitops.eq arg4335 (Bits.of_int 24 5) && Bitops.eq arg4336 
            (Bits.of_int 0 1) && Bitops.eq arg4337 (Bits.of_int 16 32) && 
          Bitops.eq arg4332 (Bits.of_int 25 5) && Bitops.eq arg4333 
            (Bits.of_int 0 1) && Bitops.eq arg4334 (Bits.of_int 15 32) && 
          Bitops.eq arg4329 (Bits.of_int 26 5) && Bitops.eq arg4330 
            (Bits.of_int 0 1) && Bitops.eq arg4331 (Bits.of_int 14 32) && 
          Bitops.eq arg4326 (Bits.of_int 27 5) && Bitops.eq arg4327 
            (Bits.of_int 0 1) && Bitops.eq arg4328 (Bits.of_int 13 32) && 
          Bitops.eq arg4323 (Bits.of_int 28 5) && Bitops.eq arg4324 
            (Bits.of_int 0 1) && Bitops.eq arg4325 (Bits.of_int 12 32) && 
          Bitops.eq arg4320 (Bits.of_int 29 5) && Bitops.eq arg4321 
            (Bits.of_int 0 1) && Bitops.eq arg4322 (Bits.of_int 11 32) && 
          Bitops.eq arg4317 (Bits.of_int 30 5) && Bitops.eq arg4318 
            (Bits.of_int 0 1) && Bitops.eq arg4319 (Bits.of_int 10 32) && 
          Bitops.eq arg4314 (Bits.of_int 31 5) && Bitops.eq arg4315 
            (Bits.of_int 0 1) && Bitops.eq arg4316 (Bits.of_int 9 32) && 
          Bitops.eq arg4311 (Bits.of_int 0 1) && Bitops.eq arg4312 
            (Bits.of_int 0 1) && Bitops.eq arg4313 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 17 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4437), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4438), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4435), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4436), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4433), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4434), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4431), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4432), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4429), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4430), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4427), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4428), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4425), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4426), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4423), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4424), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4420), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4421), _), 32); 
                    RP.Const (RP.Bits arg4422)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4417), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4418), _), 32); 
                    RP.Const (RP.Bits arg4419)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4414), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4415), _), 32); 
                    RP.Const (RP.Bits arg4416)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4411), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4412), _), 32); 
                    RP.Const (RP.Bits arg4413)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4408), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4409), _), 32); 
                    RP.Const (RP.Bits arg4410)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4405), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4406), _), 32); 
                    RP.Const (RP.Bits arg4407)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4402), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4403), _), 32); 
                    RP.Const (RP.Bits arg4404)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4399), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4400), _), 32); 
                    RP.Const (RP.Bits arg4401)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4396), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4397), _), 32); 
                    RP.Const (RP.Bits arg4398)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4393), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4394), _), 32); 
                    RP.Const (RP.Bits arg4395)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4390), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4391), _), 32); 
                    RP.Const (RP.Bits arg4392)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4387), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4388), _), 32); 
                    RP.Const (RP.Bits arg4389)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4384), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4385), _), 32); 
                    RP.Const (RP.Bits arg4386)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4381), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4382), _), 32); 
                    RP.Const (RP.Bits arg4383)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4378), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4379), _), 32); 
                    RP.Const (RP.Bits arg4380)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4375), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4376), _), 32); 
                  RP.Const (RP.Bits arg4377)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4437 (Bits.of_int 8 5) && Bitops.eq 
            arg4438 (Bits.of_int 24 5) && Bitops.eq arg4435 
            (Bits.of_int 9 5) && Bitops.eq arg4436 (Bits.of_int 25 5) && 
          Bitops.eq arg4433 (Bits.of_int 10 5) && Bitops.eq arg4434 
            (Bits.of_int 26 5) && Bitops.eq arg4431 (Bits.of_int 11 5) && 
          Bitops.eq arg4432 (Bits.of_int 27 5) && Bitops.eq arg4429 
            (Bits.of_int 12 5) && Bitops.eq arg4430 (Bits.of_int 28 5) && 
          Bitops.eq arg4427 (Bits.of_int 13 5) && Bitops.eq arg4428 
            (Bits.of_int 29 5) && Bitops.eq arg4425 (Bits.of_int 14 5) && 
          Bitops.eq arg4426 (Bits.of_int 30 5) && Bitops.eq arg4423 
            (Bits.of_int 15 5) && Bitops.eq arg4424 (Bits.of_int 31 5) && 
          Bitops.eq arg4420 (Bits.of_int 17 5) && Bitops.eq arg4421 
            (Bits.of_int 0 1) && Bitops.eq arg4422 (Bits.of_int 7 32) && 
          Bitops.eq arg4417 (Bits.of_int 18 5) && Bitops.eq arg4418 
            (Bits.of_int 0 1) && Bitops.eq arg4419 (Bits.of_int 6 32) && 
          Bitops.eq arg4414 (Bits.of_int 19 5) && Bitops.eq arg4415 
            (Bits.of_int 0 1) && Bitops.eq arg4416 (Bits.of_int 5 32) && 
          Bitops.eq arg4411 (Bits.of_int 20 5) && Bitops.eq arg4412 
            (Bits.of_int 0 1) && Bitops.eq arg4413 (Bits.of_int 4 32) && 
          Bitops.eq arg4408 (Bits.of_int 21 5) && Bitops.eq arg4409 
            (Bits.of_int 0 1) && Bitops.eq arg4410 (Bits.of_int 3 32) && 
          Bitops.eq arg4405 (Bits.of_int 22 5) && Bitops.eq arg4406 
            (Bits.of_int 0 1) && Bitops.eq arg4407 (Bits.of_int 2 32) && 
          Bitops.eq arg4402 (Bits.of_int 23 5) && Bitops.eq arg4403 
            (Bits.of_int 0 1) && Bitops.eq arg4404 (Bits.of_int 1 32) && 
          Bitops.eq arg4399 (Bits.of_int 24 5) && Bitops.eq arg4400 
            (Bits.of_int 0 1) && Bitops.eq arg4401 (Bits.of_int 16 32) && 
          Bitops.eq arg4396 (Bits.of_int 25 5) && Bitops.eq arg4397 
            (Bits.of_int 0 1) && Bitops.eq arg4398 (Bits.of_int 15 32) && 
          Bitops.eq arg4393 (Bits.of_int 26 5) && Bitops.eq arg4394 
            (Bits.of_int 0 1) && Bitops.eq arg4395 (Bits.of_int 14 32) && 
          Bitops.eq arg4390 (Bits.of_int 27 5) && Bitops.eq arg4391 
            (Bits.of_int 0 1) && Bitops.eq arg4392 (Bits.of_int 13 32) && 
          Bitops.eq arg4387 (Bits.of_int 28 5) && Bitops.eq arg4388 
            (Bits.of_int 0 1) && Bitops.eq arg4389 (Bits.of_int 12 32) && 
          Bitops.eq arg4384 (Bits.of_int 29 5) && Bitops.eq arg4385 
            (Bits.of_int 0 1) && Bitops.eq arg4386 (Bits.of_int 11 32) && 
          Bitops.eq arg4381 (Bits.of_int 30 5) && Bitops.eq arg4382 
            (Bits.of_int 0 1) && Bitops.eq arg4383 (Bits.of_int 10 32) && 
          Bitops.eq arg4378 (Bits.of_int 31 5) && Bitops.eq arg4379 
            (Bits.of_int 0 1) && Bitops.eq arg4380 (Bits.of_int 9 32) && 
          Bitops.eq arg4375 (Bits.of_int 0 1) && Bitops.eq arg4376 
            (Bits.of_int 0 1) && Bitops.eq arg4377 (Bits.of_int 16 32) && 
          Bitops.eq rd (Bits.of_int 16 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4502), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4503), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4500), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4501), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4498), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4499), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4496), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4497), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4494), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4495), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4492), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4493), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4490), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4491), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4487), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4488), _), 32); 
                    RP.Const (RP.Bits arg4489)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4484), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4485), _), 32); 
                    RP.Const (RP.Bits arg4486)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4481), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4482), _), 32); 
                    RP.Const (RP.Bits arg4483)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4478), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4479), _), 32); 
                    RP.Const (RP.Bits arg4480)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4475), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4476), _), 32); 
                    RP.Const (RP.Bits arg4477)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4472), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4473), _), 32); 
                    RP.Const (RP.Bits arg4474)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4469), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4470), _), 32); 
                    RP.Const (RP.Bits arg4471)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4466), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4467), _), 32); 
                    RP.Const (RP.Bits arg4468)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4463), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4464), _), 32); 
                    RP.Const (RP.Bits arg4465)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4460), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4461), _), 32); 
                    RP.Const (RP.Bits arg4462)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4457), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4458), _), 32); 
                    RP.Const (RP.Bits arg4459)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4454), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4455), _), 32); 
                    RP.Const (RP.Bits arg4456)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4451), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4452), _), 32); 
                    RP.Const (RP.Bits arg4453)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4448), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4449), _), 32); 
                    RP.Const (RP.Bits arg4450)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4445), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4446), _), 32); 
                    RP.Const (RP.Bits arg4447)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4442), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4443), _), 32); 
                    RP.Const (RP.Bits arg4444)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4439), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4440), _), 32); 
                  RP.Const (RP.Bits arg4441)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4502 (Bits.of_int 8 5) && Bitops.eq 
            arg4503 (Bits.of_int 24 5) && Bitops.eq arg4500 (Bits.of_int 9 
              5) && Bitops.eq arg4501 (Bits.of_int 25 5) && Bitops.eq arg4498 
            (Bits.of_int 10 5) && Bitops.eq arg4499 (Bits.of_int 26 5) && 
          Bitops.eq arg4496 (Bits.of_int 11 5) && Bitops.eq arg4497 
            (Bits.of_int 27 5) && Bitops.eq arg4494 (Bits.of_int 12 5) && 
          Bitops.eq arg4495 (Bits.of_int 28 5) && Bitops.eq arg4492 
            (Bits.of_int 13 5) && Bitops.eq arg4493 (Bits.of_int 29 5) && 
          Bitops.eq arg4490 (Bits.of_int 14 5) && Bitops.eq arg4491 
            (Bits.of_int 30 5) && Bitops.eq arg4487 (Bits.of_int 16 5) && 
          Bitops.eq arg4488 (Bits.of_int 0 1) && Bitops.eq arg4489 
            (Bits.of_int 8 32) && Bitops.eq arg4484 (Bits.of_int 17 5) && 
          Bitops.eq arg4485 (Bits.of_int 0 1) && Bitops.eq arg4486 
            (Bits.of_int 7 32) && Bitops.eq arg4481 (Bits.of_int 18 5) && 
          Bitops.eq arg4482 (Bits.of_int 0 1) && Bitops.eq arg4483 
            (Bits.of_int 6 32) && Bitops.eq arg4478 (Bits.of_int 19 5) && 
          Bitops.eq arg4479 (Bits.of_int 0 1) && Bitops.eq arg4480 
            (Bits.of_int 5 32) && Bitops.eq arg4475 (Bits.of_int 20 5) && 
          Bitops.eq arg4476 (Bits.of_int 0 1) && Bitops.eq arg4477 
            (Bits.of_int 4 32) && Bitops.eq arg4472 (Bits.of_int 21 5) && 
          Bitops.eq arg4473 (Bits.of_int 0 1) && Bitops.eq arg4474 
            (Bits.of_int 3 32) && Bitops.eq arg4469 (Bits.of_int 22 5) && 
          Bitops.eq arg4470 (Bits.of_int 0 1) && Bitops.eq arg4471 
            (Bits.of_int 2 32) && Bitops.eq arg4466 (Bits.of_int 23 5) && 
          Bitops.eq arg4467 (Bits.of_int 0 1) && Bitops.eq arg4468 
            (Bits.of_int 1 32) && Bitops.eq arg4463 (Bits.of_int 24 5) && 
          Bitops.eq arg4464 (Bits.of_int 0 1) && Bitops.eq arg4465 
            (Bits.of_int 16 32) && Bitops.eq arg4460 (Bits.of_int 25 5) && 
          Bitops.eq arg4461 (Bits.of_int 0 1) && Bitops.eq arg4462 
            (Bits.of_int 15 32) && Bitops.eq arg4457 (Bits.of_int 26 5) && 
          Bitops.eq arg4458 (Bits.of_int 0 1) && Bitops.eq arg4459 
            (Bits.of_int 14 32) && Bitops.eq arg4454 (Bits.of_int 27 5) && 
          Bitops.eq arg4455 (Bits.of_int 0 1) && Bitops.eq arg4456 
            (Bits.of_int 13 32) && Bitops.eq arg4451 (Bits.of_int 28 5) && 
          Bitops.eq arg4452 (Bits.of_int 0 1) && Bitops.eq arg4453 
            (Bits.of_int 12 32) && Bitops.eq arg4448 (Bits.of_int 29 5) && 
          Bitops.eq arg4449 (Bits.of_int 0 1) && Bitops.eq arg4450 
            (Bits.of_int 11 32) && Bitops.eq arg4445 (Bits.of_int 30 5) && 
          Bitops.eq arg4446 (Bits.of_int 0 1) && Bitops.eq arg4447 
            (Bits.of_int 10 32) && Bitops.eq arg4442 (Bits.of_int 31 5) && 
          Bitops.eq arg4443 (Bits.of_int 0 1) && Bitops.eq arg4444 
            (Bits.of_int 9 32) && Bitops.eq arg4439 (Bits.of_int 0 1) && 
          Bitops.eq arg4440 (Bits.of_int 0 1) && Bitops.eq arg4441 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 15 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4567), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4568), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4565), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4566), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4563), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4564), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4561), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4562), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4559), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4560), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4557), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4558), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4555), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4556), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4552), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4553), _), 32); 
                    RP.Const (RP.Bits arg4554)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4549), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4550), _), 32); 
                    RP.Const (RP.Bits arg4551)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4546), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4547), _), 32); 
                    RP.Const (RP.Bits arg4548)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4543), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4544), _), 32); 
                    RP.Const (RP.Bits arg4545)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4540), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4541), _), 32); 
                    RP.Const (RP.Bits arg4542)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4537), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4538), _), 32); 
                    RP.Const (RP.Bits arg4539)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4534), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4535), _), 32); 
                    RP.Const (RP.Bits arg4536)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4531), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4532), _), 32); 
                    RP.Const (RP.Bits arg4533)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4528), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4529), _), 32); 
                    RP.Const (RP.Bits arg4530)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4525), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4526), _), 32); 
                    RP.Const (RP.Bits arg4527)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4522), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4523), _), 32); 
                    RP.Const (RP.Bits arg4524)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4519), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4520), _), 32); 
                    RP.Const (RP.Bits arg4521)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4516), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4517), _), 32); 
                    RP.Const (RP.Bits arg4518)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4513), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4514), _), 32); 
                    RP.Const (RP.Bits arg4515)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4510), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4511), _), 32); 
                    RP.Const (RP.Bits arg4512)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4507), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4508), _), 32); 
                    RP.Const (RP.Bits arg4509)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4504), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4505), _), 32); 
                  RP.Const (RP.Bits arg4506)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4567 (Bits.of_int 8 5) && Bitops.eq 
            arg4568 (Bits.of_int 24 5) && Bitops.eq arg4565 (Bits.of_int 9 
              5) && Bitops.eq arg4566 (Bits.of_int 25 5) && Bitops.eq arg4563 
            (Bits.of_int 10 5) && Bitops.eq arg4564 (Bits.of_int 26 5) && 
          Bitops.eq arg4561 (Bits.of_int 11 5) && Bitops.eq arg4562 
            (Bits.of_int 27 5) && Bitops.eq arg4559 (Bits.of_int 12 5) && 
          Bitops.eq arg4560 (Bits.of_int 28 5) && Bitops.eq arg4557 
            (Bits.of_int 13 5) && Bitops.eq arg4558 (Bits.of_int 29 5) && 
          Bitops.eq arg4555 (Bits.of_int 15 5) && Bitops.eq arg4556 
            (Bits.of_int 31 5) && Bitops.eq arg4552 (Bits.of_int 16 5) && 
          Bitops.eq arg4553 (Bits.of_int 0 1) && Bitops.eq arg4554 
            (Bits.of_int 8 32) && Bitops.eq arg4549 (Bits.of_int 17 5) && 
          Bitops.eq arg4550 (Bits.of_int 0 1) && Bitops.eq arg4551 
            (Bits.of_int 7 32) && Bitops.eq arg4546 (Bits.of_int 18 5) && 
          Bitops.eq arg4547 (Bits.of_int 0 1) && Bitops.eq arg4548 
            (Bits.of_int 6 32) && Bitops.eq arg4543 (Bits.of_int 19 5) && 
          Bitops.eq arg4544 (Bits.of_int 0 1) && Bitops.eq arg4545 
            (Bits.of_int 5 32) && Bitops.eq arg4540 (Bits.of_int 20 5) && 
          Bitops.eq arg4541 (Bits.of_int 0 1) && Bitops.eq arg4542 
            (Bits.of_int 4 32) && Bitops.eq arg4537 (Bits.of_int 21 5) && 
          Bitops.eq arg4538 (Bits.of_int 0 1) && Bitops.eq arg4539 
            (Bits.of_int 3 32) && Bitops.eq arg4534 (Bits.of_int 22 5) && 
          Bitops.eq arg4535 (Bits.of_int 0 1) && Bitops.eq arg4536 
            (Bits.of_int 2 32) && Bitops.eq arg4531 (Bits.of_int 23 5) && 
          Bitops.eq arg4532 (Bits.of_int 0 1) && Bitops.eq arg4533 
            (Bits.of_int 1 32) && Bitops.eq arg4528 (Bits.of_int 24 5) && 
          Bitops.eq arg4529 (Bits.of_int 0 1) && Bitops.eq arg4530 
            (Bits.of_int 16 32) && Bitops.eq arg4525 (Bits.of_int 25 5) && 
          Bitops.eq arg4526 (Bits.of_int 0 1) && Bitops.eq arg4527 
            (Bits.of_int 15 32) && Bitops.eq arg4522 (Bits.of_int 26 5) && 
          Bitops.eq arg4523 (Bits.of_int 0 1) && Bitops.eq arg4524 
            (Bits.of_int 14 32) && Bitops.eq arg4519 (Bits.of_int 27 5) && 
          Bitops.eq arg4520 (Bits.of_int 0 1) && Bitops.eq arg4521 
            (Bits.of_int 13 32) && Bitops.eq arg4516 (Bits.of_int 28 5) && 
          Bitops.eq arg4517 (Bits.of_int 0 1) && Bitops.eq arg4518 
            (Bits.of_int 12 32) && Bitops.eq arg4513 (Bits.of_int 29 5) && 
          Bitops.eq arg4514 (Bits.of_int 0 1) && Bitops.eq arg4515 
            (Bits.of_int 11 32) && Bitops.eq arg4510 (Bits.of_int 30 5) && 
          Bitops.eq arg4511 (Bits.of_int 0 1) && Bitops.eq arg4512 
            (Bits.of_int 10 32) && Bitops.eq arg4507 (Bits.of_int 31 5) && 
          Bitops.eq arg4508 (Bits.of_int 0 1) && Bitops.eq arg4509 
            (Bits.of_int 9 32) && Bitops.eq arg4504 (Bits.of_int 0 1) && 
          Bitops.eq arg4505 (Bits.of_int 0 1) && Bitops.eq arg4506 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 14 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4632), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4633), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4630), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4631), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4628), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4629), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4626), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4627), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4624), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4625), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4622), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4623), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4620), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4621), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4617), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4618), _), 32); 
                    RP.Const (RP.Bits arg4619)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4614), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4615), _), 32); 
                    RP.Const (RP.Bits arg4616)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4611), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4612), _), 32); 
                    RP.Const (RP.Bits arg4613)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4608), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4609), _), 32); 
                    RP.Const (RP.Bits arg4610)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4605), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4606), _), 32); 
                    RP.Const (RP.Bits arg4607)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4602), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4603), _), 32); 
                    RP.Const (RP.Bits arg4604)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4599), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4600), _), 32); 
                    RP.Const (RP.Bits arg4601)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4596), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4597), _), 32); 
                    RP.Const (RP.Bits arg4598)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4593), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4594), _), 32); 
                    RP.Const (RP.Bits arg4595)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4590), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4591), _), 32); 
                    RP.Const (RP.Bits arg4592)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4587), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4588), _), 32); 
                    RP.Const (RP.Bits arg4589)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4584), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4585), _), 32); 
                    RP.Const (RP.Bits arg4586)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4581), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4582), _), 32); 
                    RP.Const (RP.Bits arg4583)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4578), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4579), _), 32); 
                    RP.Const (RP.Bits arg4580)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4575), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4576), _), 32); 
                    RP.Const (RP.Bits arg4577)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4572), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4573), _), 32); 
                    RP.Const (RP.Bits arg4574)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4569), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4570), _), 32); 
                  RP.Const (RP.Bits arg4571)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4632 (Bits.of_int 8 5) && Bitops.eq 
            arg4633 (Bits.of_int 24 5) && Bitops.eq arg4630 (Bits.of_int 9 
              5) && Bitops.eq arg4631 (Bits.of_int 25 5) && Bitops.eq arg4628 
            (Bits.of_int 10 5) && Bitops.eq arg4629 (Bits.of_int 26 5) && 
          Bitops.eq arg4626 (Bits.of_int 11 5) && Bitops.eq arg4627 
            (Bits.of_int 27 5) && Bitops.eq arg4624 (Bits.of_int 12 5) && 
          Bitops.eq arg4625 (Bits.of_int 28 5) && Bitops.eq arg4622 
            (Bits.of_int 14 5) && Bitops.eq arg4623 (Bits.of_int 30 5) && 
          Bitops.eq arg4620 (Bits.of_int 15 5) && Bitops.eq arg4621 
            (Bits.of_int 31 5) && Bitops.eq arg4617 (Bits.of_int 16 5) && 
          Bitops.eq arg4618 (Bits.of_int 0 1) && Bitops.eq arg4619 
            (Bits.of_int 8 32) && Bitops.eq arg4614 (Bits.of_int 17 5) && 
          Bitops.eq arg4615 (Bits.of_int 0 1) && Bitops.eq arg4616 
            (Bits.of_int 7 32) && Bitops.eq arg4611 (Bits.of_int 18 5) && 
          Bitops.eq arg4612 (Bits.of_int 0 1) && Bitops.eq arg4613 
            (Bits.of_int 6 32) && Bitops.eq arg4608 (Bits.of_int 19 5) && 
          Bitops.eq arg4609 (Bits.of_int 0 1) && Bitops.eq arg4610 
            (Bits.of_int 5 32) && Bitops.eq arg4605 (Bits.of_int 20 5) && 
          Bitops.eq arg4606 (Bits.of_int 0 1) && Bitops.eq arg4607 
            (Bits.of_int 4 32) && Bitops.eq arg4602 (Bits.of_int 21 5) && 
          Bitops.eq arg4603 (Bits.of_int 0 1) && Bitops.eq arg4604 
            (Bits.of_int 3 32) && Bitops.eq arg4599 (Bits.of_int 22 5) && 
          Bitops.eq arg4600 (Bits.of_int 0 1) && Bitops.eq arg4601 
            (Bits.of_int 2 32) && Bitops.eq arg4596 (Bits.of_int 23 5) && 
          Bitops.eq arg4597 (Bits.of_int 0 1) && Bitops.eq arg4598 
            (Bits.of_int 1 32) && Bitops.eq arg4593 (Bits.of_int 24 5) && 
          Bitops.eq arg4594 (Bits.of_int 0 1) && Bitops.eq arg4595 
            (Bits.of_int 16 32) && Bitops.eq arg4590 (Bits.of_int 25 5) && 
          Bitops.eq arg4591 (Bits.of_int 0 1) && Bitops.eq arg4592 
            (Bits.of_int 15 32) && Bitops.eq arg4587 (Bits.of_int 26 5) && 
          Bitops.eq arg4588 (Bits.of_int 0 1) && Bitops.eq arg4589 
            (Bits.of_int 14 32) && Bitops.eq arg4584 (Bits.of_int 27 5) && 
          Bitops.eq arg4585 (Bits.of_int 0 1) && Bitops.eq arg4586 
            (Bits.of_int 13 32) && Bitops.eq arg4581 (Bits.of_int 28 5) && 
          Bitops.eq arg4582 (Bits.of_int 0 1) && Bitops.eq arg4583 
            (Bits.of_int 12 32) && Bitops.eq arg4578 (Bits.of_int 29 5) && 
          Bitops.eq arg4579 (Bits.of_int 0 1) && Bitops.eq arg4580 
            (Bits.of_int 11 32) && Bitops.eq arg4575 (Bits.of_int 30 5) && 
          Bitops.eq arg4576 (Bits.of_int 0 1) && Bitops.eq arg4577 
            (Bits.of_int 10 32) && Bitops.eq arg4572 (Bits.of_int 31 5) && 
          Bitops.eq arg4573 (Bits.of_int 0 1) && Bitops.eq arg4574 
            (Bits.of_int 9 32) && Bitops.eq arg4569 (Bits.of_int 0 1) && 
          Bitops.eq arg4570 (Bits.of_int 0 1) && Bitops.eq arg4571 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 13 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4697), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4698), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4695), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4696), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4693), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4694), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4691), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4692), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4689), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4690), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4687), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4688), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4685), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4686), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4682), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4683), _), 32); 
                    RP.Const (RP.Bits arg4684)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4679), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4680), _), 32); 
                    RP.Const (RP.Bits arg4681)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4676), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4677), _), 32); 
                    RP.Const (RP.Bits arg4678)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4673), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4674), _), 32); 
                    RP.Const (RP.Bits arg4675)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4670), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4671), _), 32); 
                    RP.Const (RP.Bits arg4672)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4667), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4668), _), 32); 
                    RP.Const (RP.Bits arg4669)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4664), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4665), _), 32); 
                    RP.Const (RP.Bits arg4666)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4661), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4662), _), 32); 
                    RP.Const (RP.Bits arg4663)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4658), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4659), _), 32); 
                    RP.Const (RP.Bits arg4660)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4655), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4656), _), 32); 
                    RP.Const (RP.Bits arg4657)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4652), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4653), _), 32); 
                    RP.Const (RP.Bits arg4654)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4649), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4650), _), 32); 
                    RP.Const (RP.Bits arg4651)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4646), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4647), _), 32); 
                    RP.Const (RP.Bits arg4648)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4643), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4644), _), 32); 
                    RP.Const (RP.Bits arg4645)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4640), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4641), _), 32); 
                    RP.Const (RP.Bits arg4642)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4637), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4638), _), 32); 
                    RP.Const (RP.Bits arg4639)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4634), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4635), _), 32); 
                  RP.Const (RP.Bits arg4636)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4697 (Bits.of_int 8 5) && Bitops.eq 
            arg4698 (Bits.of_int 24 5) && Bitops.eq arg4695 (Bits.of_int 9 
              5) && Bitops.eq arg4696 (Bits.of_int 25 5) && Bitops.eq arg4693 
            (Bits.of_int 10 5) && Bitops.eq arg4694 (Bits.of_int 26 5) && 
          Bitops.eq arg4691 (Bits.of_int 11 5) && Bitops.eq arg4692 
            (Bits.of_int 27 5) && Bitops.eq arg4689 (Bits.of_int 13 5) && 
          Bitops.eq arg4690 (Bits.of_int 29 5) && Bitops.eq arg4687 
            (Bits.of_int 14 5) && Bitops.eq arg4688 (Bits.of_int 30 5) && 
          Bitops.eq arg4685 (Bits.of_int 15 5) && Bitops.eq arg4686 
            (Bits.of_int 31 5) && Bitops.eq arg4682 (Bits.of_int 16 5) && 
          Bitops.eq arg4683 (Bits.of_int 0 1) && Bitops.eq arg4684 
            (Bits.of_int 8 32) && Bitops.eq arg4679 (Bits.of_int 17 5) && 
          Bitops.eq arg4680 (Bits.of_int 0 1) && Bitops.eq arg4681 
            (Bits.of_int 7 32) && Bitops.eq arg4676 (Bits.of_int 18 5) && 
          Bitops.eq arg4677 (Bits.of_int 0 1) && Bitops.eq arg4678 
            (Bits.of_int 6 32) && Bitops.eq arg4673 (Bits.of_int 19 5) && 
          Bitops.eq arg4674 (Bits.of_int 0 1) && Bitops.eq arg4675 
            (Bits.of_int 5 32) && Bitops.eq arg4670 (Bits.of_int 20 5) && 
          Bitops.eq arg4671 (Bits.of_int 0 1) && Bitops.eq arg4672 
            (Bits.of_int 4 32) && Bitops.eq arg4667 (Bits.of_int 21 5) && 
          Bitops.eq arg4668 (Bits.of_int 0 1) && Bitops.eq arg4669 
            (Bits.of_int 3 32) && Bitops.eq arg4664 (Bits.of_int 22 5) && 
          Bitops.eq arg4665 (Bits.of_int 0 1) && Bitops.eq arg4666 
            (Bits.of_int 2 32) && Bitops.eq arg4661 (Bits.of_int 23 5) && 
          Bitops.eq arg4662 (Bits.of_int 0 1) && Bitops.eq arg4663 
            (Bits.of_int 1 32) && Bitops.eq arg4658 (Bits.of_int 24 5) && 
          Bitops.eq arg4659 (Bits.of_int 0 1) && Bitops.eq arg4660 
            (Bits.of_int 16 32) && Bitops.eq arg4655 (Bits.of_int 25 5) && 
          Bitops.eq arg4656 (Bits.of_int 0 1) && Bitops.eq arg4657 
            (Bits.of_int 15 32) && Bitops.eq arg4652 (Bits.of_int 26 5) && 
          Bitops.eq arg4653 (Bits.of_int 0 1) && Bitops.eq arg4654 
            (Bits.of_int 14 32) && Bitops.eq arg4649 (Bits.of_int 27 5) && 
          Bitops.eq arg4650 (Bits.of_int 0 1) && Bitops.eq arg4651 
            (Bits.of_int 13 32) && Bitops.eq arg4646 (Bits.of_int 28 5) && 
          Bitops.eq arg4647 (Bits.of_int 0 1) && Bitops.eq arg4648 
            (Bits.of_int 12 32) && Bitops.eq arg4643 (Bits.of_int 29 5) && 
          Bitops.eq arg4644 (Bits.of_int 0 1) && Bitops.eq arg4645 
            (Bits.of_int 11 32) && Bitops.eq arg4640 (Bits.of_int 30 5) && 
          Bitops.eq arg4641 (Bits.of_int 0 1) && Bitops.eq arg4642 
            (Bits.of_int 10 32) && Bitops.eq arg4637 (Bits.of_int 31 5) && 
          Bitops.eq arg4638 (Bits.of_int 0 1) && Bitops.eq arg4639 
            (Bits.of_int 9 32) && Bitops.eq arg4634 (Bits.of_int 0 1) && 
          Bitops.eq arg4635 (Bits.of_int 0 1) && Bitops.eq arg4636 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 12 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4762), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4763), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4760), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4761), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4758), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4759), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4756), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4757), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4754), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4755), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4752), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4753), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4750), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4751), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4747), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4748), _), 32); 
                    RP.Const (RP.Bits arg4749)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4744), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4745), _), 32); 
                    RP.Const (RP.Bits arg4746)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4741), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4742), _), 32); 
                    RP.Const (RP.Bits arg4743)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4738), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4739), _), 32); 
                    RP.Const (RP.Bits arg4740)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4735), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4736), _), 32); 
                    RP.Const (RP.Bits arg4737)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4732), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4733), _), 32); 
                    RP.Const (RP.Bits arg4734)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4729), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4730), _), 32); 
                    RP.Const (RP.Bits arg4731)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4726), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4727), _), 32); 
                    RP.Const (RP.Bits arg4728)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4723), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4724), _), 32); 
                    RP.Const (RP.Bits arg4725)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4720), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4721), _), 32); 
                    RP.Const (RP.Bits arg4722)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4717), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4718), _), 32); 
                    RP.Const (RP.Bits arg4719)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4714), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4715), _), 32); 
                    RP.Const (RP.Bits arg4716)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4711), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4712), _), 32); 
                    RP.Const (RP.Bits arg4713)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4708), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4709), _), 32); 
                    RP.Const (RP.Bits arg4710)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4705), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4706), _), 32); 
                    RP.Const (RP.Bits arg4707)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4702), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4703), _), 32); 
                    RP.Const (RP.Bits arg4704)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4699), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4700), _), 32); 
                  RP.Const (RP.Bits arg4701)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4762 (Bits.of_int 8 5) && Bitops.eq 
            arg4763 (Bits.of_int 24 5) && Bitops.eq arg4760 (Bits.of_int 9 
              5) && Bitops.eq arg4761 (Bits.of_int 25 5) && Bitops.eq arg4758 
            (Bits.of_int 10 5) && Bitops.eq arg4759 (Bits.of_int 26 5) && 
          Bitops.eq arg4756 (Bits.of_int 12 5) && Bitops.eq arg4757 
            (Bits.of_int 28 5) && Bitops.eq arg4754 (Bits.of_int 13 5) && 
          Bitops.eq arg4755 (Bits.of_int 29 5) && Bitops.eq arg4752 
            (Bits.of_int 14 5) && Bitops.eq arg4753 (Bits.of_int 30 5) && 
          Bitops.eq arg4750 (Bits.of_int 15 5) && Bitops.eq arg4751 
            (Bits.of_int 31 5) && Bitops.eq arg4747 (Bits.of_int 16 5) && 
          Bitops.eq arg4748 (Bits.of_int 0 1) && Bitops.eq arg4749 
            (Bits.of_int 8 32) && Bitops.eq arg4744 (Bits.of_int 17 5) && 
          Bitops.eq arg4745 (Bits.of_int 0 1) && Bitops.eq arg4746 
            (Bits.of_int 7 32) && Bitops.eq arg4741 (Bits.of_int 18 5) && 
          Bitops.eq arg4742 (Bits.of_int 0 1) && Bitops.eq arg4743 
            (Bits.of_int 6 32) && Bitops.eq arg4738 (Bits.of_int 19 5) && 
          Bitops.eq arg4739 (Bits.of_int 0 1) && Bitops.eq arg4740 
            (Bits.of_int 5 32) && Bitops.eq arg4735 (Bits.of_int 20 5) && 
          Bitops.eq arg4736 (Bits.of_int 0 1) && Bitops.eq arg4737 
            (Bits.of_int 4 32) && Bitops.eq arg4732 (Bits.of_int 21 5) && 
          Bitops.eq arg4733 (Bits.of_int 0 1) && Bitops.eq arg4734 
            (Bits.of_int 3 32) && Bitops.eq arg4729 (Bits.of_int 22 5) && 
          Bitops.eq arg4730 (Bits.of_int 0 1) && Bitops.eq arg4731 
            (Bits.of_int 2 32) && Bitops.eq arg4726 (Bits.of_int 23 5) && 
          Bitops.eq arg4727 (Bits.of_int 0 1) && Bitops.eq arg4728 
            (Bits.of_int 1 32) && Bitops.eq arg4723 (Bits.of_int 24 5) && 
          Bitops.eq arg4724 (Bits.of_int 0 1) && Bitops.eq arg4725 
            (Bits.of_int 16 32) && Bitops.eq arg4720 (Bits.of_int 25 5) && 
          Bitops.eq arg4721 (Bits.of_int 0 1) && Bitops.eq arg4722 
            (Bits.of_int 15 32) && Bitops.eq arg4717 (Bits.of_int 26 5) && 
          Bitops.eq arg4718 (Bits.of_int 0 1) && Bitops.eq arg4719 
            (Bits.of_int 14 32) && Bitops.eq arg4714 (Bits.of_int 27 5) && 
          Bitops.eq arg4715 (Bits.of_int 0 1) && Bitops.eq arg4716 
            (Bits.of_int 13 32) && Bitops.eq arg4711 (Bits.of_int 28 5) && 
          Bitops.eq arg4712 (Bits.of_int 0 1) && Bitops.eq arg4713 
            (Bits.of_int 12 32) && Bitops.eq arg4708 (Bits.of_int 29 5) && 
          Bitops.eq arg4709 (Bits.of_int 0 1) && Bitops.eq arg4710 
            (Bits.of_int 11 32) && Bitops.eq arg4705 (Bits.of_int 30 5) && 
          Bitops.eq arg4706 (Bits.of_int 0 1) && Bitops.eq arg4707 
            (Bits.of_int 10 32) && Bitops.eq arg4702 (Bits.of_int 31 5) && 
          Bitops.eq arg4703 (Bits.of_int 0 1) && Bitops.eq arg4704 
            (Bits.of_int 9 32) && Bitops.eq arg4699 (Bits.of_int 0 1) && 
          Bitops.eq arg4700 (Bits.of_int 0 1) && Bitops.eq arg4701 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 11 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4827), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4828), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4825), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4826), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4823), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4824), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4821), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4822), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4819), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4820), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4817), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4818), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4815), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4816), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4812), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4813), _), 32); 
                    RP.Const (RP.Bits arg4814)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4809), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4810), _), 32); 
                    RP.Const (RP.Bits arg4811)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4806), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4807), _), 32); 
                    RP.Const (RP.Bits arg4808)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4803), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4804), _), 32); 
                    RP.Const (RP.Bits arg4805)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4800), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4801), _), 32); 
                    RP.Const (RP.Bits arg4802)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4797), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4798), _), 32); 
                    RP.Const (RP.Bits arg4799)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4794), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4795), _), 32); 
                    RP.Const (RP.Bits arg4796)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4791), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4792), _), 32); 
                    RP.Const (RP.Bits arg4793)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4788), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4789), _), 32); 
                    RP.Const (RP.Bits arg4790)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4785), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4786), _), 32); 
                    RP.Const (RP.Bits arg4787)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4782), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4783), _), 32); 
                    RP.Const (RP.Bits arg4784)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4779), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4780), _), 32); 
                    RP.Const (RP.Bits arg4781)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4776), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4777), _), 32); 
                    RP.Const (RP.Bits arg4778)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4773), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4774), _), 32); 
                    RP.Const (RP.Bits arg4775)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4770), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4771), _), 32); 
                    RP.Const (RP.Bits arg4772)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4767), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4768), _), 32); 
                    RP.Const (RP.Bits arg4769)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4764), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4765), _), 32); 
                  RP.Const (RP.Bits arg4766)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4827 (Bits.of_int 8 5) && Bitops.eq 
            arg4828 (Bits.of_int 24 5) && Bitops.eq arg4825 (Bits.of_int 9 
              5) && Bitops.eq arg4826 (Bits.of_int 25 5) && Bitops.eq arg4823 
            (Bits.of_int 11 5) && Bitops.eq arg4824 (Bits.of_int 27 5) && 
          Bitops.eq arg4821 (Bits.of_int 12 5) && Bitops.eq arg4822 
            (Bits.of_int 28 5) && Bitops.eq arg4819 (Bits.of_int 13 5) && 
          Bitops.eq arg4820 (Bits.of_int 29 5) && Bitops.eq arg4817 
            (Bits.of_int 14 5) && Bitops.eq arg4818 (Bits.of_int 30 5) && 
          Bitops.eq arg4815 (Bits.of_int 15 5) && Bitops.eq arg4816 
            (Bits.of_int 31 5) && Bitops.eq arg4812 (Bits.of_int 16 5) && 
          Bitops.eq arg4813 (Bits.of_int 0 1) && Bitops.eq arg4814 
            (Bits.of_int 8 32) && Bitops.eq arg4809 (Bits.of_int 17 5) && 
          Bitops.eq arg4810 (Bits.of_int 0 1) && Bitops.eq arg4811 
            (Bits.of_int 7 32) && Bitops.eq arg4806 (Bits.of_int 18 5) && 
          Bitops.eq arg4807 (Bits.of_int 0 1) && Bitops.eq arg4808 
            (Bits.of_int 6 32) && Bitops.eq arg4803 (Bits.of_int 19 5) && 
          Bitops.eq arg4804 (Bits.of_int 0 1) && Bitops.eq arg4805 
            (Bits.of_int 5 32) && Bitops.eq arg4800 (Bits.of_int 20 5) && 
          Bitops.eq arg4801 (Bits.of_int 0 1) && Bitops.eq arg4802 
            (Bits.of_int 4 32) && Bitops.eq arg4797 (Bits.of_int 21 5) && 
          Bitops.eq arg4798 (Bits.of_int 0 1) && Bitops.eq arg4799 
            (Bits.of_int 3 32) && Bitops.eq arg4794 (Bits.of_int 22 5) && 
          Bitops.eq arg4795 (Bits.of_int 0 1) && Bitops.eq arg4796 
            (Bits.of_int 2 32) && Bitops.eq arg4791 (Bits.of_int 23 5) && 
          Bitops.eq arg4792 (Bits.of_int 0 1) && Bitops.eq arg4793 
            (Bits.of_int 1 32) && Bitops.eq arg4788 (Bits.of_int 24 5) && 
          Bitops.eq arg4789 (Bits.of_int 0 1) && Bitops.eq arg4790 
            (Bits.of_int 16 32) && Bitops.eq arg4785 (Bits.of_int 25 5) && 
          Bitops.eq arg4786 (Bits.of_int 0 1) && Bitops.eq arg4787 
            (Bits.of_int 15 32) && Bitops.eq arg4782 (Bits.of_int 26 5) && 
          Bitops.eq arg4783 (Bits.of_int 0 1) && Bitops.eq arg4784 
            (Bits.of_int 14 32) && Bitops.eq arg4779 (Bits.of_int 27 5) && 
          Bitops.eq arg4780 (Bits.of_int 0 1) && Bitops.eq arg4781 
            (Bits.of_int 13 32) && Bitops.eq arg4776 (Bits.of_int 28 5) && 
          Bitops.eq arg4777 (Bits.of_int 0 1) && Bitops.eq arg4778 
            (Bits.of_int 12 32) && Bitops.eq arg4773 (Bits.of_int 29 5) && 
          Bitops.eq arg4774 (Bits.of_int 0 1) && Bitops.eq arg4775 
            (Bits.of_int 11 32) && Bitops.eq arg4770 (Bits.of_int 30 5) && 
          Bitops.eq arg4771 (Bits.of_int 0 1) && Bitops.eq arg4772 
            (Bits.of_int 10 32) && Bitops.eq arg4767 (Bits.of_int 31 5) && 
          Bitops.eq arg4768 (Bits.of_int 0 1) && Bitops.eq arg4769 
            (Bits.of_int 9 32) && Bitops.eq arg4764 (Bits.of_int 0 1) && 
          Bitops.eq arg4765 (Bits.of_int 0 1) && Bitops.eq arg4766 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 10 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4892), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4893), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4890), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4891), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4888), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4889), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4886), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4887), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4884), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4885), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4882), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4883), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4880), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4881), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4877), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4878), _), 32); 
                    RP.Const (RP.Bits arg4879)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4874), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4875), _), 32); 
                    RP.Const (RP.Bits arg4876)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4871), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4872), _), 32); 
                    RP.Const (RP.Bits arg4873)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4868), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4869), _), 32); 
                    RP.Const (RP.Bits arg4870)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4865), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4866), _), 32); 
                    RP.Const (RP.Bits arg4867)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4862), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4863), _), 32); 
                    RP.Const (RP.Bits arg4864)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4859), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4860), _), 32); 
                    RP.Const (RP.Bits arg4861)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4856), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4857), _), 32); 
                    RP.Const (RP.Bits arg4858)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4853), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4854), _), 32); 
                    RP.Const (RP.Bits arg4855)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4850), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4851), _), 32); 
                    RP.Const (RP.Bits arg4852)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4847), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4848), _), 32); 
                    RP.Const (RP.Bits arg4849)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4844), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4845), _), 32); 
                    RP.Const (RP.Bits arg4846)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4841), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4842), _), 32); 
                    RP.Const (RP.Bits arg4843)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4838), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4839), _), 32); 
                    RP.Const (RP.Bits arg4840)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4835), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4836), _), 32); 
                    RP.Const (RP.Bits arg4837)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4832), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4833), _), 32); 
                    RP.Const (RP.Bits arg4834)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4829), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4830), _), 32); 
                  RP.Const (RP.Bits arg4831)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4892 (Bits.of_int 8 5) && Bitops.eq 
            arg4893 (Bits.of_int 24 5) && Bitops.eq arg4890 (Bits.of_int 10 
              5) && Bitops.eq arg4891 (Bits.of_int 26 5) && Bitops.eq arg4888 
            (Bits.of_int 11 5) && Bitops.eq arg4889 (Bits.of_int 27 5) && 
          Bitops.eq arg4886 (Bits.of_int 12 5) && Bitops.eq arg4887 
            (Bits.of_int 28 5) && Bitops.eq arg4884 (Bits.of_int 13 5) && 
          Bitops.eq arg4885 (Bits.of_int 29 5) && Bitops.eq arg4882 
            (Bits.of_int 14 5) && Bitops.eq arg4883 (Bits.of_int 30 5) && 
          Bitops.eq arg4880 (Bits.of_int 15 5) && Bitops.eq arg4881 
            (Bits.of_int 31 5) && Bitops.eq arg4877 (Bits.of_int 16 5) && 
          Bitops.eq arg4878 (Bits.of_int 0 1) && Bitops.eq arg4879 
            (Bits.of_int 8 32) && Bitops.eq arg4874 (Bits.of_int 17 5) && 
          Bitops.eq arg4875 (Bits.of_int 0 1) && Bitops.eq arg4876 
            (Bits.of_int 7 32) && Bitops.eq arg4871 (Bits.of_int 18 5) && 
          Bitops.eq arg4872 (Bits.of_int 0 1) && Bitops.eq arg4873 
            (Bits.of_int 6 32) && Bitops.eq arg4868 (Bits.of_int 19 5) && 
          Bitops.eq arg4869 (Bits.of_int 0 1) && Bitops.eq arg4870 
            (Bits.of_int 5 32) && Bitops.eq arg4865 (Bits.of_int 20 5) && 
          Bitops.eq arg4866 (Bits.of_int 0 1) && Bitops.eq arg4867 
            (Bits.of_int 4 32) && Bitops.eq arg4862 (Bits.of_int 21 5) && 
          Bitops.eq arg4863 (Bits.of_int 0 1) && Bitops.eq arg4864 
            (Bits.of_int 3 32) && Bitops.eq arg4859 (Bits.of_int 22 5) && 
          Bitops.eq arg4860 (Bits.of_int 0 1) && Bitops.eq arg4861 
            (Bits.of_int 2 32) && Bitops.eq arg4856 (Bits.of_int 23 5) && 
          Bitops.eq arg4857 (Bits.of_int 0 1) && Bitops.eq arg4858 
            (Bits.of_int 1 32) && Bitops.eq arg4853 (Bits.of_int 24 5) && 
          Bitops.eq arg4854 (Bits.of_int 0 1) && Bitops.eq arg4855 
            (Bits.of_int 16 32) && Bitops.eq arg4850 (Bits.of_int 25 5) && 
          Bitops.eq arg4851 (Bits.of_int 0 1) && Bitops.eq arg4852 
            (Bits.of_int 15 32) && Bitops.eq arg4847 (Bits.of_int 26 5) && 
          Bitops.eq arg4848 (Bits.of_int 0 1) && Bitops.eq arg4849 
            (Bits.of_int 14 32) && Bitops.eq arg4844 (Bits.of_int 27 5) && 
          Bitops.eq arg4845 (Bits.of_int 0 1) && Bitops.eq arg4846 
            (Bits.of_int 13 32) && Bitops.eq arg4841 (Bits.of_int 28 5) && 
          Bitops.eq arg4842 (Bits.of_int 0 1) && Bitops.eq arg4843 
            (Bits.of_int 12 32) && Bitops.eq arg4838 (Bits.of_int 29 5) && 
          Bitops.eq arg4839 (Bits.of_int 0 1) && Bitops.eq arg4840 
            (Bits.of_int 11 32) && Bitops.eq arg4835 (Bits.of_int 30 5) && 
          Bitops.eq arg4836 (Bits.of_int 0 1) && Bitops.eq arg4837 
            (Bits.of_int 10 32) && Bitops.eq arg4832 (Bits.of_int 31 5) && 
          Bitops.eq arg4833 (Bits.of_int 0 1) && Bitops.eq arg4834 
            (Bits.of_int 9 32) && Bitops.eq arg4829 (Bits.of_int 0 1) && 
          Bitops.eq arg4830 (Bits.of_int 0 1) && Bitops.eq arg4831 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 9 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
            32, RP.Const (RP.Bits arg4957), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits arg4958), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4955), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4956), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4953), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4954), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4951), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4952), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4949), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4950), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4947), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4948), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4945), _), RP.Fetch (RP.Cell ('r', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4946), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4942), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4943), _), 32); 
                    RP.Const (RP.Bits arg4944)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4939), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4940), _), 32); 
                    RP.Const (RP.Bits arg4941)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4936), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4937), _), 32); 
                    RP.Const (RP.Bits arg4938)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4933), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4934), _), 32); 
                    RP.Const (RP.Bits arg4935)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4930), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4931), _), 32); 
                    RP.Const (RP.Bits arg4932)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4927), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4928), _), 32); 
                    RP.Const (RP.Bits arg4929)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4924), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4925), _), 32); 
                    RP.Const (RP.Bits arg4926)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4921), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4922), _), 32); 
                    RP.Const (RP.Bits arg4923)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4918), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4919), _), 32); 
                    RP.Const (RP.Bits arg4920)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4915), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4916), _), 32); 
                    RP.Const (RP.Bits arg4917)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4912), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4913), _), 32); 
                    RP.Const (RP.Bits arg4914)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4909), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4910), _), 32); 
                    RP.Const (RP.Bits arg4911)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4906), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4907), _), 32); 
                    RP.Const (RP.Bits arg4908)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4903), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4904), _), 32); 
                    RP.Const (RP.Bits arg4905)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4900), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4901), _), 32); 
                    RP.Const (RP.Bits arg4902)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4897), _), 
              RP.Fetch (RP.Cell ('w', Rtl.Identity, 32, 
                RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 
                    32, RP.Const (RP.Bits arg4898), _), 32); 
                    RP.Const (RP.Bits arg4899)]), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('W', Rtl.Identity, 32, 
              RP.Const (RP.Bits arg4894), _), 
              RP.App (("sub", [32]), [RP.Fetch (RP.Cell ('W', Rtl.Identity, 32, 
                  RP.Const (RP.Bits arg4895), _), 32); 
                  RP.Const (RP.Bits arg4896)]), 32)); (RP.Const (RP.Bool true), 
            RP.Store (RP.Cell ('r', Rtl.Identity, 32, RP.Const (RP.Bits rd), 
              _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                  32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                    Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4957 (Bits.of_int 9 5) && Bitops.eq 
            arg4958 (Bits.of_int 25 5) && Bitops.eq arg4955 (Bits.of_int 10 
              5) && Bitops.eq arg4956 (Bits.of_int 26 5) && Bitops.eq arg4953 
            (Bits.of_int 11 5) && Bitops.eq arg4954 (Bits.of_int 27 5) && 
          Bitops.eq arg4951 (Bits.of_int 12 5) && Bitops.eq arg4952 
            (Bits.of_int 28 5) && Bitops.eq arg4949 (Bits.of_int 13 5) && 
          Bitops.eq arg4950 (Bits.of_int 29 5) && Bitops.eq arg4947 
            (Bits.of_int 14 5) && Bitops.eq arg4948 (Bits.of_int 30 5) && 
          Bitops.eq arg4945 (Bits.of_int 15 5) && Bitops.eq arg4946 
            (Bits.of_int 31 5) && Bitops.eq arg4942 (Bits.of_int 16 5) && 
          Bitops.eq arg4943 (Bits.of_int 0 1) && Bitops.eq arg4944 
            (Bits.of_int 8 32) && Bitops.eq arg4939 (Bits.of_int 17 5) && 
          Bitops.eq arg4940 (Bits.of_int 0 1) && Bitops.eq arg4941 
            (Bits.of_int 7 32) && Bitops.eq arg4936 (Bits.of_int 18 5) && 
          Bitops.eq arg4937 (Bits.of_int 0 1) && Bitops.eq arg4938 
            (Bits.of_int 6 32) && Bitops.eq arg4933 (Bits.of_int 19 5) && 
          Bitops.eq arg4934 (Bits.of_int 0 1) && Bitops.eq arg4935 
            (Bits.of_int 5 32) && Bitops.eq arg4930 (Bits.of_int 20 5) && 
          Bitops.eq arg4931 (Bits.of_int 0 1) && Bitops.eq arg4932 
            (Bits.of_int 4 32) && Bitops.eq arg4927 (Bits.of_int 21 5) && 
          Bitops.eq arg4928 (Bits.of_int 0 1) && Bitops.eq arg4929 
            (Bits.of_int 3 32) && Bitops.eq arg4924 (Bits.of_int 22 5) && 
          Bitops.eq arg4925 (Bits.of_int 0 1) && Bitops.eq arg4926 
            (Bits.of_int 2 32) && Bitops.eq arg4921 (Bits.of_int 23 5) && 
          Bitops.eq arg4922 (Bits.of_int 0 1) && Bitops.eq arg4923 
            (Bits.of_int 1 32) && Bitops.eq arg4918 (Bits.of_int 24 5) && 
          Bitops.eq arg4919 (Bits.of_int 0 1) && Bitops.eq arg4920 
            (Bits.of_int 16 32) && Bitops.eq arg4915 (Bits.of_int 25 5) && 
          Bitops.eq arg4916 (Bits.of_int 0 1) && Bitops.eq arg4917 
            (Bits.of_int 15 32) && Bitops.eq arg4912 (Bits.of_int 26 5) && 
          Bitops.eq arg4913 (Bits.of_int 0 1) && Bitops.eq arg4914 
            (Bits.of_int 14 32) && Bitops.eq arg4909 (Bits.of_int 27 5) && 
          Bitops.eq arg4910 (Bits.of_int 0 1) && Bitops.eq arg4911 
            (Bits.of_int 13 32) && Bitops.eq arg4906 (Bits.of_int 28 5) && 
          Bitops.eq arg4907 (Bits.of_int 0 1) && Bitops.eq arg4908 
            (Bits.of_int 12 32) && Bitops.eq arg4903 (Bits.of_int 29 5) && 
          Bitops.eq arg4904 (Bits.of_int 0 1) && Bitops.eq arg4905 
            (Bits.of_int 11 32) && Bitops.eq arg4900 (Bits.of_int 30 5) && 
          Bitops.eq arg4901 (Bits.of_int 0 1) && Bitops.eq arg4902 
            (Bits.of_int 10 32) && Bitops.eq arg4897 (Bits.of_int 31 5) && 
          Bitops.eq arg4898 (Bits.of_int 0 1) && Bitops.eq arg4899 
            (Bits.of_int 9 32) && Bitops.eq arg4894 (Bits.of_int 0 1) && 
          Bitops.eq arg4895 (Bits.of_int 0 1) && Bitops.eq arg4896 
            (Bits.of_int 16 32) && Bitops.eq rd (Bits.of_int 8 5)) -> 
           Instruction.restore (Bits.to_nativeint rs1) (Instruction.rmode 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool false), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4959), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4959 (Bits.of_int 5 3)) -> 
           Instruction.bn (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), [RP.Fetch (RP.Slice (1, 22, 
            RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4960), _)), 
            1); RP.Const (RP.Bits arg4961)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4962), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4960 (Bits.of_int 0 3) && Bitops.eq 
            arg4961 (Bits.of_int 0 1) && Bitops.eq arg4962 
            (Bits.of_int 5 3)) -> Instruction.be (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), 
          [RP.App (("or", [1]), [RP.Fetch (RP.Slice (1, 22, RP.Cell ('i', 
                Rtl.Identity, 32, RP.Const (RP.Bits arg4965), _)), 1); 
              RP.App (("xor", [1]), [RP.Fetch (RP.Slice (1, 23, RP.Cell ('i', 
                    Rtl.Identity, 32, RP.Const (RP.Bits arg4964), _)), 1); 
                  RP.Fetch (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                      RP.Const (RP.Bits arg4963), _)), 1)])]); 
            RP.Const (RP.Bits arg4966)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4967), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4965 (Bits.of_int 0 3) && Bitops.eq 
            arg4964 (Bits.of_int 0 3) && Bitops.eq arg4963 (Bits.of_int 0 3) && 
          Bitops.eq arg4966 (Bits.of_int 0 1) && Bitops.eq arg4967 
            (Bits.of_int 5 3)) -> Instruction.ble (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), [RP.App (("xor", [1]), 
            [RP.Fetch (RP.Slice (1, 23, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg4969), _)), 1); RP.Fetch (RP.Slice (1, 21, 
                RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4968), 
                  _)), 1)]); RP.Const (RP.Bits arg4970)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4971), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4969 (Bits.of_int 0 3) && Bitops.eq 
            arg4968 (Bits.of_int 0 3) && Bitops.eq arg4970 (Bits.of_int 0 1) && 
          Bitops.eq arg4971 (Bits.of_int 5 3)) -> 
           Instruction.bl (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), [RP.App (("or", [1]), 
            [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', Rtl.Identity, 32, 
                RP.Const (RP.Bits arg4973), _)), 1); RP.Fetch (RP.Slice (1, 22, 
                RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4972), 
                  _)), 1)]); RP.Const (RP.Bits arg4974)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4975), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4973 (Bits.of_int 0 3) && Bitops.eq 
            arg4972 (Bits.of_int 0 3) && Bitops.eq arg4974 (Bits.of_int 0 1) && 
          Bitops.eq arg4975 (Bits.of_int 5 3)) -> 
           Instruction.bleu (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), [RP.Fetch (RP.Slice (1, 20, 
            RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4976), _)), 
            1); RP.Const (RP.Bits arg4977)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4978), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4976 (Bits.of_int 0 3) && Bitops.eq 
            arg4977 (Bits.of_int 0 1) && Bitops.eq arg4978 
            (Bits.of_int 5 3)) -> Instruction.bcs (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), [RP.Fetch (RP.Slice (1, 23, 
            RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4979), _)), 
            1); RP.Const (RP.Bits arg4980)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4981), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4979 (Bits.of_int 0 3) && Bitops.eq 
            arg4980 (Bits.of_int 0 1) && Bitops.eq arg4981 
            (Bits.of_int 5 3)) -> Instruction.bneg (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), [RP.Fetch (RP.Slice (1, 21, 
            RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4982), _)), 
            1); RP.Const (RP.Bits arg4983)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4984), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4982 (Bits.of_int 0 3) && Bitops.eq 
            arg4983 (Bits.of_int 0 1) && Bitops.eq arg4984 
            (Bits.of_int 5 3)) -> Instruction.bvs (Bits.to_nativeint target) 
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4985), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4985 (Bits.of_int 5 3)) -> 
           Instruction.ba (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), 
          [RP.App (("com", [1]), [RP.Fetch (RP.Slice (1, 22, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4986), _)), 
              1)]); RP.Const (RP.Bits arg4987)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4988), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4986 (Bits.of_int 0 3) && Bitops.eq 
            arg4987 (Bits.of_int 0 1) && Bitops.eq arg4988 
            (Bits.of_int 5 3)) -> Instruction.bne (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), [RP.App (("com", [1]), 
            [RP.App (("or", [1]), [RP.Fetch (RP.Slice (1, 22, RP.Cell ('i', 
                  Rtl.Identity, 32, RP.Const (RP.Bits arg4991), _)), 1); 
                RP.App (("xor", [1]), [RP.Fetch (RP.Slice (1, 23, RP.Cell ('i', 
                      Rtl.Identity, 32, RP.Const (RP.Bits arg4990), _)), 1); 
                    RP.Fetch (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                        RP.Const (RP.Bits arg4989), _)), 1)])])]); 
            RP.Const (RP.Bits arg4992)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4993), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4991 (Bits.of_int 0 3) && Bitops.eq 
            arg4990 (Bits.of_int 0 3) && Bitops.eq arg4989 (Bits.of_int 0 3) && 
          Bitops.eq arg4992 (Bits.of_int 0 1) && Bitops.eq arg4993 
            (Bits.of_int 5 3)) -> Instruction.bg (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), [RP.App (("com", [1]), 
            [RP.App (("xor", [1]), [RP.Fetch (RP.Slice (1, 23, RP.Cell ('i', 
                  Rtl.Identity, 32, RP.Const (RP.Bits arg4995), _)), 1); 
                RP.Fetch (RP.Slice (1, 21, RP.Cell ('i', Rtl.Identity, 32, 
                    RP.Const (RP.Bits arg4994), _)), 1)])]); 
            RP.Const (RP.Bits arg4996)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg4997), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4995 (Bits.of_int 0 3) && Bitops.eq 
            arg4994 (Bits.of_int 0 3) && Bitops.eq arg4996 (Bits.of_int 0 1) && 
          Bitops.eq arg4997 (Bits.of_int 5 3)) -> 
           Instruction.bge (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), [RP.App (("com", [1]), 
            [RP.App (("or", [1]), [RP.Fetch (RP.Slice (1, 20, RP.Cell ('i', 
                  Rtl.Identity, 32, RP.Const (RP.Bits arg4999), _)), 1); 
                RP.Fetch (RP.Slice (1, 22, RP.Cell ('i', Rtl.Identity, 32, 
                    RP.Const (RP.Bits arg4998), _)), 1)])]); 
            RP.Const (RP.Bits arg5000)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5001), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg4999 (Bits.of_int 0 3) && Bitops.eq 
            arg4998 (Bits.of_int 0 3) && Bitops.eq arg5000 (Bits.of_int 0 1) && 
          Bitops.eq arg5001 (Bits.of_int 5 3)) -> 
           Instruction.bgu (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), 
          [RP.App (("com", [1]), [RP.Fetch (RP.Slice (1, 20, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5002), _)), 
              1)]); RP.Const (RP.Bits arg5003)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5004), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg5002 (Bits.of_int 0 3) && Bitops.eq 
            arg5003 (Bits.of_int 0 1) && Bitops.eq arg5004 
            (Bits.of_int 5 3)) -> Instruction.bcc (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), 
          [RP.App (("com", [1]), [RP.Fetch (RP.Slice (1, 23, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5005), _)), 
              1)]); RP.Const (RP.Bits arg5006)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5007), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg5005 (Bits.of_int 0 3) && Bitops.eq 
            arg5006 (Bits.of_int 0 1) && Bitops.eq arg5007 
            (Bits.of_int 5 3)) -> Instruction.bpos (Bits.to_nativeint target) 
      | RP.Rtl [(RP.App (("ne", [1]), 
          [RP.App (("com", [1]), [RP.Fetch (RP.Slice (1, 21, 
              RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5008), _)), 
              1)]); RP.Const (RP.Bits arg5009)]), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5010), 
            _), RP.Const (RP.Bits target), 32))] 
      when Base.to_bool (Bitops.eq arg5008 (Bits.of_int 0 3) && Bitops.eq 
            arg5009 (Bits.of_int 0 1) && Bitops.eq arg5010 
            (Bits.of_int 5 3)) -> Instruction.bvc (Bits.to_nativeint target) 
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg5012), _), 
            RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg5013)]), 
            32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('i', Rtl.Identity, 
                32, RP.Const (RP.Bits arg5011), _), 32), 32))] 
      when Base.to_bool (Bitops.fits_signed arg5013 13 && Bitops.eq arg5012 
            (Bits.of_int 5 3) && Bitops.eq arg5011 (Bits.of_int 4 3)) -> 
           Instruction.jmpl (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.imode (Bits.to_nativeint arg5013))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5015), 
            _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('i', Rtl.Identity, 
                32, RP.Const (RP.Bits arg5014), _), 32), 32))] 
      when Base.to_bool (Bitops.eq arg5015 (Bits.of_int 5 3) && Bitops.eq 
            arg5014 (Bits.of_int 4 3)) -> 
           Instruction.jmpl (Instruction.generala (Bits.to_nativeint rs1) 
                 (Instruction.rmode (Bits.to_nativeint rs2))) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg5017), _), 
            RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 32, 
                RP.Const (RP.Bits rs1), _), 32); RP.Const (RP.Bits arg5018)]), 
            32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('i', Rtl.Identity, 
                32, RP.Const (RP.Bits arg5016), _), 32), 32))] 
      when Base.to_bool (Bitops.fits_signed arg5018 13 && Bitops.eq arg5017 
            (Bits.of_int 5 3) && Bitops.eq arg5016 (Bits.of_int 4 3)) -> 
           Instruction.jmpl (Instruction.dispa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint arg5018)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5020), 
            _), RP.Const (RP.Bits arg5021), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('i', Rtl.Identity, 
                32, RP.Const (RP.Bits arg5019), _), 32), 32))] 
      when Base.to_bool (Bitops.fits_signed arg5021 13 && Bitops.eq arg5020 
            (Bits.of_int 5 3) && Bitops.eq arg5019 (Bits.of_int 4 3)) -> 
           Instruction.jmpl (Instruction.absolutea (Bits.to_nativeint arg5021)) 
             (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('i', Rtl.Identity, 32, RP.Const (RP.Bits arg5023), 
            _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('r', Rtl.Identity, 
                32, RP.Const (RP.Bits rs1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rs2), _), 32)]), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('i', Rtl.Identity, 
                32, RP.Const (RP.Bits arg5022), _), 32), 32))] 
      when Base.to_bool (Bitops.eq arg5023 (Bits.of_int 5 3) && Bitops.eq 
            arg5022 (Bits.of_int 4 3)) -> 
           Instruction.jmpl (Instruction.indexa (Bits.to_nativeint rs1) 
                 (Bits.to_nativeint rs2)) (Bits.to_nativeint rd) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('i', Rtl.Identity, 
            32, RP.Const (RP.Bits arg5025), _), RP.Fetch (RP.Cell ('r', 
              Rtl.Identity, 32, RP.Const (RP.Bits rs1), _), 32), 32)); 
          (RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 32, 
              RP.Const (RP.Bits rd), _), RP.Fetch (RP.Cell ('i', Rtl.Identity, 
                32, RP.Const (RP.Bits arg5024), _), 32), 32))] 
      when Base.to_bool (Bitops.eq arg5025 (Bits.of_int 5 3) && Bitops.eq 
            arg5024 (Bits.of_int 4 3)) -> 
           Instruction.jmpl (Instruction.indirecta (Bits.to_nativeint rs1)) 
             (Bits.to_nativeint rd) 
      
      ) 
  end



module Make (Instruction : MachineInstance.S) = struct 
    
    module RP = Rtl.Private
    
    module B = Bits
    
    module BO = Bitops
  exception Error
  let (&&) x y = Base.lgand x y

    let defaultOfInstruction rtl = 
      (match rtl with
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('m', Rtl.Identity, 32, RP.Const (RP.Bits addr), 
            _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 
                32, RP.Const (RP.Bits arg1), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rop), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg1 
            (Bitops.add addr (Bitops.zx (Bits.of_int 0 2) 28))) -> 
           Instruction.add (Bits.to_nativeint addr) (Bits.to_nativeint rop) 
             (Instruction.amode_reify(Instruction.short ()))
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('m', Rtl.Identity, 32, RP.Const (RP.Bits addr), 
            _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 
                32, RP.Const (RP.Bits arg2), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rop), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg2 
            (Bitops.add addr (Bitops.zx (Bits.of_int 1 2) 28))) -> 
           Instruction.add (Bits.to_nativeint addr) (Bits.to_nativeint rop) 
             (Instruction.amode_reify(Instruction.hword ())) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('m', Rtl.Identity, 32, RP.Const (RP.Bits addr), 
            _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 
                32, RP.Const (RP.Bits arg3), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rop), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg3 
            (Bitops.add addr (Bitops.zx (Bits.of_int 2 2) 28))) -> 
           Instruction.add (Bits.to_nativeint addr) (Bits.to_nativeint rop) 
             (Instruction.amode_reify(Instruction.word ())) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), 
          RP.Store (RP.Cell ('m', Rtl.Identity, 32, RP.Const (RP.Bits addr), 
            _), RP.App (("add", [32]), [RP.Fetch (RP.Cell ('m', Rtl.Identity, 
                32, RP.Const (RP.Bits arg4), _), 32); RP.Fetch (RP.Cell ('r', 
                  Rtl.Identity, 32, RP.Const (RP.Bits rop), _), 32)]), 32))] 
      when Base.to_bool (Bitops.eq arg4 
            (Bitops.add addr (Bitops.zx (Bits.of_int 3 2) 28))) -> 
           Instruction.add (Bits.to_nativeint addr) (Bits.to_nativeint rop) 
             (Instruction.amode_reify(Instruction.dword ())) 
      
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('r', Rtl.Identity, 
          32, RP.Const (RP.Bits rop), _), RP.Fetch (RP.Cell ('m', Rtl.Identity, 
            32, RP.Const (RP.Bits addr), _), 32), 32))] -> 
           Instruction.ld (Bits.to_nativeint rop) (Bits.to_nativeint addr) 
      | RP.Rtl [(RP.Const (RP.Bool true), RP.Store (RP.Cell ('m', Rtl.Identity, 
          32, RP.Const (RP.Bits addr), _), RP.Fetch (RP.Cell ('r', 
            Rtl.Identity, 32, RP.Const (RP.Bits rop), _), 32), 32))] -> 
           Instruction.st (Bits.to_nativeint addr) (Bits.to_nativeint rop) 
      | RP.Rtl [] -> Instruction.nop () 
      ) 
  end


module Recon = Make(MachineRep.MkRepNoCheck)

let recognizeInstruction rtl =
  try Some 
      (Recon.defaultOfInstruction (Rtl.Convert.rtl rtl))
  with Match_failure _ -> None

module M (R : Sledlib.RELOC_PRINT) = struct 
    
    module Reloc = R
    
    type rel8 = Sledlib.String.t
    
    type rel16 = Sledlib.String.t
    
    type rel32 = Sledlib.String.t
    
    type mem = Sledlib.String.t
    
    type eaddr = Sledlib.String.t
    
    type t = Sledlib.String.t
    
    let print_unsigned_reloc reloc = 
      Sledlib.String.signed_operand reloc
    
    let base_names : string array = Array.of_list 
      ["eAX"; "eCX"; "eDX"; "eBX"; "eSP"; "eBP"; "eSI"; "eDI"]
    
    let print_unsigned_base base = 
      Sledlib.String.getname base_names base "base"
    
    let ss_names : string array = Array.of_list ["1"; "2"; "4"; "8"]
    
    let print_unsigned_ss ss = 
      Sledlib.String.getname ss_names ss "ss"
    
    let print_Mem mem = 
      mem
    
    let print_signed_i8 i8 = 
      Sledlib.String.signed_operand i8
    
    let print_signed_i16 i16 = 
      Sledlib.String.signed_operand i16
    
    let print_signed_i32 i32 = 
      Sledlib.String.signed_operand i32
    
    let print_Eaddr eaddr = 
      eaddr
    
    let print_unsigned_i16 i16 = 
      Sledlib.String.signed_operand i16
    
    let sr16_names : string array = Array.of_list 
      ["??sr16=0?!"; "cs"; "ss"; "ds"; "es"; "fs"; "gs"; "??sr16=7?!"]
    
    let print_unsigned_sr16 sr16 = 
      Sledlib.String.getname sr16_names sr16 "sr16"
    
    let r8_names : string array = Array.of_list 
      ["AL"; "CL"; "DL"; "BL"; "AH"; "CH"; "DH"; "BH"]
    
    let print_unsigned_r8 r8 = 
      Sledlib.String.getname r8_names r8 "r8"
    
    let r16_names : string array = Array.of_list 
      ["AX"; "CX"; "DX"; "BX"; "SP"; "BP"; "SI"; "DI"]
    
    let print_unsigned_r16 r16 = 
      Sledlib.String.getname r16_names r16 "r16"
    
    let print_unsigned_i8 i8 = 
      Sledlib.String.signed_operand i8
    
    let print_unsigned_i32 i32 = 
      Sledlib.String.signed_operand i32
    
    let rel8 reloc = 
      R.to_string print_unsigned_reloc reloc
    
    let rel16 reloc = 
      R.to_string print_unsigned_reloc reloc
    
    let rel32 reloc = 
      R.to_string print_unsigned_reloc reloc
    
    let indir reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "[") 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "]")
    
    let disp8 d reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat (R.to_string 
                print_unsigned_reloc d) (Sledlib.String.of_string "[")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "]")
    
    let disp32 d reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat (R.to_string 
                print_unsigned_reloc d) (Sledlib.String.of_string "[")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "]")
    
    let abs32 a = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "[") 
          (R.to_string print_unsigned_reloc a)) (Sledlib.String.of_string "]")
    
    let reg reg = 
      print_unsigned_reloc reg
    
    let index base index ss = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "[") (print_unsigned_base base)) 
                (Sledlib.String.of_string "][")) (print_unsigned_base index)) 
            (Sledlib.String.of_string " * ")) (print_unsigned_ss ss)) 
        (Sledlib.String.of_string "]")
    
    let index8 d base index ss = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (R.to_string print_unsigned_reloc d) 
                    (Sledlib.String.of_string "[")) (print_unsigned_base 
                    base)) (Sledlib.String.of_string "][")) 
              (print_unsigned_base index)) (Sledlib.String.of_string " * ")) 
          (print_unsigned_ss ss)) (Sledlib.String.of_string "]")
    
    let index32 d base index ss = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (R.to_string print_unsigned_reloc d) 
                    (Sledlib.String.of_string "[")) (print_unsigned_base 
                    base)) (Sledlib.String.of_string "][")) 
              (print_unsigned_base index)) (Sledlib.String.of_string " * ")) 
          (print_unsigned_ss ss)) (Sledlib.String.of_string "]")
    
    let shortindex d index ss = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (R.to_string 
                    print_unsigned_reloc d) (Sledlib.String.of_string "[")) 
              (print_unsigned_base index)) (Sledlib.String.of_string " * ")) 
          (print_unsigned_ss ss)) (Sledlib.String.of_string "]")
    
    let e mem = 
      print_Mem mem
    
    let addial i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ADDiAL ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let orial i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ORiAL ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let adcial i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ADCiAL ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let sbbial i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SBBiAL ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let andial i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ANDiAL ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let subial i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SUBiAL ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let xorial i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "XORiAL ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let cmpial i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CMPiAL ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let addiax i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ADDiAX ") (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let oriax i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ORiAX ") (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let adciax i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ADCiAX ") (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let sbbiax i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SBBiAX ") (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let andiax i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ANDiAX ") (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let subiax i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SUBiAX ") (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let xoriax i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "XORiAX ") (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let cmpiax i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CMPiAX ") (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let addieax i32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "ADDiEAX ") (print_signed_i32 i32)) 
        (Sledlib.String.of_string "\n")
    
    let orieax i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ORiEAX ") (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let adcieax i32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "ADCiEAX ") (print_signed_i32 i32)) 
        (Sledlib.String.of_string "\n")
    
    let sbbieax i32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SBBiEAX ") (print_signed_i32 i32)) 
        (Sledlib.String.of_string "\n")
    
    let andieax i32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "ANDiEAX ") (print_signed_i32 i32)) 
        (Sledlib.String.of_string "\n")
    
    let subieax i32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SUBiEAX ") (print_signed_i32 i32)) 
        (Sledlib.String.of_string "\n")
    
    let xorieax i32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "XORiEAX ") (print_signed_i32 i32)) 
        (Sledlib.String.of_string "\n")
    
    let cmpieax i32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "CMPiEAX ") (print_signed_i32 i32)) 
        (Sledlib.String.of_string "\n")
    
    let addib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let orib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let adcib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let sbbib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let andib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let subib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let xorib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let cmpib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let addiw eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDiw ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let oriw eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORiw ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let adciw eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCiw ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let sbbiw eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBiw ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let andiw eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDiw ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let subiw eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBiw ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let xoriw eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORiw ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let cmpiw eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPiw ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let addid eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDid ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let orid eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORid ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let adcid eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCid ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let sbbid eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBid ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let andid eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDid ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let subid eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBid ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let xorid eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORid ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let cmpid eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPid ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let addiowb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDiowb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let addiodb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDiodb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let oriowb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORiowb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let oriodb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORiodb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let adciowb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCiowb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let adciodb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCiodb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let sbbiowb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBiowb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let sbbiodb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBiodb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let andiowb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDiowb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let andiodb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDiodb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let subiowb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBiowb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let subiodb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBiodb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let xoriowb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORiowb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let xoriodb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORiodb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let cmpiowb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPiowb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let cmpiodb eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPiodb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let addmrb eaddr reg8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDmrb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg8)) (Sledlib.String.of_string "\n")
    
    let ormrb eaddr reg8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORmrb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg8)) (Sledlib.String.of_string "\n")
    
    let adcmrb eaddr reg8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCmrb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg8)) (Sledlib.String.of_string "\n")
    
    let sbbmrb eaddr reg8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBmrb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg8)) (Sledlib.String.of_string "\n")
    
    let andmrb eaddr reg8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDmrb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg8)) (Sledlib.String.of_string "\n")
    
    let submrb eaddr reg8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBmrb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg8)) (Sledlib.String.of_string "\n")
    
    let xormrb eaddr reg8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORmrb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg8)) (Sledlib.String.of_string "\n")
    
    let cmpmrb eaddr reg8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPmrb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg8)) (Sledlib.String.of_string "\n")
    
    let addmrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDmrow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let addmrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDmrod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let ormrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORmrow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let ormrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORmrod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let adcmrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCmrow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let adcmrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCmrod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let sbbmrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBmrow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let sbbmrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBmrod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let andmrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDmrow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let andmrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDmrod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let submrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBmrow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let submrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBmrod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let xormrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORmrow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let xormrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORmrod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let cmpmrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPmrow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let cmpmrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPmrod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let addrmb reg8 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDrmb ") 
              (print_unsigned_reloc reg8)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let orrmb reg8 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORrmb ") 
              (print_unsigned_reloc reg8)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let adcrmb reg8 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCrmb ") 
              (print_unsigned_reloc reg8)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let sbbrmb reg8 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBrmb ") 
              (print_unsigned_reloc reg8)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let andrmb reg8 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDrmb ") 
              (print_unsigned_reloc reg8)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let subrmb reg8 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBrmb ") 
              (print_unsigned_reloc reg8)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let xorrmb reg8 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORrmb ") 
              (print_unsigned_reloc reg8)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let cmprmb reg8 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPrmb ") 
              (print_unsigned_reloc reg8)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let addrmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let addrmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADDrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let orrmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let orrmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ORrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let adcrmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let adcrmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ADCrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let sbbrmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let sbbrmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SBBrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let andrmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let andrmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ANDrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let subrmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let subrmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SUBrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let xorrmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let xorrmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XORrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let cmprmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let cmprmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let aaa () = 
      Sledlib.String.cat (Sledlib.String.of_string "AAA") 
        (Sledlib.String.of_string "\n")
    
    let aad () = 
      Sledlib.String.cat (Sledlib.String.of_string "AAD") 
        (Sledlib.String.of_string "\n")
    
    let aam () = 
      Sledlib.String.cat (Sledlib.String.of_string "AAM") 
        (Sledlib.String.of_string "\n")
    
    let aas () = 
      Sledlib.String.cat (Sledlib.String.of_string "AAS") 
        (Sledlib.String.of_string "\n")
    
    let arpl eaddr reg16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ARPL ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg16)) (Sledlib.String.of_string "\n")
    
    let boundow reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BOUNDow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let boundod reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BOUNDod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let bsfow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BSFow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let bsfod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BSFod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let bsrow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BSRow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let bsrod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BSRod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let bswap r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "BSWAP ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let btow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let btod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let btiow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTiow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let btiod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTiod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let btcow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTCow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let btcod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTCod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let btciow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTCiow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let btciod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTCiod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let btrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTRow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let btrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTRod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let btriow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTRiow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let btriod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTRiod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let btsow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTSow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let btsod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTSod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let btsiow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTSiow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let btsiod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "BTSiod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let call_jvow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CALL.Jvow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let call_jvod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CALL.Jvod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let call_epow mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CALL.Epow ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let call_epod mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CALL.Epod ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let call_apow cs ip = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CALL.aPow ") 
              (print_unsigned_reloc cs)) (Sledlib.String.of_string ": ")) 
          (print_unsigned_reloc ip)) (Sledlib.String.of_string "\n")
    
    let call_apod cs ip = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CALL.aPod ") 
              (print_unsigned_reloc cs)) (Sledlib.String.of_string ": ")) 
          (print_unsigned_reloc ip)) (Sledlib.String.of_string "\n")
    
    let call_evow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CALL.Evow ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let call_evod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CALL.Evod ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let cbw () = 
      Sledlib.String.cat (Sledlib.String.of_string "CBW") 
        (Sledlib.String.of_string "\n")
    
    let cwde () = 
      Sledlib.String.cat (Sledlib.String.of_string "CWDE") 
        (Sledlib.String.of_string "\n")
    
    let clc () = 
      Sledlib.String.cat (Sledlib.String.of_string "CLC") 
        (Sledlib.String.of_string "\n")
    
    let cld () = 
      Sledlib.String.cat (Sledlib.String.of_string "CLD") 
        (Sledlib.String.of_string "\n")
    
    let cli () = 
      Sledlib.String.cat (Sledlib.String.of_string "CLI") 
        (Sledlib.String.of_string "\n")
    
    let clts () = 
      Sledlib.String.cat (Sledlib.String.of_string "CLTS") 
        (Sledlib.String.of_string "\n")
    
    let cmc () = 
      Sledlib.String.cat (Sledlib.String.of_string "CMC") 
        (Sledlib.String.of_string "\n")
    
    let cmpsbaw () = 
      Sledlib.String.cat (Sledlib.String.of_string "CMPSBaw") 
        (Sledlib.String.of_string "\n")
    
    let cmpsbad () = 
      Sledlib.String.cat (Sledlib.String.of_string "CMPSBad") 
        (Sledlib.String.of_string "\n")
    
    let cmpsvowaw () = 
      Sledlib.String.cat (Sledlib.String.of_string "CMPSvowaw") 
        (Sledlib.String.of_string "\n")
    
    let cmpsvowad () = 
      Sledlib.String.cat (Sledlib.String.of_string "CMPSvowad") 
        (Sledlib.String.of_string "\n")
    
    let cmpsvodaw () = 
      Sledlib.String.cat (Sledlib.String.of_string "CMPSvodaw") 
        (Sledlib.String.of_string "\n")
    
    let cmpsvodad () = 
      Sledlib.String.cat (Sledlib.String.of_string "CMPSvodad") 
        (Sledlib.String.of_string "\n")
    
    let cmpxchg_eb_gb eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPXCHG.Eb.Gb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let cmpxchg_ev_gvow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPXCHG.Ev.Gvow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let cmpxchg_ev_gvod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "CMPXCHG.Ev.Gvod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let cmpxchg8b mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CMPXCHG8B ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let cpuid () = 
      Sledlib.String.cat (Sledlib.String.of_string "CPUID") 
        (Sledlib.String.of_string "\n")
    
    let cwd () = 
      Sledlib.String.cat (Sledlib.String.of_string "CWD") 
        (Sledlib.String.of_string "\n")
    
    let cdq () = 
      Sledlib.String.cat (Sledlib.String.of_string "CDQ") 
        (Sledlib.String.of_string "\n")
    
    let daa () = 
      Sledlib.String.cat (Sledlib.String.of_string "DAA") 
        (Sledlib.String.of_string "\n")
    
    let das () = 
      Sledlib.String.cat (Sledlib.String.of_string "DAS") 
        (Sledlib.String.of_string "\n")
    
    let dec_eb eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "DEC.Eb ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let dec_evow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "DEC.Evow ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let dec_evod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "DEC.Evod ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let decow r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "DECow ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let decod r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "DECod ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let dival eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "DIVAL ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let divax eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "DIVAX ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let diveax eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "DIVeAX ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let enter i16 i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ENTER ") 
              (print_unsigned_i16 i16)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let f2xm1 () = 
      Sledlib.String.cat (Sledlib.String.of_string "F2XM1") 
        (Sledlib.String.of_string "\n")
    
    let fabs () = 
      Sledlib.String.cat (Sledlib.String.of_string "FABS") 
        (Sledlib.String.of_string "\n")
    
    let fadd_r32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FADD.R32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fadd_r64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FADD.R64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fadd_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FADD.ST.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fadd_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FADD.STi.St ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let faddp_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FADDP.STi.ST ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fiadd_i32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FIADD.I32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fiadd_i16 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FIADD.I16 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fbld mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBLD ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fbstp mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBSTP ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fchs () = 
      Sledlib.String.cat (Sledlib.String.of_string "FCHS") 
        (Sledlib.String.of_string "\n")
    
    let fnclex () = 
      Sledlib.String.cat (Sledlib.String.of_string "FNCLEX") 
        (Sledlib.String.of_string "\n")
    
    let fcom_r32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FCOM.R32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fcom_r64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FCOM.R64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fcomp_r32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FCOMP.R32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fcomp_r64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FCOMP.R64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fcom_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FCOM.ST.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fcomp_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FCOMP.ST.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fcompp () = 
      Sledlib.String.cat (Sledlib.String.of_string "FCOMPP") 
        (Sledlib.String.of_string "\n")
    
    let fcos () = 
      Sledlib.String.cat (Sledlib.String.of_string "FCOS") 
        (Sledlib.String.of_string "\n")
    
    let fdecstp () = 
      Sledlib.String.cat (Sledlib.String.of_string "FDECSTP") 
        (Sledlib.String.of_string "\n")
    
    let fdiv_r32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FDIV.R32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fdiv_r64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FDIV.R64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fdiv_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FDIV.ST.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fdiv_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FDIV.STi.St ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fdivp_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FDIVP.STi.ST ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fdivr_r32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FDIVR.R32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fdivr_r64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FDIVR.R64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fdivr_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FDIVR.ST.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fdivr_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FDIVR.STi.St ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fdivrp_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FDIVRP.STi.ST ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let ffree idx = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "FFREE ") (print_unsigned_reloc idx)) 
        (Sledlib.String.of_string "\n")
    
    let ficom_i32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FICOM.I32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let ficom_i16 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FICOM.I16 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let ficomp_i32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FICOMP.I32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let ficomp_i16 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FICOMP.I16 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fild_lsi16 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FILD.lsI16 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fild_lsi32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FILD.lsI32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fild64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FILD64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let finit () = 
      Sledlib.String.cat (Sledlib.String.of_string "FINIT") 
        (Sledlib.String.of_string "\n")
    
    let fist_lsi16 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FIST.lsI16 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fist_lsi32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FIST.lsI32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fistp_lsi16 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FISTP.lsI16 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fistp_lsi32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FISTP.lsI32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fistp64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FISTP64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fld_lsr32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FLD.lsR32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fld_lsr64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FLD.lsR64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fld80 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FLD80 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fld_sti idx = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "FLD.STi ") (print_unsigned_reloc idx)) 
        (Sledlib.String.of_string "\n")
    
    let fld1 () = 
      Sledlib.String.cat (Sledlib.String.of_string "FLD1") 
        (Sledlib.String.of_string "\n")
    
    let fldl2t () = 
      Sledlib.String.cat (Sledlib.String.of_string "FLDL2T") 
        (Sledlib.String.of_string "\n")
    
    let fldl2e () = 
      Sledlib.String.cat (Sledlib.String.of_string "FLDL2E") 
        (Sledlib.String.of_string "\n")
    
    let fldpi () = 
      Sledlib.String.cat (Sledlib.String.of_string "FLDPI") 
        (Sledlib.String.of_string "\n")
    
    let fldlg2 () = 
      Sledlib.String.cat (Sledlib.String.of_string "FLDLG2") 
        (Sledlib.String.of_string "\n")
    
    let fldln2 () = 
      Sledlib.String.cat (Sledlib.String.of_string "FLDLN2") 
        (Sledlib.String.of_string "\n")
    
    let fldz () = 
      Sledlib.String.cat (Sledlib.String.of_string "FLDZ") 
        (Sledlib.String.of_string "\n")
    
    let fldcw mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FLDCW ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fldenv mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FLDENV ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fmul_r32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FMUL.R32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fmul_r64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FMUL.R64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fmul_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FMUL.ST.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fmul_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FMUL.STi.St ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fmulp_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FMULP.STi.ST ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fnop () = 
      Sledlib.String.cat (Sledlib.String.of_string "FNOP") 
        (Sledlib.String.of_string "\n")
    
    let fpatan () = 
      Sledlib.String.cat (Sledlib.String.of_string "FPATAN") 
        (Sledlib.String.of_string "\n")
    
    let fprem () = 
      Sledlib.String.cat (Sledlib.String.of_string "FPREM") 
        (Sledlib.String.of_string "\n")
    
    let fprem1 () = 
      Sledlib.String.cat (Sledlib.String.of_string "FPREM1") 
        (Sledlib.String.of_string "\n")
    
    let fptan () = 
      Sledlib.String.cat (Sledlib.String.of_string "FPTAN") 
        (Sledlib.String.of_string "\n")
    
    let frndint () = 
      Sledlib.String.cat (Sledlib.String.of_string "FRNDINT") 
        (Sledlib.String.of_string "\n")
    
    let frstor mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FRSTOR ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fnsave mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FNSAVE ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fscale () = 
      Sledlib.String.cat (Sledlib.String.of_string "FSCALE") 
        (Sledlib.String.of_string "\n")
    
    let fsin () = 
      Sledlib.String.cat (Sledlib.String.of_string "FSIN") 
        (Sledlib.String.of_string "\n")
    
    let fsincos () = 
      Sledlib.String.cat (Sledlib.String.of_string "FSINCOS") 
        (Sledlib.String.of_string "\n")
    
    let fsqrt () = 
      Sledlib.String.cat (Sledlib.String.of_string "FSQRT") 
        (Sledlib.String.of_string "\n")
    
    let fst_lsr32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FST.lsR32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fst_lsr64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FST.lsR64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fstp_lsr32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSTP.lsR32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fstp_lsr64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSTP.lsR64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fstp80 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSTP80 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fst_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FST.st.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fstp_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FSTP.st.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fstcw mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSTCW ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fstenv mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSTENV ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fstsw mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSTSW ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fstsw_ax () = 
      Sledlib.String.cat (Sledlib.String.of_string "FSTSW.AX") 
        (Sledlib.String.of_string "\n")
    
    let fsub_r32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSUB.R32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fsub_r64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSUB.R64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fsub_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FSUB.ST.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fsub_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FSUB.STi.St ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fsubp_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FSUBP.STi.ST ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fsubr_r32 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSUBR.R32 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fsubr_r64 mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSUBR.R64 ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fsubr_st_sti idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FSUBR.ST.STi ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fsubr_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FSUBR.STi.St ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let fsubrp_sti_st idx = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "FSUBRP.STi.ST ") 
          (print_unsigned_reloc idx)) (Sledlib.String.of_string "\n")
    
    let ftst () = 
      Sledlib.String.cat (Sledlib.String.of_string "FTST") 
        (Sledlib.String.of_string "\n")
    
    let fucom idx = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "FUCOM ") (print_unsigned_reloc idx)) 
        (Sledlib.String.of_string "\n")
    
    let fucomp idx = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "FUCOMP ") (print_unsigned_reloc idx)) 
        (Sledlib.String.of_string "\n")
    
    let fucompp () = 
      Sledlib.String.cat (Sledlib.String.of_string "FUCOMPP") 
        (Sledlib.String.of_string "\n")
    
    let fxam () = 
      Sledlib.String.cat (Sledlib.String.of_string "FXAM") 
        (Sledlib.String.of_string "\n")
    
    let fxch idx = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "FXCH ") (print_unsigned_reloc idx)) 
        (Sledlib.String.of_string "\n")
    
    let fxtract () = 
      Sledlib.String.cat (Sledlib.String.of_string "FXTRACT") 
        (Sledlib.String.of_string "\n")
    
    let fyl2x () = 
      Sledlib.String.cat (Sledlib.String.of_string "FYL2X") 
        (Sledlib.String.of_string "\n")
    
    let fyl2xp1 () = 
      Sledlib.String.cat (Sledlib.String.of_string "FYL2XP1") 
        (Sledlib.String.of_string "\n")
    
    let hlt () = 
      Sledlib.String.cat (Sledlib.String.of_string "HLT") 
        (Sledlib.String.of_string "\n")
    
    let idiv eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "IDIV ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let idivax eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "IDIVAX ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let idiveax eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "IDIVeAX ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let imulb eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "IMULb ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let imulow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "IMULow ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let imulod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "IMULod ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let imulrmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "IMULrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let imulrmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "IMULrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let imul_ibow reg eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "IMUL.Ibow ") 
                  (print_unsigned_reloc reg)) (Sledlib.String.of_string 
                  ", ")) (print_Eaddr eaddr)) (Sledlib.String.of_string 
              ", ")) (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let imul_ibod reg eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "IMUL.Ibod ") 
                  (print_unsigned_reloc reg)) (Sledlib.String.of_string 
                  ", ")) (print_Eaddr eaddr)) (Sledlib.String.of_string 
              ", ")) (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let imul_ivw reg eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "IMUL.Ivw ") 
                  (print_unsigned_reloc reg)) (Sledlib.String.of_string 
                  ", ")) (print_Eaddr eaddr)) (Sledlib.String.of_string 
              ", ")) (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let imul_ivd reg eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "IMUL.Ivd ") 
                  (print_unsigned_reloc reg)) (Sledlib.String.of_string 
                  ", ")) (print_Eaddr eaddr)) (Sledlib.String.of_string 
              ", ")) (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let in_al_ib i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "IN.AL.Ib ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let in_eax_ibow i8 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "IN.eAX.Ibow ") (print_signed_i8 i8)) 
        (Sledlib.String.of_string "\n")
    
    let in_eax_ibod i8 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "IN.eAX.Ibod ") (print_signed_i8 i8)) 
        (Sledlib.String.of_string "\n")
    
    let in_al_dx () = 
      Sledlib.String.cat (Sledlib.String.of_string "IN.AL.DX") 
        (Sledlib.String.of_string "\n")
    
    let in_eax_dxow () = 
      Sledlib.String.cat (Sledlib.String.of_string "IN.eAX.DXow") 
        (Sledlib.String.of_string "\n")
    
    let in_eax_dxod () = 
      Sledlib.String.cat (Sledlib.String.of_string "IN.eAX.DXod") 
        (Sledlib.String.of_string "\n")
    
    let inc_eb eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "INC.Eb ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let inc_evow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "INC.Evow ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let inc_evod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "INC.Evod ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let incow r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "INCow ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let incod r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "INCod ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let insb () = 
      Sledlib.String.cat (Sledlib.String.of_string "INSB") 
        (Sledlib.String.of_string "\n")
    
    let insvow () = 
      Sledlib.String.cat (Sledlib.String.of_string "INSvow") 
        (Sledlib.String.of_string "\n")
    
    let insvod () = 
      Sledlib.String.cat (Sledlib.String.of_string "INSvod") 
        (Sledlib.String.of_string "\n")
    
    let int3 () = 
      Sledlib.String.cat (Sledlib.String.of_string "INT3") 
        (Sledlib.String.of_string "\n")
    
    let int_ib i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "INT.Ib ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let into () = 
      Sledlib.String.cat (Sledlib.String.of_string "INTO") 
        (Sledlib.String.of_string "\n")
    
    let invd () = 
      Sledlib.String.cat (Sledlib.String.of_string "INVD") 
        (Sledlib.String.of_string "\n")
    
    let invlpg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "INVLPG ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let iret () = 
      Sledlib.String.cat (Sledlib.String.of_string "IRET") 
        (Sledlib.String.of_string "\n")
    
    let jb_o reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.O ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_no reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.NO ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_b reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.B ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_nb reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.NB ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_z reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.Z ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_nz reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.NZ ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_be reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.BE ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_nbe reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.NBE ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_s reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.S ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_ns reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.NS ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_p reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.P ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_np reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.NP ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_l reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.L ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_nl reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.NL ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_le reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.LE ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jb_nle reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jb.NLE ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_oow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Oow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_noow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NOow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_bow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Bow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nbow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NBow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_zow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Zow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nzow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NZow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_beow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.BEow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nbeow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NBEow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_sow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Sow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nsow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NSow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_pow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Pow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_npow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NPow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_low reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Low ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nlow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NLow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_leow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.LEow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nleow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NLEow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_ood reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Ood ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nood reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NOod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_bod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Bod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nbod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NBod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_zod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Zod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nzod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NZod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_beod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.BEod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nbeod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NBEod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_sod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Sod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nsod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NSod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_pod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Pod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_npod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NPod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_lod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.Lod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nlod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NLod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_leod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.LEod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jv_nleod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "Jv.NLEod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jcxz reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "JCXZ ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jmp_jb reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "JMP.Jb ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jmp_jvow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "JMP.Jvow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jmp_jvod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "JMP.Jvod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let jmp_apow cs ip = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "JMP.Apow ") 
              (print_unsigned_reloc cs)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc ip)) (Sledlib.String.of_string "\n")
    
    let jmp_apod cs ip = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "JMP.Apod ") 
              (print_unsigned_reloc cs)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc ip)) (Sledlib.String.of_string "\n")
    
    let jmp_evow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "JMP.Evow ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let jmp_evod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "JMP.Evod ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let jmp_epow mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "JMP.Epow ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let jmp_epod mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "JMP.Epod ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let ldsow reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LDSow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let ldsod reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LDSod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lesow reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LESow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lesod reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LESod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lfsow reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LFSow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lfsod reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LFSod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lgsow reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LGSow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lgsod reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LGSod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lssow reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LSSow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lssod reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LSSod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let leaow reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LEAow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let leaod reg mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LEAod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let leave () = 
      Sledlib.String.cat (Sledlib.String.of_string "LEAVE") 
        (Sledlib.String.of_string "\n")
    
    let lgdt mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LGDT ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lidt mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LIDT ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let lldt eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LLDT ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let lmsw eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LMSW ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let lock () = 
      Sledlib.String.cat (Sledlib.String.of_string "LOCK") 
        (Sledlib.String.of_string "\n")
    
    let lodsb () = 
      Sledlib.String.cat (Sledlib.String.of_string "LODSB") 
        (Sledlib.String.of_string "\n")
    
    let lodsvow () = 
      Sledlib.String.cat (Sledlib.String.of_string "LODSvow") 
        (Sledlib.String.of_string "\n")
    
    let lodsvod () = 
      Sledlib.String.cat (Sledlib.String.of_string "LODSvod") 
        (Sledlib.String.of_string "\n")
    
    let lahf () = 
      Sledlib.String.cat (Sledlib.String.of_string "LAHF") 
        (Sledlib.String.of_string "\n")
    
    let larow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LARow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let larod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LARod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let loopow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LOOPow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let loopod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LOOPod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let loopeow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LOOPEow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let loopeod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LOOPEod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let loopneow reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LOOPNEow ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let loopneod reloc = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LOOPNEod ") (R.to_string print_unsigned_reloc reloc)) 
        (Sledlib.String.of_string "\n")
    
    let lslow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LSLow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let lslod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "LSLod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let ltr eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "LTR ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let movmrb eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVmrb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let movmrow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVmrow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let movmrod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVmrod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let movrmb reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVrmb ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let movrmow reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVrmow ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let movrmod reg eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVrmod ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let mov_ew_sw mem sr16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOV.Ew.Sw ") 
              (print_Mem mem)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_sr16 sr16)) (Sledlib.String.of_string "\n")
    
    let mov_sw_ew mem sr16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOV.Sw.Ew ") 
              (print_Mem mem)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_sr16 sr16)) (Sledlib.String.of_string "\n")
    
    let mov_al_ob offset = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "MOV.AL.Ob ") 
          (print_unsigned_reloc offset)) (Sledlib.String.of_string "\n")
    
    let mov_eax_ovow offset = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "MOV.eAX.Ovow ") 
          (print_unsigned_reloc offset)) (Sledlib.String.of_string "\n")
    
    let mov_eax_ovod offset = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "MOV.eAX.Ovod ") 
          (print_unsigned_reloc offset)) (Sledlib.String.of_string "\n")
    
    let mov_ob_al offset = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "MOV.Ob.AL ") 
          (print_unsigned_reloc offset)) (Sledlib.String.of_string "\n")
    
    let mov_ov_eaxow offset = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "MOV.Ov.eAXow ") 
          (print_unsigned_reloc offset)) (Sledlib.String.of_string "\n")
    
    let mov_ov_eaxod offset = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "MOV.Ov.eAXod ") 
          (print_unsigned_reloc offset)) (Sledlib.String.of_string "\n")
    
    let movib r8 i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVib ") 
              (print_unsigned_r8 r8)) (Sledlib.String.of_string ",  ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let moviw r16 i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOViw ") 
              (print_unsigned_r16 r16)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let movid r32 i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVid ") 
              (print_unsigned_base r32)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let mov_eb_ib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOV.Eb.Ib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let mov_ev_ivow eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOV.Ev.Ivow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i16 i16)) (Sledlib.String.of_string "\n")
    
    let mov_ev_ivod eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOV.Ev.Ivod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i32 i32)) (Sledlib.String.of_string "\n")
    
    let mov_cd_rd cr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOV.Cd.Rd ") 
              (print_unsigned_reloc cr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let mov_rd_cd reg cr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOV.Rd.Cd ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc cr)) (Sledlib.String.of_string "\n")
    
    let mov_dd_rd dr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOV.Dd.Rd ") 
              (print_unsigned_reloc dr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let mov_rd_dd reg dr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOV.Rd.Dd ") 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc dr)) (Sledlib.String.of_string "\n")
    
    let movsb () = 
      Sledlib.String.cat (Sledlib.String.of_string "MOVSB") 
        (Sledlib.String.of_string "\n")
    
    let movsvow () = 
      Sledlib.String.cat (Sledlib.String.of_string "MOVSvow") 
        (Sledlib.String.of_string "\n")
    
    let movsvod () = 
      Sledlib.String.cat (Sledlib.String.of_string "MOVSvod") 
        (Sledlib.String.of_string "\n")
    
    let movsx_gv_ebow r32 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVSX.Gv.Ebow ") 
              (print_unsigned_base r32)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let movsx_gv_ebod r32 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVSX.Gv.Ebod ") 
              (print_unsigned_base r32)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let movsx_gv_ew r16 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVSX.Gv.Ew ") 
              (print_unsigned_r16 r16)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let movzx_gv_ebow r32 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVZX.Gv.Ebow ") 
              (print_unsigned_base r32)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let movzx_gv_ebod r32 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVZX.Gv.Ebod ") 
              (print_unsigned_base r32)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let movzx_gv_ew r16 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "MOVZX.Gv.Ew ") 
              (print_unsigned_r16 r16)) (Sledlib.String.of_string ", ")) 
          (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let mul_al eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "MUL.AL ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let mul_axow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "MUL.AXow ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let mul_axod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "MUL.AXod ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let negb eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "NEGb ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let negow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "NEGow ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let negod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "NEGod ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let nop () = 
      Sledlib.String.cat (Sledlib.String.of_string "NOP") 
        (Sledlib.String.of_string "\n")
    
    let notb eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "NOTb ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let notow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "NOTow ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let notod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "NOTod ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let out_ib_al i8 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "OUT.Ib.AL ") (print_signed_i8 i8)) 
        (Sledlib.String.of_string "\n")
    
    let out_ib_eaxow i8 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "OUT.Ib.eAXow ") (print_signed_i8 i8)) 
        (Sledlib.String.of_string "\n")
    
    let out_ib_eaxod i8 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "OUT.Ib.eAXod ") (print_signed_i8 i8)) 
        (Sledlib.String.of_string "\n")
    
    let out_dx_al () = 
      Sledlib.String.cat (Sledlib.String.of_string "OUT.DX.AL") 
        (Sledlib.String.of_string "\n")
    
    let out_dx_eaxow () = 
      Sledlib.String.cat (Sledlib.String.of_string "OUT.DX.eAXow") 
        (Sledlib.String.of_string "\n")
    
    let out_dx_eaxod () = 
      Sledlib.String.cat (Sledlib.String.of_string "OUT.DX.eAXod") 
        (Sledlib.String.of_string "\n")
    
    let outsb () = 
      Sledlib.String.cat (Sledlib.String.of_string "OUTSB") 
        (Sledlib.String.of_string "\n")
    
    let outsvow () = 
      Sledlib.String.cat (Sledlib.String.of_string "OUTSvow") 
        (Sledlib.String.of_string "\n")
    
    let outsvod () = 
      Sledlib.String.cat (Sledlib.String.of_string "OUTSvod") 
        (Sledlib.String.of_string "\n")
    
    let pop_evow mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "POP.Evow ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let pop_evod mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "POP.Evod ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let popow r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "POPow ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let popod r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "POPod ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let pop_es () = 
      Sledlib.String.cat (Sledlib.String.of_string "POP.ES") 
        (Sledlib.String.of_string "\n")
    
    let pop_ss () = 
      Sledlib.String.cat (Sledlib.String.of_string "POP.SS") 
        (Sledlib.String.of_string "\n")
    
    let pop_ds () = 
      Sledlib.String.cat (Sledlib.String.of_string "POP.DS") 
        (Sledlib.String.of_string "\n")
    
    let pop_fs () = 
      Sledlib.String.cat (Sledlib.String.of_string "POP.FS") 
        (Sledlib.String.of_string "\n")
    
    let pop_gs () = 
      Sledlib.String.cat (Sledlib.String.of_string "POP.GS") 
        (Sledlib.String.of_string "\n")
    
    let popaow () = 
      Sledlib.String.cat (Sledlib.String.of_string "POPAow") 
        (Sledlib.String.of_string "\n")
    
    let popaod () = 
      Sledlib.String.cat (Sledlib.String.of_string "POPAod") 
        (Sledlib.String.of_string "\n")
    
    let popfow () = 
      Sledlib.String.cat (Sledlib.String.of_string "POPFow") 
        (Sledlib.String.of_string "\n")
    
    let popfod () = 
      Sledlib.String.cat (Sledlib.String.of_string "POPFod") 
        (Sledlib.String.of_string "\n")
    
    let push_evow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "PUSH.Evow ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let push_evod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "PUSH.Evod ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let pushow r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "PUSHow ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let pushod r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "PUSHod ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let push_ib i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "PUSH.Ib ") (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let push_ivow i16 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "PUSH.Ivow ") (print_signed_i16 i16)) 
        (Sledlib.String.of_string "\n")
    
    let push_ivod i32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "PUSH.Ivod ") (print_signed_i32 i32)) 
        (Sledlib.String.of_string "\n")
    
    let push_cs () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSH.CS") 
        (Sledlib.String.of_string "\n")
    
    let push_ss () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSH.SS") 
        (Sledlib.String.of_string "\n")
    
    let push_ds () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSH.DS") 
        (Sledlib.String.of_string "\n")
    
    let push_es () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSH.ES") 
        (Sledlib.String.of_string "\n")
    
    let push_fs () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSH.FS") 
        (Sledlib.String.of_string "\n")
    
    let push_gs () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSH.GS") 
        (Sledlib.String.of_string "\n")
    
    let pushaow () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSHAow") 
        (Sledlib.String.of_string "\n")
    
    let pushaod () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSHAod") 
        (Sledlib.String.of_string "\n")
    
    let pushfow () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSHFow") 
        (Sledlib.String.of_string "\n")
    
    let pushfod () = 
      Sledlib.String.cat (Sledlib.String.of_string "PUSHFod") 
        (Sledlib.String.of_string "\n")
    
    let rolb_eb_1 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ROLB.Eb.1 ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let rolb_eb_cl eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "ROLB.Eb.CL ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rorb_eb_1 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "RORB.Eb.1 ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let rorb_eb_cl eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RORB.Eb.CL ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rclb_eb_1 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "RCLB.Eb.1 ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let rclb_eb_cl eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCLB.Eb.CL ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rcrb_eb_1 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "RCRB.Eb.1 ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let rcrb_eb_cl eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCRB.Eb.CL ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shlsalb_eb_1 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHLSALB.Eb.1 ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shlsalb_eb_cl eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHLSALB.Eb.CL ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shrb_eb_1 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SHRB.Eb.1 ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let shrb_eb_cl eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHRB.Eb.CL ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let sarb_eb_1 eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SARB.Eb.1 ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let sarb_eb_cl eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SARB.Eb.CL ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rolb_ev_1ow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "ROLB.Ev.1ow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rolb_ev_1od eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "ROLB.Ev.1od ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rolb_ev_clow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "ROLB.Ev.CLow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rolb_ev_clod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "ROLB.Ev.CLod ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rorb_ev_1ow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RORB.Ev.1ow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rorb_ev_1od eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RORB.Ev.1od ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rorb_ev_clow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RORB.Ev.CLow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rorb_ev_clod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RORB.Ev.CLod ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rclb_ev_1ow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCLB.Ev.1ow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rclb_ev_1od eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCLB.Ev.1od ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rclb_ev_clow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCLB.Ev.CLow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rclb_ev_clod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCLB.Ev.CLod ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rcrb_ev_1ow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCRB.Ev.1ow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rcrb_ev_1od eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCRB.Ev.1od ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rcrb_ev_clow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCRB.Ev.CLow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rcrb_ev_clod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RCRB.Ev.CLod ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shlsalb_ev_1ow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHLSALB.Ev.1ow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shlsalb_ev_1od eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHLSALB.Ev.1od ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shlsalb_ev_clow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHLSALB.Ev.CLow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shlsalb_ev_clod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHLSALB.Ev.CLod ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shrb_ev_1ow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHRB.Ev.1ow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shrb_ev_1od eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHRB.Ev.1od ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shrb_ev_clow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHRB.Ev.CLow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let shrb_ev_clod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SHRB.Ev.CLod ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let sarb_ev_1ow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SARB.Ev.1ow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let sarb_ev_1od eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SARB.Ev.1od ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let sarb_ev_clow eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SARB.Ev.CLow ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let sarb_ev_clod eaddr = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "SARB.Ev.CLod ") (print_Eaddr eaddr)) 
        (Sledlib.String.of_string "\n")
    
    let rolb_eb_ib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ROLB.Eb.Ib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rorb_eb_ib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "RORB.Eb.Ib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rclb_eb_ib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "RCLB.Eb.Ib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rcrb_eb_ib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "RCRB.Eb.Ib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let shlsalb_eb_ib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SHLSALB.Eb.Ib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let shrb_eb_ib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SHRB.Eb.Ib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let sarb_eb_ib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SARB.Eb.Ib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rolb_ev_ibow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ROLB.Ev.Ibow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rolb_ev_ibod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ROLB.Ev.Ibod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rorb_ev_ibow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "RORB.Ev.Ibow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rorb_ev_ibod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "RORB.Ev.Ibod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rclb_ev_ibow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "RCLB.Ev.Ibow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rclb_ev_ibod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "RCLB.Ev.Ibod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rcrb_ev_ibow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "RCRB.Ev.Ibow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rcrb_ev_ibod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "RCRB.Ev.Ibod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let shlsalb_ev_ibow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SHLSALB.Ev.Ibow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let shlsalb_ev_ibod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SHLSALB.Ev.Ibod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let shrb_ev_ibow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SHRB.Ev.Ibow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let shrb_ev_ibod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SHRB.Ev.Ibod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let sarb_ev_ibow eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SARB.Ev.Ibow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let sarb_ev_ibod eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "SARB.Ev.Ibod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_signed_i8 i8)) (Sledlib.String.of_string "\n")
    
    let rdmsr () = 
      Sledlib.String.cat (Sledlib.String.of_string "RDMSR") 
        (Sledlib.String.of_string "\n")
    
    let rep () = 
      Sledlib.String.cat (Sledlib.String.of_string "REP") 
        (Sledlib.String.of_string "\n")
    
    let repne () = 
      Sledlib.String.cat (Sledlib.String.of_string "REPNE") 
        (Sledlib.String.of_string "\n")
    
    let ret () = 
      Sledlib.String.cat (Sledlib.String.of_string "RET") 
        (Sledlib.String.of_string "\n")
    
    let ret_far () = 
      Sledlib.String.cat (Sledlib.String.of_string "RET.far") 
        (Sledlib.String.of_string "\n")
    
    let ret_iw i16 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RET.Iw ") (print_unsigned_i16 i16)) 
        (Sledlib.String.of_string "\n")
    
    let ret_far_iw i16 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "RET.far.Iw ") (print_unsigned_i16 i16)) 
        (Sledlib.String.of_string "\n")
    
    let rsm () = 
      Sledlib.String.cat (Sledlib.String.of_string "RSM") 
        (Sledlib.String.of_string "\n")
    
    let sahf () = 
      Sledlib.String.cat (Sledlib.String.of_string "SAHF") 
        (Sledlib.String.of_string "\n")
    
    let scasb () = 
      Sledlib.String.cat (Sledlib.String.of_string "SCASB") 
        (Sledlib.String.of_string "\n")
    
    let scasvow () = 
      Sledlib.String.cat (Sledlib.String.of_string "SCASvow") 
        (Sledlib.String.of_string "\n")
    
    let scasvod () = 
      Sledlib.String.cat (Sledlib.String.of_string "SCASvod") 
        (Sledlib.String.of_string "\n")
    
    let setb_o eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.O ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_no eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.NO ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_b eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.B ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_nb eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.NB ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_z eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.Z ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_nz eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.NZ ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_be eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.BE ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_nbe eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.NBE ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_s eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.S ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_ns eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.NS ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_p eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.P ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_np eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.NP ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_l eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.L ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_nl eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.NL ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_le eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.LE ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let setb_nle eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SETb.NLE ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let sgdt mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SGDT ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let sidt mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SIDT ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let shrd_ibow eaddr reg count = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SHRD.Ibow ") 
                  (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc count)) (Sledlib.String.of_string "\n")
    
    let shrd_ibod eaddr reg count = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SHRD.Ibod ") 
                  (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc count)) (Sledlib.String.of_string "\n")
    
    let shld_ibow eaddr reg count = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SHLD.Ibow ") 
                  (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc count)) (Sledlib.String.of_string "\n")
    
    let shld_ibod eaddr reg count = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SHLD.Ibod ") 
                  (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_reloc reg)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc count)) (Sledlib.String.of_string "\n")
    
    let shrd_clow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "SHRD.CLow ") (print_Eaddr eaddr)) 
              (Sledlib.String.of_string ", ")) (print_unsigned_reloc reg)) 
          (Sledlib.String.of_string ", CL")) (Sledlib.String.of_string "\n")
    
    let shrd_clod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "SHRD.CLod ") (print_Eaddr eaddr)) 
              (Sledlib.String.of_string ", ")) (print_unsigned_reloc reg)) 
          (Sledlib.String.of_string ", CL")) (Sledlib.String.of_string "\n")
    
    let shld_clow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "SHLD.CLow ") (print_Eaddr eaddr)) 
              (Sledlib.String.of_string ", ")) (print_unsigned_reloc reg)) 
          (Sledlib.String.of_string ", CL")) (Sledlib.String.of_string "\n")
    
    let shld_clod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "SHLD.CLod ") (print_Eaddr eaddr)) 
              (Sledlib.String.of_string ", ")) (print_unsigned_reloc reg)) 
          (Sledlib.String.of_string ", CL")) (Sledlib.String.of_string "\n")
    
    let sldt eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SLDT ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let smsw eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "SMSW ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let stc () = 
      Sledlib.String.cat (Sledlib.String.of_string "STC") 
        (Sledlib.String.of_string "\n")
    
    let std () = 
      Sledlib.String.cat (Sledlib.String.of_string "STD") 
        (Sledlib.String.of_string "\n")
    
    let sti () = 
      Sledlib.String.cat (Sledlib.String.of_string "STI") 
        (Sledlib.String.of_string "\n")
    
    let stosb () = 
      Sledlib.String.cat (Sledlib.String.of_string "STOSB") 
        (Sledlib.String.of_string "\n")
    
    let stosvow () = 
      Sledlib.String.cat (Sledlib.String.of_string "STOSvow") 
        (Sledlib.String.of_string "\n")
    
    let stosvod () = 
      Sledlib.String.cat (Sledlib.String.of_string "STOSvod") 
        (Sledlib.String.of_string "\n")
    
    let str mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "STR ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let test_al_ib i8 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "TEST.AL.Ib ") (print_unsigned_i8 i8)) 
        (Sledlib.String.of_string "\n")
    
    let test_eax_ivow i16 = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "TEST.eAX.Ivow ") 
          (print_unsigned_i16 i16)) (Sledlib.String.of_string "\n")
    
    let test_eax_ivod i32 = 
      Sledlib.String.cat 
        (Sledlib.String.cat (Sledlib.String.of_string "TEST.eAX.Ivod ") 
          (print_unsigned_i32 i32)) (Sledlib.String.of_string "\n")
    
    let test_eb_ib eaddr i8 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "TEST.Eb.Ib ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_i8 i8)) (Sledlib.String.of_string "\n")
    
    let test_ew_iw eaddr i16 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "TEST.Ew.Iw ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_i16 i16)) (Sledlib.String.of_string "\n")
    
    let test_ed_id eaddr i32 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "TEST.Ed.Id ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_i32 i32)) (Sledlib.String.of_string "\n")
    
    let test_eb_gb eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "TEST.Eb.Gb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let test_ev_gvow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "TEST.Ev.Gvow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let test_ev_gvod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "TEST.Ev.Gvod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let verr eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "VERR ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let verw eaddr = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "VERW ") (print_Eaddr eaddr)) (Sledlib.String.of_string "\n")
    
    let wait () = 
      Sledlib.String.cat (Sledlib.String.of_string "WAIT") 
        (Sledlib.String.of_string "\n")
    
    let wbinvd () = 
      Sledlib.String.cat (Sledlib.String.of_string "WBINVD") 
        (Sledlib.String.of_string "\n")
    
    let wrmsr () = 
      Sledlib.String.cat (Sledlib.String.of_string "WRMSR") 
        (Sledlib.String.of_string "\n")
    
    let xadd_eb_gb eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XADD.Eb.Gb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let xadd_ev_gvow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XADD.Ev.Gvow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let xadd_ev_gvod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XADD.Ev.Gvod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let xchgeaxow r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "XCHGeAXow ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let xchgeaxod r32 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "XCHGeAXod ") (print_unsigned_base r32)) 
        (Sledlib.String.of_string "\n")
    
    let xchg_eb_gb eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XCHG.Eb.Gb ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let xchg_ev_gvow eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XCHG.Ev.Gvow ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let xchg_ev_gvod eaddr reg = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "XCHG.Ev.Gvod ") 
              (print_Eaddr eaddr)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_reloc reg)) (Sledlib.String.of_string "\n")
    
    let xlatb () = 
      Sledlib.String.cat (Sledlib.String.of_string "XLATB") 
        (Sledlib.String.of_string "\n")
    
    let fclex () = 
      Sledlib.String.cat (Sledlib.String.of_string "FCLEX") 
        (Sledlib.String.of_string "\n")
    
    let fsave mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FSAVE ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fnstcw mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FNSTCW ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fnstenv mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FNSTENV ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fnstsw mem = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FNSTSW ") (print_Mem mem)) (Sledlib.String.of_string "\n")
    
    let fnstsw_ax () = 
      Sledlib.String.cat (Sledlib.String.of_string "FNSTSW.AX") 
        (Sledlib.String.of_string "\n")
    
    let fwait () = 
      Sledlib.String.cat (Sledlib.String.of_string "FWAIT") 
        (Sledlib.String.of_string "\n") 
  end

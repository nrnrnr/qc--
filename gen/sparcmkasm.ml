module M (R : Sledlib.RELOC_PRINT) = struct 
    
    module Reloc = R
    
    type reg_or_imm = Sledlib.String.t
    
    type address = Sledlib.String.t
    
    type regaddr = Sledlib.String.t
    
    type t = Sledlib.String.t
    
    let print_signed_simm13 simm13 = 
      Sledlib.String.signed_operand simm13
    
    let rs2_names : string array = Array.of_list ["%g0"; "%g1"; "%g2"; "%g3"; 
      "%g4"; "%g5"; "%g6"; "%g7"; "%o0"; "%o1"; "%o2"; "%o3"; "%o4"; "%o5"; 
      "%sp"; "%o7"; "%l0"; "%l1"; "%l2"; "%l3"; "%l4"; "%l5"; "%l6"; "%l7"; 
      "%i0"; "%i1"; "%i2"; "%i3"; "%i4"; "%i5"; "%fp"; "%i7"]
    
    let print_unsigned_rs2 rs2 = 
      Sledlib.String.getname rs2_names rs2 "rs2"
    
    let print_reg_or_imm reg_or_imm = 
      reg_or_imm
    
    let print_address address = 
      address
    
    let fd_names : string array = Array.of_list 
      ["%f0"; "%f1"; "%f2"; "%f3"; "%f4"; "%f5"; "%f6"; "%f7"; "%f8"; "%f9"; 
      "%f10"; "%f11"; "%f12"; "%f13"; "%f14"; "%f15"; "%f16"; "%f17"; "%f18"; 
      "%f19"; "%f20"; "%f21"; "%f22"; "%f23"; "%f24"; "%f25"; "%f26"; "%f27"; 
      "%f28"; "%f29"; "%f30"; "%f31"]
    
    let print_unsigned_fd fd = 
      Sledlib.String.getname fd_names fd "fd"
    
    let cd_names : string array = Array.of_list 
      ["%c0"; "%c1"; "%c2"; "%c3"; "%c4"; "%c5"; "%c6"; "%c7"; "%c8"; "%c9"; 
      "%c10"; "%c11"; "%c12"; "%c13"; "%c14"; "%c15"; "%c16"; "%c17"; "%c18"; 
      "%c19"; "%c20"; "%c21"; "%c22"; "%c23"; "%c24"; "%c25"; "%c26"; "%c27"; 
      "%c28"; "%c29"; "%c30"; "%c31"]
    
    let print_unsigned_cd cd = 
      Sledlib.String.getname cd_names cd "cd"
    
    let print_regaddr regaddr = 
      regaddr
    
    let print_unsigned_asi asi = 
      Sledlib.String.signed_operand asi
    
    let print_unsigned_rs1i rs1i = 
      Sledlib.String.signed_operand rs1i
    
    let print_unsigned_target target = 
      Sledlib.String.signed_operand target
    
    let print_unsigned_imm22 imm22 = 
      Sledlib.String.signed_operand imm22
    
    let imode simm13 = 
      print_signed_simm13 simm13
    
    let rmode rs2 = 
      print_unsigned_rs2 rs2
    
    let generala rs1 reg_or_imm = 
      Sledlib.String.cat (Sledlib.String.cat (print_unsigned_rs2 rs1) 
          (Sledlib.String.of_string " + ")) (print_reg_or_imm reg_or_imm)
    
    let dispa rs1 simm13 = 
      Sledlib.String.cat (Sledlib.String.cat (print_unsigned_rs2 rs1) 
          (Sledlib.String.of_string " + ")) (print_signed_simm13 simm13)
    
    let absolutea simm13 = 
      Sledlib.String.cat (Sledlib.String.of_string "%g0 +  ") 
        (print_signed_simm13 simm13)
    
    let indexa rs1 rs2 = 
      Sledlib.String.cat (Sledlib.String.cat (print_unsigned_rs2 rs1) 
          (Sledlib.String.of_string " + ")) (print_unsigned_rs2 rs2)
    
    let indirecta rs1 = 
      print_unsigned_rs2 rs1
    
    let ldsb address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ldsb ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ldsh address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ldsh ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ldub address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ldub ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let lduh address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "lduh ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ld address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ld ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ldstub address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ldstub ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let swap_ address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "swap ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ldd address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ldd ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ldf address fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ld ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let lddf address fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ldd ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let ldc address cd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ld ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_cd cd)) (Sledlib.String.of_string "\n")
    
    let lddc address cd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "ldd ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_cd cd)) (Sledlib.String.of_string "\n")
    
    let stb rd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "stb ") (print_unsigned_rs2 rd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let sth rd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "sth ") (print_unsigned_rs2 rd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let st rd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "st ") (print_unsigned_rs2 rd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let std rd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "std ") (print_unsigned_rs2 rd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let stf fd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "st ") (print_unsigned_fd fd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let stdf fd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "std ") (print_unsigned_fd fd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let stc cd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "st ") (print_unsigned_cd cd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let stdc cd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "std ") (print_unsigned_cd cd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let indexr rs1 rs2 = 
      Sledlib.String.cat (Sledlib.String.cat (print_unsigned_rs2 rs1) 
          (Sledlib.String.of_string " + ")) (print_unsigned_rs2 rs2)
    
    let indirectr rs1 = 
      print_unsigned_rs2 rs1
    
    let ldsba regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "ldsba ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let ldsha regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "ldsha ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let lduba regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "lduba ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let lduha regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "lduha ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let lda regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "lda ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let ldstuba regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "ldstuba ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let swapa regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "swapa ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let ldda regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "ldda ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let stba rd regaddr asi = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "stba ") (print_unsigned_rs2 rd)) 
                (Sledlib.String.of_string ", [")) (print_regaddr regaddr)) 
            (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
        (Sledlib.String.of_string "\n")
    
    let stha rd regaddr asi = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "stha ") (print_unsigned_rs2 rd)) 
                (Sledlib.String.of_string ", [")) (print_regaddr regaddr)) 
            (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
        (Sledlib.String.of_string "\n")
    
    let sta rd regaddr asi = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "sta ") (print_unsigned_rs2 rd)) 
                (Sledlib.String.of_string ", [")) (print_regaddr regaddr)) 
            (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
        (Sledlib.String.of_string "\n")
    
    let stda rd regaddr asi = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "stda ") (print_unsigned_rs2 rd)) 
                (Sledlib.String.of_string ", [")) (print_regaddr regaddr)) 
            (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
        (Sledlib.String.of_string "\n")
    
    let ldfsr address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ld ") 
              (Sledlib.String.of_string "[")) (print_address address)) 
          (Sledlib.String.of_string "], %fsr")) 
        (Sledlib.String.of_string "\n")
    
    let ldcsr address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "ld ") 
              (Sledlib.String.of_string "[")) (print_address address)) 
          (Sledlib.String.of_string "], %csr")) 
        (Sledlib.String.of_string "\n")
    
    let stfsr address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "st ") 
              (Sledlib.String.of_string "%fsr, [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let stcsr address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "st ") 
              (Sledlib.String.of_string "%csr, [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let stdfq address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "std ") 
              (Sledlib.String.of_string "%fq,  [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let stdcq address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "std ") 
              (Sledlib.String.of_string "%cq,  [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let rdy rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.of_string "rd ") 
            (Sledlib.String.of_string "%y,   ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let rdpsr rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.of_string "rd ") 
            (Sledlib.String.of_string "%psr, ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let rdwim rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.of_string "rd ") 
            (Sledlib.String.of_string "%wim, ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let rdtbr rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.of_string "rd ") 
            (Sledlib.String.of_string "%tbr, ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let wry rs1 reg_or_imm = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "wr ") (print_unsigned_rs2 rs1)) 
              (Sledlib.String.of_string ", ")) (print_reg_or_imm reg_or_imm)) 
          (Sledlib.String.of_string ", %y")) (Sledlib.String.of_string "\n")
    
    let wrpsr rs1 reg_or_imm = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "wr ") (print_unsigned_rs2 rs1)) 
              (Sledlib.String.of_string ", ")) (print_reg_or_imm reg_or_imm)) 
          (Sledlib.String.of_string ", %psr")) (Sledlib.String.of_string "\n")
    
    let wrwim rs1 reg_or_imm = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "wr ") (print_unsigned_rs2 rs1)) 
              (Sledlib.String.of_string ", ")) (print_reg_or_imm reg_or_imm)) 
          (Sledlib.String.of_string ", %wim")) (Sledlib.String.of_string "\n")
    
    let wrtbr rs1 reg_or_imm = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "wr ") (print_unsigned_rs2 rs1)) 
              (Sledlib.String.of_string ", ")) (print_reg_or_imm reg_or_imm)) 
          (Sledlib.String.of_string ", %tbr")) (Sledlib.String.of_string "\n")
    
    let rdasr rs1i rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "rd ") (Sledlib.String.of_string "%asr")) 
              (print_unsigned_rs1i rs1i)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let wrasr rs1 reg_or_imm rdi = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "wr ") (print_unsigned_rs2 rs1)) 
                (Sledlib.String.of_string ", ")) (print_reg_or_imm 
                reg_or_imm)) (Sledlib.String.of_string ", %asr")) 
          (print_unsigned_rs1i rdi)) (Sledlib.String.of_string "\n")
    
    let stbar () = 
      Sledlib.String.cat (Sledlib.String.of_string "stbar") 
        (Sledlib.String.of_string "\n")
    
    let and_ rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "and ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let andcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "andcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let andn rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "andn ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let andncc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "andncc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let or_ rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "or ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let orcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "orcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let orn rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "orn ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let orncc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "orncc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let xor rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "xor ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let xorcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "xorcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let xnor rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "xnor ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let xnorcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "xnorcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sll rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "sll ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let srl rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "srl ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sra rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "sra ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let add rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "add ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let addcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "addcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let addx rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "addx ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let addxcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "addxcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let taddcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "taddcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let taddcctv rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "taddcctv ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sub rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "sub ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let subcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "subcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let subx rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "subx ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let subxcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "subxcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let tsubcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "tsubcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let tsubcctv rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "tsubcctv ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let umul rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "umul ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let smul rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "smul ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let umulcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "umulcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let smulcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "smulcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let udiv rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "udiv ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sdiv rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "sdiv ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let udivcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "udivcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sdivcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "sdivcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let save rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "save ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let restore rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "restore ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let bn target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "bn ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bn_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bn,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let be target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "be ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let be_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "be,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let ble target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ble ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let ble_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ble,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bl target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "bl ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bl_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bl,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bleu target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bleu ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bleu_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bleu,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bcs target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bcs ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bcs_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bcs,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bneg target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bneg ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bneg_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bneg,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bvs target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bvs ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bvs_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bvs,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let ba target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "ba ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let ba_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "ba,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bne target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bne ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bne_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bne,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bg target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "bg ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bg_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bg,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bge target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bge ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bge_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bge,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bgu target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bgu ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bgu_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bgu,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bcc target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bcc ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bcc_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bcc,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bpos target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bpos ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bpos_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bpos,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bvc target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bvc ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bvc_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "bvc,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbn target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbn ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbn_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbn,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbne target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbne ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbne_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbne,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fblg target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fblg ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fblg_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fblg,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbul target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbul ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbul_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbul,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbl target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbl ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbl_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbl,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbug target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbug ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbug_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbug,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbg target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbg ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbg_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbg,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbu target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbu ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbu_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbu,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fba target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fba ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fba_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fba,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbe target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbe ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbe_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbe,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbue target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbue ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbue_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbue,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbge target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbge ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbge_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbge,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbuge target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbuge ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbuge_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbuge,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fble target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fble ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fble_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fble,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbule target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbule ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbule_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbule,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbo target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbo ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbo_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "fbo,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cbn target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cbn ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cbn_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cbn,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb123 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb123 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb123_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb123,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb12 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb12 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb12_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb12,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb13 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb13 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb13_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb13,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb1 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb1 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb1_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb1,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb23 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb23 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb23_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb23,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb2 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb2 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb2_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb2,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb3 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb3 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb3_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb3,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cba target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cba ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cba_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cba,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb0 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb0 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb0_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb0,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb03 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb03 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb03_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb03,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb02 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb02 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb02_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb02,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb023 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb023 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb023_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb023,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb01 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb01 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb01_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb01,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb013 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb013 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb013_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb013,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb012 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb012 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb012_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "cb012,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let call target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "call ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fmovs fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fmovs ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fnegs fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fnegs ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fabss fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fabss ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsqrts fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fsqrts ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsqrtd fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fsqrtd ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsqrtq fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fsqrtq ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fitos fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fitos ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fstoi fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fstoi ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fitod fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fitod ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fstod fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fstod ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fitoq fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fitoq ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fstoq fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fstoq ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdtoi fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fdtoi ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdtos fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fdtos ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fqtos fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fqtos ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fqtoi fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fqtoi ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fqtod fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fqtod ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdtoq fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fdtoq ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fadds fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fadds ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsubs fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fsubs ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fmuls fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fmuls ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdivs fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fdivs ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let faddd fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "faddd ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsubd fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fsubd ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fmuld fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fmuld ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdivd fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fdivd ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let faddq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "faddq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsubq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fsubq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fmulq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fmulq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdivq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fdivq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsmuld fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fsmuld ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdmulq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "fdmulq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fcmps fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fcmps ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmpes fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fcmpes ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmpd fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fcmpd ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmped fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fcmped ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmpq fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fcmpq ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmpeq fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "fcmpeq ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let nop () = 
      Sledlib.String.cat (Sledlib.String.of_string "nop") 
        (Sledlib.String.of_string "\n")
    
    let flush address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "flush ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let jmpl address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "jmpl ") 
              (print_address address)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let rett address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "rett ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tn address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "tn ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let te address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "te ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let tle address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tle ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tl address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "tl ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let tleu address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tleu ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tcs address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tcs ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tneg address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tneg ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tvs address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tvs ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let ta address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "ta ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let tne address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tne ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tg address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "tg ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let tge address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tge ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tgu address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tgu ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tcc address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tcc ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tpos address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tpos ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tvc address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tvc ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let unimp imm22 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "unimp ") (print_unsigned_imm22 imm22)) 
        (Sledlib.String.of_string "\n")
    
    let sethi n rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "sethi ") (Sledlib.String.of_string "%hi(")) 
              (print_unsigned_target n)) (Sledlib.String.of_string "), ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let decode_sethi n rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "sethi ") (Sledlib.String.of_string "%hi(")) 
              (print_unsigned_target n)) (Sledlib.String.of_string "), ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let jmp address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "jmp ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let calla address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "call ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tst rs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "tst ") (print_unsigned_rs2 rs2)) (Sledlib.String.of_string "\n")
    
    let ret () = 
      Sledlib.String.cat (Sledlib.String.of_string "ret") 
        (Sledlib.String.of_string "\n")
    
    let retl () = 
      Sledlib.String.cat (Sledlib.String.of_string "retl") 
        (Sledlib.String.of_string "\n")
    
    let restore_ () = 
      Sledlib.String.cat (Sledlib.String.of_string "restore") 
        (Sledlib.String.of_string "\n")
    
    let save_ () = 
      Sledlib.String.cat (Sledlib.String.of_string "save") 
        (Sledlib.String.of_string "\n")
    
    let not rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "not ") (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let not2 rs1 rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "not ") 
              (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let neg rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "neg ") (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let neg2 rs2 rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "neg ") 
              (print_unsigned_rs2 rs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let inc val_ rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "inc ") 
              (print_unsigned_target val_)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let inccc val_ rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "inccc ") 
              (print_unsigned_target val_)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let dec val_ rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "dec ") 
              (print_unsigned_target val_)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let deccc val_ rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "deccc ") 
              (print_unsigned_target val_)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let cmp rs1 reg_or_imm = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "cmp ") 
              (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
          (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string "\n")
    
    let btst reg_or_imm rs1 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "btst ") 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rs1)) (Sledlib.String.of_string "\n")
    
    let bset reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "bset ") 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let bclr reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "bclr ") 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let btog reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "btog ") 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let mov reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "mov ") 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let movr rs2 rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "mov ") 
              (print_unsigned_rs2 rs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let clr rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "clr ") (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let clrw address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "clrw ") 
              (Sledlib.String.of_string "[")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let clrb address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "clrb ") 
              (Sledlib.String.of_string "[")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let clrh address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "clrh ") 
              (Sledlib.String.of_string "[")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let set val_ rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "set ") 
              (print_unsigned_target val_)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n") 
  end

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
                  "LDSB ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ldsh address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "LDSH ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ldub address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "LDUB ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let lduh address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "LDUH ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ld address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "LD ") (Sledlib.String.of_string "[")) 
              (print_address address)) (Sledlib.String.of_string "], ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let ldstub address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
                  "LDSTUB ") (Sledlib.String.of_string "[")) 
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
                  "LDD ") (Sledlib.String.of_string "[")) 
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
                (Sledlib.String.of_string "STB ") (print_unsigned_rs2 rd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let sth rd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "STH ") (print_unsigned_rs2 rd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let st rd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "ST ") (print_unsigned_rs2 rd)) 
              (Sledlib.String.of_string ", [")) (print_address address)) 
          (Sledlib.String.of_string "]")) (Sledlib.String.of_string "\n")
    
    let std rd address = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.of_string "STD ") (print_unsigned_rs2 rd)) 
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
                  (Sledlib.String.cat (Sledlib.String.of_string "LDSBA ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let ldsha regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "LDSHA ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let lduba regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "LDUBA ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let lduha regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "LDUHA ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let lda regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "LDA ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let ldstuba regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "LDSTUBA ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let swapa regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "SWAPA ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let ldda regaddr asi rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.cat (Sledlib.String.of_string "LDDA ") 
                    (Sledlib.String.of_string "[")) (print_regaddr regaddr)) 
                (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
            (Sledlib.String.of_string ", ")) (print_unsigned_rs2 rd)) 
        (Sledlib.String.of_string "\n")
    
    let stba rd regaddr asi = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "STBA ") (print_unsigned_rs2 rd)) 
                (Sledlib.String.of_string ", [")) (print_regaddr regaddr)) 
            (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
        (Sledlib.String.of_string "\n")
    
    let stha rd regaddr asi = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "STHA ") (print_unsigned_rs2 rd)) 
                (Sledlib.String.of_string ", [")) (print_regaddr regaddr)) 
            (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
        (Sledlib.String.of_string "\n")
    
    let sta rd regaddr asi = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "STA ") (print_unsigned_rs2 rd)) 
                (Sledlib.String.of_string ", [")) (print_regaddr regaddr)) 
            (Sledlib.String.of_string "]")) (print_unsigned_asi asi)) 
        (Sledlib.String.of_string "\n")
    
    let stda rd regaddr asi = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                  (Sledlib.String.of_string "STDA ") (print_unsigned_rs2 rd)) 
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
      Sledlib.String.cat (Sledlib.String.of_string "STBAR") 
        (Sledlib.String.of_string "\n")
    
    let and_ rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "AND ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let andcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ANDcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let andn rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ANDN ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let andncc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ANDNcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let or_ rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "OR ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let orcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ORcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let orn rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ORN ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let orncc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ORNcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let xor rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "XOR ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let xorcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "XORcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let xnor rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "XNOR ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let xnorcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "XNORcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sll rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SLL ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let srl rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SRL ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sra rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SRA ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let add rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ADD ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let addcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ADDcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let addx rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ADDX ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let addxcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "ADDXcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let taddcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "TADDcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let taddcctv rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "TADDccTV ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sub rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SUB ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let subcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SUBcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let subx rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SUBX ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let subxcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SUBXcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let tsubcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "TSUBcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let tsubcctv rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "TSUBccTV ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let umul rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "UMUL ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let smul rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SMUL ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let umulcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "UMULcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let smulcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SMULcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let udiv rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "UDIV ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sdiv rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SDIV ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let udivcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "UDIVcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let sdivcc rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SDIVcc ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let save rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "SAVE ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let restore rs1 reg_or_imm rd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "RESTORE ") 
                  (print_unsigned_rs2 rs1)) (Sledlib.String.of_string ", ")) 
              (print_reg_or_imm reg_or_imm)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let bn target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "BN ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bn_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BN,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let be target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "BE ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let be_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let ble target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BLE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let ble_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BLE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bl target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "BL ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bl_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BL,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bleu target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BLEU ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bleu_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BLEU,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bcs target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BCS ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bcs_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BCS,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bneg target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BNEG ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bneg_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BNEG,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bvs target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BVS ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bvs_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BVS,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let ba target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "BA ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let ba_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BA,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bne target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BNE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bne_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BNE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bg target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "BG ") 
          (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bg_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BG,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bge target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BGE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bge_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BGE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bgu target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BGU ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bgu_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BGU,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bcc target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BCC ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bcc_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BCC,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bpos target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BPOS ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bpos_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BPOS,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bvc target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BVC ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let bvc_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "BVC,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbn target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBN ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbn_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBN,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbne target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBNE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbne_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBNE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fblg target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBLG ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fblg_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBLG,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbul target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBUL ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbul_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBUL,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbl target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBL ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbl_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBL,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbug target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBUG ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbug_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBUG,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbg target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBG ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbg_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBG,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbu target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBU ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbu_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBU,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fba target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBA ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fba_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBA,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbe target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbe_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbue target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBUE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbue_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBUE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbge target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBGE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbge_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBGE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbuge target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBUGE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbuge_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBUGE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fble target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBLE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fble_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBLE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbule target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBULE ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbule_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBULE,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbo target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBO ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fbo_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FBO,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cbn target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CBN ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cbn_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CBN,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb123 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB123 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb123_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB123,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb12 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB12 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb12_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB12,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb13 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB13 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb13_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB13,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb1 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB1 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb1_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB1,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb23 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB23 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb23_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB23,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb2 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB2 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb2_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB2,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb3 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB3 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb3_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB3,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cba target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CBA ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cba_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CBA,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb0 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB0 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb0_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB0,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb03 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB03 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb03_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB03,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb02 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB02 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb02_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB02,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb023 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB023 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb023_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB023,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb01 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB01 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb01_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB01,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb013 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB013 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb013_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB013,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb012 target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB012 ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let cb012_a target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "CB012,a ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let call target = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "call ") (R.to_string print_unsigned_target target)) 
        (Sledlib.String.of_string "\n")
    
    let fmovs fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FMOVs ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fnegs fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FNEGs ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fabss fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FABSs ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsqrts fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FSQRTs ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsqrtd fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FSQRTd ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsqrtq fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FSQRTq ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fitos fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FiTOs ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fstoi fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FsTOi ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fitod fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FiTOd ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fstod fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FsTOd ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fitoq fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FiTOq ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fstoq fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FsTOq ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdtoi fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FdTOi ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdtos fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FdTOs ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fqtos fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FqTOs ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fqtoi fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FqTOi ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fqtod fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FqTOd ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdtoq fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FdTOq ") 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fadds fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FADDs ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsubs fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FSUBs ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fmuls fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FMULs ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdivs fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FDIVs ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let faddd fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FADDd ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsubd fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FSUBd ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fmuld fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FMULd ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdivd fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FDIVd ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let faddq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FADDq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsubq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FSUBq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fmulq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FMULq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdivq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FDIVq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fsmuld fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FsMULd ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fdmulq fs1 fs2 fd = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
                (Sledlib.String.cat (Sledlib.String.of_string "FdMULq ") 
                  (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
              (print_unsigned_fd fs2)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fd)) (Sledlib.String.of_string "\n")
    
    let fcmps fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FCMPs ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmpes fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FCMPEs ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmpd fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FCMPd ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmped fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FCMPEd ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmpq fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FCMPq ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let fcmpeq fs1 fs2 = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "FCMPEq ") 
              (print_unsigned_fd fs1)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_fd fs2)) (Sledlib.String.of_string "\n")
    
    let nop () = 
      Sledlib.String.cat (Sledlib.String.of_string "NOP") 
        (Sledlib.String.of_string "\n")
    
    let flush address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "FLUSH ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let jmpl address rd = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.cat 
            (Sledlib.String.cat (Sledlib.String.of_string "JMPL ") 
              (print_address address)) (Sledlib.String.of_string ", ")) 
          (print_unsigned_rs2 rd)) (Sledlib.String.of_string "\n")
    
    let rett address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "RETT ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tn address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "TN ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let te address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "TE ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let tle address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TLE ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tl address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "TL ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let tleu address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TLEU ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tcs address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TCS ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tneg address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TNEG ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tvs address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TVS ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let ta address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "TA ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let tne address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TNE ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tg address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string "TG ") 
          (print_address address)) (Sledlib.String.of_string "\n")
    
    let tge address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TGE ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tgu address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TGU ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tcc address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TCC ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tpos address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TPOS ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let tvc address = 
      Sledlib.String.cat (Sledlib.String.cat (Sledlib.String.of_string 
            "TVC ") (print_address address)) (Sledlib.String.of_string "\n")
    
    let unimp imm22 = 
      Sledlib.String.cat (Sledlib.String.cat 
          (Sledlib.String.of_string "UNIMP ") (print_unsigned_imm22 imm22)) 
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


module P = Pprint
module S = Syntax


type exp = (allTypes) Syntax.bExp
and allTypes =
  T__reg_or_imm of t__reg_or_imm
| T__address of t__address
| T__regaddr of t__regaddr
| T__t of t__t

and t__reg_or_imm =   Imode of (exp)
                    | Rmode of (exp)
                    
and t__address =
  Generala of (exp * exp)
| Dispa of (exp * exp)
| Absolutea of (exp)
| Indexa of (exp * exp)
| Indirecta of (exp)

and t__regaddr =   Indexr of (exp * exp)
                 | Indirectr of (exp)
                 
and t__t =
  Ldsb of (exp * exp)
| Ldsh of (exp * exp)
| Ldub of (exp * exp)
| Lduh of (exp * exp)
| Ld of (exp * exp)
| Ldstub of (exp * exp)
| Swap_ of (exp * exp)
| Ldd of (exp * exp)
| Ldf of (exp * exp)
| Lddf of (exp * exp)
| Ldc of (exp * exp)
| Lddc of (exp * exp)
| Stb of (exp * exp)
| Sth of (exp * exp)
| St of (exp * exp)
| Std of (exp * exp)
| Stf of (exp * exp)
| Stdf of (exp * exp)
| Stc of (exp * exp)
| Stdc of (exp * exp)
| Ldsba of (exp * exp * exp)
| Ldsha of (exp * exp * exp)
| Lduba of (exp * exp * exp)
| Lduha of (exp * exp * exp)
| Lda of (exp * exp * exp)
| Ldstuba of (exp * exp * exp)
| Swapa of (exp * exp * exp)
| Ldda of (exp * exp * exp)
| Stba of (exp * exp * exp)
| Stha of (exp * exp * exp)
| Sta of (exp * exp * exp)
| Stda of (exp * exp * exp)
| Ldfsr of (exp)
| Ldcsr of (exp)
| Stfsr of (exp)
| Stcsr of (exp)
| Stdfq of (exp)
| Stdcq of (exp)
| Rdy of (exp)
| Rdpsr of (exp)
| Rdwim of (exp)
| Rdtbr of (exp)
| Wry of (exp * exp)
| Wrpsr of (exp * exp)
| Wrwim of (exp * exp)
| Wrtbr of (exp * exp)
| Rdasr of (exp * exp)
| Wrasr of (exp * exp * exp)
| Stbar of unit
| And of (exp * exp * exp)
| Andcc of (exp * exp * exp)
| Andn of (exp * exp * exp)
| Andncc of (exp * exp * exp)
| Or of (exp * exp * exp)
| Orcc of (exp * exp * exp)
| Orn of (exp * exp * exp)
| Orncc of (exp * exp * exp)
| Xor of (exp * exp * exp)
| Xorcc of (exp * exp * exp)
| Xnor of (exp * exp * exp)
| Xnorcc of (exp * exp * exp)
| Sll of (exp * exp * exp)
| Srl of (exp * exp * exp)
| Sra of (exp * exp * exp)
| Add of (exp * exp * exp)
| Addcc of (exp * exp * exp)
| Addx of (exp * exp * exp)
| Addxcc of (exp * exp * exp)
| Taddcc of (exp * exp * exp)
| Taddcctv of (exp * exp * exp)
| Sub of (exp * exp * exp)
| Subcc of (exp * exp * exp)
| Subx of (exp * exp * exp)
| Subxcc of (exp * exp * exp)
| Tsubcc of (exp * exp * exp)
| Tsubcctv of (exp * exp * exp)
| Mulscc of (exp * exp * exp)
| Umul of (exp * exp * exp)
| Smul of (exp * exp * exp)
| Umulcc of (exp * exp * exp)
| Smulcc of (exp * exp * exp)
| Udiv of (exp * exp * exp)
| Sdiv of (exp * exp * exp)
| Udivcc of (exp * exp * exp)
| Sdivcc of (exp * exp * exp)
| Save of (exp * exp * exp)
| Restore of (exp * exp * exp)
| Bn of (exp)
| Bn_a of (exp)
| Be of (exp)
| Be_a of (exp)
| Ble of (exp)
| Ble_a of (exp)
| Bl of (exp)
| Bl_a of (exp)
| Bleu of (exp)
| Bleu_a of (exp)
| Bcs of (exp)
| Bcs_a of (exp)
| Bneg of (exp)
| Bneg_a of (exp)
| Bvs of (exp)
| Bvs_a of (exp)
| Ba of (exp)
| Ba_a of (exp)
| Bne of (exp)
| Bne_a of (exp)
| Bg of (exp)
| Bg_a of (exp)
| Bge of (exp)
| Bge_a of (exp)
| Bgu of (exp)
| Bgu_a of (exp)
| Bcc of (exp)
| Bcc_a of (exp)
| Bpos of (exp)
| Bpos_a of (exp)
| Bvc of (exp)
| Bvc_a of (exp)
| Fbn of (exp)
| Fbn_a of (exp)
| Fbne of (exp)
| Fbne_a of (exp)
| Fblg of (exp)
| Fblg_a of (exp)
| Fbul of (exp)
| Fbul_a of (exp)
| Fbl of (exp)
| Fbl_a of (exp)
| Fbug of (exp)
| Fbug_a of (exp)
| Fbg of (exp)
| Fbg_a of (exp)
| Fbu of (exp)
| Fbu_a of (exp)
| Fba of (exp)
| Fba_a of (exp)
| Fbe of (exp)
| Fbe_a of (exp)
| Fbue of (exp)
| Fbue_a of (exp)
| Fbge of (exp)
| Fbge_a of (exp)
| Fbuge of (exp)
| Fbuge_a of (exp)
| Fble of (exp)
| Fble_a of (exp)
| Fbule of (exp)
| Fbule_a of (exp)
| Fbo of (exp)
| Fbo_a of (exp)
| Cbn of (exp)
| Cbn_a of (exp)
| Cb123 of (exp)
| Cb123_a of (exp)
| Cb12 of (exp)
| Cb12_a of (exp)
| Cb13 of (exp)
| Cb13_a of (exp)
| Cb1 of (exp)
| Cb1_a of (exp)
| Cb23 of (exp)
| Cb23_a of (exp)
| Cb2 of (exp)
| Cb2_a of (exp)
| Cb3 of (exp)
| Cb3_a of (exp)
| Cba of (exp)
| Cba_a of (exp)
| Cb0 of (exp)
| Cb0_a of (exp)
| Cb03 of (exp)
| Cb03_a of (exp)
| Cb02 of (exp)
| Cb02_a of (exp)
| Cb023 of (exp)
| Cb023_a of (exp)
| Cb01 of (exp)
| Cb01_a of (exp)
| Cb013 of (exp)
| Cb013_a of (exp)
| Cb012 of (exp)
| Cb012_a of (exp)
| Call of (exp)
| Fmovs of (exp * exp)
| Fnegs of (exp * exp)
| Fabss of (exp * exp)
| Fsqrts of (exp * exp)
| Fsqrtd of (exp * exp)
| Fsqrtq of (exp * exp)
| Fitos of (exp * exp)
| Fstoi of (exp * exp)
| Fitod of (exp * exp)
| Fstod of (exp * exp)
| Fitoq of (exp * exp)
| Fstoq of (exp * exp)
| Fdtoi of (exp * exp)
| Fdtos of (exp * exp)
| Fqtos of (exp * exp)
| Fqtoi of (exp * exp)
| Fqtod of (exp * exp)
| Fdtoq of (exp * exp)
| Fadds of (exp * exp * exp)
| Fsubs of (exp * exp * exp)
| Fmuls of (exp * exp * exp)
| Fdivs of (exp * exp * exp)
| Faddd of (exp * exp * exp)
| Fsubd of (exp * exp * exp)
| Fmuld of (exp * exp * exp)
| Fdivd of (exp * exp * exp)
| Faddq of (exp * exp * exp)
| Fsubq of (exp * exp * exp)
| Fmulq of (exp * exp * exp)
| Fdivq of (exp * exp * exp)
| Fsmuld of (exp * exp * exp)
| Fdmulq of (exp * exp * exp)
| Fcmps of (exp * exp)
| Fcmpes of (exp * exp)
| Fcmpd of (exp * exp)
| Fcmped of (exp * exp)
| Fcmpq of (exp * exp)
| Fcmpeq of (exp * exp)
| Nop of unit
| Flush of (exp)
| Jmpl of (exp * exp)
| Rett of (exp)
| Tn of (exp)
| Te of (exp)
| Tle of (exp)
| Tl of (exp)
| Tleu of (exp)
| Tcs of (exp)
| Tneg of (exp)
| Tvs of (exp)
| Ta of (exp)
| Tne of (exp)
| Tg of (exp)
| Tge of (exp)
| Tgu of (exp)
| Tcc of (exp)
| Tpos of (exp)
| Tvc of (exp)
| Unimp of (exp)
| Sethi of (exp * exp)
| Decode_sethi of (exp * exp)
| Set of (exp * exp)



let ppAll =
fun ppExp ->
  fun x ->
    (match x with 
       | T__reg_or_imm x ->
      (match x with 
         | Imode (x450) ->
        P.ps "Imode";P.psp ();P.open_ 1;P.ps "(";ppExp x450;P.ps
          ")";P.close ();()
         | Rmode (x451) ->
        P.ps "Rmode";P.psp ();P.open_ 1;P.ps "(";ppExp x451;P.ps
          ")";P.close ();())
       | T__address x ->
      (match x with 
         | Generala (x442,x443) ->
        P.ps "Generala";P.psp ();P.open_ 1;P.ps "(";ppExp x442;P.ps
          ",";P.psp ();ppExp x443;P.ps ")";P.close ();()
         | Dispa (x444,x445) ->
        P.ps "Dispa";P.psp ();P.open_ 1;P.ps "(";ppExp x444;P.ps
          ",";P.psp ();ppExp x445;P.ps ")";P.close ();()
         | Absolutea (x446) ->
        P.ps "Absolutea";P.psp ();P.open_ 1;P.ps "(";ppExp x446;P.ps
          ")";P.close ();()
         | Indexa (x447,x448) ->
        P.ps "Indexa";P.psp ();P.open_ 1;P.ps "(";ppExp x447;P.ps
          ",";P.psp ();ppExp x448;P.ps ")";P.close ();()
         | Indirecta (x449) ->
        P.ps "Indirecta";P.psp ();P.open_ 1;P.ps "(";ppExp x449;P.ps
          ")";P.close ();())
       | T__regaddr x ->
      (match x with 
         | Indexr (x439,x440) ->
        P.ps "Indexr";P.psp ();P.open_ 1;P.ps "(";ppExp x439;P.ps
          ",";P.psp ();ppExp x440;P.ps ")";P.close ();()
         | Indirectr (x441) ->
        P.ps "Indirectr";P.psp ();P.open_ 1;P.ps "(";ppExp x441;P.ps
          ")";P.close ();())
       | T__t x ->
      (match x with 
         | Ldsb (x12,x13) ->
        P.ps "Ldsb";P.psp ();P.open_ 1;P.ps "(";ppExp x12;P.ps
          ",";P.psp ();ppExp x13;P.ps ")";P.close ();()
         | Ldsh (x14,x15) ->
        P.ps "Ldsh";P.psp ();P.open_ 1;P.ps "(";ppExp x14;P.ps
          ",";P.psp ();ppExp x15;P.ps ")";P.close ();()
         | Ldub (x16,x17) ->
        P.ps "Ldub";P.psp ();P.open_ 1;P.ps "(";ppExp x16;P.ps
          ",";P.psp ();ppExp x17;P.ps ")";P.close ();()
         | Lduh (x18,x19) ->
        P.ps "Lduh";P.psp ();P.open_ 1;P.ps "(";ppExp x18;P.ps
          ",";P.psp ();ppExp x19;P.ps ")";P.close ();()
         | Ld (x20,x21) ->
        P.ps "Ld";P.psp ();P.open_ 1;P.ps "(";ppExp x20;P.ps ",";P.psp
          ();ppExp x21;P.ps ")";P.close ();()
         | Ldstub (x22,x23) ->
        P.ps "Ldstub";P.psp ();P.open_ 1;P.ps "(";ppExp x22;P.ps
          ",";P.psp ();ppExp x23;P.ps ")";P.close ();()
         | Swap_ (x24,x25) ->
        P.ps "Swap_";P.psp ();P.open_ 1;P.ps "(";ppExp x24;P.ps
          ",";P.psp ();ppExp x25;P.ps ")";P.close ();()
         | Ldd (x26,x27) ->
        P.ps "Ldd";P.psp ();P.open_ 1;P.ps "(";ppExp x26;P.ps ",";P.psp
          ();ppExp x27;P.ps ")";P.close ();()
         | Ldf (x28,x29) ->
        P.ps "Ldf";P.psp ();P.open_ 1;P.ps "(";ppExp x28;P.ps ",";P.psp
          ();ppExp x29;P.ps ")";P.close ();()
         | Lddf (x30,x31) ->
        P.ps "Lddf";P.psp ();P.open_ 1;P.ps "(";ppExp x30;P.ps
          ",";P.psp ();ppExp x31;P.ps ")";P.close ();()
         | Ldc (x32,x33) ->
        P.ps "Ldc";P.psp ();P.open_ 1;P.ps "(";ppExp x32;P.ps ",";P.psp
          ();ppExp x33;P.ps ")";P.close ();()
         | Lddc (x34,x35) ->
        P.ps "Lddc";P.psp ();P.open_ 1;P.ps "(";ppExp x34;P.ps
          ",";P.psp ();ppExp x35;P.ps ")";P.close ();()
         | Stb (x36,x37) ->
        P.ps "Stb";P.psp ();P.open_ 1;P.ps "(";ppExp x36;P.ps ",";P.psp
          ();ppExp x37;P.ps ")";P.close ();()
         | Sth (x38,x39) ->
        P.ps "Sth";P.psp ();P.open_ 1;P.ps "(";ppExp x38;P.ps ",";P.psp
          ();ppExp x39;P.ps ")";P.close ();()
         | St (x40,x41) ->
        P.ps "St";P.psp ();P.open_ 1;P.ps "(";ppExp x40;P.ps ",";P.psp
          ();ppExp x41;P.ps ")";P.close ();()
         | Std (x42,x43) ->
        P.ps "Std";P.psp ();P.open_ 1;P.ps "(";ppExp x42;P.ps ",";P.psp
          ();ppExp x43;P.ps ")";P.close ();()
         | Stf (x44,x45) ->
        P.ps "Stf";P.psp ();P.open_ 1;P.ps "(";ppExp x44;P.ps ",";P.psp
          ();ppExp x45;P.ps ")";P.close ();()
         | Stdf (x46,x47) ->
        P.ps "Stdf";P.psp ();P.open_ 1;P.ps "(";ppExp x46;P.ps
          ",";P.psp ();ppExp x47;P.ps ")";P.close ();()
         | Stc (x48,x49) ->
        P.ps "Stc";P.psp ();P.open_ 1;P.ps "(";ppExp x48;P.ps ",";P.psp
          ();ppExp x49;P.ps ")";P.close ();()
         | Stdc (x50,x51) ->
        P.ps "Stdc";P.psp ();P.open_ 1;P.ps "(";ppExp x50;P.ps
          ",";P.psp ();ppExp x51;P.ps ")";P.close ();()
         | Ldsba (x52,x53,x54) ->
        P.ps "Ldsba";P.psp ();P.open_ 1;P.ps "(";ppExp x52;P.ps
          ",";P.psp ();ppExp x53;P.ps ",";P.psp ();ppExp x54;P.ps
          ")";P.close ();()
         | Ldsha (x55,x56,x57) ->
        P.ps "Ldsha";P.psp ();P.open_ 1;P.ps "(";ppExp x55;P.ps
          ",";P.psp ();ppExp x56;P.ps ",";P.psp ();ppExp x57;P.ps
          ")";P.close ();()
         | Lduba (x58,x59,x60) ->
        P.ps "Lduba";P.psp ();P.open_ 1;P.ps "(";ppExp x58;P.ps
          ",";P.psp ();ppExp x59;P.ps ",";P.psp ();ppExp x60;P.ps
          ")";P.close ();()
         | Lduha (x61,x62,x63) ->
        P.ps "Lduha";P.psp ();P.open_ 1;P.ps "(";ppExp x61;P.ps
          ",";P.psp ();ppExp x62;P.ps ",";P.psp ();ppExp x63;P.ps
          ")";P.close ();()
         | Lda (x64,x65,x66) ->
        P.ps "Lda";P.psp ();P.open_ 1;P.ps "(";ppExp x64;P.ps ",";P.psp
          ();ppExp x65;P.ps ",";P.psp ();ppExp x66;P.ps ")";P.close
          ();()
         | Ldstuba (x67,x68,x69) ->
        P.ps "Ldstuba";P.psp ();P.open_ 1;P.ps "(";ppExp x67;P.ps
          ",";P.psp ();ppExp x68;P.ps ",";P.psp ();ppExp x69;P.ps
          ")";P.close ();()
         | Swapa (x70,x71,x72) ->
        P.ps "Swapa";P.psp ();P.open_ 1;P.ps "(";ppExp x70;P.ps
          ",";P.psp ();ppExp x71;P.ps ",";P.psp ();ppExp x72;P.ps
          ")";P.close ();()
         | Ldda (x73,x74,x75) ->
        P.ps "Ldda";P.psp ();P.open_ 1;P.ps "(";ppExp x73;P.ps
          ",";P.psp ();ppExp x74;P.ps ",";P.psp ();ppExp x75;P.ps
          ")";P.close ();()
         | Stba (x76,x77,x78) ->
        P.ps "Stba";P.psp ();P.open_ 1;P.ps "(";ppExp x76;P.ps
          ",";P.psp ();ppExp x77;P.ps ",";P.psp ();ppExp x78;P.ps
          ")";P.close ();()
         | Stha (x79,x80,x81) ->
        P.ps "Stha";P.psp ();P.open_ 1;P.ps "(";ppExp x79;P.ps
          ",";P.psp ();ppExp x80;P.ps ",";P.psp ();ppExp x81;P.ps
          ")";P.close ();()
         | Sta (x82,x83,x84) ->
        P.ps "Sta";P.psp ();P.open_ 1;P.ps "(";ppExp x82;P.ps ",";P.psp
          ();ppExp x83;P.ps ",";P.psp ();ppExp x84;P.ps ")";P.close
          ();()
         | Stda (x85,x86,x87) ->
        P.ps "Stda";P.psp ();P.open_ 1;P.ps "(";ppExp x85;P.ps
          ",";P.psp ();ppExp x86;P.ps ",";P.psp ();ppExp x87;P.ps
          ")";P.close ();()
         | Ldfsr (x88) ->
        P.ps "Ldfsr";P.psp ();P.open_ 1;P.ps "(";ppExp x88;P.ps
          ")";P.close ();()
         | Ldcsr (x89) ->
        P.ps "Ldcsr";P.psp ();P.open_ 1;P.ps "(";ppExp x89;P.ps
          ")";P.close ();()
         | Stfsr (x90) ->
        P.ps "Stfsr";P.psp ();P.open_ 1;P.ps "(";ppExp x90;P.ps
          ")";P.close ();()
         | Stcsr (x91) ->
        P.ps "Stcsr";P.psp ();P.open_ 1;P.ps "(";ppExp x91;P.ps
          ")";P.close ();()
         | Stdfq (x92) ->
        P.ps "Stdfq";P.psp ();P.open_ 1;P.ps "(";ppExp x92;P.ps
          ")";P.close ();()
         | Stdcq (x93) ->
        P.ps "Stdcq";P.psp ();P.open_ 1;P.ps "(";ppExp x93;P.ps
          ")";P.close ();()
         | Rdy (x94) ->
        P.ps "Rdy";P.psp ();P.open_ 1;P.ps "(";ppExp x94;P.ps
          ")";P.close ();()
         | Rdpsr (x95) ->
        P.ps "Rdpsr";P.psp ();P.open_ 1;P.ps "(";ppExp x95;P.ps
          ")";P.close ();()
         | Rdwim (x96) ->
        P.ps "Rdwim";P.psp ();P.open_ 1;P.ps "(";ppExp x96;P.ps
          ")";P.close ();()
         | Rdtbr (x97) ->
        P.ps "Rdtbr";P.psp ();P.open_ 1;P.ps "(";ppExp x97;P.ps
          ")";P.close ();()
         | Wry (x98,x99) ->
        P.ps "Wry";P.psp ();P.open_ 1;P.ps "(";ppExp x98;P.ps ",";P.psp
          ();ppExp x99;P.ps ")";P.close ();()
         | Wrpsr (x100,x101) ->
        P.ps "Wrpsr";P.psp ();P.open_ 1;P.ps "(";ppExp x100;P.ps
          ",";P.psp ();ppExp x101;P.ps ")";P.close ();()
         | Wrwim (x102,x103) ->
        P.ps "Wrwim";P.psp ();P.open_ 1;P.ps "(";ppExp x102;P.ps
          ",";P.psp ();ppExp x103;P.ps ")";P.close ();()
         | Wrtbr (x104,x105) ->
        P.ps "Wrtbr";P.psp ();P.open_ 1;P.ps "(";ppExp x104;P.ps
          ",";P.psp ();ppExp x105;P.ps ")";P.close ();()
         | Rdasr (x106,x107) ->
        P.ps "Rdasr";P.psp ();P.open_ 1;P.ps "(";ppExp x106;P.ps
          ",";P.psp ();ppExp x107;P.ps ")";P.close ();()
         | Wrasr (x108,x109,x110) ->
        P.ps "Wrasr";P.psp ();P.open_ 1;P.ps "(";ppExp x108;P.ps
          ",";P.psp ();ppExp x109;P.ps ",";P.psp ();ppExp x110;P.ps
          ")";P.close ();()
         | Stbar () ->
        P.ps "Stbar";P.psp ();P.open_ 1;P.ps "(";P.ps ")";P.close ();()
         | And (x111,x112,x113) ->
        P.ps "And";P.psp ();P.open_ 1;P.ps "(";ppExp x111;P.ps
          ",";P.psp ();ppExp x112;P.ps ",";P.psp ();ppExp x113;P.ps
          ")";P.close ();()
         | Andcc (x114,x115,x116) ->
        P.ps "Andcc";P.psp ();P.open_ 1;P.ps "(";ppExp x114;P.ps
          ",";P.psp ();ppExp x115;P.ps ",";P.psp ();ppExp x116;P.ps
          ")";P.close ();()
         | Andn (x117,x118,x119) ->
        P.ps "Andn";P.psp ();P.open_ 1;P.ps "(";ppExp x117;P.ps
          ",";P.psp ();ppExp x118;P.ps ",";P.psp ();ppExp x119;P.ps
          ")";P.close ();()
         | Andncc (x120,x121,x122) ->
        P.ps "Andncc";P.psp ();P.open_ 1;P.ps "(";ppExp x120;P.ps
          ",";P.psp ();ppExp x121;P.ps ",";P.psp ();ppExp x122;P.ps
          ")";P.close ();()
         | Or (x123,x124,x125) ->
        P.ps "Or";P.psp ();P.open_ 1;P.ps "(";ppExp x123;P.ps ",";P.psp
          ();ppExp x124;P.ps ",";P.psp ();ppExp x125;P.ps ")";P.close
          ();()
         | Orcc (x126,x127,x128) ->
        P.ps "Orcc";P.psp ();P.open_ 1;P.ps "(";ppExp x126;P.ps
          ",";P.psp ();ppExp x127;P.ps ",";P.psp ();ppExp x128;P.ps
          ")";P.close ();()
         | Orn (x129,x130,x131) ->
        P.ps "Orn";P.psp ();P.open_ 1;P.ps "(";ppExp x129;P.ps
          ",";P.psp ();ppExp x130;P.ps ",";P.psp ();ppExp x131;P.ps
          ")";P.close ();()
         | Orncc (x132,x133,x134) ->
        P.ps "Orncc";P.psp ();P.open_ 1;P.ps "(";ppExp x132;P.ps
          ",";P.psp ();ppExp x133;P.ps ",";P.psp ();ppExp x134;P.ps
          ")";P.close ();()
         | Xor (x135,x136,x137) ->
        P.ps "Xor";P.psp ();P.open_ 1;P.ps "(";ppExp x135;P.ps
          ",";P.psp ();ppExp x136;P.ps ",";P.psp ();ppExp x137;P.ps
          ")";P.close ();()
         | Xorcc (x138,x139,x140) ->
        P.ps "Xorcc";P.psp ();P.open_ 1;P.ps "(";ppExp x138;P.ps
          ",";P.psp ();ppExp x139;P.ps ",";P.psp ();ppExp x140;P.ps
          ")";P.close ();()
         | Xnor (x141,x142,x143) ->
        P.ps "Xnor";P.psp ();P.open_ 1;P.ps "(";ppExp x141;P.ps
          ",";P.psp ();ppExp x142;P.ps ",";P.psp ();ppExp x143;P.ps
          ")";P.close ();()
         | Xnorcc (x144,x145,x146) ->
        P.ps "Xnorcc";P.psp ();P.open_ 1;P.ps "(";ppExp x144;P.ps
          ",";P.psp ();ppExp x145;P.ps ",";P.psp ();ppExp x146;P.ps
          ")";P.close ();()
         | Sll (x147,x148,x149) ->
        P.ps "Sll";P.psp ();P.open_ 1;P.ps "(";ppExp x147;P.ps
          ",";P.psp ();ppExp x148;P.ps ",";P.psp ();ppExp x149;P.ps
          ")";P.close ();()
         | Srl (x150,x151,x152) ->
        P.ps "Srl";P.psp ();P.open_ 1;P.ps "(";ppExp x150;P.ps
          ",";P.psp ();ppExp x151;P.ps ",";P.psp ();ppExp x152;P.ps
          ")";P.close ();()
         | Sra (x153,x154,x155) ->
        P.ps "Sra";P.psp ();P.open_ 1;P.ps "(";ppExp x153;P.ps
          ",";P.psp ();ppExp x154;P.ps ",";P.psp ();ppExp x155;P.ps
          ")";P.close ();()
         | Add (x156,x157,x158) ->
        P.ps "Add";P.psp ();P.open_ 1;P.ps "(";ppExp x156;P.ps
          ",";P.psp ();ppExp x157;P.ps ",";P.psp ();ppExp x158;P.ps
          ")";P.close ();()
         | Addcc (x159,x160,x161) ->
        P.ps "Addcc";P.psp ();P.open_ 1;P.ps "(";ppExp x159;P.ps
          ",";P.psp ();ppExp x160;P.ps ",";P.psp ();ppExp x161;P.ps
          ")";P.close ();()
         | Addx (x162,x163,x164) ->
        P.ps "Addx";P.psp ();P.open_ 1;P.ps "(";ppExp x162;P.ps
          ",";P.psp ();ppExp x163;P.ps ",";P.psp ();ppExp x164;P.ps
          ")";P.close ();()
         | Addxcc (x165,x166,x167) ->
        P.ps "Addxcc";P.psp ();P.open_ 1;P.ps "(";ppExp x165;P.ps
          ",";P.psp ();ppExp x166;P.ps ",";P.psp ();ppExp x167;P.ps
          ")";P.close ();()
         | Taddcc (x168,x169,x170) ->
        P.ps "Taddcc";P.psp ();P.open_ 1;P.ps "(";ppExp x168;P.ps
          ",";P.psp ();ppExp x169;P.ps ",";P.psp ();ppExp x170;P.ps
          ")";P.close ();()
         | Taddcctv (x171,x172,x173) ->
        P.ps "Taddcctv";P.psp ();P.open_ 1;P.ps "(";ppExp x171;P.ps
          ",";P.psp ();ppExp x172;P.ps ",";P.psp ();ppExp x173;P.ps
          ")";P.close ();()
         | Sub (x174,x175,x176) ->
        P.ps "Sub";P.psp ();P.open_ 1;P.ps "(";ppExp x174;P.ps
          ",";P.psp ();ppExp x175;P.ps ",";P.psp ();ppExp x176;P.ps
          ")";P.close ();()
         | Subcc (x177,x178,x179) ->
        P.ps "Subcc";P.psp ();P.open_ 1;P.ps "(";ppExp x177;P.ps
          ",";P.psp ();ppExp x178;P.ps ",";P.psp ();ppExp x179;P.ps
          ")";P.close ();()
         | Subx (x180,x181,x182) ->
        P.ps "Subx";P.psp ();P.open_ 1;P.ps "(";ppExp x180;P.ps
          ",";P.psp ();ppExp x181;P.ps ",";P.psp ();ppExp x182;P.ps
          ")";P.close ();()
         | Subxcc (x183,x184,x185) ->
        P.ps "Subxcc";P.psp ();P.open_ 1;P.ps "(";ppExp x183;P.ps
          ",";P.psp ();ppExp x184;P.ps ",";P.psp ();ppExp x185;P.ps
          ")";P.close ();()
         | Tsubcc (x186,x187,x188) ->
        P.ps "Tsubcc";P.psp ();P.open_ 1;P.ps "(";ppExp x186;P.ps
          ",";P.psp ();ppExp x187;P.ps ",";P.psp ();ppExp x188;P.ps
          ")";P.close ();()
         | Tsubcctv (x189,x190,x191) ->
        P.ps "Tsubcctv";P.psp ();P.open_ 1;P.ps "(";ppExp x189;P.ps
          ",";P.psp ();ppExp x190;P.ps ",";P.psp ();ppExp x191;P.ps
          ")";P.close ();()
         | Mulscc (x192,x193,x194) ->
        P.ps "Mulscc";P.psp ();P.open_ 1;P.ps "(";ppExp x192;P.ps
          ",";P.psp ();ppExp x193;P.ps ",";P.psp ();ppExp x194;P.ps
          ")";P.close ();()
         | Umul (x195,x196,x197) ->
        P.ps "Umul";P.psp ();P.open_ 1;P.ps "(";ppExp x195;P.ps
          ",";P.psp ();ppExp x196;P.ps ",";P.psp ();ppExp x197;P.ps
          ")";P.close ();()
         | Smul (x198,x199,x200) ->
        P.ps "Smul";P.psp ();P.open_ 1;P.ps "(";ppExp x198;P.ps
          ",";P.psp ();ppExp x199;P.ps ",";P.psp ();ppExp x200;P.ps
          ")";P.close ();()
         | Umulcc (x201,x202,x203) ->
        P.ps "Umulcc";P.psp ();P.open_ 1;P.ps "(";ppExp x201;P.ps
          ",";P.psp ();ppExp x202;P.ps ",";P.psp ();ppExp x203;P.ps
          ")";P.close ();()
         | Smulcc (x204,x205,x206) ->
        P.ps "Smulcc";P.psp ();P.open_ 1;P.ps "(";ppExp x204;P.ps
          ",";P.psp ();ppExp x205;P.ps ",";P.psp ();ppExp x206;P.ps
          ")";P.close ();()
         | Udiv (x207,x208,x209) ->
        P.ps "Udiv";P.psp ();P.open_ 1;P.ps "(";ppExp x207;P.ps
          ",";P.psp ();ppExp x208;P.ps ",";P.psp ();ppExp x209;P.ps
          ")";P.close ();()
         | Sdiv (x210,x211,x212) ->
        P.ps "Sdiv";P.psp ();P.open_ 1;P.ps "(";ppExp x210;P.ps
          ",";P.psp ();ppExp x211;P.ps ",";P.psp ();ppExp x212;P.ps
          ")";P.close ();()
         | Udivcc (x213,x214,x215) ->
        P.ps "Udivcc";P.psp ();P.open_ 1;P.ps "(";ppExp x213;P.ps
          ",";P.psp ();ppExp x214;P.ps ",";P.psp ();ppExp x215;P.ps
          ")";P.close ();()
         | Sdivcc (x216,x217,x218) ->
        P.ps "Sdivcc";P.psp ();P.open_ 1;P.ps "(";ppExp x216;P.ps
          ",";P.psp ();ppExp x217;P.ps ",";P.psp ();ppExp x218;P.ps
          ")";P.close ();()
         | Save (x219,x220,x221) ->
        P.ps "Save";P.psp ();P.open_ 1;P.ps "(";ppExp x219;P.ps
          ",";P.psp ();ppExp x220;P.ps ",";P.psp ();ppExp x221;P.ps
          ")";P.close ();()
         | Restore (x222,x223,x224) ->
        P.ps "Restore";P.psp ();P.open_ 1;P.ps "(";ppExp x222;P.ps
          ",";P.psp ();ppExp x223;P.ps ",";P.psp ();ppExp x224;P.ps
          ")";P.close ();()
         | Bn (x225) ->
        P.ps "Bn";P.psp ();P.open_ 1;P.ps "(";ppExp x225;P.ps
          ")";P.close ();()
         | Bn_a (x226) ->
        P.ps "Bn_a";P.psp ();P.open_ 1;P.ps "(";ppExp x226;P.ps
          ")";P.close ();()
         | Be (x227) ->
        P.ps "Be";P.psp ();P.open_ 1;P.ps "(";ppExp x227;P.ps
          ")";P.close ();()
         | Be_a (x228) ->
        P.ps "Be_a";P.psp ();P.open_ 1;P.ps "(";ppExp x228;P.ps
          ")";P.close ();()
         | Ble (x229) ->
        P.ps "Ble";P.psp ();P.open_ 1;P.ps "(";ppExp x229;P.ps
          ")";P.close ();()
         | Ble_a (x230) ->
        P.ps "Ble_a";P.psp ();P.open_ 1;P.ps "(";ppExp x230;P.ps
          ")";P.close ();()
         | Bl (x231) ->
        P.ps "Bl";P.psp ();P.open_ 1;P.ps "(";ppExp x231;P.ps
          ")";P.close ();()
         | Bl_a (x232) ->
        P.ps "Bl_a";P.psp ();P.open_ 1;P.ps "(";ppExp x232;P.ps
          ")";P.close ();()
         | Bleu (x233) ->
        P.ps "Bleu";P.psp ();P.open_ 1;P.ps "(";ppExp x233;P.ps
          ")";P.close ();()
         | Bleu_a (x234) ->
        P.ps "Bleu_a";P.psp ();P.open_ 1;P.ps "(";ppExp x234;P.ps
          ")";P.close ();()
         | Bcs (x235) ->
        P.ps "Bcs";P.psp ();P.open_ 1;P.ps "(";ppExp x235;P.ps
          ")";P.close ();()
         | Bcs_a (x236) ->
        P.ps "Bcs_a";P.psp ();P.open_ 1;P.ps "(";ppExp x236;P.ps
          ")";P.close ();()
         | Bneg (x237) ->
        P.ps "Bneg";P.psp ();P.open_ 1;P.ps "(";ppExp x237;P.ps
          ")";P.close ();()
         | Bneg_a (x238) ->
        P.ps "Bneg_a";P.psp ();P.open_ 1;P.ps "(";ppExp x238;P.ps
          ")";P.close ();()
         | Bvs (x239) ->
        P.ps "Bvs";P.psp ();P.open_ 1;P.ps "(";ppExp x239;P.ps
          ")";P.close ();()
         | Bvs_a (x240) ->
        P.ps "Bvs_a";P.psp ();P.open_ 1;P.ps "(";ppExp x240;P.ps
          ")";P.close ();()
         | Ba (x241) ->
        P.ps "Ba";P.psp ();P.open_ 1;P.ps "(";ppExp x241;P.ps
          ")";P.close ();()
         | Ba_a (x242) ->
        P.ps "Ba_a";P.psp ();P.open_ 1;P.ps "(";ppExp x242;P.ps
          ")";P.close ();()
         | Bne (x243) ->
        P.ps "Bne";P.psp ();P.open_ 1;P.ps "(";ppExp x243;P.ps
          ")";P.close ();()
         | Bne_a (x244) ->
        P.ps "Bne_a";P.psp ();P.open_ 1;P.ps "(";ppExp x244;P.ps
          ")";P.close ();()
         | Bg (x245) ->
        P.ps "Bg";P.psp ();P.open_ 1;P.ps "(";ppExp x245;P.ps
          ")";P.close ();()
         | Bg_a (x246) ->
        P.ps "Bg_a";P.psp ();P.open_ 1;P.ps "(";ppExp x246;P.ps
          ")";P.close ();()
         | Bge (x247) ->
        P.ps "Bge";P.psp ();P.open_ 1;P.ps "(";ppExp x247;P.ps
          ")";P.close ();()
         | Bge_a (x248) ->
        P.ps "Bge_a";P.psp ();P.open_ 1;P.ps "(";ppExp x248;P.ps
          ")";P.close ();()
         | Bgu (x249) ->
        P.ps "Bgu";P.psp ();P.open_ 1;P.ps "(";ppExp x249;P.ps
          ")";P.close ();()
         | Bgu_a (x250) ->
        P.ps "Bgu_a";P.psp ();P.open_ 1;P.ps "(";ppExp x250;P.ps
          ")";P.close ();()
         | Bcc (x251) ->
        P.ps "Bcc";P.psp ();P.open_ 1;P.ps "(";ppExp x251;P.ps
          ")";P.close ();()
         | Bcc_a (x252) ->
        P.ps "Bcc_a";P.psp ();P.open_ 1;P.ps "(";ppExp x252;P.ps
          ")";P.close ();()
         | Bpos (x253) ->
        P.ps "Bpos";P.psp ();P.open_ 1;P.ps "(";ppExp x253;P.ps
          ")";P.close ();()
         | Bpos_a (x254) ->
        P.ps "Bpos_a";P.psp ();P.open_ 1;P.ps "(";ppExp x254;P.ps
          ")";P.close ();()
         | Bvc (x255) ->
        P.ps "Bvc";P.psp ();P.open_ 1;P.ps "(";ppExp x255;P.ps
          ")";P.close ();()
         | Bvc_a (x256) ->
        P.ps "Bvc_a";P.psp ();P.open_ 1;P.ps "(";ppExp x256;P.ps
          ")";P.close ();()
         | Fbn (x257) ->
        P.ps "Fbn";P.psp ();P.open_ 1;P.ps "(";ppExp x257;P.ps
          ")";P.close ();()
         | Fbn_a (x258) ->
        P.ps "Fbn_a";P.psp ();P.open_ 1;P.ps "(";ppExp x258;P.ps
          ")";P.close ();()
         | Fbne (x259) ->
        P.ps "Fbne";P.psp ();P.open_ 1;P.ps "(";ppExp x259;P.ps
          ")";P.close ();()
         | Fbne_a (x260) ->
        P.ps "Fbne_a";P.psp ();P.open_ 1;P.ps "(";ppExp x260;P.ps
          ")";P.close ();()
         | Fblg (x261) ->
        P.ps "Fblg";P.psp ();P.open_ 1;P.ps "(";ppExp x261;P.ps
          ")";P.close ();()
         | Fblg_a (x262) ->
        P.ps "Fblg_a";P.psp ();P.open_ 1;P.ps "(";ppExp x262;P.ps
          ")";P.close ();()
         | Fbul (x263) ->
        P.ps "Fbul";P.psp ();P.open_ 1;P.ps "(";ppExp x263;P.ps
          ")";P.close ();()
         | Fbul_a (x264) ->
        P.ps "Fbul_a";P.psp ();P.open_ 1;P.ps "(";ppExp x264;P.ps
          ")";P.close ();()
         | Fbl (x265) ->
        P.ps "Fbl";P.psp ();P.open_ 1;P.ps "(";ppExp x265;P.ps
          ")";P.close ();()
         | Fbl_a (x266) ->
        P.ps "Fbl_a";P.psp ();P.open_ 1;P.ps "(";ppExp x266;P.ps
          ")";P.close ();()
         | Fbug (x267) ->
        P.ps "Fbug";P.psp ();P.open_ 1;P.ps "(";ppExp x267;P.ps
          ")";P.close ();()
         | Fbug_a (x268) ->
        P.ps "Fbug_a";P.psp ();P.open_ 1;P.ps "(";ppExp x268;P.ps
          ")";P.close ();()
         | Fbg (x269) ->
        P.ps "Fbg";P.psp ();P.open_ 1;P.ps "(";ppExp x269;P.ps
          ")";P.close ();()
         | Fbg_a (x270) ->
        P.ps "Fbg_a";P.psp ();P.open_ 1;P.ps "(";ppExp x270;P.ps
          ")";P.close ();()
         | Fbu (x271) ->
        P.ps "Fbu";P.psp ();P.open_ 1;P.ps "(";ppExp x271;P.ps
          ")";P.close ();()
         | Fbu_a (x272) ->
        P.ps "Fbu_a";P.psp ();P.open_ 1;P.ps "(";ppExp x272;P.ps
          ")";P.close ();()
         | Fba (x273) ->
        P.ps "Fba";P.psp ();P.open_ 1;P.ps "(";ppExp x273;P.ps
          ")";P.close ();()
         | Fba_a (x274) ->
        P.ps "Fba_a";P.psp ();P.open_ 1;P.ps "(";ppExp x274;P.ps
          ")";P.close ();()
         | Fbe (x275) ->
        P.ps "Fbe";P.psp ();P.open_ 1;P.ps "(";ppExp x275;P.ps
          ")";P.close ();()
         | Fbe_a (x276) ->
        P.ps "Fbe_a";P.psp ();P.open_ 1;P.ps "(";ppExp x276;P.ps
          ")";P.close ();()
         | Fbue (x277) ->
        P.ps "Fbue";P.psp ();P.open_ 1;P.ps "(";ppExp x277;P.ps
          ")";P.close ();()
         | Fbue_a (x278) ->
        P.ps "Fbue_a";P.psp ();P.open_ 1;P.ps "(";ppExp x278;P.ps
          ")";P.close ();()
         | Fbge (x279) ->
        P.ps "Fbge";P.psp ();P.open_ 1;P.ps "(";ppExp x279;P.ps
          ")";P.close ();()
         | Fbge_a (x280) ->
        P.ps "Fbge_a";P.psp ();P.open_ 1;P.ps "(";ppExp x280;P.ps
          ")";P.close ();()
         | Fbuge (x281) ->
        P.ps "Fbuge";P.psp ();P.open_ 1;P.ps "(";ppExp x281;P.ps
          ")";P.close ();()
         | Fbuge_a (x282) ->
        P.ps "Fbuge_a";P.psp ();P.open_ 1;P.ps "(";ppExp x282;P.ps
          ")";P.close ();()
         | Fble (x283) ->
        P.ps "Fble";P.psp ();P.open_ 1;P.ps "(";ppExp x283;P.ps
          ")";P.close ();()
         | Fble_a (x284) ->
        P.ps "Fble_a";P.psp ();P.open_ 1;P.ps "(";ppExp x284;P.ps
          ")";P.close ();()
         | Fbule (x285) ->
        P.ps "Fbule";P.psp ();P.open_ 1;P.ps "(";ppExp x285;P.ps
          ")";P.close ();()
         | Fbule_a (x286) ->
        P.ps "Fbule_a";P.psp ();P.open_ 1;P.ps "(";ppExp x286;P.ps
          ")";P.close ();()
         | Fbo (x287) ->
        P.ps "Fbo";P.psp ();P.open_ 1;P.ps "(";ppExp x287;P.ps
          ")";P.close ();()
         | Fbo_a (x288) ->
        P.ps "Fbo_a";P.psp ();P.open_ 1;P.ps "(";ppExp x288;P.ps
          ")";P.close ();()
         | Cbn (x289) ->
        P.ps "Cbn";P.psp ();P.open_ 1;P.ps "(";ppExp x289;P.ps
          ")";P.close ();()
         | Cbn_a (x290) ->
        P.ps "Cbn_a";P.psp ();P.open_ 1;P.ps "(";ppExp x290;P.ps
          ")";P.close ();()
         | Cb123 (x291) ->
        P.ps "Cb123";P.psp ();P.open_ 1;P.ps "(";ppExp x291;P.ps
          ")";P.close ();()
         | Cb123_a (x292) ->
        P.ps "Cb123_a";P.psp ();P.open_ 1;P.ps "(";ppExp x292;P.ps
          ")";P.close ();()
         | Cb12 (x293) ->
        P.ps "Cb12";P.psp ();P.open_ 1;P.ps "(";ppExp x293;P.ps
          ")";P.close ();()
         | Cb12_a (x294) ->
        P.ps "Cb12_a";P.psp ();P.open_ 1;P.ps "(";ppExp x294;P.ps
          ")";P.close ();()
         | Cb13 (x295) ->
        P.ps "Cb13";P.psp ();P.open_ 1;P.ps "(";ppExp x295;P.ps
          ")";P.close ();()
         | Cb13_a (x296) ->
        P.ps "Cb13_a";P.psp ();P.open_ 1;P.ps "(";ppExp x296;P.ps
          ")";P.close ();()
         | Cb1 (x297) ->
        P.ps "Cb1";P.psp ();P.open_ 1;P.ps "(";ppExp x297;P.ps
          ")";P.close ();()
         | Cb1_a (x298) ->
        P.ps "Cb1_a";P.psp ();P.open_ 1;P.ps "(";ppExp x298;P.ps
          ")";P.close ();()
         | Cb23 (x299) ->
        P.ps "Cb23";P.psp ();P.open_ 1;P.ps "(";ppExp x299;P.ps
          ")";P.close ();()
         | Cb23_a (x300) ->
        P.ps "Cb23_a";P.psp ();P.open_ 1;P.ps "(";ppExp x300;P.ps
          ")";P.close ();()
         | Cb2 (x301) ->
        P.ps "Cb2";P.psp ();P.open_ 1;P.ps "(";ppExp x301;P.ps
          ")";P.close ();()
         | Cb2_a (x302) ->
        P.ps "Cb2_a";P.psp ();P.open_ 1;P.ps "(";ppExp x302;P.ps
          ")";P.close ();()
         | Cb3 (x303) ->
        P.ps "Cb3";P.psp ();P.open_ 1;P.ps "(";ppExp x303;P.ps
          ")";P.close ();()
         | Cb3_a (x304) ->
        P.ps "Cb3_a";P.psp ();P.open_ 1;P.ps "(";ppExp x304;P.ps
          ")";P.close ();()
         | Cba (x305) ->
        P.ps "Cba";P.psp ();P.open_ 1;P.ps "(";ppExp x305;P.ps
          ")";P.close ();()
         | Cba_a (x306) ->
        P.ps "Cba_a";P.psp ();P.open_ 1;P.ps "(";ppExp x306;P.ps
          ")";P.close ();()
         | Cb0 (x307) ->
        P.ps "Cb0";P.psp ();P.open_ 1;P.ps "(";ppExp x307;P.ps
          ")";P.close ();()
         | Cb0_a (x308) ->
        P.ps "Cb0_a";P.psp ();P.open_ 1;P.ps "(";ppExp x308;P.ps
          ")";P.close ();()
         | Cb03 (x309) ->
        P.ps "Cb03";P.psp ();P.open_ 1;P.ps "(";ppExp x309;P.ps
          ")";P.close ();()
         | Cb03_a (x310) ->
        P.ps "Cb03_a";P.psp ();P.open_ 1;P.ps "(";ppExp x310;P.ps
          ")";P.close ();()
         | Cb02 (x311) ->
        P.ps "Cb02";P.psp ();P.open_ 1;P.ps "(";ppExp x311;P.ps
          ")";P.close ();()
         | Cb02_a (x312) ->
        P.ps "Cb02_a";P.psp ();P.open_ 1;P.ps "(";ppExp x312;P.ps
          ")";P.close ();()
         | Cb023 (x313) ->
        P.ps "Cb023";P.psp ();P.open_ 1;P.ps "(";ppExp x313;P.ps
          ")";P.close ();()
         | Cb023_a (x314) ->
        P.ps "Cb023_a";P.psp ();P.open_ 1;P.ps "(";ppExp x314;P.ps
          ")";P.close ();()
         | Cb01 (x315) ->
        P.ps "Cb01";P.psp ();P.open_ 1;P.ps "(";ppExp x315;P.ps
          ")";P.close ();()
         | Cb01_a (x316) ->
        P.ps "Cb01_a";P.psp ();P.open_ 1;P.ps "(";ppExp x316;P.ps
          ")";P.close ();()
         | Cb013 (x317) ->
        P.ps "Cb013";P.psp ();P.open_ 1;P.ps "(";ppExp x317;P.ps
          ")";P.close ();()
         | Cb013_a (x318) ->
        P.ps "Cb013_a";P.psp ();P.open_ 1;P.ps "(";ppExp x318;P.ps
          ")";P.close ();()
         | Cb012 (x319) ->
        P.ps "Cb012";P.psp ();P.open_ 1;P.ps "(";ppExp x319;P.ps
          ")";P.close ();()
         | Cb012_a (x320) ->
        P.ps "Cb012_a";P.psp ();P.open_ 1;P.ps "(";ppExp x320;P.ps
          ")";P.close ();()
         | Call (x321) ->
        P.ps "Call";P.psp ();P.open_ 1;P.ps "(";ppExp x321;P.ps
          ")";P.close ();()
         | Fmovs (x322,x323) ->
        P.ps "Fmovs";P.psp ();P.open_ 1;P.ps "(";ppExp x322;P.ps
          ",";P.psp ();ppExp x323;P.ps ")";P.close ();()
         | Fnegs (x324,x325) ->
        P.ps "Fnegs";P.psp ();P.open_ 1;P.ps "(";ppExp x324;P.ps
          ",";P.psp ();ppExp x325;P.ps ")";P.close ();()
         | Fabss (x326,x327) ->
        P.ps "Fabss";P.psp ();P.open_ 1;P.ps "(";ppExp x326;P.ps
          ",";P.psp ();ppExp x327;P.ps ")";P.close ();()
         | Fsqrts (x328,x329) ->
        P.ps "Fsqrts";P.psp ();P.open_ 1;P.ps "(";ppExp x328;P.ps
          ",";P.psp ();ppExp x329;P.ps ")";P.close ();()
         | Fsqrtd (x330,x331) ->
        P.ps "Fsqrtd";P.psp ();P.open_ 1;P.ps "(";ppExp x330;P.ps
          ",";P.psp ();ppExp x331;P.ps ")";P.close ();()
         | Fsqrtq (x332,x333) ->
        P.ps "Fsqrtq";P.psp ();P.open_ 1;P.ps "(";ppExp x332;P.ps
          ",";P.psp ();ppExp x333;P.ps ")";P.close ();()
         | Fitos (x334,x335) ->
        P.ps "Fitos";P.psp ();P.open_ 1;P.ps "(";ppExp x334;P.ps
          ",";P.psp ();ppExp x335;P.ps ")";P.close ();()
         | Fstoi (x336,x337) ->
        P.ps "Fstoi";P.psp ();P.open_ 1;P.ps "(";ppExp x336;P.ps
          ",";P.psp ();ppExp x337;P.ps ")";P.close ();()
         | Fitod (x338,x339) ->
        P.ps "Fitod";P.psp ();P.open_ 1;P.ps "(";ppExp x338;P.ps
          ",";P.psp ();ppExp x339;P.ps ")";P.close ();()
         | Fstod (x340,x341) ->
        P.ps "Fstod";P.psp ();P.open_ 1;P.ps "(";ppExp x340;P.ps
          ",";P.psp ();ppExp x341;P.ps ")";P.close ();()
         | Fitoq (x342,x343) ->
        P.ps "Fitoq";P.psp ();P.open_ 1;P.ps "(";ppExp x342;P.ps
          ",";P.psp ();ppExp x343;P.ps ")";P.close ();()
         | Fstoq (x344,x345) ->
        P.ps "Fstoq";P.psp ();P.open_ 1;P.ps "(";ppExp x344;P.ps
          ",";P.psp ();ppExp x345;P.ps ")";P.close ();()
         | Fdtoi (x346,x347) ->
        P.ps "Fdtoi";P.psp ();P.open_ 1;P.ps "(";ppExp x346;P.ps
          ",";P.psp ();ppExp x347;P.ps ")";P.close ();()
         | Fdtos (x348,x349) ->
        P.ps "Fdtos";P.psp ();P.open_ 1;P.ps "(";ppExp x348;P.ps
          ",";P.psp ();ppExp x349;P.ps ")";P.close ();()
         | Fqtos (x350,x351) ->
        P.ps "Fqtos";P.psp ();P.open_ 1;P.ps "(";ppExp x350;P.ps
          ",";P.psp ();ppExp x351;P.ps ")";P.close ();()
         | Fqtoi (x352,x353) ->
        P.ps "Fqtoi";P.psp ();P.open_ 1;P.ps "(";ppExp x352;P.ps
          ",";P.psp ();ppExp x353;P.ps ")";P.close ();()
         | Fqtod (x354,x355) ->
        P.ps "Fqtod";P.psp ();P.open_ 1;P.ps "(";ppExp x354;P.ps
          ",";P.psp ();ppExp x355;P.ps ")";P.close ();()
         | Fdtoq (x356,x357) ->
        P.ps "Fdtoq";P.psp ();P.open_ 1;P.ps "(";ppExp x356;P.ps
          ",";P.psp ();ppExp x357;P.ps ")";P.close ();()
         | Fadds (x358,x359,x360) ->
        P.ps "Fadds";P.psp ();P.open_ 1;P.ps "(";ppExp x358;P.ps
          ",";P.psp ();ppExp x359;P.ps ",";P.psp ();ppExp x360;P.ps
          ")";P.close ();()
         | Fsubs (x361,x362,x363) ->
        P.ps "Fsubs";P.psp ();P.open_ 1;P.ps "(";ppExp x361;P.ps
          ",";P.psp ();ppExp x362;P.ps ",";P.psp ();ppExp x363;P.ps
          ")";P.close ();()
         | Fmuls (x364,x365,x366) ->
        P.ps "Fmuls";P.psp ();P.open_ 1;P.ps "(";ppExp x364;P.ps
          ",";P.psp ();ppExp x365;P.ps ",";P.psp ();ppExp x366;P.ps
          ")";P.close ();()
         | Fdivs (x367,x368,x369) ->
        P.ps "Fdivs";P.psp ();P.open_ 1;P.ps "(";ppExp x367;P.ps
          ",";P.psp ();ppExp x368;P.ps ",";P.psp ();ppExp x369;P.ps
          ")";P.close ();()
         | Faddd (x370,x371,x372) ->
        P.ps "Faddd";P.psp ();P.open_ 1;P.ps "(";ppExp x370;P.ps
          ",";P.psp ();ppExp x371;P.ps ",";P.psp ();ppExp x372;P.ps
          ")";P.close ();()
         | Fsubd (x373,x374,x375) ->
        P.ps "Fsubd";P.psp ();P.open_ 1;P.ps "(";ppExp x373;P.ps
          ",";P.psp ();ppExp x374;P.ps ",";P.psp ();ppExp x375;P.ps
          ")";P.close ();()
         | Fmuld (x376,x377,x378) ->
        P.ps "Fmuld";P.psp ();P.open_ 1;P.ps "(";ppExp x376;P.ps
          ",";P.psp ();ppExp x377;P.ps ",";P.psp ();ppExp x378;P.ps
          ")";P.close ();()
         | Fdivd (x379,x380,x381) ->
        P.ps "Fdivd";P.psp ();P.open_ 1;P.ps "(";ppExp x379;P.ps
          ",";P.psp ();ppExp x380;P.ps ",";P.psp ();ppExp x381;P.ps
          ")";P.close ();()
         | Faddq (x382,x383,x384) ->
        P.ps "Faddq";P.psp ();P.open_ 1;P.ps "(";ppExp x382;P.ps
          ",";P.psp ();ppExp x383;P.ps ",";P.psp ();ppExp x384;P.ps
          ")";P.close ();()
         | Fsubq (x385,x386,x387) ->
        P.ps "Fsubq";P.psp ();P.open_ 1;P.ps "(";ppExp x385;P.ps
          ",";P.psp ();ppExp x386;P.ps ",";P.psp ();ppExp x387;P.ps
          ")";P.close ();()
         | Fmulq (x388,x389,x390) ->
        P.ps "Fmulq";P.psp ();P.open_ 1;P.ps "(";ppExp x388;P.ps
          ",";P.psp ();ppExp x389;P.ps ",";P.psp ();ppExp x390;P.ps
          ")";P.close ();()
         | Fdivq (x391,x392,x393) ->
        P.ps "Fdivq";P.psp ();P.open_ 1;P.ps "(";ppExp x391;P.ps
          ",";P.psp ();ppExp x392;P.ps ",";P.psp ();ppExp x393;P.ps
          ")";P.close ();()
         | Fsmuld (x394,x395,x396) ->
        P.ps "Fsmuld";P.psp ();P.open_ 1;P.ps "(";ppExp x394;P.ps
          ",";P.psp ();ppExp x395;P.ps ",";P.psp ();ppExp x396;P.ps
          ")";P.close ();()
         | Fdmulq (x397,x398,x399) ->
        P.ps "Fdmulq";P.psp ();P.open_ 1;P.ps "(";ppExp x397;P.ps
          ",";P.psp ();ppExp x398;P.ps ",";P.psp ();ppExp x399;P.ps
          ")";P.close ();()
         | Fcmps (x400,x401) ->
        P.ps "Fcmps";P.psp ();P.open_ 1;P.ps "(";ppExp x400;P.ps
          ",";P.psp ();ppExp x401;P.ps ")";P.close ();()
         | Fcmpes (x402,x403) ->
        P.ps "Fcmpes";P.psp ();P.open_ 1;P.ps "(";ppExp x402;P.ps
          ",";P.psp ();ppExp x403;P.ps ")";P.close ();()
         | Fcmpd (x404,x405) ->
        P.ps "Fcmpd";P.psp ();P.open_ 1;P.ps "(";ppExp x404;P.ps
          ",";P.psp ();ppExp x405;P.ps ")";P.close ();()
         | Fcmped (x406,x407) ->
        P.ps "Fcmped";P.psp ();P.open_ 1;P.ps "(";ppExp x406;P.ps
          ",";P.psp ();ppExp x407;P.ps ")";P.close ();()
         | Fcmpq (x408,x409) ->
        P.ps "Fcmpq";P.psp ();P.open_ 1;P.ps "(";ppExp x408;P.ps
          ",";P.psp ();ppExp x409;P.ps ")";P.close ();()
         | Fcmpeq (x410,x411) ->
        P.ps "Fcmpeq";P.psp ();P.open_ 1;P.ps "(";ppExp x410;P.ps
          ",";P.psp ();ppExp x411;P.ps ")";P.close ();()
         | Nop () ->
        P.ps "Nop";P.psp ();P.open_ 1;P.ps "(";P.ps ")";P.close ();()
         | Flush (x412) ->
        P.ps "Flush";P.psp ();P.open_ 1;P.ps "(";ppExp x412;P.ps
          ")";P.close ();()
         | Jmpl (x413,x414) ->
        P.ps "Jmpl";P.psp ();P.open_ 1;P.ps "(";ppExp x413;P.ps
          ",";P.psp ();ppExp x414;P.ps ")";P.close ();()
         | Rett (x415) ->
        P.ps "Rett";P.psp ();P.open_ 1;P.ps "(";ppExp x415;P.ps
          ")";P.close ();()
         | Tn (x416) ->
        P.ps "Tn";P.psp ();P.open_ 1;P.ps "(";ppExp x416;P.ps
          ")";P.close ();()
         | Te (x417) ->
        P.ps "Te";P.psp ();P.open_ 1;P.ps "(";ppExp x417;P.ps
          ")";P.close ();()
         | Tle (x418) ->
        P.ps "Tle";P.psp ();P.open_ 1;P.ps "(";ppExp x418;P.ps
          ")";P.close ();()
         | Tl (x419) ->
        P.ps "Tl";P.psp ();P.open_ 1;P.ps "(";ppExp x419;P.ps
          ")";P.close ();()
         | Tleu (x420) ->
        P.ps "Tleu";P.psp ();P.open_ 1;P.ps "(";ppExp x420;P.ps
          ")";P.close ();()
         | Tcs (x421) ->
        P.ps "Tcs";P.psp ();P.open_ 1;P.ps "(";ppExp x421;P.ps
          ")";P.close ();()
         | Tneg (x422) ->
        P.ps "Tneg";P.psp ();P.open_ 1;P.ps "(";ppExp x422;P.ps
          ")";P.close ();()
         | Tvs (x423) ->
        P.ps "Tvs";P.psp ();P.open_ 1;P.ps "(";ppExp x423;P.ps
          ")";P.close ();()
         | Ta (x424) ->
        P.ps "Ta";P.psp ();P.open_ 1;P.ps "(";ppExp x424;P.ps
          ")";P.close ();()
         | Tne (x425) ->
        P.ps "Tne";P.psp ();P.open_ 1;P.ps "(";ppExp x425;P.ps
          ")";P.close ();()
         | Tg (x426) ->
        P.ps "Tg";P.psp ();P.open_ 1;P.ps "(";ppExp x426;P.ps
          ")";P.close ();()
         | Tge (x427) ->
        P.ps "Tge";P.psp ();P.open_ 1;P.ps "(";ppExp x427;P.ps
          ")";P.close ();()
         | Tgu (x428) ->
        P.ps "Tgu";P.psp ();P.open_ 1;P.ps "(";ppExp x428;P.ps
          ")";P.close ();()
         | Tcc (x429) ->
        P.ps "Tcc";P.psp ();P.open_ 1;P.ps "(";ppExp x429;P.ps
          ")";P.close ();()
         | Tpos (x430) ->
        P.ps "Tpos";P.psp ();P.open_ 1;P.ps "(";ppExp x430;P.ps
          ")";P.close ();()
         | Tvc (x431) ->
        P.ps "Tvc";P.psp ();P.open_ 1;P.ps "(";ppExp x431;P.ps
          ")";P.close ();()
         | Unimp (x432) ->
        P.ps "Unimp";P.psp ();P.open_ 1;P.ps "(";ppExp x432;P.ps
          ")";P.close ();()
         | Sethi (x433,x434) ->
        P.ps "Sethi";P.psp ();P.open_ 1;P.ps "(";ppExp x433;P.ps
          ",";P.psp ();ppExp x434;P.ps ")";P.close ();()
         | Decode_sethi (x435,x436) ->
        P.ps "Decode_sethi";P.psp ();P.open_ 1;P.ps "(";ppExp x435;P.ps
          ",";P.psp ();ppExp x436;P.ps ")";P.close ();()
         | Set (x437,x438) ->
        P.ps "Set";P.psp ();P.open_ 1;P.ps "(";ppExp x437;P.ps
          ",";P.psp ();ppExp x438;P.ps ")";P.close ();()))

let  rec pprint =
fun x -> S.pprint (ppAll pprint) x


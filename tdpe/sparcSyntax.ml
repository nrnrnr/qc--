
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
         | Imode (x439) ->
        P.ps "Imode";P.psp ();P.open_ 1;P.ps "(";ppExp x439;P.ps
          ")";P.close ();()
         | Rmode (x440) ->
        P.ps "Rmode";P.psp ();P.open_ 1;P.ps "(";ppExp x440;P.ps
          ")";P.close ();())
       | T__address x ->
      (match x with 
         | Generala (x431,x432) ->
        P.ps "Generala";P.psp ();P.open_ 1;P.ps "(";ppExp x431;P.ps
          ",";P.psp ();ppExp x432;P.ps ")";P.close ();()
         | Dispa (x433,x434) ->
        P.ps "Dispa";P.psp ();P.open_ 1;P.ps "(";ppExp x433;P.ps
          ",";P.psp ();ppExp x434;P.ps ")";P.close ();()
         | Absolutea (x435) ->
        P.ps "Absolutea";P.psp ();P.open_ 1;P.ps "(";ppExp x435;P.ps
          ")";P.close ();()
         | Indexa (x436,x437) ->
        P.ps "Indexa";P.psp ();P.open_ 1;P.ps "(";ppExp x436;P.ps
          ",";P.psp ();ppExp x437;P.ps ")";P.close ();()
         | Indirecta (x438) ->
        P.ps "Indirecta";P.psp ();P.open_ 1;P.ps "(";ppExp x438;P.ps
          ")";P.close ();())
       | T__regaddr x ->
      (match x with 
         | Indexr (x428,x429) ->
        P.ps "Indexr";P.psp ();P.open_ 1;P.ps "(";ppExp x428;P.ps
          ",";P.psp ();ppExp x429;P.ps ")";P.close ();()
         | Indirectr (x430) ->
        P.ps "Indirectr";P.psp ();P.open_ 1;P.ps "(";ppExp x430;P.ps
          ")";P.close ();())
       | T__t x ->
      (match x with 
         | Ldsb (x1,x2) ->
        P.ps "Ldsb";P.psp ();P.open_ 1;P.ps "(";ppExp x1;P.ps ",";P.psp
          ();ppExp x2;P.ps ")";P.close ();()
         | Ldsh (x3,x4) ->
        P.ps "Ldsh";P.psp ();P.open_ 1;P.ps "(";ppExp x3;P.ps ",";P.psp
          ();ppExp x4;P.ps ")";P.close ();()
         | Ldub (x5,x6) ->
        P.ps "Ldub";P.psp ();P.open_ 1;P.ps "(";ppExp x5;P.ps ",";P.psp
          ();ppExp x6;P.ps ")";P.close ();()
         | Lduh (x7,x8) ->
        P.ps "Lduh";P.psp ();P.open_ 1;P.ps "(";ppExp x7;P.ps ",";P.psp
          ();ppExp x8;P.ps ")";P.close ();()
         | Ld (x9,x10) ->
        P.ps "Ld";P.psp ();P.open_ 1;P.ps "(";ppExp x9;P.ps ",";P.psp
          ();ppExp x10;P.ps ")";P.close ();()
         | Ldstub (x11,x12) ->
        P.ps "Ldstub";P.psp ();P.open_ 1;P.ps "(";ppExp x11;P.ps
          ",";P.psp ();ppExp x12;P.ps ")";P.close ();()
         | Swap_ (x13,x14) ->
        P.ps "Swap_";P.psp ();P.open_ 1;P.ps "(";ppExp x13;P.ps
          ",";P.psp ();ppExp x14;P.ps ")";P.close ();()
         | Ldd (x15,x16) ->
        P.ps "Ldd";P.psp ();P.open_ 1;P.ps "(";ppExp x15;P.ps ",";P.psp
          ();ppExp x16;P.ps ")";P.close ();()
         | Ldf (x17,x18) ->
        P.ps "Ldf";P.psp ();P.open_ 1;P.ps "(";ppExp x17;P.ps ",";P.psp
          ();ppExp x18;P.ps ")";P.close ();()
         | Lddf (x19,x20) ->
        P.ps "Lddf";P.psp ();P.open_ 1;P.ps "(";ppExp x19;P.ps
          ",";P.psp ();ppExp x20;P.ps ")";P.close ();()
         | Ldc (x21,x22) ->
        P.ps "Ldc";P.psp ();P.open_ 1;P.ps "(";ppExp x21;P.ps ",";P.psp
          ();ppExp x22;P.ps ")";P.close ();()
         | Lddc (x23,x24) ->
        P.ps "Lddc";P.psp ();P.open_ 1;P.ps "(";ppExp x23;P.ps
          ",";P.psp ();ppExp x24;P.ps ")";P.close ();()
         | Stb (x25,x26) ->
        P.ps "Stb";P.psp ();P.open_ 1;P.ps "(";ppExp x25;P.ps ",";P.psp
          ();ppExp x26;P.ps ")";P.close ();()
         | Sth (x27,x28) ->
        P.ps "Sth";P.psp ();P.open_ 1;P.ps "(";ppExp x27;P.ps ",";P.psp
          ();ppExp x28;P.ps ")";P.close ();()
         | St (x29,x30) ->
        P.ps "St";P.psp ();P.open_ 1;P.ps "(";ppExp x29;P.ps ",";P.psp
          ();ppExp x30;P.ps ")";P.close ();()
         | Std (x31,x32) ->
        P.ps "Std";P.psp ();P.open_ 1;P.ps "(";ppExp x31;P.ps ",";P.psp
          ();ppExp x32;P.ps ")";P.close ();()
         | Stf (x33,x34) ->
        P.ps "Stf";P.psp ();P.open_ 1;P.ps "(";ppExp x33;P.ps ",";P.psp
          ();ppExp x34;P.ps ")";P.close ();()
         | Stdf (x35,x36) ->
        P.ps "Stdf";P.psp ();P.open_ 1;P.ps "(";ppExp x35;P.ps
          ",";P.psp ();ppExp x36;P.ps ")";P.close ();()
         | Stc (x37,x38) ->
        P.ps "Stc";P.psp ();P.open_ 1;P.ps "(";ppExp x37;P.ps ",";P.psp
          ();ppExp x38;P.ps ")";P.close ();()
         | Stdc (x39,x40) ->
        P.ps "Stdc";P.psp ();P.open_ 1;P.ps "(";ppExp x39;P.ps
          ",";P.psp ();ppExp x40;P.ps ")";P.close ();()
         | Ldsba (x41,x42,x43) ->
        P.ps "Ldsba";P.psp ();P.open_ 1;P.ps "(";ppExp x41;P.ps
          ",";P.psp ();ppExp x42;P.ps ",";P.psp ();ppExp x43;P.ps
          ")";P.close ();()
         | Ldsha (x44,x45,x46) ->
        P.ps "Ldsha";P.psp ();P.open_ 1;P.ps "(";ppExp x44;P.ps
          ",";P.psp ();ppExp x45;P.ps ",";P.psp ();ppExp x46;P.ps
          ")";P.close ();()
         | Lduba (x47,x48,x49) ->
        P.ps "Lduba";P.psp ();P.open_ 1;P.ps "(";ppExp x47;P.ps
          ",";P.psp ();ppExp x48;P.ps ",";P.psp ();ppExp x49;P.ps
          ")";P.close ();()
         | Lduha (x50,x51,x52) ->
        P.ps "Lduha";P.psp ();P.open_ 1;P.ps "(";ppExp x50;P.ps
          ",";P.psp ();ppExp x51;P.ps ",";P.psp ();ppExp x52;P.ps
          ")";P.close ();()
         | Lda (x53,x54,x55) ->
        P.ps "Lda";P.psp ();P.open_ 1;P.ps "(";ppExp x53;P.ps ",";P.psp
          ();ppExp x54;P.ps ",";P.psp ();ppExp x55;P.ps ")";P.close
          ();()
         | Ldstuba (x56,x57,x58) ->
        P.ps "Ldstuba";P.psp ();P.open_ 1;P.ps "(";ppExp x56;P.ps
          ",";P.psp ();ppExp x57;P.ps ",";P.psp ();ppExp x58;P.ps
          ")";P.close ();()
         | Swapa (x59,x60,x61) ->
        P.ps "Swapa";P.psp ();P.open_ 1;P.ps "(";ppExp x59;P.ps
          ",";P.psp ();ppExp x60;P.ps ",";P.psp ();ppExp x61;P.ps
          ")";P.close ();()
         | Ldda (x62,x63,x64) ->
        P.ps "Ldda";P.psp ();P.open_ 1;P.ps "(";ppExp x62;P.ps
          ",";P.psp ();ppExp x63;P.ps ",";P.psp ();ppExp x64;P.ps
          ")";P.close ();()
         | Stba (x65,x66,x67) ->
        P.ps "Stba";P.psp ();P.open_ 1;P.ps "(";ppExp x65;P.ps
          ",";P.psp ();ppExp x66;P.ps ",";P.psp ();ppExp x67;P.ps
          ")";P.close ();()
         | Stha (x68,x69,x70) ->
        P.ps "Stha";P.psp ();P.open_ 1;P.ps "(";ppExp x68;P.ps
          ",";P.psp ();ppExp x69;P.ps ",";P.psp ();ppExp x70;P.ps
          ")";P.close ();()
         | Sta (x71,x72,x73) ->
        P.ps "Sta";P.psp ();P.open_ 1;P.ps "(";ppExp x71;P.ps ",";P.psp
          ();ppExp x72;P.ps ",";P.psp ();ppExp x73;P.ps ")";P.close
          ();()
         | Stda (x74,x75,x76) ->
        P.ps "Stda";P.psp ();P.open_ 1;P.ps "(";ppExp x74;P.ps
          ",";P.psp ();ppExp x75;P.ps ",";P.psp ();ppExp x76;P.ps
          ")";P.close ();()
         | Ldfsr (x77) ->
        P.ps "Ldfsr";P.psp ();P.open_ 1;P.ps "(";ppExp x77;P.ps
          ")";P.close ();()
         | Ldcsr (x78) ->
        P.ps "Ldcsr";P.psp ();P.open_ 1;P.ps "(";ppExp x78;P.ps
          ")";P.close ();()
         | Stfsr (x79) ->
        P.ps "Stfsr";P.psp ();P.open_ 1;P.ps "(";ppExp x79;P.ps
          ")";P.close ();()
         | Stcsr (x80) ->
        P.ps "Stcsr";P.psp ();P.open_ 1;P.ps "(";ppExp x80;P.ps
          ")";P.close ();()
         | Stdfq (x81) ->
        P.ps "Stdfq";P.psp ();P.open_ 1;P.ps "(";ppExp x81;P.ps
          ")";P.close ();()
         | Stdcq (x82) ->
        P.ps "Stdcq";P.psp ();P.open_ 1;P.ps "(";ppExp x82;P.ps
          ")";P.close ();()
         | Rdy (x83) ->
        P.ps "Rdy";P.psp ();P.open_ 1;P.ps "(";ppExp x83;P.ps
          ")";P.close ();()
         | Rdpsr (x84) ->
        P.ps "Rdpsr";P.psp ();P.open_ 1;P.ps "(";ppExp x84;P.ps
          ")";P.close ();()
         | Rdwim (x85) ->
        P.ps "Rdwim";P.psp ();P.open_ 1;P.ps "(";ppExp x85;P.ps
          ")";P.close ();()
         | Rdtbr (x86) ->
        P.ps "Rdtbr";P.psp ();P.open_ 1;P.ps "(";ppExp x86;P.ps
          ")";P.close ();()
         | Wry (x87,x88) ->
        P.ps "Wry";P.psp ();P.open_ 1;P.ps "(";ppExp x87;P.ps ",";P.psp
          ();ppExp x88;P.ps ")";P.close ();()
         | Wrpsr (x89,x90) ->
        P.ps "Wrpsr";P.psp ();P.open_ 1;P.ps "(";ppExp x89;P.ps
          ",";P.psp ();ppExp x90;P.ps ")";P.close ();()
         | Wrwim (x91,x92) ->
        P.ps "Wrwim";P.psp ();P.open_ 1;P.ps "(";ppExp x91;P.ps
          ",";P.psp ();ppExp x92;P.ps ")";P.close ();()
         | Wrtbr (x93,x94) ->
        P.ps "Wrtbr";P.psp ();P.open_ 1;P.ps "(";ppExp x93;P.ps
          ",";P.psp ();ppExp x94;P.ps ")";P.close ();()
         | Rdasr (x95,x96) ->
        P.ps "Rdasr";P.psp ();P.open_ 1;P.ps "(";ppExp x95;P.ps
          ",";P.psp ();ppExp x96;P.ps ")";P.close ();()
         | Wrasr (x97,x98,x99) ->
        P.ps "Wrasr";P.psp ();P.open_ 1;P.ps "(";ppExp x97;P.ps
          ",";P.psp ();ppExp x98;P.ps ",";P.psp ();ppExp x99;P.ps
          ")";P.close ();()
         | Stbar () ->
        P.ps "Stbar";P.psp ();P.open_ 1;P.ps "(";P.ps ")";P.close ();()
         | And (x100,x101,x102) ->
        P.ps "And";P.psp ();P.open_ 1;P.ps "(";ppExp x100;P.ps
          ",";P.psp ();ppExp x101;P.ps ",";P.psp ();ppExp x102;P.ps
          ")";P.close ();()
         | Andcc (x103,x104,x105) ->
        P.ps "Andcc";P.psp ();P.open_ 1;P.ps "(";ppExp x103;P.ps
          ",";P.psp ();ppExp x104;P.ps ",";P.psp ();ppExp x105;P.ps
          ")";P.close ();()
         | Andn (x106,x107,x108) ->
        P.ps "Andn";P.psp ();P.open_ 1;P.ps "(";ppExp x106;P.ps
          ",";P.psp ();ppExp x107;P.ps ",";P.psp ();ppExp x108;P.ps
          ")";P.close ();()
         | Andncc (x109,x110,x111) ->
        P.ps "Andncc";P.psp ();P.open_ 1;P.ps "(";ppExp x109;P.ps
          ",";P.psp ();ppExp x110;P.ps ",";P.psp ();ppExp x111;P.ps
          ")";P.close ();()
         | Or (x112,x113,x114) ->
        P.ps "Or";P.psp ();P.open_ 1;P.ps "(";ppExp x112;P.ps ",";P.psp
          ();ppExp x113;P.ps ",";P.psp ();ppExp x114;P.ps ")";P.close
          ();()
         | Orcc (x115,x116,x117) ->
        P.ps "Orcc";P.psp ();P.open_ 1;P.ps "(";ppExp x115;P.ps
          ",";P.psp ();ppExp x116;P.ps ",";P.psp ();ppExp x117;P.ps
          ")";P.close ();()
         | Orn (x118,x119,x120) ->
        P.ps "Orn";P.psp ();P.open_ 1;P.ps "(";ppExp x118;P.ps
          ",";P.psp ();ppExp x119;P.ps ",";P.psp ();ppExp x120;P.ps
          ")";P.close ();()
         | Orncc (x121,x122,x123) ->
        P.ps "Orncc";P.psp ();P.open_ 1;P.ps "(";ppExp x121;P.ps
          ",";P.psp ();ppExp x122;P.ps ",";P.psp ();ppExp x123;P.ps
          ")";P.close ();()
         | Xor (x124,x125,x126) ->
        P.ps "Xor";P.psp ();P.open_ 1;P.ps "(";ppExp x124;P.ps
          ",";P.psp ();ppExp x125;P.ps ",";P.psp ();ppExp x126;P.ps
          ")";P.close ();()
         | Xorcc (x127,x128,x129) ->
        P.ps "Xorcc";P.psp ();P.open_ 1;P.ps "(";ppExp x127;P.ps
          ",";P.psp ();ppExp x128;P.ps ",";P.psp ();ppExp x129;P.ps
          ")";P.close ();()
         | Xnor (x130,x131,x132) ->
        P.ps "Xnor";P.psp ();P.open_ 1;P.ps "(";ppExp x130;P.ps
          ",";P.psp ();ppExp x131;P.ps ",";P.psp ();ppExp x132;P.ps
          ")";P.close ();()
         | Xnorcc (x133,x134,x135) ->
        P.ps "Xnorcc";P.psp ();P.open_ 1;P.ps "(";ppExp x133;P.ps
          ",";P.psp ();ppExp x134;P.ps ",";P.psp ();ppExp x135;P.ps
          ")";P.close ();()
         | Sll (x136,x137,x138) ->
        P.ps "Sll";P.psp ();P.open_ 1;P.ps "(";ppExp x136;P.ps
          ",";P.psp ();ppExp x137;P.ps ",";P.psp ();ppExp x138;P.ps
          ")";P.close ();()
         | Srl (x139,x140,x141) ->
        P.ps "Srl";P.psp ();P.open_ 1;P.ps "(";ppExp x139;P.ps
          ",";P.psp ();ppExp x140;P.ps ",";P.psp ();ppExp x141;P.ps
          ")";P.close ();()
         | Sra (x142,x143,x144) ->
        P.ps "Sra";P.psp ();P.open_ 1;P.ps "(";ppExp x142;P.ps
          ",";P.psp ();ppExp x143;P.ps ",";P.psp ();ppExp x144;P.ps
          ")";P.close ();()
         | Add (x145,x146,x147) ->
        P.ps "Add";P.psp ();P.open_ 1;P.ps "(";ppExp x145;P.ps
          ",";P.psp ();ppExp x146;P.ps ",";P.psp ();ppExp x147;P.ps
          ")";P.close ();()
         | Addcc (x148,x149,x150) ->
        P.ps "Addcc";P.psp ();P.open_ 1;P.ps "(";ppExp x148;P.ps
          ",";P.psp ();ppExp x149;P.ps ",";P.psp ();ppExp x150;P.ps
          ")";P.close ();()
         | Addx (x151,x152,x153) ->
        P.ps "Addx";P.psp ();P.open_ 1;P.ps "(";ppExp x151;P.ps
          ",";P.psp ();ppExp x152;P.ps ",";P.psp ();ppExp x153;P.ps
          ")";P.close ();()
         | Addxcc (x154,x155,x156) ->
        P.ps "Addxcc";P.psp ();P.open_ 1;P.ps "(";ppExp x154;P.ps
          ",";P.psp ();ppExp x155;P.ps ",";P.psp ();ppExp x156;P.ps
          ")";P.close ();()
         | Taddcc (x157,x158,x159) ->
        P.ps "Taddcc";P.psp ();P.open_ 1;P.ps "(";ppExp x157;P.ps
          ",";P.psp ();ppExp x158;P.ps ",";P.psp ();ppExp x159;P.ps
          ")";P.close ();()
         | Taddcctv (x160,x161,x162) ->
        P.ps "Taddcctv";P.psp ();P.open_ 1;P.ps "(";ppExp x160;P.ps
          ",";P.psp ();ppExp x161;P.ps ",";P.psp ();ppExp x162;P.ps
          ")";P.close ();()
         | Sub (x163,x164,x165) ->
        P.ps "Sub";P.psp ();P.open_ 1;P.ps "(";ppExp x163;P.ps
          ",";P.psp ();ppExp x164;P.ps ",";P.psp ();ppExp x165;P.ps
          ")";P.close ();()
         | Subcc (x166,x167,x168) ->
        P.ps "Subcc";P.psp ();P.open_ 1;P.ps "(";ppExp x166;P.ps
          ",";P.psp ();ppExp x167;P.ps ",";P.psp ();ppExp x168;P.ps
          ")";P.close ();()
         | Subx (x169,x170,x171) ->
        P.ps "Subx";P.psp ();P.open_ 1;P.ps "(";ppExp x169;P.ps
          ",";P.psp ();ppExp x170;P.ps ",";P.psp ();ppExp x171;P.ps
          ")";P.close ();()
         | Subxcc (x172,x173,x174) ->
        P.ps "Subxcc";P.psp ();P.open_ 1;P.ps "(";ppExp x172;P.ps
          ",";P.psp ();ppExp x173;P.ps ",";P.psp ();ppExp x174;P.ps
          ")";P.close ();()
         | Tsubcc (x175,x176,x177) ->
        P.ps "Tsubcc";P.psp ();P.open_ 1;P.ps "(";ppExp x175;P.ps
          ",";P.psp ();ppExp x176;P.ps ",";P.psp ();ppExp x177;P.ps
          ")";P.close ();()
         | Tsubcctv (x178,x179,x180) ->
        P.ps "Tsubcctv";P.psp ();P.open_ 1;P.ps "(";ppExp x178;P.ps
          ",";P.psp ();ppExp x179;P.ps ",";P.psp ();ppExp x180;P.ps
          ")";P.close ();()
         | Mulscc (x181,x182,x183) ->
        P.ps "Mulscc";P.psp ();P.open_ 1;P.ps "(";ppExp x181;P.ps
          ",";P.psp ();ppExp x182;P.ps ",";P.psp ();ppExp x183;P.ps
          ")";P.close ();()
         | Umul (x184,x185,x186) ->
        P.ps "Umul";P.psp ();P.open_ 1;P.ps "(";ppExp x184;P.ps
          ",";P.psp ();ppExp x185;P.ps ",";P.psp ();ppExp x186;P.ps
          ")";P.close ();()
         | Smul (x187,x188,x189) ->
        P.ps "Smul";P.psp ();P.open_ 1;P.ps "(";ppExp x187;P.ps
          ",";P.psp ();ppExp x188;P.ps ",";P.psp ();ppExp x189;P.ps
          ")";P.close ();()
         | Umulcc (x190,x191,x192) ->
        P.ps "Umulcc";P.psp ();P.open_ 1;P.ps "(";ppExp x190;P.ps
          ",";P.psp ();ppExp x191;P.ps ",";P.psp ();ppExp x192;P.ps
          ")";P.close ();()
         | Smulcc (x193,x194,x195) ->
        P.ps "Smulcc";P.psp ();P.open_ 1;P.ps "(";ppExp x193;P.ps
          ",";P.psp ();ppExp x194;P.ps ",";P.psp ();ppExp x195;P.ps
          ")";P.close ();()
         | Udiv (x196,x197,x198) ->
        P.ps "Udiv";P.psp ();P.open_ 1;P.ps "(";ppExp x196;P.ps
          ",";P.psp ();ppExp x197;P.ps ",";P.psp ();ppExp x198;P.ps
          ")";P.close ();()
         | Sdiv (x199,x200,x201) ->
        P.ps "Sdiv";P.psp ();P.open_ 1;P.ps "(";ppExp x199;P.ps
          ",";P.psp ();ppExp x200;P.ps ",";P.psp ();ppExp x201;P.ps
          ")";P.close ();()
         | Udivcc (x202,x203,x204) ->
        P.ps "Udivcc";P.psp ();P.open_ 1;P.ps "(";ppExp x202;P.ps
          ",";P.psp ();ppExp x203;P.ps ",";P.psp ();ppExp x204;P.ps
          ")";P.close ();()
         | Sdivcc (x205,x206,x207) ->
        P.ps "Sdivcc";P.psp ();P.open_ 1;P.ps "(";ppExp x205;P.ps
          ",";P.psp ();ppExp x206;P.ps ",";P.psp ();ppExp x207;P.ps
          ")";P.close ();()
         | Save (x208,x209,x210) ->
        P.ps "Save";P.psp ();P.open_ 1;P.ps "(";ppExp x208;P.ps
          ",";P.psp ();ppExp x209;P.ps ",";P.psp ();ppExp x210;P.ps
          ")";P.close ();()
         | Restore (x211,x212,x213) ->
        P.ps "Restore";P.psp ();P.open_ 1;P.ps "(";ppExp x211;P.ps
          ",";P.psp ();ppExp x212;P.ps ",";P.psp ();ppExp x213;P.ps
          ")";P.close ();()
         | Bn (x214) ->
        P.ps "Bn";P.psp ();P.open_ 1;P.ps "(";ppExp x214;P.ps
          ")";P.close ();()
         | Bn_a (x215) ->
        P.ps "Bn_a";P.psp ();P.open_ 1;P.ps "(";ppExp x215;P.ps
          ")";P.close ();()
         | Be (x216) ->
        P.ps "Be";P.psp ();P.open_ 1;P.ps "(";ppExp x216;P.ps
          ")";P.close ();()
         | Be_a (x217) ->
        P.ps "Be_a";P.psp ();P.open_ 1;P.ps "(";ppExp x217;P.ps
          ")";P.close ();()
         | Ble (x218) ->
        P.ps "Ble";P.psp ();P.open_ 1;P.ps "(";ppExp x218;P.ps
          ")";P.close ();()
         | Ble_a (x219) ->
        P.ps "Ble_a";P.psp ();P.open_ 1;P.ps "(";ppExp x219;P.ps
          ")";P.close ();()
         | Bl (x220) ->
        P.ps "Bl";P.psp ();P.open_ 1;P.ps "(";ppExp x220;P.ps
          ")";P.close ();()
         | Bl_a (x221) ->
        P.ps "Bl_a";P.psp ();P.open_ 1;P.ps "(";ppExp x221;P.ps
          ")";P.close ();()
         | Bleu (x222) ->
        P.ps "Bleu";P.psp ();P.open_ 1;P.ps "(";ppExp x222;P.ps
          ")";P.close ();()
         | Bleu_a (x223) ->
        P.ps "Bleu_a";P.psp ();P.open_ 1;P.ps "(";ppExp x223;P.ps
          ")";P.close ();()
         | Bcs (x224) ->
        P.ps "Bcs";P.psp ();P.open_ 1;P.ps "(";ppExp x224;P.ps
          ")";P.close ();()
         | Bcs_a (x225) ->
        P.ps "Bcs_a";P.psp ();P.open_ 1;P.ps "(";ppExp x225;P.ps
          ")";P.close ();()
         | Bneg (x226) ->
        P.ps "Bneg";P.psp ();P.open_ 1;P.ps "(";ppExp x226;P.ps
          ")";P.close ();()
         | Bneg_a (x227) ->
        P.ps "Bneg_a";P.psp ();P.open_ 1;P.ps "(";ppExp x227;P.ps
          ")";P.close ();()
         | Bvs (x228) ->
        P.ps "Bvs";P.psp ();P.open_ 1;P.ps "(";ppExp x228;P.ps
          ")";P.close ();()
         | Bvs_a (x229) ->
        P.ps "Bvs_a";P.psp ();P.open_ 1;P.ps "(";ppExp x229;P.ps
          ")";P.close ();()
         | Ba (x230) ->
        P.ps "Ba";P.psp ();P.open_ 1;P.ps "(";ppExp x230;P.ps
          ")";P.close ();()
         | Ba_a (x231) ->
        P.ps "Ba_a";P.psp ();P.open_ 1;P.ps "(";ppExp x231;P.ps
          ")";P.close ();()
         | Bne (x232) ->
        P.ps "Bne";P.psp ();P.open_ 1;P.ps "(";ppExp x232;P.ps
          ")";P.close ();()
         | Bne_a (x233) ->
        P.ps "Bne_a";P.psp ();P.open_ 1;P.ps "(";ppExp x233;P.ps
          ")";P.close ();()
         | Bg (x234) ->
        P.ps "Bg";P.psp ();P.open_ 1;P.ps "(";ppExp x234;P.ps
          ")";P.close ();()
         | Bg_a (x235) ->
        P.ps "Bg_a";P.psp ();P.open_ 1;P.ps "(";ppExp x235;P.ps
          ")";P.close ();()
         | Bge (x236) ->
        P.ps "Bge";P.psp ();P.open_ 1;P.ps "(";ppExp x236;P.ps
          ")";P.close ();()
         | Bge_a (x237) ->
        P.ps "Bge_a";P.psp ();P.open_ 1;P.ps "(";ppExp x237;P.ps
          ")";P.close ();()
         | Bgu (x238) ->
        P.ps "Bgu";P.psp ();P.open_ 1;P.ps "(";ppExp x238;P.ps
          ")";P.close ();()
         | Bgu_a (x239) ->
        P.ps "Bgu_a";P.psp ();P.open_ 1;P.ps "(";ppExp x239;P.ps
          ")";P.close ();()
         | Bcc (x240) ->
        P.ps "Bcc";P.psp ();P.open_ 1;P.ps "(";ppExp x240;P.ps
          ")";P.close ();()
         | Bcc_a (x241) ->
        P.ps "Bcc_a";P.psp ();P.open_ 1;P.ps "(";ppExp x241;P.ps
          ")";P.close ();()
         | Bpos (x242) ->
        P.ps "Bpos";P.psp ();P.open_ 1;P.ps "(";ppExp x242;P.ps
          ")";P.close ();()
         | Bpos_a (x243) ->
        P.ps "Bpos_a";P.psp ();P.open_ 1;P.ps "(";ppExp x243;P.ps
          ")";P.close ();()
         | Bvc (x244) ->
        P.ps "Bvc";P.psp ();P.open_ 1;P.ps "(";ppExp x244;P.ps
          ")";P.close ();()
         | Bvc_a (x245) ->
        P.ps "Bvc_a";P.psp ();P.open_ 1;P.ps "(";ppExp x245;P.ps
          ")";P.close ();()
         | Fbn (x246) ->
        P.ps "Fbn";P.psp ();P.open_ 1;P.ps "(";ppExp x246;P.ps
          ")";P.close ();()
         | Fbn_a (x247) ->
        P.ps "Fbn_a";P.psp ();P.open_ 1;P.ps "(";ppExp x247;P.ps
          ")";P.close ();()
         | Fbne (x248) ->
        P.ps "Fbne";P.psp ();P.open_ 1;P.ps "(";ppExp x248;P.ps
          ")";P.close ();()
         | Fbne_a (x249) ->
        P.ps "Fbne_a";P.psp ();P.open_ 1;P.ps "(";ppExp x249;P.ps
          ")";P.close ();()
         | Fblg (x250) ->
        P.ps "Fblg";P.psp ();P.open_ 1;P.ps "(";ppExp x250;P.ps
          ")";P.close ();()
         | Fblg_a (x251) ->
        P.ps "Fblg_a";P.psp ();P.open_ 1;P.ps "(";ppExp x251;P.ps
          ")";P.close ();()
         | Fbul (x252) ->
        P.ps "Fbul";P.psp ();P.open_ 1;P.ps "(";ppExp x252;P.ps
          ")";P.close ();()
         | Fbul_a (x253) ->
        P.ps "Fbul_a";P.psp ();P.open_ 1;P.ps "(";ppExp x253;P.ps
          ")";P.close ();()
         | Fbl (x254) ->
        P.ps "Fbl";P.psp ();P.open_ 1;P.ps "(";ppExp x254;P.ps
          ")";P.close ();()
         | Fbl_a (x255) ->
        P.ps "Fbl_a";P.psp ();P.open_ 1;P.ps "(";ppExp x255;P.ps
          ")";P.close ();()
         | Fbug (x256) ->
        P.ps "Fbug";P.psp ();P.open_ 1;P.ps "(";ppExp x256;P.ps
          ")";P.close ();()
         | Fbug_a (x257) ->
        P.ps "Fbug_a";P.psp ();P.open_ 1;P.ps "(";ppExp x257;P.ps
          ")";P.close ();()
         | Fbg (x258) ->
        P.ps "Fbg";P.psp ();P.open_ 1;P.ps "(";ppExp x258;P.ps
          ")";P.close ();()
         | Fbg_a (x259) ->
        P.ps "Fbg_a";P.psp ();P.open_ 1;P.ps "(";ppExp x259;P.ps
          ")";P.close ();()
         | Fbu (x260) ->
        P.ps "Fbu";P.psp ();P.open_ 1;P.ps "(";ppExp x260;P.ps
          ")";P.close ();()
         | Fbu_a (x261) ->
        P.ps "Fbu_a";P.psp ();P.open_ 1;P.ps "(";ppExp x261;P.ps
          ")";P.close ();()
         | Fba (x262) ->
        P.ps "Fba";P.psp ();P.open_ 1;P.ps "(";ppExp x262;P.ps
          ")";P.close ();()
         | Fba_a (x263) ->
        P.ps "Fba_a";P.psp ();P.open_ 1;P.ps "(";ppExp x263;P.ps
          ")";P.close ();()
         | Fbe (x264) ->
        P.ps "Fbe";P.psp ();P.open_ 1;P.ps "(";ppExp x264;P.ps
          ")";P.close ();()
         | Fbe_a (x265) ->
        P.ps "Fbe_a";P.psp ();P.open_ 1;P.ps "(";ppExp x265;P.ps
          ")";P.close ();()
         | Fbue (x266) ->
        P.ps "Fbue";P.psp ();P.open_ 1;P.ps "(";ppExp x266;P.ps
          ")";P.close ();()
         | Fbue_a (x267) ->
        P.ps "Fbue_a";P.psp ();P.open_ 1;P.ps "(";ppExp x267;P.ps
          ")";P.close ();()
         | Fbge (x268) ->
        P.ps "Fbge";P.psp ();P.open_ 1;P.ps "(";ppExp x268;P.ps
          ")";P.close ();()
         | Fbge_a (x269) ->
        P.ps "Fbge_a";P.psp ();P.open_ 1;P.ps "(";ppExp x269;P.ps
          ")";P.close ();()
         | Fbuge (x270) ->
        P.ps "Fbuge";P.psp ();P.open_ 1;P.ps "(";ppExp x270;P.ps
          ")";P.close ();()
         | Fbuge_a (x271) ->
        P.ps "Fbuge_a";P.psp ();P.open_ 1;P.ps "(";ppExp x271;P.ps
          ")";P.close ();()
         | Fble (x272) ->
        P.ps "Fble";P.psp ();P.open_ 1;P.ps "(";ppExp x272;P.ps
          ")";P.close ();()
         | Fble_a (x273) ->
        P.ps "Fble_a";P.psp ();P.open_ 1;P.ps "(";ppExp x273;P.ps
          ")";P.close ();()
         | Fbule (x274) ->
        P.ps "Fbule";P.psp ();P.open_ 1;P.ps "(";ppExp x274;P.ps
          ")";P.close ();()
         | Fbule_a (x275) ->
        P.ps "Fbule_a";P.psp ();P.open_ 1;P.ps "(";ppExp x275;P.ps
          ")";P.close ();()
         | Fbo (x276) ->
        P.ps "Fbo";P.psp ();P.open_ 1;P.ps "(";ppExp x276;P.ps
          ")";P.close ();()
         | Fbo_a (x277) ->
        P.ps "Fbo_a";P.psp ();P.open_ 1;P.ps "(";ppExp x277;P.ps
          ")";P.close ();()
         | Cbn (x278) ->
        P.ps "Cbn";P.psp ();P.open_ 1;P.ps "(";ppExp x278;P.ps
          ")";P.close ();()
         | Cbn_a (x279) ->
        P.ps "Cbn_a";P.psp ();P.open_ 1;P.ps "(";ppExp x279;P.ps
          ")";P.close ();()
         | Cb123 (x280) ->
        P.ps "Cb123";P.psp ();P.open_ 1;P.ps "(";ppExp x280;P.ps
          ")";P.close ();()
         | Cb123_a (x281) ->
        P.ps "Cb123_a";P.psp ();P.open_ 1;P.ps "(";ppExp x281;P.ps
          ")";P.close ();()
         | Cb12 (x282) ->
        P.ps "Cb12";P.psp ();P.open_ 1;P.ps "(";ppExp x282;P.ps
          ")";P.close ();()
         | Cb12_a (x283) ->
        P.ps "Cb12_a";P.psp ();P.open_ 1;P.ps "(";ppExp x283;P.ps
          ")";P.close ();()
         | Cb13 (x284) ->
        P.ps "Cb13";P.psp ();P.open_ 1;P.ps "(";ppExp x284;P.ps
          ")";P.close ();()
         | Cb13_a (x285) ->
        P.ps "Cb13_a";P.psp ();P.open_ 1;P.ps "(";ppExp x285;P.ps
          ")";P.close ();()
         | Cb1 (x286) ->
        P.ps "Cb1";P.psp ();P.open_ 1;P.ps "(";ppExp x286;P.ps
          ")";P.close ();()
         | Cb1_a (x287) ->
        P.ps "Cb1_a";P.psp ();P.open_ 1;P.ps "(";ppExp x287;P.ps
          ")";P.close ();()
         | Cb23 (x288) ->
        P.ps "Cb23";P.psp ();P.open_ 1;P.ps "(";ppExp x288;P.ps
          ")";P.close ();()
         | Cb23_a (x289) ->
        P.ps "Cb23_a";P.psp ();P.open_ 1;P.ps "(";ppExp x289;P.ps
          ")";P.close ();()
         | Cb2 (x290) ->
        P.ps "Cb2";P.psp ();P.open_ 1;P.ps "(";ppExp x290;P.ps
          ")";P.close ();()
         | Cb2_a (x291) ->
        P.ps "Cb2_a";P.psp ();P.open_ 1;P.ps "(";ppExp x291;P.ps
          ")";P.close ();()
         | Cb3 (x292) ->
        P.ps "Cb3";P.psp ();P.open_ 1;P.ps "(";ppExp x292;P.ps
          ")";P.close ();()
         | Cb3_a (x293) ->
        P.ps "Cb3_a";P.psp ();P.open_ 1;P.ps "(";ppExp x293;P.ps
          ")";P.close ();()
         | Cba (x294) ->
        P.ps "Cba";P.psp ();P.open_ 1;P.ps "(";ppExp x294;P.ps
          ")";P.close ();()
         | Cba_a (x295) ->
        P.ps "Cba_a";P.psp ();P.open_ 1;P.ps "(";ppExp x295;P.ps
          ")";P.close ();()
         | Cb0 (x296) ->
        P.ps "Cb0";P.psp ();P.open_ 1;P.ps "(";ppExp x296;P.ps
          ")";P.close ();()
         | Cb0_a (x297) ->
        P.ps "Cb0_a";P.psp ();P.open_ 1;P.ps "(";ppExp x297;P.ps
          ")";P.close ();()
         | Cb03 (x298) ->
        P.ps "Cb03";P.psp ();P.open_ 1;P.ps "(";ppExp x298;P.ps
          ")";P.close ();()
         | Cb03_a (x299) ->
        P.ps "Cb03_a";P.psp ();P.open_ 1;P.ps "(";ppExp x299;P.ps
          ")";P.close ();()
         | Cb02 (x300) ->
        P.ps "Cb02";P.psp ();P.open_ 1;P.ps "(";ppExp x300;P.ps
          ")";P.close ();()
         | Cb02_a (x301) ->
        P.ps "Cb02_a";P.psp ();P.open_ 1;P.ps "(";ppExp x301;P.ps
          ")";P.close ();()
         | Cb023 (x302) ->
        P.ps "Cb023";P.psp ();P.open_ 1;P.ps "(";ppExp x302;P.ps
          ")";P.close ();()
         | Cb023_a (x303) ->
        P.ps "Cb023_a";P.psp ();P.open_ 1;P.ps "(";ppExp x303;P.ps
          ")";P.close ();()
         | Cb01 (x304) ->
        P.ps "Cb01";P.psp ();P.open_ 1;P.ps "(";ppExp x304;P.ps
          ")";P.close ();()
         | Cb01_a (x305) ->
        P.ps "Cb01_a";P.psp ();P.open_ 1;P.ps "(";ppExp x305;P.ps
          ")";P.close ();()
         | Cb013 (x306) ->
        P.ps "Cb013";P.psp ();P.open_ 1;P.ps "(";ppExp x306;P.ps
          ")";P.close ();()
         | Cb013_a (x307) ->
        P.ps "Cb013_a";P.psp ();P.open_ 1;P.ps "(";ppExp x307;P.ps
          ")";P.close ();()
         | Cb012 (x308) ->
        P.ps "Cb012";P.psp ();P.open_ 1;P.ps "(";ppExp x308;P.ps
          ")";P.close ();()
         | Cb012_a (x309) ->
        P.ps "Cb012_a";P.psp ();P.open_ 1;P.ps "(";ppExp x309;P.ps
          ")";P.close ();()
         | Call (x310) ->
        P.ps "Call";P.psp ();P.open_ 1;P.ps "(";ppExp x310;P.ps
          ")";P.close ();()
         | Fmovs (x311,x312) ->
        P.ps "Fmovs";P.psp ();P.open_ 1;P.ps "(";ppExp x311;P.ps
          ",";P.psp ();ppExp x312;P.ps ")";P.close ();()
         | Fnegs (x313,x314) ->
        P.ps "Fnegs";P.psp ();P.open_ 1;P.ps "(";ppExp x313;P.ps
          ",";P.psp ();ppExp x314;P.ps ")";P.close ();()
         | Fabss (x315,x316) ->
        P.ps "Fabss";P.psp ();P.open_ 1;P.ps "(";ppExp x315;P.ps
          ",";P.psp ();ppExp x316;P.ps ")";P.close ();()
         | Fsqrts (x317,x318) ->
        P.ps "Fsqrts";P.psp ();P.open_ 1;P.ps "(";ppExp x317;P.ps
          ",";P.psp ();ppExp x318;P.ps ")";P.close ();()
         | Fsqrtd (x319,x320) ->
        P.ps "Fsqrtd";P.psp ();P.open_ 1;P.ps "(";ppExp x319;P.ps
          ",";P.psp ();ppExp x320;P.ps ")";P.close ();()
         | Fsqrtq (x321,x322) ->
        P.ps "Fsqrtq";P.psp ();P.open_ 1;P.ps "(";ppExp x321;P.ps
          ",";P.psp ();ppExp x322;P.ps ")";P.close ();()
         | Fitos (x323,x324) ->
        P.ps "Fitos";P.psp ();P.open_ 1;P.ps "(";ppExp x323;P.ps
          ",";P.psp ();ppExp x324;P.ps ")";P.close ();()
         | Fstoi (x325,x326) ->
        P.ps "Fstoi";P.psp ();P.open_ 1;P.ps "(";ppExp x325;P.ps
          ",";P.psp ();ppExp x326;P.ps ")";P.close ();()
         | Fitod (x327,x328) ->
        P.ps "Fitod";P.psp ();P.open_ 1;P.ps "(";ppExp x327;P.ps
          ",";P.psp ();ppExp x328;P.ps ")";P.close ();()
         | Fstod (x329,x330) ->
        P.ps "Fstod";P.psp ();P.open_ 1;P.ps "(";ppExp x329;P.ps
          ",";P.psp ();ppExp x330;P.ps ")";P.close ();()
         | Fitoq (x331,x332) ->
        P.ps "Fitoq";P.psp ();P.open_ 1;P.ps "(";ppExp x331;P.ps
          ",";P.psp ();ppExp x332;P.ps ")";P.close ();()
         | Fstoq (x333,x334) ->
        P.ps "Fstoq";P.psp ();P.open_ 1;P.ps "(";ppExp x333;P.ps
          ",";P.psp ();ppExp x334;P.ps ")";P.close ();()
         | Fdtoi (x335,x336) ->
        P.ps "Fdtoi";P.psp ();P.open_ 1;P.ps "(";ppExp x335;P.ps
          ",";P.psp ();ppExp x336;P.ps ")";P.close ();()
         | Fdtos (x337,x338) ->
        P.ps "Fdtos";P.psp ();P.open_ 1;P.ps "(";ppExp x337;P.ps
          ",";P.psp ();ppExp x338;P.ps ")";P.close ();()
         | Fqtos (x339,x340) ->
        P.ps "Fqtos";P.psp ();P.open_ 1;P.ps "(";ppExp x339;P.ps
          ",";P.psp ();ppExp x340;P.ps ")";P.close ();()
         | Fqtoi (x341,x342) ->
        P.ps "Fqtoi";P.psp ();P.open_ 1;P.ps "(";ppExp x341;P.ps
          ",";P.psp ();ppExp x342;P.ps ")";P.close ();()
         | Fqtod (x343,x344) ->
        P.ps "Fqtod";P.psp ();P.open_ 1;P.ps "(";ppExp x343;P.ps
          ",";P.psp ();ppExp x344;P.ps ")";P.close ();()
         | Fdtoq (x345,x346) ->
        P.ps "Fdtoq";P.psp ();P.open_ 1;P.ps "(";ppExp x345;P.ps
          ",";P.psp ();ppExp x346;P.ps ")";P.close ();()
         | Fadds (x347,x348,x349) ->
        P.ps "Fadds";P.psp ();P.open_ 1;P.ps "(";ppExp x347;P.ps
          ",";P.psp ();ppExp x348;P.ps ",";P.psp ();ppExp x349;P.ps
          ")";P.close ();()
         | Fsubs (x350,x351,x352) ->
        P.ps "Fsubs";P.psp ();P.open_ 1;P.ps "(";ppExp x350;P.ps
          ",";P.psp ();ppExp x351;P.ps ",";P.psp ();ppExp x352;P.ps
          ")";P.close ();()
         | Fmuls (x353,x354,x355) ->
        P.ps "Fmuls";P.psp ();P.open_ 1;P.ps "(";ppExp x353;P.ps
          ",";P.psp ();ppExp x354;P.ps ",";P.psp ();ppExp x355;P.ps
          ")";P.close ();()
         | Fdivs (x356,x357,x358) ->
        P.ps "Fdivs";P.psp ();P.open_ 1;P.ps "(";ppExp x356;P.ps
          ",";P.psp ();ppExp x357;P.ps ",";P.psp ();ppExp x358;P.ps
          ")";P.close ();()
         | Faddd (x359,x360,x361) ->
        P.ps "Faddd";P.psp ();P.open_ 1;P.ps "(";ppExp x359;P.ps
          ",";P.psp ();ppExp x360;P.ps ",";P.psp ();ppExp x361;P.ps
          ")";P.close ();()
         | Fsubd (x362,x363,x364) ->
        P.ps "Fsubd";P.psp ();P.open_ 1;P.ps "(";ppExp x362;P.ps
          ",";P.psp ();ppExp x363;P.ps ",";P.psp ();ppExp x364;P.ps
          ")";P.close ();()
         | Fmuld (x365,x366,x367) ->
        P.ps "Fmuld";P.psp ();P.open_ 1;P.ps "(";ppExp x365;P.ps
          ",";P.psp ();ppExp x366;P.ps ",";P.psp ();ppExp x367;P.ps
          ")";P.close ();()
         | Fdivd (x368,x369,x370) ->
        P.ps "Fdivd";P.psp ();P.open_ 1;P.ps "(";ppExp x368;P.ps
          ",";P.psp ();ppExp x369;P.ps ",";P.psp ();ppExp x370;P.ps
          ")";P.close ();()
         | Faddq (x371,x372,x373) ->
        P.ps "Faddq";P.psp ();P.open_ 1;P.ps "(";ppExp x371;P.ps
          ",";P.psp ();ppExp x372;P.ps ",";P.psp ();ppExp x373;P.ps
          ")";P.close ();()
         | Fsubq (x374,x375,x376) ->
        P.ps "Fsubq";P.psp ();P.open_ 1;P.ps "(";ppExp x374;P.ps
          ",";P.psp ();ppExp x375;P.ps ",";P.psp ();ppExp x376;P.ps
          ")";P.close ();()
         | Fmulq (x377,x378,x379) ->
        P.ps "Fmulq";P.psp ();P.open_ 1;P.ps "(";ppExp x377;P.ps
          ",";P.psp ();ppExp x378;P.ps ",";P.psp ();ppExp x379;P.ps
          ")";P.close ();()
         | Fdivq (x380,x381,x382) ->
        P.ps "Fdivq";P.psp ();P.open_ 1;P.ps "(";ppExp x380;P.ps
          ",";P.psp ();ppExp x381;P.ps ",";P.psp ();ppExp x382;P.ps
          ")";P.close ();()
         | Fsmuld (x383,x384,x385) ->
        P.ps "Fsmuld";P.psp ();P.open_ 1;P.ps "(";ppExp x383;P.ps
          ",";P.psp ();ppExp x384;P.ps ",";P.psp ();ppExp x385;P.ps
          ")";P.close ();()
         | Fdmulq (x386,x387,x388) ->
        P.ps "Fdmulq";P.psp ();P.open_ 1;P.ps "(";ppExp x386;P.ps
          ",";P.psp ();ppExp x387;P.ps ",";P.psp ();ppExp x388;P.ps
          ")";P.close ();()
         | Fcmps (x389,x390) ->
        P.ps "Fcmps";P.psp ();P.open_ 1;P.ps "(";ppExp x389;P.ps
          ",";P.psp ();ppExp x390;P.ps ")";P.close ();()
         | Fcmpes (x391,x392) ->
        P.ps "Fcmpes";P.psp ();P.open_ 1;P.ps "(";ppExp x391;P.ps
          ",";P.psp ();ppExp x392;P.ps ")";P.close ();()
         | Fcmpd (x393,x394) ->
        P.ps "Fcmpd";P.psp ();P.open_ 1;P.ps "(";ppExp x393;P.ps
          ",";P.psp ();ppExp x394;P.ps ")";P.close ();()
         | Fcmped (x395,x396) ->
        P.ps "Fcmped";P.psp ();P.open_ 1;P.ps "(";ppExp x395;P.ps
          ",";P.psp ();ppExp x396;P.ps ")";P.close ();()
         | Fcmpq (x397,x398) ->
        P.ps "Fcmpq";P.psp ();P.open_ 1;P.ps "(";ppExp x397;P.ps
          ",";P.psp ();ppExp x398;P.ps ")";P.close ();()
         | Fcmpeq (x399,x400) ->
        P.ps "Fcmpeq";P.psp ();P.open_ 1;P.ps "(";ppExp x399;P.ps
          ",";P.psp ();ppExp x400;P.ps ")";P.close ();()
         | Nop () ->
        P.ps "Nop";P.psp ();P.open_ 1;P.ps "(";P.ps ")";P.close ();()
         | Flush (x401) ->
        P.ps "Flush";P.psp ();P.open_ 1;P.ps "(";ppExp x401;P.ps
          ")";P.close ();()
         | Jmpl (x402,x403) ->
        P.ps "Jmpl";P.psp ();P.open_ 1;P.ps "(";ppExp x402;P.ps
          ",";P.psp ();ppExp x403;P.ps ")";P.close ();()
         | Rett (x404) ->
        P.ps "Rett";P.psp ();P.open_ 1;P.ps "(";ppExp x404;P.ps
          ")";P.close ();()
         | Tn (x405) ->
        P.ps "Tn";P.psp ();P.open_ 1;P.ps "(";ppExp x405;P.ps
          ")";P.close ();()
         | Te (x406) ->
        P.ps "Te";P.psp ();P.open_ 1;P.ps "(";ppExp x406;P.ps
          ")";P.close ();()
         | Tle (x407) ->
        P.ps "Tle";P.psp ();P.open_ 1;P.ps "(";ppExp x407;P.ps
          ")";P.close ();()
         | Tl (x408) ->
        P.ps "Tl";P.psp ();P.open_ 1;P.ps "(";ppExp x408;P.ps
          ")";P.close ();()
         | Tleu (x409) ->
        P.ps "Tleu";P.psp ();P.open_ 1;P.ps "(";ppExp x409;P.ps
          ")";P.close ();()
         | Tcs (x410) ->
        P.ps "Tcs";P.psp ();P.open_ 1;P.ps "(";ppExp x410;P.ps
          ")";P.close ();()
         | Tneg (x411) ->
        P.ps "Tneg";P.psp ();P.open_ 1;P.ps "(";ppExp x411;P.ps
          ")";P.close ();()
         | Tvs (x412) ->
        P.ps "Tvs";P.psp ();P.open_ 1;P.ps "(";ppExp x412;P.ps
          ")";P.close ();()
         | Ta (x413) ->
        P.ps "Ta";P.psp ();P.open_ 1;P.ps "(";ppExp x413;P.ps
          ")";P.close ();()
         | Tne (x414) ->
        P.ps "Tne";P.psp ();P.open_ 1;P.ps "(";ppExp x414;P.ps
          ")";P.close ();()
         | Tg (x415) ->
        P.ps "Tg";P.psp ();P.open_ 1;P.ps "(";ppExp x415;P.ps
          ")";P.close ();()
         | Tge (x416) ->
        P.ps "Tge";P.psp ();P.open_ 1;P.ps "(";ppExp x416;P.ps
          ")";P.close ();()
         | Tgu (x417) ->
        P.ps "Tgu";P.psp ();P.open_ 1;P.ps "(";ppExp x417;P.ps
          ")";P.close ();()
         | Tcc (x418) ->
        P.ps "Tcc";P.psp ();P.open_ 1;P.ps "(";ppExp x418;P.ps
          ")";P.close ();()
         | Tpos (x419) ->
        P.ps "Tpos";P.psp ();P.open_ 1;P.ps "(";ppExp x419;P.ps
          ")";P.close ();()
         | Tvc (x420) ->
        P.ps "Tvc";P.psp ();P.open_ 1;P.ps "(";ppExp x420;P.ps
          ")";P.close ();()
         | Unimp (x421) ->
        P.ps "Unimp";P.psp ();P.open_ 1;P.ps "(";ppExp x421;P.ps
          ")";P.close ();()
         | Sethi (x422,x423) ->
        P.ps "Sethi";P.psp ();P.open_ 1;P.ps "(";ppExp x422;P.ps
          ",";P.psp ();ppExp x423;P.ps ")";P.close ();()
         | Decode_sethi (x424,x425) ->
        P.ps "Decode_sethi";P.psp ();P.open_ 1;P.ps "(";ppExp x424;P.ps
          ",";P.psp ();ppExp x425;P.ps ")";P.close ();()
         | Set (x426,x427) ->
        P.ps "Set";P.psp ();P.open_ 1;P.ps "(";ppExp x426;P.ps
          ",";P.psp ();ppExp x427;P.ps ")";P.close ();()))

let  rec pprint =
fun x -> S.pprint (ppAll pprint) x


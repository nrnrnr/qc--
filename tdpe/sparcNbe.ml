open SparcTrees.M

module S = SparcSyntax
module Sy = Syntax
module Ctrl = Tdpe.Ctrl




let reify_reg_or_imm =
fun x1 ->
  (match x1 with 
     | Imode (x2) -> Sy.XTRA (S.T__reg_or_imm (S.Imode (x2)))
     | Rmode (x3) -> Sy.XTRA (S.T__reg_or_imm (S.Rmode (x3))))
let reflect_reg_or_imm =
fun x1 ->
  let r2 = Tools.gensym "x" in
  let r3 = Tools.gensym "x" in
  let vv4 =
  Ctrl.shift
    (fun x5 ->
       let r6 =
       Ctrl.reset (fun x7 -> let rr8 = x5 (Imode (Sy.VAR r2)) in rr8)
       in
       let r9 =
       Ctrl.reset
         (fun x10 -> let rr11 = x5 (Rmode (Sy.VAR r3)) in rr11) in
       Sy.CASE
       (x1,
        [("Imode", Sy.TUPLE [Sy.ID r2], r6);
         ("Rmode", Sy.TUPLE [Sy.ID r3], r9)])) in vv4
let reify_address =
fun x1 ->
  (match x1 with 
     | Generala (x2,x3) ->
    Sy.XTRA (S.T__address (S.Generala (x2, reify_reg_or_imm x3)))
     | Dispa (x4,x5) -> Sy.XTRA (S.T__address (S.Dispa (x4, x5)))
     | Absolutea (x6) -> Sy.XTRA (S.T__address (S.Absolutea (x6)))
     | Indexa (x7,x8) -> Sy.XTRA (S.T__address (S.Indexa (x7, x8)))
     | Indirecta (x9) -> Sy.XTRA (S.T__address (S.Indirecta (x9))))
let reflect_address =
fun x1 ->
  let r2 = Tools.gensym "x" in
  let r3 = Tools.gensym "x" in
  let r4 = Tools.gensym "x" in
  let r5 = Tools.gensym "x" in
  let r6 = Tools.gensym "x" in
  let r7 = Tools.gensym "x" in
  let r8 = Tools.gensym "x" in
  let r9 = Tools.gensym "x" in
  let vv10 =
  Ctrl.shift
    (fun x11 ->
       let r12 =
       Ctrl.reset
         (fun x13 ->
            let rr14 =
            x11 (Generala (Sy.VAR r2, reflect_reg_or_imm (Sy.VAR r3)))
            in rr14) in
       let r15 =
       Ctrl.reset
         (fun x16 ->
            let rr17 = x11 (Dispa (Sy.VAR r4, Sy.VAR r5)) in rr17) in
       let r18 =
       Ctrl.reset
         (fun x19 -> let rr20 = x11 (Absolutea (Sy.VAR r6)) in rr20) in
       let r21 =
       Ctrl.reset
         (fun x22 ->
            let rr23 = x11 (Indexa (Sy.VAR r7, Sy.VAR r8)) in rr23) in
       let r24 =
       Ctrl.reset
         (fun x25 -> let rr26 = x11 (Indirecta (Sy.VAR r9)) in rr26) in
       Sy.CASE
       (x1,
        [("Generala", Sy.TUPLE [Sy.ID r2;Sy.ID r3], r12);
         ("Dispa", Sy.TUPLE [Sy.ID r4;Sy.ID r5], r15);
         ("Absolutea", Sy.TUPLE [Sy.ID r6], r18);
         ("Indexa", Sy.TUPLE [Sy.ID r7;Sy.ID r8], r21);
         ("Indirecta", Sy.TUPLE [Sy.ID r9], r24)])) in vv10
let reify_regaddr =
fun x1 ->
  (match x1 with 
     | Indexr (x2,x3) -> Sy.XTRA (S.T__regaddr (S.Indexr (x2, x3)))
     | Indirectr (x4) -> Sy.XTRA (S.T__regaddr (S.Indirectr (x4))))
let reflect_regaddr =
fun x1 ->
  let r2 = Tools.gensym "x" in
  let r3 = Tools.gensym "x" in
  let r4 = Tools.gensym "x" in
  let vv5 =
  Ctrl.shift
    (fun x6 ->
       let r7 =
       Ctrl.reset
         (fun x8 -> let rr9 = x6 (Indexr (Sy.VAR r2, Sy.VAR r3)) in rr9)
       in
       let r10 =
       Ctrl.reset
         (fun x11 -> let rr12 = x6 (Indirectr (Sy.VAR r4)) in rr12) in
       Sy.CASE
       (x1,
        [("Indexr", Sy.TUPLE [Sy.ID r2;Sy.ID r3], r7);
         ("Indirectr", Sy.TUPLE [Sy.ID r4], r10)])) in vv5
let reify_t =
fun x1 ->
  (match x1 with 
     | Ldsb (x2,x3) -> Sy.XTRA (S.T__t (S.Ldsb (reify_address x2, x3)))
     | Ldsh (x4,x5) -> Sy.XTRA (S.T__t (S.Ldsh (reify_address x4, x5)))
     | Ldub (x6,x7) -> Sy.XTRA (S.T__t (S.Ldub (reify_address x6, x7)))
     | Lduh (x8,x9) -> Sy.XTRA (S.T__t (S.Lduh (reify_address x8, x9)))
     | Ld (x10,x11) -> Sy.XTRA (S.T__t (S.Ld (reify_address x10, x11)))
     | Ldstub (x12,x13) ->
    Sy.XTRA (S.T__t (S.Ldstub (reify_address x12, x13)))
     | Swap_ (x14,x15) ->
    Sy.XTRA (S.T__t (S.Swap_ (reify_address x14, x15)))
     | Ldd (x16,x17) ->
    Sy.XTRA (S.T__t (S.Ldd (reify_address x16, x17)))
     | Ldf (x18,x19) ->
    Sy.XTRA (S.T__t (S.Ldf (reify_address x18, x19)))
     | Lddf (x20,x21) ->
    Sy.XTRA (S.T__t (S.Lddf (reify_address x20, x21)))
     | Ldc (x22,x23) ->
    Sy.XTRA (S.T__t (S.Ldc (reify_address x22, x23)))
     | Lddc (x24,x25) ->
    Sy.XTRA (S.T__t (S.Lddc (reify_address x24, x25)))
     | Stb (x26,x27) ->
    Sy.XTRA (S.T__t (S.Stb (x26, reify_address x27)))
     | Sth (x28,x29) ->
    Sy.XTRA (S.T__t (S.Sth (x28, reify_address x29)))
     | St (x30,x31) -> Sy.XTRA (S.T__t (S.St (x30, reify_address x31)))
     | Std (x32,x33) ->
    Sy.XTRA (S.T__t (S.Std (x32, reify_address x33)))
     | Stf (x34,x35) ->
    Sy.XTRA (S.T__t (S.Stf (x34, reify_address x35)))
     | Stdf (x36,x37) ->
    Sy.XTRA (S.T__t (S.Stdf (x36, reify_address x37)))
     | Stc (x38,x39) ->
    Sy.XTRA (S.T__t (S.Stc (x38, reify_address x39)))
     | Stdc (x40,x41) ->
    Sy.XTRA (S.T__t (S.Stdc (x40, reify_address x41)))
     | Ldsba (x42,x43,x44) ->
    Sy.XTRA (S.T__t (S.Ldsba (reify_regaddr x42, x43, x44)))
     | Ldsha (x45,x46,x47) ->
    Sy.XTRA (S.T__t (S.Ldsha (reify_regaddr x45, x46, x47)))
     | Lduba (x48,x49,x50) ->
    Sy.XTRA (S.T__t (S.Lduba (reify_regaddr x48, x49, x50)))
     | Lduha (x51,x52,x53) ->
    Sy.XTRA (S.T__t (S.Lduha (reify_regaddr x51, x52, x53)))
     | Lda (x54,x55,x56) ->
    Sy.XTRA (S.T__t (S.Lda (reify_regaddr x54, x55, x56)))
     | Ldstuba (x57,x58,x59) ->
    Sy.XTRA (S.T__t (S.Ldstuba (reify_regaddr x57, x58, x59)))
     | Swapa (x60,x61,x62) ->
    Sy.XTRA (S.T__t (S.Swapa (reify_regaddr x60, x61, x62)))
     | Ldda (x63,x64,x65) ->
    Sy.XTRA (S.T__t (S.Ldda (reify_regaddr x63, x64, x65)))
     | Stba (x66,x67,x68) ->
    Sy.XTRA (S.T__t (S.Stba (x66, reify_regaddr x67, x68)))
     | Stha (x69,x70,x71) ->
    Sy.XTRA (S.T__t (S.Stha (x69, reify_regaddr x70, x71)))
     | Sta (x72,x73,x74) ->
    Sy.XTRA (S.T__t (S.Sta (x72, reify_regaddr x73, x74)))
     | Stda (x75,x76,x77) ->
    Sy.XTRA (S.T__t (S.Stda (x75, reify_regaddr x76, x77)))
     | Ldfsr (x78) -> Sy.XTRA (S.T__t (S.Ldfsr (reify_address x78)))
     | Ldcsr (x79) -> Sy.XTRA (S.T__t (S.Ldcsr (reify_address x79)))
     | Stfsr (x80) -> Sy.XTRA (S.T__t (S.Stfsr (reify_address x80)))
     | Stcsr (x81) -> Sy.XTRA (S.T__t (S.Stcsr (reify_address x81)))
     | Stdfq (x82) -> Sy.XTRA (S.T__t (S.Stdfq (reify_address x82)))
     | Stdcq (x83) -> Sy.XTRA (S.T__t (S.Stdcq (reify_address x83)))
     | Rdy (x84) -> Sy.XTRA (S.T__t (S.Rdy (x84)))
     | Rdpsr (x85) -> Sy.XTRA (S.T__t (S.Rdpsr (x85)))
     | Rdwim (x86) -> Sy.XTRA (S.T__t (S.Rdwim (x86)))
     | Rdtbr (x87) -> Sy.XTRA (S.T__t (S.Rdtbr (x87)))
     | Wry (x88,x89) ->
    Sy.XTRA (S.T__t (S.Wry (x88, reify_reg_or_imm x89)))
     | Wrpsr (x90,x91) ->
    Sy.XTRA (S.T__t (S.Wrpsr (x90, reify_reg_or_imm x91)))
     | Wrwim (x92,x93) ->
    Sy.XTRA (S.T__t (S.Wrwim (x92, reify_reg_or_imm x93)))
     | Wrtbr (x94,x95) ->
    Sy.XTRA (S.T__t (S.Wrtbr (x94, reify_reg_or_imm x95)))
     | Rdasr (x96,x97) -> Sy.XTRA (S.T__t (S.Rdasr (x96, x97)))
     | Wrasr (x98,x99,x100) ->
    Sy.XTRA (S.T__t (S.Wrasr (x98, reify_reg_or_imm x99, x100)))
     | Stbar () -> Sy.XTRA (S.T__t (S.Stbar ()))
     | And (x101,x102,x103) ->
    Sy.XTRA (S.T__t (S.And (x101, reify_reg_or_imm x102, x103)))
     | Andcc (x104,x105,x106) ->
    Sy.XTRA (S.T__t (S.Andcc (x104, reify_reg_or_imm x105, x106)))
     | Andn (x107,x108,x109) ->
    Sy.XTRA (S.T__t (S.Andn (x107, reify_reg_or_imm x108, x109)))
     | Andncc (x110,x111,x112) ->
    Sy.XTRA (S.T__t (S.Andncc (x110, reify_reg_or_imm x111, x112)))
     | Or (x113,x114,x115) ->
    Sy.XTRA (S.T__t (S.Or (x113, reify_reg_or_imm x114, x115)))
     | Orcc (x116,x117,x118) ->
    Sy.XTRA (S.T__t (S.Orcc (x116, reify_reg_or_imm x117, x118)))
     | Orn (x119,x120,x121) ->
    Sy.XTRA (S.T__t (S.Orn (x119, reify_reg_or_imm x120, x121)))
     | Orncc (x122,x123,x124) ->
    Sy.XTRA (S.T__t (S.Orncc (x122, reify_reg_or_imm x123, x124)))
     | Xor (x125,x126,x127) ->
    Sy.XTRA (S.T__t (S.Xor (x125, reify_reg_or_imm x126, x127)))
     | Xorcc (x128,x129,x130) ->
    Sy.XTRA (S.T__t (S.Xorcc (x128, reify_reg_or_imm x129, x130)))
     | Xnor (x131,x132,x133) ->
    Sy.XTRA (S.T__t (S.Xnor (x131, reify_reg_or_imm x132, x133)))
     | Xnorcc (x134,x135,x136) ->
    Sy.XTRA (S.T__t (S.Xnorcc (x134, reify_reg_or_imm x135, x136)))
     | Sll (x137,x138,x139) ->
    Sy.XTRA (S.T__t (S.Sll (x137, reify_reg_or_imm x138, x139)))
     | Srl (x140,x141,x142) ->
    Sy.XTRA (S.T__t (S.Srl (x140, reify_reg_or_imm x141, x142)))
     | Sra (x143,x144,x145) ->
    Sy.XTRA (S.T__t (S.Sra (x143, reify_reg_or_imm x144, x145)))
     | Add (x146,x147,x148) ->
    Sy.XTRA (S.T__t (S.Add (x146, reify_reg_or_imm x147, x148)))
     | Addcc (x149,x150,x151) ->
    Sy.XTRA (S.T__t (S.Addcc (x149, reify_reg_or_imm x150, x151)))
     | Addx (x152,x153,x154) ->
    Sy.XTRA (S.T__t (S.Addx (x152, reify_reg_or_imm x153, x154)))
     | Addxcc (x155,x156,x157) ->
    Sy.XTRA (S.T__t (S.Addxcc (x155, reify_reg_or_imm x156, x157)))
     | Taddcc (x158,x159,x160) ->
    Sy.XTRA (S.T__t (S.Taddcc (x158, reify_reg_or_imm x159, x160)))
     | Taddcctv (x161,x162,x163) ->
    Sy.XTRA (S.T__t (S.Taddcctv (x161, reify_reg_or_imm x162, x163)))
     | Sub (x164,x165,x166) ->
    Sy.XTRA (S.T__t (S.Sub (x164, reify_reg_or_imm x165, x166)))
     | Subcc (x167,x168,x169) ->
    Sy.XTRA (S.T__t (S.Subcc (x167, reify_reg_or_imm x168, x169)))
     | Subx (x170,x171,x172) ->
    Sy.XTRA (S.T__t (S.Subx (x170, reify_reg_or_imm x171, x172)))
     | Subxcc (x173,x174,x175) ->
    Sy.XTRA (S.T__t (S.Subxcc (x173, reify_reg_or_imm x174, x175)))
     | Tsubcc (x176,x177,x178) ->
    Sy.XTRA (S.T__t (S.Tsubcc (x176, reify_reg_or_imm x177, x178)))
     | Tsubcctv (x179,x180,x181) ->
    Sy.XTRA (S.T__t (S.Tsubcctv (x179, reify_reg_or_imm x180, x181)))
     | Mulscc (x182,x183,x184) ->
    Sy.XTRA (S.T__t (S.Mulscc (x182, reify_reg_or_imm x183, x184)))
     | Umul (x185,x186,x187) ->
    Sy.XTRA (S.T__t (S.Umul (x185, reify_reg_or_imm x186, x187)))
     | Smul (x188,x189,x190) ->
    Sy.XTRA (S.T__t (S.Smul (x188, reify_reg_or_imm x189, x190)))
     | Umulcc (x191,x192,x193) ->
    Sy.XTRA (S.T__t (S.Umulcc (x191, reify_reg_or_imm x192, x193)))
     | Smulcc (x194,x195,x196) ->
    Sy.XTRA (S.T__t (S.Smulcc (x194, reify_reg_or_imm x195, x196)))
     | Udiv (x197,x198,x199) ->
    Sy.XTRA (S.T__t (S.Udiv (x197, reify_reg_or_imm x198, x199)))
     | Sdiv (x200,x201,x202) ->
    Sy.XTRA (S.T__t (S.Sdiv (x200, reify_reg_or_imm x201, x202)))
     | Udivcc (x203,x204,x205) ->
    Sy.XTRA (S.T__t (S.Udivcc (x203, reify_reg_or_imm x204, x205)))
     | Sdivcc (x206,x207,x208) ->
    Sy.XTRA (S.T__t (S.Sdivcc (x206, reify_reg_or_imm x207, x208)))
     | Save (x209,x210,x211) ->
    Sy.XTRA (S.T__t (S.Save (x209, reify_reg_or_imm x210, x211)))
     | Restore (x212,x213,x214) ->
    Sy.XTRA (S.T__t (S.Restore (x212, reify_reg_or_imm x213, x214)))
     | Bn (x215) -> Sy.XTRA (S.T__t (S.Bn (x215)))
     | Bn_a (x216) -> Sy.XTRA (S.T__t (S.Bn_a (x216)))
     | Be (x217) -> Sy.XTRA (S.T__t (S.Be (x217)))
     | Be_a (x218) -> Sy.XTRA (S.T__t (S.Be_a (x218)))
     | Ble (x219) -> Sy.XTRA (S.T__t (S.Ble (x219)))
     | Ble_a (x220) -> Sy.XTRA (S.T__t (S.Ble_a (x220)))
     | Bl (x221) -> Sy.XTRA (S.T__t (S.Bl (x221)))
     | Bl_a (x222) -> Sy.XTRA (S.T__t (S.Bl_a (x222)))
     | Bleu (x223) -> Sy.XTRA (S.T__t (S.Bleu (x223)))
     | Bleu_a (x224) -> Sy.XTRA (S.T__t (S.Bleu_a (x224)))
     | Bcs (x225) -> Sy.XTRA (S.T__t (S.Bcs (x225)))
     | Bcs_a (x226) -> Sy.XTRA (S.T__t (S.Bcs_a (x226)))
     | Bneg (x227) -> Sy.XTRA (S.T__t (S.Bneg (x227)))
     | Bneg_a (x228) -> Sy.XTRA (S.T__t (S.Bneg_a (x228)))
     | Bvs (x229) -> Sy.XTRA (S.T__t (S.Bvs (x229)))
     | Bvs_a (x230) -> Sy.XTRA (S.T__t (S.Bvs_a (x230)))
     | Ba (x231) -> Sy.XTRA (S.T__t (S.Ba (x231)))
     | Ba_a (x232) -> Sy.XTRA (S.T__t (S.Ba_a (x232)))
     | Bne (x233) -> Sy.XTRA (S.T__t (S.Bne (x233)))
     | Bne_a (x234) -> Sy.XTRA (S.T__t (S.Bne_a (x234)))
     | Bg (x235) -> Sy.XTRA (S.T__t (S.Bg (x235)))
     | Bg_a (x236) -> Sy.XTRA (S.T__t (S.Bg_a (x236)))
     | Bge (x237) -> Sy.XTRA (S.T__t (S.Bge (x237)))
     | Bge_a (x238) -> Sy.XTRA (S.T__t (S.Bge_a (x238)))
     | Bgu (x239) -> Sy.XTRA (S.T__t (S.Bgu (x239)))
     | Bgu_a (x240) -> Sy.XTRA (S.T__t (S.Bgu_a (x240)))
     | Bcc (x241) -> Sy.XTRA (S.T__t (S.Bcc (x241)))
     | Bcc_a (x242) -> Sy.XTRA (S.T__t (S.Bcc_a (x242)))
     | Bpos (x243) -> Sy.XTRA (S.T__t (S.Bpos (x243)))
     | Bpos_a (x244) -> Sy.XTRA (S.T__t (S.Bpos_a (x244)))
     | Bvc (x245) -> Sy.XTRA (S.T__t (S.Bvc (x245)))
     | Bvc_a (x246) -> Sy.XTRA (S.T__t (S.Bvc_a (x246)))
     | Fbn (x247) -> Sy.XTRA (S.T__t (S.Fbn (x247)))
     | Fbn_a (x248) -> Sy.XTRA (S.T__t (S.Fbn_a (x248)))
     | Fbne (x249) -> Sy.XTRA (S.T__t (S.Fbne (x249)))
     | Fbne_a (x250) -> Sy.XTRA (S.T__t (S.Fbne_a (x250)))
     | Fblg (x251) -> Sy.XTRA (S.T__t (S.Fblg (x251)))
     | Fblg_a (x252) -> Sy.XTRA (S.T__t (S.Fblg_a (x252)))
     | Fbul (x253) -> Sy.XTRA (S.T__t (S.Fbul (x253)))
     | Fbul_a (x254) -> Sy.XTRA (S.T__t (S.Fbul_a (x254)))
     | Fbl (x255) -> Sy.XTRA (S.T__t (S.Fbl (x255)))
     | Fbl_a (x256) -> Sy.XTRA (S.T__t (S.Fbl_a (x256)))
     | Fbug (x257) -> Sy.XTRA (S.T__t (S.Fbug (x257)))
     | Fbug_a (x258) -> Sy.XTRA (S.T__t (S.Fbug_a (x258)))
     | Fbg (x259) -> Sy.XTRA (S.T__t (S.Fbg (x259)))
     | Fbg_a (x260) -> Sy.XTRA (S.T__t (S.Fbg_a (x260)))
     | Fbu (x261) -> Sy.XTRA (S.T__t (S.Fbu (x261)))
     | Fbu_a (x262) -> Sy.XTRA (S.T__t (S.Fbu_a (x262)))
     | Fba (x263) -> Sy.XTRA (S.T__t (S.Fba (x263)))
     | Fba_a (x264) -> Sy.XTRA (S.T__t (S.Fba_a (x264)))
     | Fbe (x265) -> Sy.XTRA (S.T__t (S.Fbe (x265)))
     | Fbe_a (x266) -> Sy.XTRA (S.T__t (S.Fbe_a (x266)))
     | Fbue (x267) -> Sy.XTRA (S.T__t (S.Fbue (x267)))
     | Fbue_a (x268) -> Sy.XTRA (S.T__t (S.Fbue_a (x268)))
     | Fbge (x269) -> Sy.XTRA (S.T__t (S.Fbge (x269)))
     | Fbge_a (x270) -> Sy.XTRA (S.T__t (S.Fbge_a (x270)))
     | Fbuge (x271) -> Sy.XTRA (S.T__t (S.Fbuge (x271)))
     | Fbuge_a (x272) -> Sy.XTRA (S.T__t (S.Fbuge_a (x272)))
     | Fble (x273) -> Sy.XTRA (S.T__t (S.Fble (x273)))
     | Fble_a (x274) -> Sy.XTRA (S.T__t (S.Fble_a (x274)))
     | Fbule (x275) -> Sy.XTRA (S.T__t (S.Fbule (x275)))
     | Fbule_a (x276) -> Sy.XTRA (S.T__t (S.Fbule_a (x276)))
     | Fbo (x277) -> Sy.XTRA (S.T__t (S.Fbo (x277)))
     | Fbo_a (x278) -> Sy.XTRA (S.T__t (S.Fbo_a (x278)))
     | Cbn (x279) -> Sy.XTRA (S.T__t (S.Cbn (x279)))
     | Cbn_a (x280) -> Sy.XTRA (S.T__t (S.Cbn_a (x280)))
     | Cb123 (x281) -> Sy.XTRA (S.T__t (S.Cb123 (x281)))
     | Cb123_a (x282) -> Sy.XTRA (S.T__t (S.Cb123_a (x282)))
     | Cb12 (x283) -> Sy.XTRA (S.T__t (S.Cb12 (x283)))
     | Cb12_a (x284) -> Sy.XTRA (S.T__t (S.Cb12_a (x284)))
     | Cb13 (x285) -> Sy.XTRA (S.T__t (S.Cb13 (x285)))
     | Cb13_a (x286) -> Sy.XTRA (S.T__t (S.Cb13_a (x286)))
     | Cb1 (x287) -> Sy.XTRA (S.T__t (S.Cb1 (x287)))
     | Cb1_a (x288) -> Sy.XTRA (S.T__t (S.Cb1_a (x288)))
     | Cb23 (x289) -> Sy.XTRA (S.T__t (S.Cb23 (x289)))
     | Cb23_a (x290) -> Sy.XTRA (S.T__t (S.Cb23_a (x290)))
     | Cb2 (x291) -> Sy.XTRA (S.T__t (S.Cb2 (x291)))
     | Cb2_a (x292) -> Sy.XTRA (S.T__t (S.Cb2_a (x292)))
     | Cb3 (x293) -> Sy.XTRA (S.T__t (S.Cb3 (x293)))
     | Cb3_a (x294) -> Sy.XTRA (S.T__t (S.Cb3_a (x294)))
     | Cba (x295) -> Sy.XTRA (S.T__t (S.Cba (x295)))
     | Cba_a (x296) -> Sy.XTRA (S.T__t (S.Cba_a (x296)))
     | Cb0 (x297) -> Sy.XTRA (S.T__t (S.Cb0 (x297)))
     | Cb0_a (x298) -> Sy.XTRA (S.T__t (S.Cb0_a (x298)))
     | Cb03 (x299) -> Sy.XTRA (S.T__t (S.Cb03 (x299)))
     | Cb03_a (x300) -> Sy.XTRA (S.T__t (S.Cb03_a (x300)))
     | Cb02 (x301) -> Sy.XTRA (S.T__t (S.Cb02 (x301)))
     | Cb02_a (x302) -> Sy.XTRA (S.T__t (S.Cb02_a (x302)))
     | Cb023 (x303) -> Sy.XTRA (S.T__t (S.Cb023 (x303)))
     | Cb023_a (x304) -> Sy.XTRA (S.T__t (S.Cb023_a (x304)))
     | Cb01 (x305) -> Sy.XTRA (S.T__t (S.Cb01 (x305)))
     | Cb01_a (x306) -> Sy.XTRA (S.T__t (S.Cb01_a (x306)))
     | Cb013 (x307) -> Sy.XTRA (S.T__t (S.Cb013 (x307)))
     | Cb013_a (x308) -> Sy.XTRA (S.T__t (S.Cb013_a (x308)))
     | Cb012 (x309) -> Sy.XTRA (S.T__t (S.Cb012 (x309)))
     | Cb012_a (x310) -> Sy.XTRA (S.T__t (S.Cb012_a (x310)))
     | Call (x311) -> Sy.XTRA (S.T__t (S.Call (x311)))
     | Fmovs (x312,x313) -> Sy.XTRA (S.T__t (S.Fmovs (x312, x313)))
     | Fnegs (x314,x315) -> Sy.XTRA (S.T__t (S.Fnegs (x314, x315)))
     | Fabss (x316,x317) -> Sy.XTRA (S.T__t (S.Fabss (x316, x317)))
     | Fsqrts (x318,x319) -> Sy.XTRA (S.T__t (S.Fsqrts (x318, x319)))
     | Fsqrtd (x320,x321) -> Sy.XTRA (S.T__t (S.Fsqrtd (x320, x321)))
     | Fsqrtq (x322,x323) -> Sy.XTRA (S.T__t (S.Fsqrtq (x322, x323)))
     | Fitos (x324,x325) -> Sy.XTRA (S.T__t (S.Fitos (x324, x325)))
     | Fstoi (x326,x327) -> Sy.XTRA (S.T__t (S.Fstoi (x326, x327)))
     | Fitod (x328,x329) -> Sy.XTRA (S.T__t (S.Fitod (x328, x329)))
     | Fstod (x330,x331) -> Sy.XTRA (S.T__t (S.Fstod (x330, x331)))
     | Fitoq (x332,x333) -> Sy.XTRA (S.T__t (S.Fitoq (x332, x333)))
     | Fstoq (x334,x335) -> Sy.XTRA (S.T__t (S.Fstoq (x334, x335)))
     | Fdtoi (x336,x337) -> Sy.XTRA (S.T__t (S.Fdtoi (x336, x337)))
     | Fdtos (x338,x339) -> Sy.XTRA (S.T__t (S.Fdtos (x338, x339)))
     | Fqtos (x340,x341) -> Sy.XTRA (S.T__t (S.Fqtos (x340, x341)))
     | Fqtoi (x342,x343) -> Sy.XTRA (S.T__t (S.Fqtoi (x342, x343)))
     | Fqtod (x344,x345) -> Sy.XTRA (S.T__t (S.Fqtod (x344, x345)))
     | Fdtoq (x346,x347) -> Sy.XTRA (S.T__t (S.Fdtoq (x346, x347)))
     | Fadds (x348,x349,x350) ->
    Sy.XTRA (S.T__t (S.Fadds (x348, x349, x350)))
     | Fsubs (x351,x352,x353) ->
    Sy.XTRA (S.T__t (S.Fsubs (x351, x352, x353)))
     | Fmuls (x354,x355,x356) ->
    Sy.XTRA (S.T__t (S.Fmuls (x354, x355, x356)))
     | Fdivs (x357,x358,x359) ->
    Sy.XTRA (S.T__t (S.Fdivs (x357, x358, x359)))
     | Faddd (x360,x361,x362) ->
    Sy.XTRA (S.T__t (S.Faddd (x360, x361, x362)))
     | Fsubd (x363,x364,x365) ->
    Sy.XTRA (S.T__t (S.Fsubd (x363, x364, x365)))
     | Fmuld (x366,x367,x368) ->
    Sy.XTRA (S.T__t (S.Fmuld (x366, x367, x368)))
     | Fdivd (x369,x370,x371) ->
    Sy.XTRA (S.T__t (S.Fdivd (x369, x370, x371)))
     | Faddq (x372,x373,x374) ->
    Sy.XTRA (S.T__t (S.Faddq (x372, x373, x374)))
     | Fsubq (x375,x376,x377) ->
    Sy.XTRA (S.T__t (S.Fsubq (x375, x376, x377)))
     | Fmulq (x378,x379,x380) ->
    Sy.XTRA (S.T__t (S.Fmulq (x378, x379, x380)))
     | Fdivq (x381,x382,x383) ->
    Sy.XTRA (S.T__t (S.Fdivq (x381, x382, x383)))
     | Fsmuld (x384,x385,x386) ->
    Sy.XTRA (S.T__t (S.Fsmuld (x384, x385, x386)))
     | Fdmulq (x387,x388,x389) ->
    Sy.XTRA (S.T__t (S.Fdmulq (x387, x388, x389)))
     | Fcmps (x390,x391) -> Sy.XTRA (S.T__t (S.Fcmps (x390, x391)))
     | Fcmpes (x392,x393) -> Sy.XTRA (S.T__t (S.Fcmpes (x392, x393)))
     | Fcmpd (x394,x395) -> Sy.XTRA (S.T__t (S.Fcmpd (x394, x395)))
     | Fcmped (x396,x397) -> Sy.XTRA (S.T__t (S.Fcmped (x396, x397)))
     | Fcmpq (x398,x399) -> Sy.XTRA (S.T__t (S.Fcmpq (x398, x399)))
     | Fcmpeq (x400,x401) -> Sy.XTRA (S.T__t (S.Fcmpeq (x400, x401)))
     | Nop () -> Sy.XTRA (S.T__t (S.Nop ()))
     | Flush (x402) -> Sy.XTRA (S.T__t (S.Flush (reify_address x402)))
     | Jmpl (x403,x404) ->
    Sy.XTRA (S.T__t (S.Jmpl (reify_address x403, x404)))
     | Rett (x405) -> Sy.XTRA (S.T__t (S.Rett (reify_address x405)))
     | Tn (x406) -> Sy.XTRA (S.T__t (S.Tn (reify_address x406)))
     | Te (x407) -> Sy.XTRA (S.T__t (S.Te (reify_address x407)))
     | Tle (x408) -> Sy.XTRA (S.T__t (S.Tle (reify_address x408)))
     | Tl (x409) -> Sy.XTRA (S.T__t (S.Tl (reify_address x409)))
     | Tleu (x410) -> Sy.XTRA (S.T__t (S.Tleu (reify_address x410)))
     | Tcs (x411) -> Sy.XTRA (S.T__t (S.Tcs (reify_address x411)))
     | Tneg (x412) -> Sy.XTRA (S.T__t (S.Tneg (reify_address x412)))
     | Tvs (x413) -> Sy.XTRA (S.T__t (S.Tvs (reify_address x413)))
     | Ta (x414) -> Sy.XTRA (S.T__t (S.Ta (reify_address x414)))
     | Tne (x415) -> Sy.XTRA (S.T__t (S.Tne (reify_address x415)))
     | Tg (x416) -> Sy.XTRA (S.T__t (S.Tg (reify_address x416)))
     | Tge (x417) -> Sy.XTRA (S.T__t (S.Tge (reify_address x417)))
     | Tgu (x418) -> Sy.XTRA (S.T__t (S.Tgu (reify_address x418)))
     | Tcc (x419) -> Sy.XTRA (S.T__t (S.Tcc (reify_address x419)))
     | Tpos (x420) -> Sy.XTRA (S.T__t (S.Tpos (reify_address x420)))
     | Tvc (x421) -> Sy.XTRA (S.T__t (S.Tvc (reify_address x421)))
     | Unimp (x422) -> Sy.XTRA (S.T__t (S.Unimp (x422)))
     | Sethi (x423,x424) -> Sy.XTRA (S.T__t (S.Sethi (x423, x424)))
     | Decode_sethi (x425,x426) ->
    Sy.XTRA (S.T__t (S.Decode_sethi (x425, x426)))
     | Set (x427,x428) -> Sy.XTRA (S.T__t (S.Set (x427, x428))))
let reflect_t =
fun x1 ->
  let r2 = Tools.gensym "x" in
  let r3 = Tools.gensym "x" in
  let r4 = Tools.gensym "x" in
  let r5 = Tools.gensym "x" in
  let r6 = Tools.gensym "x" in
  let r7 = Tools.gensym "x" in
  let r8 = Tools.gensym "x" in
  let r9 = Tools.gensym "x" in
  let r10 = Tools.gensym "x" in
  let r11 = Tools.gensym "x" in
  let r12 = Tools.gensym "x" in
  let r13 = Tools.gensym "x" in
  let r14 = Tools.gensym "x" in
  let r15 = Tools.gensym "x" in
  let r16 = Tools.gensym "x" in
  let r17 = Tools.gensym "x" in
  let r18 = Tools.gensym "x" in
  let r19 = Tools.gensym "x" in
  let r20 = Tools.gensym "x" in
  let r21 = Tools.gensym "x" in
  let r22 = Tools.gensym "x" in
  let r23 = Tools.gensym "x" in
  let r24 = Tools.gensym "x" in
  let r25 = Tools.gensym "x" in
  let r26 = Tools.gensym "x" in
  let r27 = Tools.gensym "x" in
  let r28 = Tools.gensym "x" in
  let r29 = Tools.gensym "x" in
  let r30 = Tools.gensym "x" in
  let r31 = Tools.gensym "x" in
  let r32 = Tools.gensym "x" in
  let r33 = Tools.gensym "x" in
  let r34 = Tools.gensym "x" in
  let r35 = Tools.gensym "x" in
  let r36 = Tools.gensym "x" in
  let r37 = Tools.gensym "x" in
  let r38 = Tools.gensym "x" in
  let r39 = Tools.gensym "x" in
  let r40 = Tools.gensym "x" in
  let r41 = Tools.gensym "x" in
  let r42 = Tools.gensym "x" in
  let r43 = Tools.gensym "x" in
  let r44 = Tools.gensym "x" in
  let r45 = Tools.gensym "x" in
  let r46 = Tools.gensym "x" in
  let r47 = Tools.gensym "x" in
  let r48 = Tools.gensym "x" in
  let r49 = Tools.gensym "x" in
  let r50 = Tools.gensym "x" in
  let r51 = Tools.gensym "x" in
  let r52 = Tools.gensym "x" in
  let r53 = Tools.gensym "x" in
  let r54 = Tools.gensym "x" in
  let r55 = Tools.gensym "x" in
  let r56 = Tools.gensym "x" in
  let r57 = Tools.gensym "x" in
  let r58 = Tools.gensym "x" in
  let r59 = Tools.gensym "x" in
  let r60 = Tools.gensym "x" in
  let r61 = Tools.gensym "x" in
  let r62 = Tools.gensym "x" in
  let r63 = Tools.gensym "x" in
  let r64 = Tools.gensym "x" in
  let r65 = Tools.gensym "x" in
  let r66 = Tools.gensym "x" in
  let r67 = Tools.gensym "x" in
  let r68 = Tools.gensym "x" in
  let r69 = Tools.gensym "x" in
  let r70 = Tools.gensym "x" in
  let r71 = Tools.gensym "x" in
  let r72 = Tools.gensym "x" in
  let r73 = Tools.gensym "x" in
  let r74 = Tools.gensym "x" in
  let r75 = Tools.gensym "x" in
  let r76 = Tools.gensym "x" in
  let r77 = Tools.gensym "x" in
  let r78 = Tools.gensym "x" in
  let r79 = Tools.gensym "x" in
  let r80 = Tools.gensym "x" in
  let r81 = Tools.gensym "x" in
  let r82 = Tools.gensym "x" in
  let r83 = Tools.gensym "x" in
  let r84 = Tools.gensym "x" in
  let r85 = Tools.gensym "x" in
  let r86 = Tools.gensym "x" in
  let r87 = Tools.gensym "x" in
  let r88 = Tools.gensym "x" in
  let r89 = Tools.gensym "x" in
  let r90 = Tools.gensym "x" in
  let r91 = Tools.gensym "x" in
  let r92 = Tools.gensym "x" in
  let r93 = Tools.gensym "x" in
  let r94 = Tools.gensym "x" in
  let r95 = Tools.gensym "x" in
  let r96 = Tools.gensym "x" in
  let r97 = Tools.gensym "x" in
  let r98 = Tools.gensym "x" in
  let r99 = Tools.gensym "x" in
  let r100 = Tools.gensym "x" in
  let r101 = Tools.gensym "x" in
  let r102 = Tools.gensym "x" in
  let r103 = Tools.gensym "x" in
  let r104 = Tools.gensym "x" in
  let r105 = Tools.gensym "x" in
  let r106 = Tools.gensym "x" in
  let r107 = Tools.gensym "x" in
  let r108 = Tools.gensym "x" in
  let r109 = Tools.gensym "x" in
  let r110 = Tools.gensym "x" in
  let r111 = Tools.gensym "x" in
  let r112 = Tools.gensym "x" in
  let r113 = Tools.gensym "x" in
  let r114 = Tools.gensym "x" in
  let r115 = Tools.gensym "x" in
  let r116 = Tools.gensym "x" in
  let r117 = Tools.gensym "x" in
  let r118 = Tools.gensym "x" in
  let r119 = Tools.gensym "x" in
  let r120 = Tools.gensym "x" in
  let r121 = Tools.gensym "x" in
  let r122 = Tools.gensym "x" in
  let r123 = Tools.gensym "x" in
  let r124 = Tools.gensym "x" in
  let r125 = Tools.gensym "x" in
  let r126 = Tools.gensym "x" in
  let r127 = Tools.gensym "x" in
  let r128 = Tools.gensym "x" in
  let r129 = Tools.gensym "x" in
  let r130 = Tools.gensym "x" in
  let r131 = Tools.gensym "x" in
  let r132 = Tools.gensym "x" in
  let r133 = Tools.gensym "x" in
  let r134 = Tools.gensym "x" in
  let r135 = Tools.gensym "x" in
  let r136 = Tools.gensym "x" in
  let r137 = Tools.gensym "x" in
  let r138 = Tools.gensym "x" in
  let r139 = Tools.gensym "x" in
  let r140 = Tools.gensym "x" in
  let r141 = Tools.gensym "x" in
  let r142 = Tools.gensym "x" in
  let r143 = Tools.gensym "x" in
  let r144 = Tools.gensym "x" in
  let r145 = Tools.gensym "x" in
  let r146 = Tools.gensym "x" in
  let r147 = Tools.gensym "x" in
  let r148 = Tools.gensym "x" in
  let r149 = Tools.gensym "x" in
  let r150 = Tools.gensym "x" in
  let r151 = Tools.gensym "x" in
  let r152 = Tools.gensym "x" in
  let r153 = Tools.gensym "x" in
  let r154 = Tools.gensym "x" in
  let r155 = Tools.gensym "x" in
  let r156 = Tools.gensym "x" in
  let r157 = Tools.gensym "x" in
  let r158 = Tools.gensym "x" in
  let r159 = Tools.gensym "x" in
  let r160 = Tools.gensym "x" in
  let r161 = Tools.gensym "x" in
  let r162 = Tools.gensym "x" in
  let r163 = Tools.gensym "x" in
  let r164 = Tools.gensym "x" in
  let r165 = Tools.gensym "x" in
  let r166 = Tools.gensym "x" in
  let r167 = Tools.gensym "x" in
  let r168 = Tools.gensym "x" in
  let r169 = Tools.gensym "x" in
  let r170 = Tools.gensym "x" in
  let r171 = Tools.gensym "x" in
  let r172 = Tools.gensym "x" in
  let r173 = Tools.gensym "x" in
  let r174 = Tools.gensym "x" in
  let r175 = Tools.gensym "x" in
  let r176 = Tools.gensym "x" in
  let r177 = Tools.gensym "x" in
  let r178 = Tools.gensym "x" in
  let r179 = Tools.gensym "x" in
  let r180 = Tools.gensym "x" in
  let r181 = Tools.gensym "x" in
  let r182 = Tools.gensym "x" in
  let r183 = Tools.gensym "x" in
  let r184 = Tools.gensym "x" in
  let r185 = Tools.gensym "x" in
  let r186 = Tools.gensym "x" in
  let r187 = Tools.gensym "x" in
  let r188 = Tools.gensym "x" in
  let r189 = Tools.gensym "x" in
  let r190 = Tools.gensym "x" in
  let r191 = Tools.gensym "x" in
  let r192 = Tools.gensym "x" in
  let r193 = Tools.gensym "x" in
  let r194 = Tools.gensym "x" in
  let r195 = Tools.gensym "x" in
  let r196 = Tools.gensym "x" in
  let r197 = Tools.gensym "x" in
  let r198 = Tools.gensym "x" in
  let r199 = Tools.gensym "x" in
  let r200 = Tools.gensym "x" in
  let r201 = Tools.gensym "x" in
  let r202 = Tools.gensym "x" in
  let r203 = Tools.gensym "x" in
  let r204 = Tools.gensym "x" in
  let r205 = Tools.gensym "x" in
  let r206 = Tools.gensym "x" in
  let r207 = Tools.gensym "x" in
  let r208 = Tools.gensym "x" in
  let r209 = Tools.gensym "x" in
  let r210 = Tools.gensym "x" in
  let r211 = Tools.gensym "x" in
  let r212 = Tools.gensym "x" in
  let r213 = Tools.gensym "x" in
  let r214 = Tools.gensym "x" in
  let r215 = Tools.gensym "x" in
  let r216 = Tools.gensym "x" in
  let r217 = Tools.gensym "x" in
  let r218 = Tools.gensym "x" in
  let r219 = Tools.gensym "x" in
  let r220 = Tools.gensym "x" in
  let r221 = Tools.gensym "x" in
  let r222 = Tools.gensym "x" in
  let r223 = Tools.gensym "x" in
  let r224 = Tools.gensym "x" in
  let r225 = Tools.gensym "x" in
  let r226 = Tools.gensym "x" in
  let r227 = Tools.gensym "x" in
  let r228 = Tools.gensym "x" in
  let r229 = Tools.gensym "x" in
  let r230 = Tools.gensym "x" in
  let r231 = Tools.gensym "x" in
  let r232 = Tools.gensym "x" in
  let r233 = Tools.gensym "x" in
  let r234 = Tools.gensym "x" in
  let r235 = Tools.gensym "x" in
  let r236 = Tools.gensym "x" in
  let r237 = Tools.gensym "x" in
  let r238 = Tools.gensym "x" in
  let r239 = Tools.gensym "x" in
  let r240 = Tools.gensym "x" in
  let r241 = Tools.gensym "x" in
  let r242 = Tools.gensym "x" in
  let r243 = Tools.gensym "x" in
  let r244 = Tools.gensym "x" in
  let r245 = Tools.gensym "x" in
  let r246 = Tools.gensym "x" in
  let r247 = Tools.gensym "x" in
  let r248 = Tools.gensym "x" in
  let r249 = Tools.gensym "x" in
  let r250 = Tools.gensym "x" in
  let r251 = Tools.gensym "x" in
  let r252 = Tools.gensym "x" in
  let r253 = Tools.gensym "x" in
  let r254 = Tools.gensym "x" in
  let r255 = Tools.gensym "x" in
  let r256 = Tools.gensym "x" in
  let r257 = Tools.gensym "x" in
  let r258 = Tools.gensym "x" in
  let r259 = Tools.gensym "x" in
  let r260 = Tools.gensym "x" in
  let r261 = Tools.gensym "x" in
  let r262 = Tools.gensym "x" in
  let r263 = Tools.gensym "x" in
  let r264 = Tools.gensym "x" in
  let r265 = Tools.gensym "x" in
  let r266 = Tools.gensym "x" in
  let r267 = Tools.gensym "x" in
  let r268 = Tools.gensym "x" in
  let r269 = Tools.gensym "x" in
  let r270 = Tools.gensym "x" in
  let r271 = Tools.gensym "x" in
  let r272 = Tools.gensym "x" in
  let r273 = Tools.gensym "x" in
  let r274 = Tools.gensym "x" in
  let r275 = Tools.gensym "x" in
  let r276 = Tools.gensym "x" in
  let r277 = Tools.gensym "x" in
  let r278 = Tools.gensym "x" in
  let r279 = Tools.gensym "x" in
  let r280 = Tools.gensym "x" in
  let r281 = Tools.gensym "x" in
  let r282 = Tools.gensym "x" in
  let r283 = Tools.gensym "x" in
  let r284 = Tools.gensym "x" in
  let r285 = Tools.gensym "x" in
  let r286 = Tools.gensym "x" in
  let r287 = Tools.gensym "x" in
  let r288 = Tools.gensym "x" in
  let r289 = Tools.gensym "x" in
  let r290 = Tools.gensym "x" in
  let r291 = Tools.gensym "x" in
  let r292 = Tools.gensym "x" in
  let r293 = Tools.gensym "x" in
  let r294 = Tools.gensym "x" in
  let r295 = Tools.gensym "x" in
  let r296 = Tools.gensym "x" in
  let r297 = Tools.gensym "x" in
  let r298 = Tools.gensym "x" in
  let r299 = Tools.gensym "x" in
  let r300 = Tools.gensym "x" in
  let r301 = Tools.gensym "x" in
  let r302 = Tools.gensym "x" in
  let r303 = Tools.gensym "x" in
  let r304 = Tools.gensym "x" in
  let r305 = Tools.gensym "x" in
  let r306 = Tools.gensym "x" in
  let r307 = Tools.gensym "x" in
  let r308 = Tools.gensym "x" in
  let r309 = Tools.gensym "x" in
  let r310 = Tools.gensym "x" in
  let r311 = Tools.gensym "x" in
  let r312 = Tools.gensym "x" in
  let r313 = Tools.gensym "x" in
  let r314 = Tools.gensym "x" in
  let r315 = Tools.gensym "x" in
  let r316 = Tools.gensym "x" in
  let r317 = Tools.gensym "x" in
  let r318 = Tools.gensym "x" in
  let r319 = Tools.gensym "x" in
  let r320 = Tools.gensym "x" in
  let r321 = Tools.gensym "x" in
  let r322 = Tools.gensym "x" in
  let r323 = Tools.gensym "x" in
  let r324 = Tools.gensym "x" in
  let r325 = Tools.gensym "x" in
  let r326 = Tools.gensym "x" in
  let r327 = Tools.gensym "x" in
  let r328 = Tools.gensym "x" in
  let r329 = Tools.gensym "x" in
  let r330 = Tools.gensym "x" in
  let r331 = Tools.gensym "x" in
  let r332 = Tools.gensym "x" in
  let r333 = Tools.gensym "x" in
  let r334 = Tools.gensym "x" in
  let r335 = Tools.gensym "x" in
  let r336 = Tools.gensym "x" in
  let r337 = Tools.gensym "x" in
  let r338 = Tools.gensym "x" in
  let r339 = Tools.gensym "x" in
  let r340 = Tools.gensym "x" in
  let r341 = Tools.gensym "x" in
  let r342 = Tools.gensym "x" in
  let r343 = Tools.gensym "x" in
  let r344 = Tools.gensym "x" in
  let r345 = Tools.gensym "x" in
  let r346 = Tools.gensym "x" in
  let r347 = Tools.gensym "x" in
  let r348 = Tools.gensym "x" in
  let r349 = Tools.gensym "x" in
  let r350 = Tools.gensym "x" in
  let r351 = Tools.gensym "x" in
  let r352 = Tools.gensym "x" in
  let r353 = Tools.gensym "x" in
  let r354 = Tools.gensym "x" in
  let r355 = Tools.gensym "x" in
  let r356 = Tools.gensym "x" in
  let r357 = Tools.gensym "x" in
  let r358 = Tools.gensym "x" in
  let r359 = Tools.gensym "x" in
  let r360 = Tools.gensym "x" in
  let r361 = Tools.gensym "x" in
  let r362 = Tools.gensym "x" in
  let r363 = Tools.gensym "x" in
  let r364 = Tools.gensym "x" in
  let r365 = Tools.gensym "x" in
  let r366 = Tools.gensym "x" in
  let r367 = Tools.gensym "x" in
  let r368 = Tools.gensym "x" in
  let r369 = Tools.gensym "x" in
  let r370 = Tools.gensym "x" in
  let r371 = Tools.gensym "x" in
  let r372 = Tools.gensym "x" in
  let r373 = Tools.gensym "x" in
  let r374 = Tools.gensym "x" in
  let r375 = Tools.gensym "x" in
  let r376 = Tools.gensym "x" in
  let r377 = Tools.gensym "x" in
  let r378 = Tools.gensym "x" in
  let r379 = Tools.gensym "x" in
  let r380 = Tools.gensym "x" in
  let r381 = Tools.gensym "x" in
  let r382 = Tools.gensym "x" in
  let r383 = Tools.gensym "x" in
  let r384 = Tools.gensym "x" in
  let r385 = Tools.gensym "x" in
  let r386 = Tools.gensym "x" in
  let r387 = Tools.gensym "x" in
  let r388 = Tools.gensym "x" in
  let r389 = Tools.gensym "x" in
  let r390 = Tools.gensym "x" in
  let r391 = Tools.gensym "x" in
  let r392 = Tools.gensym "x" in
  let r393 = Tools.gensym "x" in
  let r394 = Tools.gensym "x" in
  let r395 = Tools.gensym "x" in
  let r396 = Tools.gensym "x" in
  let r397 = Tools.gensym "x" in
  let r398 = Tools.gensym "x" in
  let r399 = Tools.gensym "x" in
  let r400 = Tools.gensym "x" in
  let r401 = Tools.gensym "x" in
  let r402 = Tools.gensym "x" in
  let r403 = Tools.gensym "x" in
  let r404 = Tools.gensym "x" in
  let r405 = Tools.gensym "x" in
  let r406 = Tools.gensym "x" in
  let r407 = Tools.gensym "x" in
  let r408 = Tools.gensym "x" in
  let r409 = Tools.gensym "x" in
  let r410 = Tools.gensym "x" in
  let r411 = Tools.gensym "x" in
  let r412 = Tools.gensym "x" in
  let r413 = Tools.gensym "x" in
  let r414 = Tools.gensym "x" in
  let r415 = Tools.gensym "x" in
  let r416 = Tools.gensym "x" in
  let r417 = Tools.gensym "x" in
  let r418 = Tools.gensym "x" in
  let r419 = Tools.gensym "x" in
  let r420 = Tools.gensym "x" in
  let r421 = Tools.gensym "x" in
  let r422 = Tools.gensym "x" in
  let r423 = Tools.gensym "x" in
  let r424 = Tools.gensym "x" in
  let r425 = Tools.gensym "x" in
  let r426 = Tools.gensym "x" in
  let r427 = Tools.gensym "x" in
  let r428 = Tools.gensym "x" in
  let vv429 =
  Ctrl.shift
    (fun x430 ->
       let r431 =
       Ctrl.reset
         (fun x432 ->
            let rr433 =
            x430 (Ldsb (reflect_address (Sy.VAR r2), Sy.VAR r3)) in
            rr433) in
       let r434 =
       Ctrl.reset
         (fun x435 ->
            let rr436 =
            x430 (Ldsh (reflect_address (Sy.VAR r4), Sy.VAR r5)) in
            rr436) in
       let r437 =
       Ctrl.reset
         (fun x438 ->
            let rr439 =
            x430 (Ldub (reflect_address (Sy.VAR r6), Sy.VAR r7)) in
            rr439) in
       let r440 =
       Ctrl.reset
         (fun x441 ->
            let rr442 =
            x430 (Lduh (reflect_address (Sy.VAR r8), Sy.VAR r9)) in
            rr442) in
       let r443 =
       Ctrl.reset
         (fun x444 ->
            let rr445 =
            x430 (Ld (reflect_address (Sy.VAR r10), Sy.VAR r11)) in
            rr445) in
       let r446 =
       Ctrl.reset
         (fun x447 ->
            let rr448 =
            x430 (Ldstub (reflect_address (Sy.VAR r12), Sy.VAR r13)) in
            rr448) in
       let r449 =
       Ctrl.reset
         (fun x450 ->
            let rr451 =
            x430 (Swap_ (reflect_address (Sy.VAR r14), Sy.VAR r15)) in
            rr451) in
       let r452 =
       Ctrl.reset
         (fun x453 ->
            let rr454 =
            x430 (Ldd (reflect_address (Sy.VAR r16), Sy.VAR r17)) in
            rr454) in
       let r455 =
       Ctrl.reset
         (fun x456 ->
            let rr457 =
            x430 (Ldf (reflect_address (Sy.VAR r18), Sy.VAR r19)) in
            rr457) in
       let r458 =
       Ctrl.reset
         (fun x459 ->
            let rr460 =
            x430 (Lddf (reflect_address (Sy.VAR r20), Sy.VAR r21)) in
            rr460) in
       let r461 =
       Ctrl.reset
         (fun x462 ->
            let rr463 =
            x430 (Ldc (reflect_address (Sy.VAR r22), Sy.VAR r23)) in
            rr463) in
       let r464 =
       Ctrl.reset
         (fun x465 ->
            let rr466 =
            x430 (Lddc (reflect_address (Sy.VAR r24), Sy.VAR r25)) in
            rr466) in
       let r467 =
       Ctrl.reset
         (fun x468 ->
            let rr469 =
            x430 (Stb (Sy.VAR r26, reflect_address (Sy.VAR r27))) in
            rr469) in
       let r470 =
       Ctrl.reset
         (fun x471 ->
            let rr472 =
            x430 (Sth (Sy.VAR r28, reflect_address (Sy.VAR r29))) in
            rr472) in
       let r473 =
       Ctrl.reset
         (fun x474 ->
            let rr475 =
            x430 (St (Sy.VAR r30, reflect_address (Sy.VAR r31))) in
            rr475) in
       let r476 =
       Ctrl.reset
         (fun x477 ->
            let rr478 =
            x430 (Std (Sy.VAR r32, reflect_address (Sy.VAR r33))) in
            rr478) in
       let r479 =
       Ctrl.reset
         (fun x480 ->
            let rr481 =
            x430 (Stf (Sy.VAR r34, reflect_address (Sy.VAR r35))) in
            rr481) in
       let r482 =
       Ctrl.reset
         (fun x483 ->
            let rr484 =
            x430 (Stdf (Sy.VAR r36, reflect_address (Sy.VAR r37))) in
            rr484) in
       let r485 =
       Ctrl.reset
         (fun x486 ->
            let rr487 =
            x430 (Stc (Sy.VAR r38, reflect_address (Sy.VAR r39))) in
            rr487) in
       let r488 =
       Ctrl.reset
         (fun x489 ->
            let rr490 =
            x430 (Stdc (Sy.VAR r40, reflect_address (Sy.VAR r41))) in
            rr490) in
       let r491 =
       Ctrl.reset
         (fun x492 ->
            let rr493 =
            x430 (Ldsba
              (reflect_regaddr (Sy.VAR r42), Sy.VAR r43, Sy.VAR r44))
            in rr493) in
       let r494 =
       Ctrl.reset
         (fun x495 ->
            let rr496 =
            x430 (Ldsha
              (reflect_regaddr (Sy.VAR r45), Sy.VAR r46, Sy.VAR r47))
            in rr496) in
       let r497 =
       Ctrl.reset
         (fun x498 ->
            let rr499 =
            x430 (Lduba
              (reflect_regaddr (Sy.VAR r48), Sy.VAR r49, Sy.VAR r50))
            in rr499) in
       let r500 =
       Ctrl.reset
         (fun x501 ->
            let rr502 =
            x430 (Lduha
              (reflect_regaddr (Sy.VAR r51), Sy.VAR r52, Sy.VAR r53))
            in rr502) in
       let r503 =
       Ctrl.reset
         (fun x504 ->
            let rr505 =
            x430 (Lda
              (reflect_regaddr (Sy.VAR r54), Sy.VAR r55, Sy.VAR r56))
            in rr505) in
       let r506 =
       Ctrl.reset
         (fun x507 ->
            let rr508 =
            x430 (Ldstuba
              (reflect_regaddr (Sy.VAR r57), Sy.VAR r58, Sy.VAR r59))
            in rr508) in
       let r509 =
       Ctrl.reset
         (fun x510 ->
            let rr511 =
            x430 (Swapa
              (reflect_regaddr (Sy.VAR r60), Sy.VAR r61, Sy.VAR r62))
            in rr511) in
       let r512 =
       Ctrl.reset
         (fun x513 ->
            let rr514 =
            x430 (Ldda
              (reflect_regaddr (Sy.VAR r63), Sy.VAR r64, Sy.VAR r65))
            in rr514) in
       let r515 =
       Ctrl.reset
         (fun x516 ->
            let rr517 =
            x430 (Stba
              (Sy.VAR r66, reflect_regaddr (Sy.VAR r67), Sy.VAR r68))
            in rr517) in
       let r518 =
       Ctrl.reset
         (fun x519 ->
            let rr520 =
            x430 (Stha
              (Sy.VAR r69, reflect_regaddr (Sy.VAR r70), Sy.VAR r71))
            in rr520) in
       let r521 =
       Ctrl.reset
         (fun x522 ->
            let rr523 =
            x430 (Sta
              (Sy.VAR r72, reflect_regaddr (Sy.VAR r73), Sy.VAR r74))
            in rr523) in
       let r524 =
       Ctrl.reset
         (fun x525 ->
            let rr526 =
            x430 (Stda
              (Sy.VAR r75, reflect_regaddr (Sy.VAR r76), Sy.VAR r77))
            in rr526) in
       let r527 =
       Ctrl.reset
         (fun x528 ->
            let rr529 = x430 (Ldfsr (reflect_address (Sy.VAR r78))) in
            rr529) in
       let r530 =
       Ctrl.reset
         (fun x531 ->
            let rr532 = x430 (Ldcsr (reflect_address (Sy.VAR r79))) in
            rr532) in
       let r533 =
       Ctrl.reset
         (fun x534 ->
            let rr535 = x430 (Stfsr (reflect_address (Sy.VAR r80))) in
            rr535) in
       let r536 =
       Ctrl.reset
         (fun x537 ->
            let rr538 = x430 (Stcsr (reflect_address (Sy.VAR r81))) in
            rr538) in
       let r539 =
       Ctrl.reset
         (fun x540 ->
            let rr541 = x430 (Stdfq (reflect_address (Sy.VAR r82))) in
            rr541) in
       let r542 =
       Ctrl.reset
         (fun x543 ->
            let rr544 = x430 (Stdcq (reflect_address (Sy.VAR r83))) in
            rr544) in
       let r545 =
       Ctrl.reset
         (fun x546 -> let rr547 = x430 (Rdy (Sy.VAR r84)) in rr547) in
       let r548 =
       Ctrl.reset
         (fun x549 -> let rr550 = x430 (Rdpsr (Sy.VAR r85)) in rr550)
       in
       let r551 =
       Ctrl.reset
         (fun x552 -> let rr553 = x430 (Rdwim (Sy.VAR r86)) in rr553)
       in
       let r554 =
       Ctrl.reset
         (fun x555 -> let rr556 = x430 (Rdtbr (Sy.VAR r87)) in rr556)
       in
       let r557 =
       Ctrl.reset
         (fun x558 ->
            let rr559 =
            x430 (Wry (Sy.VAR r88, reflect_reg_or_imm (Sy.VAR r89))) in
            rr559) in
       let r560 =
       Ctrl.reset
         (fun x561 ->
            let rr562 =
            x430 (Wrpsr (Sy.VAR r90, reflect_reg_or_imm (Sy.VAR r91)))
            in rr562) in
       let r563 =
       Ctrl.reset
         (fun x564 ->
            let rr565 =
            x430 (Wrwim (Sy.VAR r92, reflect_reg_or_imm (Sy.VAR r93)))
            in rr565) in
       let r566 =
       Ctrl.reset
         (fun x567 ->
            let rr568 =
            x430 (Wrtbr (Sy.VAR r94, reflect_reg_or_imm (Sy.VAR r95)))
            in rr568) in
       let r569 =
       Ctrl.reset
         (fun x570 ->
            let rr571 = x430 (Rdasr (Sy.VAR r96, Sy.VAR r97)) in rr571)
       in
       let r572 =
       Ctrl.reset
         (fun x573 ->
            let rr574 =
            x430 (Wrasr
              (Sy.VAR r98, reflect_reg_or_imm (Sy.VAR r99), Sy.VAR
               r100)) in rr574) in
       let r575 =
       Ctrl.reset (fun x576 -> let rr577 = x430 (Stbar ()) in rr577) in
       let r578 =
       Ctrl.reset
         (fun x579 ->
            let rr580 =
            x430 (And
              (Sy.VAR r101, reflect_reg_or_imm (Sy.VAR r102), Sy.VAR
               r103)) in rr580) in
       let r581 =
       Ctrl.reset
         (fun x582 ->
            let rr583 =
            x430 (Andcc
              (Sy.VAR r104, reflect_reg_or_imm (Sy.VAR r105), Sy.VAR
               r106)) in rr583) in
       let r584 =
       Ctrl.reset
         (fun x585 ->
            let rr586 =
            x430 (Andn
              (Sy.VAR r107, reflect_reg_or_imm (Sy.VAR r108), Sy.VAR
               r109)) in rr586) in
       let r587 =
       Ctrl.reset
         (fun x588 ->
            let rr589 =
            x430 (Andncc
              (Sy.VAR r110, reflect_reg_or_imm (Sy.VAR r111), Sy.VAR
               r112)) in rr589) in
       let r590 =
       Ctrl.reset
         (fun x591 ->
            let rr592 =
            x430 (Or
              (Sy.VAR r113, reflect_reg_or_imm (Sy.VAR r114), Sy.VAR
               r115)) in rr592) in
       let r593 =
       Ctrl.reset
         (fun x594 ->
            let rr595 =
            x430 (Orcc
              (Sy.VAR r116, reflect_reg_or_imm (Sy.VAR r117), Sy.VAR
               r118)) in rr595) in
       let r596 =
       Ctrl.reset
         (fun x597 ->
            let rr598 =
            x430 (Orn
              (Sy.VAR r119, reflect_reg_or_imm (Sy.VAR r120), Sy.VAR
               r121)) in rr598) in
       let r599 =
       Ctrl.reset
         (fun x600 ->
            let rr601 =
            x430 (Orncc
              (Sy.VAR r122, reflect_reg_or_imm (Sy.VAR r123), Sy.VAR
               r124)) in rr601) in
       let r602 =
       Ctrl.reset
         (fun x603 ->
            let rr604 =
            x430 (Xor
              (Sy.VAR r125, reflect_reg_or_imm (Sy.VAR r126), Sy.VAR
               r127)) in rr604) in
       let r605 =
       Ctrl.reset
         (fun x606 ->
            let rr607 =
            x430 (Xorcc
              (Sy.VAR r128, reflect_reg_or_imm (Sy.VAR r129), Sy.VAR
               r130)) in rr607) in
       let r608 =
       Ctrl.reset
         (fun x609 ->
            let rr610 =
            x430 (Xnor
              (Sy.VAR r131, reflect_reg_or_imm (Sy.VAR r132), Sy.VAR
               r133)) in rr610) in
       let r611 =
       Ctrl.reset
         (fun x612 ->
            let rr613 =
            x430 (Xnorcc
              (Sy.VAR r134, reflect_reg_or_imm (Sy.VAR r135), Sy.VAR
               r136)) in rr613) in
       let r614 =
       Ctrl.reset
         (fun x615 ->
            let rr616 =
            x430 (Sll
              (Sy.VAR r137, reflect_reg_or_imm (Sy.VAR r138), Sy.VAR
               r139)) in rr616) in
       let r617 =
       Ctrl.reset
         (fun x618 ->
            let rr619 =
            x430 (Srl
              (Sy.VAR r140, reflect_reg_or_imm (Sy.VAR r141), Sy.VAR
               r142)) in rr619) in
       let r620 =
       Ctrl.reset
         (fun x621 ->
            let rr622 =
            x430 (Sra
              (Sy.VAR r143, reflect_reg_or_imm (Sy.VAR r144), Sy.VAR
               r145)) in rr622) in
       let r623 =
       Ctrl.reset
         (fun x624 ->
            let rr625 =
            x430 (Add
              (Sy.VAR r146, reflect_reg_or_imm (Sy.VAR r147), Sy.VAR
               r148)) in rr625) in
       let r626 =
       Ctrl.reset
         (fun x627 ->
            let rr628 =
            x430 (Addcc
              (Sy.VAR r149, reflect_reg_or_imm (Sy.VAR r150), Sy.VAR
               r151)) in rr628) in
       let r629 =
       Ctrl.reset
         (fun x630 ->
            let rr631 =
            x430 (Addx
              (Sy.VAR r152, reflect_reg_or_imm (Sy.VAR r153), Sy.VAR
               r154)) in rr631) in
       let r632 =
       Ctrl.reset
         (fun x633 ->
            let rr634 =
            x430 (Addxcc
              (Sy.VAR r155, reflect_reg_or_imm (Sy.VAR r156), Sy.VAR
               r157)) in rr634) in
       let r635 =
       Ctrl.reset
         (fun x636 ->
            let rr637 =
            x430 (Taddcc
              (Sy.VAR r158, reflect_reg_or_imm (Sy.VAR r159), Sy.VAR
               r160)) in rr637) in
       let r638 =
       Ctrl.reset
         (fun x639 ->
            let rr640 =
            x430 (Taddcctv
              (Sy.VAR r161, reflect_reg_or_imm (Sy.VAR r162), Sy.VAR
               r163)) in rr640) in
       let r641 =
       Ctrl.reset
         (fun x642 ->
            let rr643 =
            x430 (Sub
              (Sy.VAR r164, reflect_reg_or_imm (Sy.VAR r165), Sy.VAR
               r166)) in rr643) in
       let r644 =
       Ctrl.reset
         (fun x645 ->
            let rr646 =
            x430 (Subcc
              (Sy.VAR r167, reflect_reg_or_imm (Sy.VAR r168), Sy.VAR
               r169)) in rr646) in
       let r647 =
       Ctrl.reset
         (fun x648 ->
            let rr649 =
            x430 (Subx
              (Sy.VAR r170, reflect_reg_or_imm (Sy.VAR r171), Sy.VAR
               r172)) in rr649) in
       let r650 =
       Ctrl.reset
         (fun x651 ->
            let rr652 =
            x430 (Subxcc
              (Sy.VAR r173, reflect_reg_or_imm (Sy.VAR r174), Sy.VAR
               r175)) in rr652) in
       let r653 =
       Ctrl.reset
         (fun x654 ->
            let rr655 =
            x430 (Tsubcc
              (Sy.VAR r176, reflect_reg_or_imm (Sy.VAR r177), Sy.VAR
               r178)) in rr655) in
       let r656 =
       Ctrl.reset
         (fun x657 ->
            let rr658 =
            x430 (Tsubcctv
              (Sy.VAR r179, reflect_reg_or_imm (Sy.VAR r180), Sy.VAR
               r181)) in rr658) in
       let r659 =
       Ctrl.reset
         (fun x660 ->
            let rr661 =
            x430 (Mulscc
              (Sy.VAR r182, reflect_reg_or_imm (Sy.VAR r183), Sy.VAR
               r184)) in rr661) in
       let r662 =
       Ctrl.reset
         (fun x663 ->
            let rr664 =
            x430 (Umul
              (Sy.VAR r185, reflect_reg_or_imm (Sy.VAR r186), Sy.VAR
               r187)) in rr664) in
       let r665 =
       Ctrl.reset
         (fun x666 ->
            let rr667 =
            x430 (Smul
              (Sy.VAR r188, reflect_reg_or_imm (Sy.VAR r189), Sy.VAR
               r190)) in rr667) in
       let r668 =
       Ctrl.reset
         (fun x669 ->
            let rr670 =
            x430 (Umulcc
              (Sy.VAR r191, reflect_reg_or_imm (Sy.VAR r192), Sy.VAR
               r193)) in rr670) in
       let r671 =
       Ctrl.reset
         (fun x672 ->
            let rr673 =
            x430 (Smulcc
              (Sy.VAR r194, reflect_reg_or_imm (Sy.VAR r195), Sy.VAR
               r196)) in rr673) in
       let r674 =
       Ctrl.reset
         (fun x675 ->
            let rr676 =
            x430 (Udiv
              (Sy.VAR r197, reflect_reg_or_imm (Sy.VAR r198), Sy.VAR
               r199)) in rr676) in
       let r677 =
       Ctrl.reset
         (fun x678 ->
            let rr679 =
            x430 (Sdiv
              (Sy.VAR r200, reflect_reg_or_imm (Sy.VAR r201), Sy.VAR
               r202)) in rr679) in
       let r680 =
       Ctrl.reset
         (fun x681 ->
            let rr682 =
            x430 (Udivcc
              (Sy.VAR r203, reflect_reg_or_imm (Sy.VAR r204), Sy.VAR
               r205)) in rr682) in
       let r683 =
       Ctrl.reset
         (fun x684 ->
            let rr685 =
            x430 (Sdivcc
              (Sy.VAR r206, reflect_reg_or_imm (Sy.VAR r207), Sy.VAR
               r208)) in rr685) in
       let r686 =
       Ctrl.reset
         (fun x687 ->
            let rr688 =
            x430 (Save
              (Sy.VAR r209, reflect_reg_or_imm (Sy.VAR r210), Sy.VAR
               r211)) in rr688) in
       let r689 =
       Ctrl.reset
         (fun x690 ->
            let rr691 =
            x430 (Restore
              (Sy.VAR r212, reflect_reg_or_imm (Sy.VAR r213), Sy.VAR
               r214)) in rr691) in
       let r692 =
       Ctrl.reset
         (fun x693 -> let rr694 = x430 (Bn (Sy.VAR r215)) in rr694) in
       let r695 =
       Ctrl.reset
         (fun x696 -> let rr697 = x430 (Bn_a (Sy.VAR r216)) in rr697)
       in
       let r698 =
       Ctrl.reset
         (fun x699 -> let rr700 = x430 (Be (Sy.VAR r217)) in rr700) in
       let r701 =
       Ctrl.reset
         (fun x702 -> let rr703 = x430 (Be_a (Sy.VAR r218)) in rr703)
       in
       let r704 =
       Ctrl.reset
         (fun x705 -> let rr706 = x430 (Ble (Sy.VAR r219)) in rr706) in
       let r707 =
       Ctrl.reset
         (fun x708 -> let rr709 = x430 (Ble_a (Sy.VAR r220)) in rr709)
       in
       let r710 =
       Ctrl.reset
         (fun x711 -> let rr712 = x430 (Bl (Sy.VAR r221)) in rr712) in
       let r713 =
       Ctrl.reset
         (fun x714 -> let rr715 = x430 (Bl_a (Sy.VAR r222)) in rr715)
       in
       let r716 =
       Ctrl.reset
         (fun x717 -> let rr718 = x430 (Bleu (Sy.VAR r223)) in rr718)
       in
       let r719 =
       Ctrl.reset
         (fun x720 -> let rr721 = x430 (Bleu_a (Sy.VAR r224)) in rr721)
       in
       let r722 =
       Ctrl.reset
         (fun x723 -> let rr724 = x430 (Bcs (Sy.VAR r225)) in rr724) in
       let r725 =
       Ctrl.reset
         (fun x726 -> let rr727 = x430 (Bcs_a (Sy.VAR r226)) in rr727)
       in
       let r728 =
       Ctrl.reset
         (fun x729 -> let rr730 = x430 (Bneg (Sy.VAR r227)) in rr730)
       in
       let r731 =
       Ctrl.reset
         (fun x732 -> let rr733 = x430 (Bneg_a (Sy.VAR r228)) in rr733)
       in
       let r734 =
       Ctrl.reset
         (fun x735 -> let rr736 = x430 (Bvs (Sy.VAR r229)) in rr736) in
       let r737 =
       Ctrl.reset
         (fun x738 -> let rr739 = x430 (Bvs_a (Sy.VAR r230)) in rr739)
       in
       let r740 =
       Ctrl.reset
         (fun x741 -> let rr742 = x430 (Ba (Sy.VAR r231)) in rr742) in
       let r743 =
       Ctrl.reset
         (fun x744 -> let rr745 = x430 (Ba_a (Sy.VAR r232)) in rr745)
       in
       let r746 =
       Ctrl.reset
         (fun x747 -> let rr748 = x430 (Bne (Sy.VAR r233)) in rr748) in
       let r749 =
       Ctrl.reset
         (fun x750 -> let rr751 = x430 (Bne_a (Sy.VAR r234)) in rr751)
       in
       let r752 =
       Ctrl.reset
         (fun x753 -> let rr754 = x430 (Bg (Sy.VAR r235)) in rr754) in
       let r755 =
       Ctrl.reset
         (fun x756 -> let rr757 = x430 (Bg_a (Sy.VAR r236)) in rr757)
       in
       let r758 =
       Ctrl.reset
         (fun x759 -> let rr760 = x430 (Bge (Sy.VAR r237)) in rr760) in
       let r761 =
       Ctrl.reset
         (fun x762 -> let rr763 = x430 (Bge_a (Sy.VAR r238)) in rr763)
       in
       let r764 =
       Ctrl.reset
         (fun x765 -> let rr766 = x430 (Bgu (Sy.VAR r239)) in rr766) in
       let r767 =
       Ctrl.reset
         (fun x768 -> let rr769 = x430 (Bgu_a (Sy.VAR r240)) in rr769)
       in
       let r770 =
       Ctrl.reset
         (fun x771 -> let rr772 = x430 (Bcc (Sy.VAR r241)) in rr772) in
       let r773 =
       Ctrl.reset
         (fun x774 -> let rr775 = x430 (Bcc_a (Sy.VAR r242)) in rr775)
       in
       let r776 =
       Ctrl.reset
         (fun x777 -> let rr778 = x430 (Bpos (Sy.VAR r243)) in rr778)
       in
       let r779 =
       Ctrl.reset
         (fun x780 -> let rr781 = x430 (Bpos_a (Sy.VAR r244)) in rr781)
       in
       let r782 =
       Ctrl.reset
         (fun x783 -> let rr784 = x430 (Bvc (Sy.VAR r245)) in rr784) in
       let r785 =
       Ctrl.reset
         (fun x786 -> let rr787 = x430 (Bvc_a (Sy.VAR r246)) in rr787)
       in
       let r788 =
       Ctrl.reset
         (fun x789 -> let rr790 = x430 (Fbn (Sy.VAR r247)) in rr790) in
       let r791 =
       Ctrl.reset
         (fun x792 -> let rr793 = x430 (Fbn_a (Sy.VAR r248)) in rr793)
       in
       let r794 =
       Ctrl.reset
         (fun x795 -> let rr796 = x430 (Fbne (Sy.VAR r249)) in rr796)
       in
       let r797 =
       Ctrl.reset
         (fun x798 -> let rr799 = x430 (Fbne_a (Sy.VAR r250)) in rr799)
       in
       let r800 =
       Ctrl.reset
         (fun x801 -> let rr802 = x430 (Fblg (Sy.VAR r251)) in rr802)
       in
       let r803 =
       Ctrl.reset
         (fun x804 -> let rr805 = x430 (Fblg_a (Sy.VAR r252)) in rr805)
       in
       let r806 =
       Ctrl.reset
         (fun x807 -> let rr808 = x430 (Fbul (Sy.VAR r253)) in rr808)
       in
       let r809 =
       Ctrl.reset
         (fun x810 -> let rr811 = x430 (Fbul_a (Sy.VAR r254)) in rr811)
       in
       let r812 =
       Ctrl.reset
         (fun x813 -> let rr814 = x430 (Fbl (Sy.VAR r255)) in rr814) in
       let r815 =
       Ctrl.reset
         (fun x816 -> let rr817 = x430 (Fbl_a (Sy.VAR r256)) in rr817)
       in
       let r818 =
       Ctrl.reset
         (fun x819 -> let rr820 = x430 (Fbug (Sy.VAR r257)) in rr820)
       in
       let r821 =
       Ctrl.reset
         (fun x822 -> let rr823 = x430 (Fbug_a (Sy.VAR r258)) in rr823)
       in
       let r824 =
       Ctrl.reset
         (fun x825 -> let rr826 = x430 (Fbg (Sy.VAR r259)) in rr826) in
       let r827 =
       Ctrl.reset
         (fun x828 -> let rr829 = x430 (Fbg_a (Sy.VAR r260)) in rr829)
       in
       let r830 =
       Ctrl.reset
         (fun x831 -> let rr832 = x430 (Fbu (Sy.VAR r261)) in rr832) in
       let r833 =
       Ctrl.reset
         (fun x834 -> let rr835 = x430 (Fbu_a (Sy.VAR r262)) in rr835)
       in
       let r836 =
       Ctrl.reset
         (fun x837 -> let rr838 = x430 (Fba (Sy.VAR r263)) in rr838) in
       let r839 =
       Ctrl.reset
         (fun x840 -> let rr841 = x430 (Fba_a (Sy.VAR r264)) in rr841)
       in
       let r842 =
       Ctrl.reset
         (fun x843 -> let rr844 = x430 (Fbe (Sy.VAR r265)) in rr844) in
       let r845 =
       Ctrl.reset
         (fun x846 -> let rr847 = x430 (Fbe_a (Sy.VAR r266)) in rr847)
       in
       let r848 =
       Ctrl.reset
         (fun x849 -> let rr850 = x430 (Fbue (Sy.VAR r267)) in rr850)
       in
       let r851 =
       Ctrl.reset
         (fun x852 -> let rr853 = x430 (Fbue_a (Sy.VAR r268)) in rr853)
       in
       let r854 =
       Ctrl.reset
         (fun x855 -> let rr856 = x430 (Fbge (Sy.VAR r269)) in rr856)
       in
       let r857 =
       Ctrl.reset
         (fun x858 -> let rr859 = x430 (Fbge_a (Sy.VAR r270)) in rr859)
       in
       let r860 =
       Ctrl.reset
         (fun x861 -> let rr862 = x430 (Fbuge (Sy.VAR r271)) in rr862)
       in
       let r863 =
       Ctrl.reset
         (fun x864 -> let rr865 = x430 (Fbuge_a (Sy.VAR r272)) in rr865)
       in
       let r866 =
       Ctrl.reset
         (fun x867 -> let rr868 = x430 (Fble (Sy.VAR r273)) in rr868)
       in
       let r869 =
       Ctrl.reset
         (fun x870 -> let rr871 = x430 (Fble_a (Sy.VAR r274)) in rr871)
       in
       let r872 =
       Ctrl.reset
         (fun x873 -> let rr874 = x430 (Fbule (Sy.VAR r275)) in rr874)
       in
       let r875 =
       Ctrl.reset
         (fun x876 -> let rr877 = x430 (Fbule_a (Sy.VAR r276)) in rr877)
       in
       let r878 =
       Ctrl.reset
         (fun x879 -> let rr880 = x430 (Fbo (Sy.VAR r277)) in rr880) in
       let r881 =
       Ctrl.reset
         (fun x882 -> let rr883 = x430 (Fbo_a (Sy.VAR r278)) in rr883)
       in
       let r884 =
       Ctrl.reset
         (fun x885 -> let rr886 = x430 (Cbn (Sy.VAR r279)) in rr886) in
       let r887 =
       Ctrl.reset
         (fun x888 -> let rr889 = x430 (Cbn_a (Sy.VAR r280)) in rr889)
       in
       let r890 =
       Ctrl.reset
         (fun x891 -> let rr892 = x430 (Cb123 (Sy.VAR r281)) in rr892)
       in
       let r893 =
       Ctrl.reset
         (fun x894 -> let rr895 = x430 (Cb123_a (Sy.VAR r282)) in rr895)
       in
       let r896 =
       Ctrl.reset
         (fun x897 -> let rr898 = x430 (Cb12 (Sy.VAR r283)) in rr898)
       in
       let r899 =
       Ctrl.reset
         (fun x900 -> let rr901 = x430 (Cb12_a (Sy.VAR r284)) in rr901)
       in
       let r902 =
       Ctrl.reset
         (fun x903 -> let rr904 = x430 (Cb13 (Sy.VAR r285)) in rr904)
       in
       let r905 =
       Ctrl.reset
         (fun x906 -> let rr907 = x430 (Cb13_a (Sy.VAR r286)) in rr907)
       in
       let r908 =
       Ctrl.reset
         (fun x909 -> let rr910 = x430 (Cb1 (Sy.VAR r287)) in rr910) in
       let r911 =
       Ctrl.reset
         (fun x912 -> let rr913 = x430 (Cb1_a (Sy.VAR r288)) in rr913)
       in
       let r914 =
       Ctrl.reset
         (fun x915 -> let rr916 = x430 (Cb23 (Sy.VAR r289)) in rr916)
       in
       let r917 =
       Ctrl.reset
         (fun x918 -> let rr919 = x430 (Cb23_a (Sy.VAR r290)) in rr919)
       in
       let r920 =
       Ctrl.reset
         (fun x921 -> let rr922 = x430 (Cb2 (Sy.VAR r291)) in rr922) in
       let r923 =
       Ctrl.reset
         (fun x924 -> let rr925 = x430 (Cb2_a (Sy.VAR r292)) in rr925)
       in
       let r926 =
       Ctrl.reset
         (fun x927 -> let rr928 = x430 (Cb3 (Sy.VAR r293)) in rr928) in
       let r929 =
       Ctrl.reset
         (fun x930 -> let rr931 = x430 (Cb3_a (Sy.VAR r294)) in rr931)
       in
       let r932 =
       Ctrl.reset
         (fun x933 -> let rr934 = x430 (Cba (Sy.VAR r295)) in rr934) in
       let r935 =
       Ctrl.reset
         (fun x936 -> let rr937 = x430 (Cba_a (Sy.VAR r296)) in rr937)
       in
       let r938 =
       Ctrl.reset
         (fun x939 -> let rr940 = x430 (Cb0 (Sy.VAR r297)) in rr940) in
       let r941 =
       Ctrl.reset
         (fun x942 -> let rr943 = x430 (Cb0_a (Sy.VAR r298)) in rr943)
       in
       let r944 =
       Ctrl.reset
         (fun x945 -> let rr946 = x430 (Cb03 (Sy.VAR r299)) in rr946)
       in
       let r947 =
       Ctrl.reset
         (fun x948 -> let rr949 = x430 (Cb03_a (Sy.VAR r300)) in rr949)
       in
       let r950 =
       Ctrl.reset
         (fun x951 -> let rr952 = x430 (Cb02 (Sy.VAR r301)) in rr952)
       in
       let r953 =
       Ctrl.reset
         (fun x954 -> let rr955 = x430 (Cb02_a (Sy.VAR r302)) in rr955)
       in
       let r956 =
       Ctrl.reset
         (fun x957 -> let rr958 = x430 (Cb023 (Sy.VAR r303)) in rr958)
       in
       let r959 =
       Ctrl.reset
         (fun x960 -> let rr961 = x430 (Cb023_a (Sy.VAR r304)) in rr961)
       in
       let r962 =
       Ctrl.reset
         (fun x963 -> let rr964 = x430 (Cb01 (Sy.VAR r305)) in rr964)
       in
       let r965 =
       Ctrl.reset
         (fun x966 -> let rr967 = x430 (Cb01_a (Sy.VAR r306)) in rr967)
       in
       let r968 =
       Ctrl.reset
         (fun x969 -> let rr970 = x430 (Cb013 (Sy.VAR r307)) in rr970)
       in
       let r971 =
       Ctrl.reset
         (fun x972 -> let rr973 = x430 (Cb013_a (Sy.VAR r308)) in rr973)
       in
       let r974 =
       Ctrl.reset
         (fun x975 -> let rr976 = x430 (Cb012 (Sy.VAR r309)) in rr976)
       in
       let r977 =
       Ctrl.reset
         (fun x978 -> let rr979 = x430 (Cb012_a (Sy.VAR r310)) in rr979)
       in
       let r980 =
       Ctrl.reset
         (fun x981 -> let rr982 = x430 (Call (Sy.VAR r311)) in rr982)
       in
       let r983 =
       Ctrl.reset
         (fun x984 ->
            let rr985 = x430 (Fmovs (Sy.VAR r312, Sy.VAR r313)) in
            rr985) in
       let r986 =
       Ctrl.reset
         (fun x987 ->
            let rr988 = x430 (Fnegs (Sy.VAR r314, Sy.VAR r315)) in
            rr988) in
       let r989 =
       Ctrl.reset
         (fun x990 ->
            let rr991 = x430 (Fabss (Sy.VAR r316, Sy.VAR r317)) in
            rr991) in
       let r992 =
       Ctrl.reset
         (fun x993 ->
            let rr994 = x430 (Fsqrts (Sy.VAR r318, Sy.VAR r319)) in
            rr994) in
       let r995 =
       Ctrl.reset
         (fun x996 ->
            let rr997 = x430 (Fsqrtd (Sy.VAR r320, Sy.VAR r321)) in
            rr997) in
       let r998 =
       Ctrl.reset
         (fun x999 ->
            let rr1000 = x430 (Fsqrtq (Sy.VAR r322, Sy.VAR r323)) in
            rr1000) in
       let r1001 =
       Ctrl.reset
         (fun x1002 ->
            let rr1003 = x430 (Fitos (Sy.VAR r324, Sy.VAR r325)) in
            rr1003) in
       let r1004 =
       Ctrl.reset
         (fun x1005 ->
            let rr1006 = x430 (Fstoi (Sy.VAR r326, Sy.VAR r327)) in
            rr1006) in
       let r1007 =
       Ctrl.reset
         (fun x1008 ->
            let rr1009 = x430 (Fitod (Sy.VAR r328, Sy.VAR r329)) in
            rr1009) in
       let r1010 =
       Ctrl.reset
         (fun x1011 ->
            let rr1012 = x430 (Fstod (Sy.VAR r330, Sy.VAR r331)) in
            rr1012) in
       let r1013 =
       Ctrl.reset
         (fun x1014 ->
            let rr1015 = x430 (Fitoq (Sy.VAR r332, Sy.VAR r333)) in
            rr1015) in
       let r1016 =
       Ctrl.reset
         (fun x1017 ->
            let rr1018 = x430 (Fstoq (Sy.VAR r334, Sy.VAR r335)) in
            rr1018) in
       let r1019 =
       Ctrl.reset
         (fun x1020 ->
            let rr1021 = x430 (Fdtoi (Sy.VAR r336, Sy.VAR r337)) in
            rr1021) in
       let r1022 =
       Ctrl.reset
         (fun x1023 ->
            let rr1024 = x430 (Fdtos (Sy.VAR r338, Sy.VAR r339)) in
            rr1024) in
       let r1025 =
       Ctrl.reset
         (fun x1026 ->
            let rr1027 = x430 (Fqtos (Sy.VAR r340, Sy.VAR r341)) in
            rr1027) in
       let r1028 =
       Ctrl.reset
         (fun x1029 ->
            let rr1030 = x430 (Fqtoi (Sy.VAR r342, Sy.VAR r343)) in
            rr1030) in
       let r1031 =
       Ctrl.reset
         (fun x1032 ->
            let rr1033 = x430 (Fqtod (Sy.VAR r344, Sy.VAR r345)) in
            rr1033) in
       let r1034 =
       Ctrl.reset
         (fun x1035 ->
            let rr1036 = x430 (Fdtoq (Sy.VAR r346, Sy.VAR r347)) in
            rr1036) in
       let r1037 =
       Ctrl.reset
         (fun x1038 ->
            let rr1039 =
            x430 (Fadds (Sy.VAR r348, Sy.VAR r349, Sy.VAR r350)) in
            rr1039) in
       let r1040 =
       Ctrl.reset
         (fun x1041 ->
            let rr1042 =
            x430 (Fsubs (Sy.VAR r351, Sy.VAR r352, Sy.VAR r353)) in
            rr1042) in
       let r1043 =
       Ctrl.reset
         (fun x1044 ->
            let rr1045 =
            x430 (Fmuls (Sy.VAR r354, Sy.VAR r355, Sy.VAR r356)) in
            rr1045) in
       let r1046 =
       Ctrl.reset
         (fun x1047 ->
            let rr1048 =
            x430 (Fdivs (Sy.VAR r357, Sy.VAR r358, Sy.VAR r359)) in
            rr1048) in
       let r1049 =
       Ctrl.reset
         (fun x1050 ->
            let rr1051 =
            x430 (Faddd (Sy.VAR r360, Sy.VAR r361, Sy.VAR r362)) in
            rr1051) in
       let r1052 =
       Ctrl.reset
         (fun x1053 ->
            let rr1054 =
            x430 (Fsubd (Sy.VAR r363, Sy.VAR r364, Sy.VAR r365)) in
            rr1054) in
       let r1055 =
       Ctrl.reset
         (fun x1056 ->
            let rr1057 =
            x430 (Fmuld (Sy.VAR r366, Sy.VAR r367, Sy.VAR r368)) in
            rr1057) in
       let r1058 =
       Ctrl.reset
         (fun x1059 ->
            let rr1060 =
            x430 (Fdivd (Sy.VAR r369, Sy.VAR r370, Sy.VAR r371)) in
            rr1060) in
       let r1061 =
       Ctrl.reset
         (fun x1062 ->
            let rr1063 =
            x430 (Faddq (Sy.VAR r372, Sy.VAR r373, Sy.VAR r374)) in
            rr1063) in
       let r1064 =
       Ctrl.reset
         (fun x1065 ->
            let rr1066 =
            x430 (Fsubq (Sy.VAR r375, Sy.VAR r376, Sy.VAR r377)) in
            rr1066) in
       let r1067 =
       Ctrl.reset
         (fun x1068 ->
            let rr1069 =
            x430 (Fmulq (Sy.VAR r378, Sy.VAR r379, Sy.VAR r380)) in
            rr1069) in
       let r1070 =
       Ctrl.reset
         (fun x1071 ->
            let rr1072 =
            x430 (Fdivq (Sy.VAR r381, Sy.VAR r382, Sy.VAR r383)) in
            rr1072) in
       let r1073 =
       Ctrl.reset
         (fun x1074 ->
            let rr1075 =
            x430 (Fsmuld (Sy.VAR r384, Sy.VAR r385, Sy.VAR r386)) in
            rr1075) in
       let r1076 =
       Ctrl.reset
         (fun x1077 ->
            let rr1078 =
            x430 (Fdmulq (Sy.VAR r387, Sy.VAR r388, Sy.VAR r389)) in
            rr1078) in
       let r1079 =
       Ctrl.reset
         (fun x1080 ->
            let rr1081 = x430 (Fcmps (Sy.VAR r390, Sy.VAR r391)) in
            rr1081) in
       let r1082 =
       Ctrl.reset
         (fun x1083 ->
            let rr1084 = x430 (Fcmpes (Sy.VAR r392, Sy.VAR r393)) in
            rr1084) in
       let r1085 =
       Ctrl.reset
         (fun x1086 ->
            let rr1087 = x430 (Fcmpd (Sy.VAR r394, Sy.VAR r395)) in
            rr1087) in
       let r1088 =
       Ctrl.reset
         (fun x1089 ->
            let rr1090 = x430 (Fcmped (Sy.VAR r396, Sy.VAR r397)) in
            rr1090) in
       let r1091 =
       Ctrl.reset
         (fun x1092 ->
            let rr1093 = x430 (Fcmpq (Sy.VAR r398, Sy.VAR r399)) in
            rr1093) in
       let r1094 =
       Ctrl.reset
         (fun x1095 ->
            let rr1096 = x430 (Fcmpeq (Sy.VAR r400, Sy.VAR r401)) in
            rr1096) in
       let r1097 =
       Ctrl.reset (fun x1098 -> let rr1099 = x430 (Nop ()) in rr1099)
       in
       let r1100 =
       Ctrl.reset
         (fun x1101 ->
            let rr1102 = x430 (Flush (reflect_address (Sy.VAR r402)))
            in rr1102) in
       let r1103 =
       Ctrl.reset
         (fun x1104 ->
            let rr1105 =
            x430 (Jmpl (reflect_address (Sy.VAR r403), Sy.VAR r404)) in
            rr1105) in
       let r1106 =
       Ctrl.reset
         (fun x1107 ->
            let rr1108 = x430 (Rett (reflect_address (Sy.VAR r405))) in
            rr1108) in
       let r1109 =
       Ctrl.reset
         (fun x1110 ->
            let rr1111 = x430 (Tn (reflect_address (Sy.VAR r406))) in
            rr1111) in
       let r1112 =
       Ctrl.reset
         (fun x1113 ->
            let rr1114 = x430 (Te (reflect_address (Sy.VAR r407))) in
            rr1114) in
       let r1115 =
       Ctrl.reset
         (fun x1116 ->
            let rr1117 = x430 (Tle (reflect_address (Sy.VAR r408))) in
            rr1117) in
       let r1118 =
       Ctrl.reset
         (fun x1119 ->
            let rr1120 = x430 (Tl (reflect_address (Sy.VAR r409))) in
            rr1120) in
       let r1121 =
       Ctrl.reset
         (fun x1122 ->
            let rr1123 = x430 (Tleu (reflect_address (Sy.VAR r410))) in
            rr1123) in
       let r1124 =
       Ctrl.reset
         (fun x1125 ->
            let rr1126 = x430 (Tcs (reflect_address (Sy.VAR r411))) in
            rr1126) in
       let r1127 =
       Ctrl.reset
         (fun x1128 ->
            let rr1129 = x430 (Tneg (reflect_address (Sy.VAR r412))) in
            rr1129) in
       let r1130 =
       Ctrl.reset
         (fun x1131 ->
            let rr1132 = x430 (Tvs (reflect_address (Sy.VAR r413))) in
            rr1132) in
       let r1133 =
       Ctrl.reset
         (fun x1134 ->
            let rr1135 = x430 (Ta (reflect_address (Sy.VAR r414))) in
            rr1135) in
       let r1136 =
       Ctrl.reset
         (fun x1137 ->
            let rr1138 = x430 (Tne (reflect_address (Sy.VAR r415))) in
            rr1138) in
       let r1139 =
       Ctrl.reset
         (fun x1140 ->
            let rr1141 = x430 (Tg (reflect_address (Sy.VAR r416))) in
            rr1141) in
       let r1142 =
       Ctrl.reset
         (fun x1143 ->
            let rr1144 = x430 (Tge (reflect_address (Sy.VAR r417))) in
            rr1144) in
       let r1145 =
       Ctrl.reset
         (fun x1146 ->
            let rr1147 = x430 (Tgu (reflect_address (Sy.VAR r418))) in
            rr1147) in
       let r1148 =
       Ctrl.reset
         (fun x1149 ->
            let rr1150 = x430 (Tcc (reflect_address (Sy.VAR r419))) in
            rr1150) in
       let r1151 =
       Ctrl.reset
         (fun x1152 ->
            let rr1153 = x430 (Tpos (reflect_address (Sy.VAR r420))) in
            rr1153) in
       let r1154 =
       Ctrl.reset
         (fun x1155 ->
            let rr1156 = x430 (Tvc (reflect_address (Sy.VAR r421))) in
            rr1156) in
       let r1157 =
       Ctrl.reset
         (fun x1158 ->
            let rr1159 = x430 (Unimp (Sy.VAR r422)) in rr1159) in
       let r1160 =
       Ctrl.reset
         (fun x1161 ->
            let rr1162 = x430 (Sethi (Sy.VAR r423, Sy.VAR r424)) in
            rr1162) in
       let r1163 =
       Ctrl.reset
         (fun x1164 ->
            let rr1165 = x430 (Decode_sethi (Sy.VAR r425, Sy.VAR r426))
            in rr1165) in
       let r1166 =
       Ctrl.reset
         (fun x1167 ->
            let rr1168 = x430 (Set (Sy.VAR r427, Sy.VAR r428)) in
            rr1168) in
       Sy.CASE
       (x1,
        [("Ldsb", Sy.TUPLE [Sy.ID r2;Sy.ID r3], r431);
         ("Ldsh", Sy.TUPLE [Sy.ID r4;Sy.ID r5], r434);
         ("Ldub", Sy.TUPLE [Sy.ID r6;Sy.ID r7], r437);
         ("Lduh", Sy.TUPLE [Sy.ID r8;Sy.ID r9], r440);
         ("Ld", Sy.TUPLE [Sy.ID r10;Sy.ID r11], r443);
         ("Ldstub", Sy.TUPLE [Sy.ID r12;Sy.ID r13], r446);
         ("Swap_", Sy.TUPLE [Sy.ID r14;Sy.ID r15], r449);
         ("Ldd", Sy.TUPLE [Sy.ID r16;Sy.ID r17], r452);
         ("Ldf", Sy.TUPLE [Sy.ID r18;Sy.ID r19], r455);
         ("Lddf", Sy.TUPLE [Sy.ID r20;Sy.ID r21], r458);
         ("Ldc", Sy.TUPLE [Sy.ID r22;Sy.ID r23], r461);
         ("Lddc", Sy.TUPLE [Sy.ID r24;Sy.ID r25], r464);
         ("Stb", Sy.TUPLE [Sy.ID r26;Sy.ID r27], r467);
         ("Sth", Sy.TUPLE [Sy.ID r28;Sy.ID r29], r470);
         ("St", Sy.TUPLE [Sy.ID r30;Sy.ID r31], r473);
         ("Std", Sy.TUPLE [Sy.ID r32;Sy.ID r33], r476);
         ("Stf", Sy.TUPLE [Sy.ID r34;Sy.ID r35], r479);
         ("Stdf", Sy.TUPLE [Sy.ID r36;Sy.ID r37], r482);
         ("Stc", Sy.TUPLE [Sy.ID r38;Sy.ID r39], r485);
         ("Stdc", Sy.TUPLE [Sy.ID r40;Sy.ID r41], r488);
         ("Ldsba", Sy.TUPLE [Sy.ID r42;Sy.ID r43;Sy.ID r44], r491);
         ("Ldsha", Sy.TUPLE [Sy.ID r45;Sy.ID r46;Sy.ID r47], r494);
         ("Lduba", Sy.TUPLE [Sy.ID r48;Sy.ID r49;Sy.ID r50], r497);
         ("Lduha", Sy.TUPLE [Sy.ID r51;Sy.ID r52;Sy.ID r53], r500);
         ("Lda", Sy.TUPLE [Sy.ID r54;Sy.ID r55;Sy.ID r56], r503);
         ("Ldstuba", Sy.TUPLE [Sy.ID r57;Sy.ID r58;Sy.ID r59], r506);
         ("Swapa", Sy.TUPLE [Sy.ID r60;Sy.ID r61;Sy.ID r62], r509);
         ("Ldda", Sy.TUPLE [Sy.ID r63;Sy.ID r64;Sy.ID r65], r512);
         ("Stba", Sy.TUPLE [Sy.ID r66;Sy.ID r67;Sy.ID r68], r515);
         ("Stha", Sy.TUPLE [Sy.ID r69;Sy.ID r70;Sy.ID r71], r518);
         ("Sta", Sy.TUPLE [Sy.ID r72;Sy.ID r73;Sy.ID r74], r521);
         ("Stda", Sy.TUPLE [Sy.ID r75;Sy.ID r76;Sy.ID r77], r524);
         ("Ldfsr", Sy.TUPLE [Sy.ID r78], r527);
         ("Ldcsr", Sy.TUPLE [Sy.ID r79], r530);
         ("Stfsr", Sy.TUPLE [Sy.ID r80], r533);
         ("Stcsr", Sy.TUPLE [Sy.ID r81], r536);
         ("Stdfq", Sy.TUPLE [Sy.ID r82], r539);
         ("Stdcq", Sy.TUPLE [Sy.ID r83], r542);
         ("Rdy", Sy.TUPLE [Sy.ID r84], r545);
         ("Rdpsr", Sy.TUPLE [Sy.ID r85], r548);
         ("Rdwim", Sy.TUPLE [Sy.ID r86], r551);
         ("Rdtbr", Sy.TUPLE [Sy.ID r87], r554);
         ("Wry", Sy.TUPLE [Sy.ID r88;Sy.ID r89], r557);
         ("Wrpsr", Sy.TUPLE [Sy.ID r90;Sy.ID r91], r560);
         ("Wrwim", Sy.TUPLE [Sy.ID r92;Sy.ID r93], r563);
         ("Wrtbr", Sy.TUPLE [Sy.ID r94;Sy.ID r95], r566);
         ("Rdasr", Sy.TUPLE [Sy.ID r96;Sy.ID r97], r569);
         ("Wrasr", Sy.TUPLE [Sy.ID r98;Sy.ID r99;Sy.ID r100], r572);
         ("Stbar", Sy.TUPLE [], r575);
         ("And", Sy.TUPLE [Sy.ID r101;Sy.ID r102;Sy.ID r103], r578);
         ("Andcc", Sy.TUPLE [Sy.ID r104;Sy.ID r105;Sy.ID r106], r581);
         ("Andn", Sy.TUPLE [Sy.ID r107;Sy.ID r108;Sy.ID r109], r584);
         ("Andncc", Sy.TUPLE [Sy.ID r110;Sy.ID r111;Sy.ID r112], r587);
         ("Or", Sy.TUPLE [Sy.ID r113;Sy.ID r114;Sy.ID r115], r590);
         ("Orcc", Sy.TUPLE [Sy.ID r116;Sy.ID r117;Sy.ID r118], r593);
         ("Orn", Sy.TUPLE [Sy.ID r119;Sy.ID r120;Sy.ID r121], r596);
         ("Orncc", Sy.TUPLE [Sy.ID r122;Sy.ID r123;Sy.ID r124], r599);
         ("Xor", Sy.TUPLE [Sy.ID r125;Sy.ID r126;Sy.ID r127], r602);
         ("Xorcc", Sy.TUPLE [Sy.ID r128;Sy.ID r129;Sy.ID r130], r605);
         ("Xnor", Sy.TUPLE [Sy.ID r131;Sy.ID r132;Sy.ID r133], r608);
         ("Xnorcc", Sy.TUPLE [Sy.ID r134;Sy.ID r135;Sy.ID r136], r611);
         ("Sll", Sy.TUPLE [Sy.ID r137;Sy.ID r138;Sy.ID r139], r614);
         ("Srl", Sy.TUPLE [Sy.ID r140;Sy.ID r141;Sy.ID r142], r617);
         ("Sra", Sy.TUPLE [Sy.ID r143;Sy.ID r144;Sy.ID r145], r620);
         ("Add", Sy.TUPLE [Sy.ID r146;Sy.ID r147;Sy.ID r148], r623);
         ("Addcc", Sy.TUPLE [Sy.ID r149;Sy.ID r150;Sy.ID r151], r626);
         ("Addx", Sy.TUPLE [Sy.ID r152;Sy.ID r153;Sy.ID r154], r629);
         ("Addxcc", Sy.TUPLE [Sy.ID r155;Sy.ID r156;Sy.ID r157], r632);
         ("Taddcc", Sy.TUPLE [Sy.ID r158;Sy.ID r159;Sy.ID r160], r635);
         ("Taddcctv", Sy.TUPLE [Sy.ID r161;Sy.ID r162;Sy.ID r163],
          r638);
         ("Sub", Sy.TUPLE [Sy.ID r164;Sy.ID r165;Sy.ID r166], r641);
         ("Subcc", Sy.TUPLE [Sy.ID r167;Sy.ID r168;Sy.ID r169], r644);
         ("Subx", Sy.TUPLE [Sy.ID r170;Sy.ID r171;Sy.ID r172], r647);
         ("Subxcc", Sy.TUPLE [Sy.ID r173;Sy.ID r174;Sy.ID r175], r650);
         ("Tsubcc", Sy.TUPLE [Sy.ID r176;Sy.ID r177;Sy.ID r178], r653);
         ("Tsubcctv", Sy.TUPLE [Sy.ID r179;Sy.ID r180;Sy.ID r181],
          r656);
         ("Mulscc", Sy.TUPLE [Sy.ID r182;Sy.ID r183;Sy.ID r184], r659);
         ("Umul", Sy.TUPLE [Sy.ID r185;Sy.ID r186;Sy.ID r187], r662);
         ("Smul", Sy.TUPLE [Sy.ID r188;Sy.ID r189;Sy.ID r190], r665);
         ("Umulcc", Sy.TUPLE [Sy.ID r191;Sy.ID r192;Sy.ID r193], r668);
         ("Smulcc", Sy.TUPLE [Sy.ID r194;Sy.ID r195;Sy.ID r196], r671);
         ("Udiv", Sy.TUPLE [Sy.ID r197;Sy.ID r198;Sy.ID r199], r674);
         ("Sdiv", Sy.TUPLE [Sy.ID r200;Sy.ID r201;Sy.ID r202], r677);
         ("Udivcc", Sy.TUPLE [Sy.ID r203;Sy.ID r204;Sy.ID r205], r680);
         ("Sdivcc", Sy.TUPLE [Sy.ID r206;Sy.ID r207;Sy.ID r208], r683);
         ("Save", Sy.TUPLE [Sy.ID r209;Sy.ID r210;Sy.ID r211], r686);
         ("Restore", Sy.TUPLE [Sy.ID r212;Sy.ID r213;Sy.ID r214], r689);
         ("Bn", Sy.TUPLE [Sy.ID r215], r692);
         ("Bn_a", Sy.TUPLE [Sy.ID r216], r695);
         ("Be", Sy.TUPLE [Sy.ID r217], r698);
         ("Be_a", Sy.TUPLE [Sy.ID r218], r701);
         ("Ble", Sy.TUPLE [Sy.ID r219], r704);
         ("Ble_a", Sy.TUPLE [Sy.ID r220], r707);
         ("Bl", Sy.TUPLE [Sy.ID r221], r710);
         ("Bl_a", Sy.TUPLE [Sy.ID r222], r713);
         ("Bleu", Sy.TUPLE [Sy.ID r223], r716);
         ("Bleu_a", Sy.TUPLE [Sy.ID r224], r719);
         ("Bcs", Sy.TUPLE [Sy.ID r225], r722);
         ("Bcs_a", Sy.TUPLE [Sy.ID r226], r725);
         ("Bneg", Sy.TUPLE [Sy.ID r227], r728);
         ("Bneg_a", Sy.TUPLE [Sy.ID r228], r731);
         ("Bvs", Sy.TUPLE [Sy.ID r229], r734);
         ("Bvs_a", Sy.TUPLE [Sy.ID r230], r737);
         ("Ba", Sy.TUPLE [Sy.ID r231], r740);
         ("Ba_a", Sy.TUPLE [Sy.ID r232], r743);
         ("Bne", Sy.TUPLE [Sy.ID r233], r746);
         ("Bne_a", Sy.TUPLE [Sy.ID r234], r749);
         ("Bg", Sy.TUPLE [Sy.ID r235], r752);
         ("Bg_a", Sy.TUPLE [Sy.ID r236], r755);
         ("Bge", Sy.TUPLE [Sy.ID r237], r758);
         ("Bge_a", Sy.TUPLE [Sy.ID r238], r761);
         ("Bgu", Sy.TUPLE [Sy.ID r239], r764);
         ("Bgu_a", Sy.TUPLE [Sy.ID r240], r767);
         ("Bcc", Sy.TUPLE [Sy.ID r241], r770);
         ("Bcc_a", Sy.TUPLE [Sy.ID r242], r773);
         ("Bpos", Sy.TUPLE [Sy.ID r243], r776);
         ("Bpos_a", Sy.TUPLE [Sy.ID r244], r779);
         ("Bvc", Sy.TUPLE [Sy.ID r245], r782);
         ("Bvc_a", Sy.TUPLE [Sy.ID r246], r785);
         ("Fbn", Sy.TUPLE [Sy.ID r247], r788);
         ("Fbn_a", Sy.TUPLE [Sy.ID r248], r791);
         ("Fbne", Sy.TUPLE [Sy.ID r249], r794);
         ("Fbne_a", Sy.TUPLE [Sy.ID r250], r797);
         ("Fblg", Sy.TUPLE [Sy.ID r251], r800);
         ("Fblg_a", Sy.TUPLE [Sy.ID r252], r803);
         ("Fbul", Sy.TUPLE [Sy.ID r253], r806);
         ("Fbul_a", Sy.TUPLE [Sy.ID r254], r809);
         ("Fbl", Sy.TUPLE [Sy.ID r255], r812);
         ("Fbl_a", Sy.TUPLE [Sy.ID r256], r815);
         ("Fbug", Sy.TUPLE [Sy.ID r257], r818);
         ("Fbug_a", Sy.TUPLE [Sy.ID r258], r821);
         ("Fbg", Sy.TUPLE [Sy.ID r259], r824);
         ("Fbg_a", Sy.TUPLE [Sy.ID r260], r827);
         ("Fbu", Sy.TUPLE [Sy.ID r261], r830);
         ("Fbu_a", Sy.TUPLE [Sy.ID r262], r833);
         ("Fba", Sy.TUPLE [Sy.ID r263], r836);
         ("Fba_a", Sy.TUPLE [Sy.ID r264], r839);
         ("Fbe", Sy.TUPLE [Sy.ID r265], r842);
         ("Fbe_a", Sy.TUPLE [Sy.ID r266], r845);
         ("Fbue", Sy.TUPLE [Sy.ID r267], r848);
         ("Fbue_a", Sy.TUPLE [Sy.ID r268], r851);
         ("Fbge", Sy.TUPLE [Sy.ID r269], r854);
         ("Fbge_a", Sy.TUPLE [Sy.ID r270], r857);
         ("Fbuge", Sy.TUPLE [Sy.ID r271], r860);
         ("Fbuge_a", Sy.TUPLE [Sy.ID r272], r863);
         ("Fble", Sy.TUPLE [Sy.ID r273], r866);
         ("Fble_a", Sy.TUPLE [Sy.ID r274], r869);
         ("Fbule", Sy.TUPLE [Sy.ID r275], r872);
         ("Fbule_a", Sy.TUPLE [Sy.ID r276], r875);
         ("Fbo", Sy.TUPLE [Sy.ID r277], r878);
         ("Fbo_a", Sy.TUPLE [Sy.ID r278], r881);
         ("Cbn", Sy.TUPLE [Sy.ID r279], r884);
         ("Cbn_a", Sy.TUPLE [Sy.ID r280], r887);
         ("Cb123", Sy.TUPLE [Sy.ID r281], r890);
         ("Cb123_a", Sy.TUPLE [Sy.ID r282], r893);
         ("Cb12", Sy.TUPLE [Sy.ID r283], r896);
         ("Cb12_a", Sy.TUPLE [Sy.ID r284], r899);
         ("Cb13", Sy.TUPLE [Sy.ID r285], r902);
         ("Cb13_a", Sy.TUPLE [Sy.ID r286], r905);
         ("Cb1", Sy.TUPLE [Sy.ID r287], r908);
         ("Cb1_a", Sy.TUPLE [Sy.ID r288], r911);
         ("Cb23", Sy.TUPLE [Sy.ID r289], r914);
         ("Cb23_a", Sy.TUPLE [Sy.ID r290], r917);
         ("Cb2", Sy.TUPLE [Sy.ID r291], r920);
         ("Cb2_a", Sy.TUPLE [Sy.ID r292], r923);
         ("Cb3", Sy.TUPLE [Sy.ID r293], r926);
         ("Cb3_a", Sy.TUPLE [Sy.ID r294], r929);
         ("Cba", Sy.TUPLE [Sy.ID r295], r932);
         ("Cba_a", Sy.TUPLE [Sy.ID r296], r935);
         ("Cb0", Sy.TUPLE [Sy.ID r297], r938);
         ("Cb0_a", Sy.TUPLE [Sy.ID r298], r941);
         ("Cb03", Sy.TUPLE [Sy.ID r299], r944);
         ("Cb03_a", Sy.TUPLE [Sy.ID r300], r947);
         ("Cb02", Sy.TUPLE [Sy.ID r301], r950);
         ("Cb02_a", Sy.TUPLE [Sy.ID r302], r953);
         ("Cb023", Sy.TUPLE [Sy.ID r303], r956);
         ("Cb023_a", Sy.TUPLE [Sy.ID r304], r959);
         ("Cb01", Sy.TUPLE [Sy.ID r305], r962);
         ("Cb01_a", Sy.TUPLE [Sy.ID r306], r965);
         ("Cb013", Sy.TUPLE [Sy.ID r307], r968);
         ("Cb013_a", Sy.TUPLE [Sy.ID r308], r971);
         ("Cb012", Sy.TUPLE [Sy.ID r309], r974);
         ("Cb012_a", Sy.TUPLE [Sy.ID r310], r977);
         ("Call", Sy.TUPLE [Sy.ID r311], r980);
         ("Fmovs", Sy.TUPLE [Sy.ID r312;Sy.ID r313], r983);
         ("Fnegs", Sy.TUPLE [Sy.ID r314;Sy.ID r315], r986);
         ("Fabss", Sy.TUPLE [Sy.ID r316;Sy.ID r317], r989);
         ("Fsqrts", Sy.TUPLE [Sy.ID r318;Sy.ID r319], r992);
         ("Fsqrtd", Sy.TUPLE [Sy.ID r320;Sy.ID r321], r995);
         ("Fsqrtq", Sy.TUPLE [Sy.ID r322;Sy.ID r323], r998);
         ("Fitos", Sy.TUPLE [Sy.ID r324;Sy.ID r325], r1001);
         ("Fstoi", Sy.TUPLE [Sy.ID r326;Sy.ID r327], r1004);
         ("Fitod", Sy.TUPLE [Sy.ID r328;Sy.ID r329], r1007);
         ("Fstod", Sy.TUPLE [Sy.ID r330;Sy.ID r331], r1010);
         ("Fitoq", Sy.TUPLE [Sy.ID r332;Sy.ID r333], r1013);
         ("Fstoq", Sy.TUPLE [Sy.ID r334;Sy.ID r335], r1016);
         ("Fdtoi", Sy.TUPLE [Sy.ID r336;Sy.ID r337], r1019);
         ("Fdtos", Sy.TUPLE [Sy.ID r338;Sy.ID r339], r1022);
         ("Fqtos", Sy.TUPLE [Sy.ID r340;Sy.ID r341], r1025);
         ("Fqtoi", Sy.TUPLE [Sy.ID r342;Sy.ID r343], r1028);
         ("Fqtod", Sy.TUPLE [Sy.ID r344;Sy.ID r345], r1031);
         ("Fdtoq", Sy.TUPLE [Sy.ID r346;Sy.ID r347], r1034);
         ("Fadds", Sy.TUPLE [Sy.ID r348;Sy.ID r349;Sy.ID r350], r1037);
         ("Fsubs", Sy.TUPLE [Sy.ID r351;Sy.ID r352;Sy.ID r353], r1040);
         ("Fmuls", Sy.TUPLE [Sy.ID r354;Sy.ID r355;Sy.ID r356], r1043);
         ("Fdivs", Sy.TUPLE [Sy.ID r357;Sy.ID r358;Sy.ID r359], r1046);
         ("Faddd", Sy.TUPLE [Sy.ID r360;Sy.ID r361;Sy.ID r362], r1049);
         ("Fsubd", Sy.TUPLE [Sy.ID r363;Sy.ID r364;Sy.ID r365], r1052);
         ("Fmuld", Sy.TUPLE [Sy.ID r366;Sy.ID r367;Sy.ID r368], r1055);
         ("Fdivd", Sy.TUPLE [Sy.ID r369;Sy.ID r370;Sy.ID r371], r1058);
         ("Faddq", Sy.TUPLE [Sy.ID r372;Sy.ID r373;Sy.ID r374], r1061);
         ("Fsubq", Sy.TUPLE [Sy.ID r375;Sy.ID r376;Sy.ID r377], r1064);
         ("Fmulq", Sy.TUPLE [Sy.ID r378;Sy.ID r379;Sy.ID r380], r1067);
         ("Fdivq", Sy.TUPLE [Sy.ID r381;Sy.ID r382;Sy.ID r383], r1070);
         ("Fsmuld", Sy.TUPLE [Sy.ID r384;Sy.ID r385;Sy.ID r386], r1073);
         ("Fdmulq", Sy.TUPLE [Sy.ID r387;Sy.ID r388;Sy.ID r389], r1076);
         ("Fcmps", Sy.TUPLE [Sy.ID r390;Sy.ID r391], r1079);
         ("Fcmpes", Sy.TUPLE [Sy.ID r392;Sy.ID r393], r1082);
         ("Fcmpd", Sy.TUPLE [Sy.ID r394;Sy.ID r395], r1085);
         ("Fcmped", Sy.TUPLE [Sy.ID r396;Sy.ID r397], r1088);
         ("Fcmpq", Sy.TUPLE [Sy.ID r398;Sy.ID r399], r1091);
         ("Fcmpeq", Sy.TUPLE [Sy.ID r400;Sy.ID r401], r1094);
         ("Nop", Sy.TUPLE [], r1097);
         ("Flush", Sy.TUPLE [Sy.ID r402], r1100);
         ("Jmpl", Sy.TUPLE [Sy.ID r403;Sy.ID r404], r1103);
         ("Rett", Sy.TUPLE [Sy.ID r405], r1106);
         ("Tn", Sy.TUPLE [Sy.ID r406], r1109);
         ("Te", Sy.TUPLE [Sy.ID r407], r1112);
         ("Tle", Sy.TUPLE [Sy.ID r408], r1115);
         ("Tl", Sy.TUPLE [Sy.ID r409], r1118);
         ("Tleu", Sy.TUPLE [Sy.ID r410], r1121);
         ("Tcs", Sy.TUPLE [Sy.ID r411], r1124);
         ("Tneg", Sy.TUPLE [Sy.ID r412], r1127);
         ("Tvs", Sy.TUPLE [Sy.ID r413], r1130);
         ("Ta", Sy.TUPLE [Sy.ID r414], r1133);
         ("Tne", Sy.TUPLE [Sy.ID r415], r1136);
         ("Tg", Sy.TUPLE [Sy.ID r416], r1139);
         ("Tge", Sy.TUPLE [Sy.ID r417], r1142);
         ("Tgu", Sy.TUPLE [Sy.ID r418], r1145);
         ("Tcc", Sy.TUPLE [Sy.ID r419], r1148);
         ("Tpos", Sy.TUPLE [Sy.ID r420], r1151);
         ("Tvc", Sy.TUPLE [Sy.ID r421], r1154);
         ("Unimp", Sy.TUPLE [Sy.ID r422], r1157);
         ("Sethi", Sy.TUPLE [Sy.ID r423;Sy.ID r424], r1160);
         ("Decode_sethi", Sy.TUPLE [Sy.ID r425;Sy.ID r426], r1163);
         ("Set", Sy.TUPLE [Sy.ID r427;Sy.ID r428], r1166)])) in vv429


open One02Trees.M

module S = One02Syntax
module Sy = Syntax
module Ctrl = Tdpe.Ctrl




let reify_amode =
fun x1 ->
  (match x1 with 
     | Short () -> Sy.XTRA (S.T__amode (S.Short ()))
     | Hword () -> Sy.XTRA (S.T__amode (S.Hword ()))
     | Word () -> Sy.XTRA (S.T__amode (S.Word ()))
     | Dword () -> Sy.XTRA (S.T__amode (S.Dword ())))
let reflect_amode =
fun x1 ->
  let vv2 =
  Ctrl.shift
    (fun x3 ->
       let r4 = Ctrl.reset (fun x5 -> let rr6 = x3 (Short ()) in rr6)
       in
       let r7 = Ctrl.reset (fun x8 -> let rr9 = x3 (Hword ()) in rr9)
       in
       let r10 =
       Ctrl.reset (fun x11 -> let rr12 = x3 (Word ()) in rr12) in
       let r13 =
       Ctrl.reset (fun x14 -> let rr15 = x3 (Dword ()) in rr15) in
       Sy.CASE
       (x1,
        [("Short", [], r4);("Hword", [], r7);("Word", [], r10);
         ("Dword", [], r13)])) in vv2
let reify_t =
fun x1 ->
  (match x1 with 
     | Add (x2,x3,x4) ->
    Sy.XTRA (S.T__t (S.Add (x2, x3, reify_amode x4)))
     | Ld (x5,x6) -> Sy.XTRA (S.T__t (S.Ld (x5, x6)))
     | St (x7,x8) -> Sy.XTRA (S.T__t (S.St (x7, x8)))
     | Nop () -> Sy.XTRA (S.T__t (S.Nop ())))
let reflect_t =
fun x1 ->
  let r2 = Tools.gensym "aaa" in
  let r3 = Tools.gensym "bbb" in
  let r4 = Tools.gensym "ccc" in
  let r5 = Tools.gensym "ddd" in
  let r6 = Tools.gensym "eee" in
  let r7 = Tools.gensym "fff" in
  let r8 = Tools.gensym "ggg" in
  let vv9 =
  Ctrl.shift
    (fun x10 ->
       let r11 =
       Ctrl.reset
         (fun x12 ->
            let rr13 =
            x10 (Add (Sy.VAR r2, Sy.VAR r3, reflect_amode (Sy.VAR r4)))
            in rr13) in
       let r14 =
       Ctrl.reset
         (fun x15 -> let rr16 = x10 (Ld (Sy.VAR r5, Sy.VAR r6)) in rr16)
       in
       let r17 =
       Ctrl.reset
         (fun x18 -> let rr19 = x10 (St (Sy.VAR r7, Sy.VAR r8)) in rr19)
       in
       let r20 =
       Ctrl.reset (fun x21 -> let rr22 = x10 (Nop ()) in rr22) in
       Sy.CASE
       (x1,
        [("Add", [r2;r3;r4], r11);("Ld", [r5;r6], r14);
         ("St", [r7;r8], r17);("Nop", [], r20)])) in vv9


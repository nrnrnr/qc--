open One01Syntax
open Syntax

module M = One01Trees.M
module T = Tdpe
module C = T.Ctrl

let amode_C = 
fun ()  -> (T.RR
  ((fun t  ->
      (match t with
        | M.Short  -> (XTRA (T__amode Short))
        | M.Hword  -> (XTRA (T__amode Hword))
        | M.Word  -> (XTRA (T__amode Word))
        | M.Dword  -> (XTRA (T__amode Dword)))),
   (fun e  -> C.shift
      (fun k  -> filterNones e
         [("Short", [], C.reset (fun ()  -> k M.Short));
          ("Hword", [], C.reset (fun ()  -> k M.Hword));
          ("Word", [], C.reset (fun ()  -> k M.Word));
          ("Dword", [], C.reset (fun ()  -> k M.Dword))]))))
let t_C = 
fun ((T.RR (reify1, reflect1)), (T.RR (reify2, reflect2)), (T.RR (reify3,
  reflect3)), (T.RR (reify4, reflect4)), (T.RR (reify5, reflect5)),
  (T.RR (reify6, reflect6)), (T.RR (reify7, reflect7)))  -> (T.RR
  ((fun t  ->
      (match t with
        | M.Add (x1, x2, x3) -> (XTRA (T__instruction (Add
          (reify1 x1, reify2 x2, reify3 x3))))
        | M.Ld (x4, x5) -> (XTRA (T__instruction (Ld
          (reify4 x4, reify5 x5))))
        | M.St (x6, x7) -> (XTRA (T__instruction (St
          (reify6 x6, reify7 x7))))
        | M.Nop  -> (XTRA (T__instruction Nop)))),
   (fun e  ->
      let id1 = Tools.gensym "id" in
      let id2 = Tools.gensym "id" in
      let id3 = Tools.gensym "id" in
      let id4 = Tools.gensym "id" in
      let id5 = Tools.gensym "id" in
      let id6 = Tools.gensym "id" in
      let id7 = Tools.gensym "id" in C.shift
      (fun k  -> filterNones e
         [("Add", [id1;id2;id3], C.reset
           (fun ()  -> k (M.Add
              (reflect1 (VAR id1), reflect2 (VAR id2), reflect3 (VAR
               id3)))));
          ("Ld", [id4;id5], C.reset
           (fun ()  -> k (M.Ld (reflect4 (VAR id4), reflect5 (VAR id5)))));
          ("St", [id6;id7], C.reset
           (fun ()  -> k (M.St (reflect6 (VAR id6), reflect7 (VAR id7)))));
          ("Nop", [], C.reset (fun ()  -> k M.Nop))]))))
let amode =  amode_C ()
let t =  t_C (T.a', T.a', T.a', T.a', T.a', T.a',T.a')

let amode_C_None = 
fun  () -> (T.RR
  ((fun t  ->
      (match t with
        | M.Short  -> (XTRA (T__amode Short))
        | M.Hword  -> (XTRA (T__amode Hword))
        | M.Word  -> (XTRA (T__amode Word))
        | M.Dword  -> (XTRA (T__amode Dword)))),
   (fun e  -> C.shift
      (fun k  -> filterNones e
         [("Short", [], C.reset (fun ()  -> k M.Short));
          ("Hword", [], C.reset (fun ()  -> k M.Hword));
          ("Word", [], C.reset (fun ()  -> k M.Word));
          ("Dword", [], C.reset (fun ()  -> k M.Dword))]))))
let t_C_None = 
fun ((T.RR (reify1, reflect1)), (T.RR (reify2, reflect2)), (T.RR (reify3,
  reflect3)), (T.RR (reify4, reflect4)), (T.RR (reify5, reflect5)),
  (T.RR (reify6, reflect6)), (T.RR (reify7, reflect7)))  -> (T.RR
  ((fun t  ->
      (match t with
        | M.Add (x1, x2, x3) -> (XTRA (T__instruction (Add
          (reify1 x1, reify2 x2, reify3 x3))))
        | M.Ld (x4, x5) -> (XTRA (T__instruction (Ld
          (reify4 x4, reify5 x5))))
        | M.St (x6, x7) -> (XTRA (T__instruction (St
          (reify6 x6, reify7 x7))))
        | M.Nop  -> (XTRA (T__instruction Nop)))),
   (fun e  ->
      let id1 = Tools.gensym "id" in
      let id2 = Tools.gensym "id" in
      let id3 = Tools.gensym "id" in
      let id4 = Tools.gensym "id" in
      let id5 = Tools.gensym "id" in
      let id6 = Tools.gensym "id" in
      let id7 = Tools.gensym "id" in C.shift
      (fun k  -> filterNones e
         [("Add", [id1;id2;id3], C.reset
           (fun ()  -> k (M.Add
              (reflect1 (VAR id1), reflect2 (VAR id2), reflect3 (VAR
               id3)))));
          ("Ld", [id4;id5], C.reset
           (fun ()  -> k (M.Ld (reflect4 (VAR id4), reflect5 (VAR id5)))));
          ("St", [id6;id7], C.reset
           (fun ()  -> k (M.St (reflect6 (VAR id6), reflect7 (VAR id7)))));
          ("Nop", [], C.reset (fun ()  -> k M.Nop))]))))
let amode_None =  amode_C_None ()
let t_None =  t_C_None
(T.a', T.a', T.a', T.a', T.a', T.a',T.a')


let reify_amode e = Tdpe.nbe amode_None e
let reify_t e = Tdpe.nbe t_None e

let reflect_amode e = Tdpe.nbe' amode_None e
let reflect_t e = Tdpe.nbe' t_None e

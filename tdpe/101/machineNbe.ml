open MachineSyntax
open Base
open Syntax
open Tdpe

module C = Constructors


let amode_C = 
fun ()  -> (RR
  ((fun t  ->
      (match t with
        | C.Short  -> (XTRA (T__amode Short))
        | C.Hword  -> (XTRA (T__amode Hword))
        | C.Word  -> (XTRA (T__amode Word))
        | C.Dword  -> (XTRA (T__amode Dword)))),
   (fun e  -> Ctrl.shift
      (fun k  -> filterNones e
         [("Short", [], Ctrl.reset (fun ()  -> k C.Short));
          ("Hword", [], Ctrl.reset (fun ()  -> k C.Hword));
          ("Word", [], Ctrl.reset (fun ()  -> k C.Word));
          ("Dword", [], Ctrl.reset (fun ()  -> k C.Dword))]))))
let instruction_C = 
fun ((RR (reify1, reflect1)), (RR (reify2, reflect2)), (RR (reify3,
  reflect3)), (RR (reify4, reflect4)), (RR (reify5, reflect5)),
  (RR (reify6, reflect6)), (RR (reify7, reflect7)))  -> (RR
  ((fun t  ->
      (match t with
        | C.Add (x1, x2, x3) -> (XTRA (T__instruction (Add
          (reify1 x1, reify2 x2, reify3 x3))))
        | C.Ld (x4, x5) -> (XTRA (T__instruction (Ld
          (reify4 x4, reify5 x5))))
        | C.St (x6, x7) -> (XTRA (T__instruction (St
          (reify6 x6, reify7 x7))))
        | C.Nop  -> (XTRA (T__instruction Nop)))),
   (fun e  ->
      let id1 = Tools.gensym "id" in
      let id2 = Tools.gensym "id" in
      let id3 = Tools.gensym "id" in
      let id4 = Tools.gensym "id" in
      let id5 = Tools.gensym "id" in
      let id6 = Tools.gensym "id" in
      let id7 = Tools.gensym "id" in Ctrl.shift
      (fun k  -> filterNones e
         [("Add", [id1;id2;id3], Ctrl.reset
           (fun ()  -> k (C.Add
              (reflect1 (VAR id1), reflect2 (VAR id2), reflect3 (VAR
               id3)))));
          ("Ld", [id4;id5], Ctrl.reset
           (fun ()  -> k (C.Ld (reflect4 (VAR id4), reflect5 (VAR id5)))));
          ("St", [id6;id7], Ctrl.reset
           (fun ()  -> k (C.St (reflect6 (VAR id6), reflect7 (VAR id7)))));
          ("Nop", [], Ctrl.reset (fun ()  -> k C.Nop))]))))
let amode =  amode_C ()
let instruction =  instruction_C
(nativeint, nativeint, Tdpe.a', nativeint, nativeint, nativeint,
 nativeint)
let amode_C_None = 
fun  () -> (RR
  ((fun t  ->
      (match t with
        | C.Short  -> (XTRA (T__amode Short))
        | C.Hword  -> (XTRA (T__amode Hword))
        | C.Word  -> (XTRA (T__amode Word))
        | C.Dword  -> (XTRA (T__amode Dword)))),
   (fun e  -> Ctrl.shift
      (fun k  -> filterNones e
         [("Short", [], Ctrl.reset (fun ()  -> k C.Short));
          ("Hword", [], Ctrl.reset (fun ()  -> k C.Hword));
          ("Word", [], Ctrl.reset (fun ()  -> k C.Word));
          ("Dword", [], Ctrl.reset (fun ()  -> k C.Dword))]))))
let instruction_C_None = 
fun ((RR (reify1, reflect1)), (RR (reify2, reflect2)), (RR (reify3,
  reflect3)), (RR (reify4, reflect4)), (RR (reify5, reflect5)),
  (RR (reify6, reflect6)), (RR (reify7, reflect7)))  -> (RR
  ((fun t  ->
      (match t with
        | C.Add (x1, x2, x3) -> (XTRA (T__instruction (Add
          (reify1 x1, reify2 x2, reify3 x3))))
        | C.Ld (x4, x5) -> (XTRA (T__instruction (Ld
          (reify4 x4, reify5 x5))))
        | C.St (x6, x7) -> (XTRA (T__instruction (St
          (reify6 x6, reify7 x7))))
        | C.Nop  -> (XTRA (T__instruction Nop)))),
   (fun e  ->
      let id1 = Tools.gensym "id" in
      let id2 = Tools.gensym "id" in
      let id3 = Tools.gensym "id" in
      let id4 = Tools.gensym "id" in
      let id5 = Tools.gensym "id" in
      let id6 = Tools.gensym "id" in
      let id7 = Tools.gensym "id" in Ctrl.shift
      (fun k  -> filterNones e
         [("Add", [id1;id2;id3], Ctrl.reset
           (fun ()  -> k (C.Add
              (reflect1 (VAR id1), reflect2 (VAR id2), reflect3 (VAR
               id3)))));
          ("Ld", [id4;id5], Ctrl.reset
           (fun ()  -> k (C.Ld (reflect4 (VAR id4), reflect5 (VAR id5)))));
          ("St", [id6;id7], Ctrl.reset
           (fun ()  -> k (C.St (reflect6 (VAR id6), reflect7 (VAR id7)))));
          ("Nop", [], Ctrl.reset (fun ()  -> k C.Nop))]))))
let amode_None =  amode_C_None ()
let instruction_None =  instruction_C_None
(nativeint, nativeint, Tdpe.a', nativeint, nativeint, nativeint,
 nativeint)


let reify_amode e = Tdpe.nbe amode_None e
let reify_instruction e = Tdpe.nbe instruction_None e

let reflect_amode e = Tdpe.nbe' amode_None e
let reflect_instruction e = Tdpe.nbe' instruction_None e



#load "q_MLast.cmo";;
#load "pa_extend.cmo";;
(* #load "camlp4o.cma";;*)

(* I know I'm never supposed to use open, but it's for camlP4 and I think it's
 ok here *)
open Pcaml

let namefun = 
  let cnt = ref 0 in
    fun var -> let x = incr cnt ; !cnt in
    var ^ "_genfun" ^ string_of_int x

let givenames loc vars e =
  let name = namefun "lua" in
  let e =
    List.fold_right (fun p e -> <:expr< fun $p$ -> $e$ >>) vars e
  in
    <:expr<
      let $lid:name$ = $e$
      in $lid:name$ >>
			  
(* let givenames loc vars e =
  let name = namefun "lua" in
    <:expr<
      let $lid:name$ $vars$ = $e$ 
      in $lid:name$ >> *)

(*let gram = Grammar.create (Plexer.make ());;
let term = Grammar.Entry.create gram "term";; *)
EXTEND
 expr: (* LEVEL "expr1" *)
   [[ "fun" ; vars = LIST1 (patt LEVEL "simple") (*term*) ; "->" ; e = expr ->
         givenames loc vars e ]]
 ; 
 (*var:
   [[x = LIDENT -> | "(" ; LIST0 SELF ")" ]] *)
END;;


(* Make an ARG type *)

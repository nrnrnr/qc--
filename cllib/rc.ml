(*
   $Id$
*)

type id         = Rc_ast.id
type rc         = Rc_ast.rc
type rcdict     = Rc_ast.rcdict

exception Error of string

(* [error msg] raises exception for rc files related error *)

let error msg = raise (Error msg)

(* [find id rcdict] looks up rc value for [id]; raises Not_found in
   case [id] is undefined *)

let find = Rc_ast.find

(* [asList dict] *)

let asList = Rc_ast.asList


(* [read file] reads rcfile [file], parses it, and returns it contents 
   as value of type [rcfile] *)

let read file = 
    let file_ic         = try open_in file with 
                          Sys_error msg -> error msg            in
    let lexbuf          = Lexing.from_channel file_ic           in
    let finally ()      = close_in file_ic                      in
    let rc              = try 
                                Rc_parse.rcfile Rc_scan.scan lexbuf
                          with
                          | Parsing.Parse_error ->
                                finally ();
                                error ("parse error in `" ^ file ^ "'")
                          | Rc_scan.ScanError msg -> error msg
                          | e                   ->
                                finally ();
                                raise e                         in
        finally ();
        rc

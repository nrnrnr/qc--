(* This is totally bogus at the moment. Once I have a clue this will
   go into a .nw file *)

open Ast
open Pp
open Error

type value =    | CharConst     of char
                | IntConst      of int
                | FloatConst    of float
                | ExprConst     of Ast.expr

type kind       = Register
                | Memory 
                | Constant      of value

               

type id         = string

module ID       = struct type t=id let compare=compare end
module Symbol   = Env.Make(ID) 
module IDSet    = Set.Make(ID)
 
open Symbol

(* implement warning for duplicate entries *)
        
type entry      = Types.ty * kind

let foldl = List.fold_left

let pointer = Types.Bits(32) (* for now *)
let dummy   = Types.Bool

let rec ty = function
    | TyAt(x,_)       -> ty x
    | BitsTy(n)       -> Types.Bits(n)
    | FloatTy(n)      -> Types.Bits(n)

(* ------------------------------------------------------------------ *)
    
module Phase1 = struct

    let rec datum env = function
        | DatumAt(x,_)        -> datum env x
        | Label(n)            -> enter n (pointer,Memory) env
        | _                   -> env
        
    let formal env ( h, v, t, n) = env
    let formals env xs = env

    let register env ( v , t, n, reg) = enter n (ty t, Register) env

    let rec stmt env = function
        | StmtAt(x,_)                         -> stmt env x
        | IfStmt ( e, ss1, ss2)               -> let env' = stmts env ss1 in
                                                    stmts env' ss2 
        | LabelStmt(n)                        -> enter n (pointer,Memory) env
        | SpanStmt(e1,e2,ss)                  -> stmts env ss
        | _                                   -> env
        
    and stmts env ss = foldl stmt env ss

    let constant env (name,expr) = 
        enter name (dummy,Constant(ExprConst(expr))) env
        
    let rec section env = function
        | SectionAt(x,_)             -> section env x
        | SSpan( e1, e2, ss)         -> foldl section env ss
        | Datum( d)                  -> datum env d
        | SExport (t, ns)            -> env
        | Procedure(cc,n,fs, ds, ss) -> let env' = enter n (pointer,Memory) env in 
                                        stmts env' ss 

    let rec topdecl env = function
        | TopDeclAt(x,_)  -> topdecl env x
        | Import( t, ns)  -> let entry = (ty t, Memory) in
                             foldl (fun env n -> enter n entry env) env ns 
        | Export( t, ns)  -> env
        | Const ( cs)     -> foldl constant env cs
        | Section( n, ss) -> foldl section env ss
        | Registers( rs)  -> foldl register env rs
        | TopProcedure(p) -> env
        | Pragma          -> env

    let program ds srcmap = 
        let env = empty     in
            List.fold_left topdecl env ds  

end

(* ------------------------------------------------------------------ *)  

module Print = struct 

    let (~~) x = x 

    let ppValue = function
        | CharConst(c)  -> text "char("  ^^ text (Char.escaped c)  ^^ text ")"
        | IntConst(i)   -> text "int("   ^^ text (string_of_int i) ^^ text ")"
        | FloatConst(f) -> text "float(" ^^ text (string_of_float f) ^^ text ")"
        | ExprConst(e)  -> text "<expr>"

    let ppKind = function
        | Register    -> text "register"
        | Memory      -> text "memory"
        | Constant(v) -> text "constant:" ^/ ppValue v


    let ppEntry (key,(ty,kind)) =
        agrp begin
        ~~ text key ^^ text ":"
        ^^ nest 4 begin
           ~~ break
           ^^ Types.ppTy ty
           ^/ text "/"
           ^/ ppKind kind
           end
        end
     
    let ppEnv env =
        let entries = dump env in
        vgrp begin
        ~~ list break ppEntry entries
        ^^ break
        end      

end

        
(* ------------------------------------------------------------------ *)

let bitsc x         = Types.Bits(Types.Const(x))
let bitsv x         = Types.Bits(Types.Var(x))
let bits  x         = Types.Bits(x)
let bool            = Types.Bool
let proc args res   = Types.Procedure(args,res)
let word            = bits 32
let char            = bits 8

let primEnv = enterList
    [  "add"    , proc [bitsv 1; bitsv 1] (bitsv 1)
    ;  "mult"   , proc [bitsv 1; bitsv 1] (bitsv 1)
    ;  "eq"     , proc [bitsv 1; bitsv 1] bool
    ] empty
    
(* primitive operations *)
    
let add  x y = x + y
let mult x y = x * y
let eq   x y = x = y


let fetchTy id env v      = bool    
let binOpTy id env l op r = bool
let unOpTy  id env op e   = bool
let primOpTy id env op es = bool

let rec exprTy id env = function
    | ExprAt(e,_)             -> exprTy id env e
    | Int( i, None)           -> word 
    | Int( i, Some size)      -> bits size
    | Float( f, None)         -> word 
    | Float( f, Some size)    -> bits size
    | Char( c, None)          -> char
    | Char( c, Some size)     -> bits size
    | Fetch(v)                -> fetchTy id env v
    | BinOp(l,op,r)           -> binOpTy id env l op r
    | UnOp(op,e)              -> unOpTy  id env op e
    | PrimOp(op,es)           -> primOpTy id env op es
    


let rec evalConst id env = 
    match lookup id env with
    | (_,(Constant(ExprConst(e)) as c)) ->
        let ty = exprTy id env e  in
        enter id (ty,c) env
    | x -> env
    
let eval env =
    let keys     = fold (fun id e l -> id::l) env [] in
    let f env id = evalConst id env in
        foldl f env keys


(* ------------------------------------------------------------------ *)

let check file =
    let fd          = try open_in file 
                      with Sys_error(msg) -> fatalExn msg               in
    let finally ()  = close_in fd                                       in
    let lexbuf      = Lexing.from_channel fd                            in
    let map         = Srcmap.empty                                      in
    let scanner     = Scan.scan map                                     in
        try
            ( Srcmap.sync map 0 (file,1,1) 
            ; let ast  = Parse.program scanner lexbuf in
              let env  = Phase1.program ast map in
              let env' = eval env               in
                    ppToFile stdout 72 (Print.ppEnv env')
            ) 
        with
            | Parsing.Parse_error -> 
              ( finally()
              ; errorExn (map, Parsing.symbol_start()) ["parse error"]
              )
            | ParseExn(pos,msg) ->
              ( finally()
              ; errorExn (map,pos) [msg]
              )   
            | e ->  
              ( finally()
              ; raise e
              )

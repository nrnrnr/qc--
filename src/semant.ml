(* This is totally bogus at the moment. Once I have a clue this will
   go into a .nw file *)

open Ast
open Pp
open Error

type value =    | CharConst     of char
                | IntConst      of int
                | FloatConst    of float
                | BoolConst     of bool
                | ExprConst     of Ast.expr

type kind       = Register
                | Memory 
                | Constant      of value

               

type id         = string

module ID       = struct type t=id let compare=compare end
module IDSet    = Set.Make(ID)
module Symbol   = Env.Make(ID)

(* implement: error for duplicate entries *)
        
type entry      = Types.ty * kind

let foldl = List.fold_left

let pointer = Types.Bits(32) (* for now *)
let dummy   = Types.Bool

let rec ty = function
    | TyAt(x,_)       -> ty x
    | BitsTy(n)       -> Types.Bits(n)
    | FloatTy(n)      -> Types.Bits(n)

(* environments *)

let ok x = Ok(x)

let enter key v env =
    if Symbol.domain key env then
        error ("identifier already declared: " ^ key)
    else
        Symbol.enter key v env        

let replace key v env =
    Symbol.enter key v env

let lookup = Symbol.lookup


(* ------------------------------------------------------------------ *)
    
module Phase1 = struct

    let rec datum env = function
        | DatumAt(x,r)        -> catch' env (errorRegPrt r) (datum env) x
        | Label(n)            -> enter n (pointer,Memory) env
        | _                   -> env
        
    let formal env ( h, v, t, n) = env
    let formals env xs = env

    let register env ( v , t, n, reg) = enter n (ty t, Register) env

    let rec stmt env = function
        | StmtAt(x,r)             -> catch' env (errorRegPrt r) (stmt env) x
        | IfStmt ( e, ss1, ss2)   -> let env' = stmts env ss1 in
                                        stmts env' ss2 
        | LabelStmt(n)            -> enter n (pointer,Memory) env
        | SpanStmt(e1,e2,ss)      -> stmts env ss
        | _                       -> env
        
    and stmts env ss = foldl stmt env ss

    let constant env (name,expr) = 
        enter name (dummy,Constant(ExprConst(expr))) env
        
    let rec section env = function
        | SectionAt(x,r)         -> catch' env (errorRegPrt r) (section env) x
        | SSpan( e1, e2, ss)     -> foldl section env ss
        | Datum( d)              -> datum env d
        | SExport (t, ns)        -> env
        | Procedure(cc,n,fs, ds, ss) -> 
            let env' = enter n (pointer,Memory) env in 
                stmts env' ss 

    let rec topdecl env = function
        | TopDeclAt(x,r)  -> catch' env (errorRegPrt r) (topdecl env) x
        | Import( t, ns)  -> let entry = (ty t, Memory) in
                             foldl (fun env n -> enter n entry env) env ns 
        | Export( t, ns)  -> env
        | Const ( cs)     -> foldl constant env cs
        | Section( n, ss) -> foldl section env ss
        | Registers( rs)  -> foldl register env rs
        | TopProcedure(p) -> env
        | Pragma          -> env

    let program ds srcmap = 
        let env = Symbol.empty     in
            foldl topdecl env ds  

end

(* ------------------------------------------------------------------ *)  

module Print = struct 

    let (~~) x = x 

    let ppValue = function
        | CharConst(c)  -> text "char("  ^^ text (Char.escaped c)  ^^ text ")"
        | IntConst(i)   -> text "int("   ^^ text (string_of_int i) ^^ text ")"
        | FloatConst(f) -> text "float(" ^^ text (string_of_float f) ^^ text ")"
        | BoolConst(b)  -> text "bool("  ^^ text (if b then "t" else "f") ^^ text ")"
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
        let entries = Symbol.dump env in
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

let fst3 (x,_,_)    = x
let snd3 (_,x,_)    = x
let trd3 (_,_,x)    = x

let add  = function
    | [IntConst(x);IntConst(y)] -> IntConst(x+y)
    | _                         -> assert false

let mult  = function
    | [IntConst(x);IntConst(y)] -> IntConst(x*y)
    | _                         -> assert false

let eq    = function
    | [IntConst(x);IntConst(y)] -> BoolConst(x=y)
    | _                         -> assert false

let primOps = Symbol.enterList
    [  "add"    , (add  , proc [bitsv 1; bitsv 1] (bitsv 1))
    ;  "+"      , (add  , proc [bitsv 1; bitsv 1] (bitsv 1))
    ;  "mult"   , (mult , proc [bitsv 1; bitsv 1] (bitsv 1))
    ;  "*"      , (mult , proc [bitsv 1; bitsv 1] (bitsv 1))
    ;  "eq"     , (eq   , proc [bitsv 1; bitsv 1] bool)
    ;  "=="     , (eq   , proc [bitsv 1; bitsv 1] bool)
    ] Symbol.empty
    
let dummy env   = bool, BoolConst(true), env 
let atoi        = int_of_string
let atof        = float_of_string
let atoc s      = Char.code (String.get s 0)

let rec evalFetch set env = function
    | LValueAt(v,_) -> evalFetch set env v
    | Mem (_,_,_)   -> error "memory access in const declaration"
    | Var(n)        -> evalConst set env n

and evalPrimOp set env op args = 
    let env', xs = evalExprs set env args  in
    let f, t     = lookup op primOps       in 
    let xt       = List.map fst xs         in
    let xv       = List.map snd xs         in
    let unused   = bool                    in
    let sigma    = ( try Types.unify t (proc xt unused) Types.empty with 
                   | Types.UnifyExn -> error "type mismatch"
                   ) in
    let rt       = ( match Types.subst sigma t with
                   | Types.Procedure(_,r) -> r
                   | _                    -> assert false
                   ) in
        rt, f xv, env'

and evalExprs set env es = 
    let rec loop set env acc = function
        | []    -> env, List.rev acc
        | e::es -> let t,x,env' = evalExpr set env e in
                   loop set env' ((t,x)::acc) es
    in
        loop set env [] es

and evalExpr set env = function 
    | ExprAt(e,r)         -> evalExpr set env e
    | Int(i, None)        -> word     , IntConst(atoi i), env 
    | Int(i, Some size)   -> bits size, IntConst(atoi i), env
    | Float(f, None)      -> word     , FloatConst(atof f), env
    | Float(f, Some size) -> bits size, FloatConst(atof f), env
    | Char(c, None)       -> char     , IntConst(atoc c), env
    | Char(c, Some size)  -> bits size, IntConst(atoc c), env
    | Fetch(v)            -> evalFetch set env v
    | BinOp(l,op,r)       -> evalPrimOp set env op [l;r]
    | PrimOp(op,es)       -> evalPrimOp set env op (List.map snd es)
    | UnOp(op,e)          -> evalPrimOp set env op [e]
         

and evalConst set env id = 
    if IDSet.mem id set then 
        error "circular definition" 
    else match lookup id env with
    | (_,(Constant(ExprConst(e)) as c)) -> 
        let (t,x,env') = evalExpr (IDSet.add id set) env e in 
            (t,x, replace id (t,Constant(x)) env')
    | (t, Constant(x))                  -> (t,x,env)
    | x -> error (Printf.sprintf "reference to non-constant %s" id) 

let eval env =
    let rec accConst id entry l = 
        ( match entry with
        | _, Constant(ExprConst(_))   -> id::l
        | _                           -> l
        ) in
    let keys = Symbol.fold accConst env [] in
    let eval env id = trd3 (evalConst IDSet.empty env id) in
        foldl eval env keys    

(* ------------------------------------------------------------------ *)

let check file =
    let fd          = try open_in file 
                      with Sys_error(msg) -> error msg               in
    let finally ()  = close_in fd                                       in
    let lexbuf      = Lexing.from_channel fd                            in
    let map         = Srcmap.empty                                      in
    let scanner     = Scan.scan map                                     in
        try
            ( Srcmap.sync map 0 (file,1,1) 
            ; let ast  = Parse.program scanner lexbuf in
              let env  = Phase1.program ast map in
              let env' = eval env               in
                    Ok (ppToFile stdout 72 (Print.ppEnv env'))
            ) 
        with
            | Parsing.Parse_error -> 
              ( finally()
              ; errorPointPrt (map, Lexing.lexeme_start lexbuf) "parse error"
              ; Error
              )
            | ErrorExn msg ->
              ( finally()
              ; errorPointPrt (map, Lexing.lexeme_start lexbuf) msg
              ; Error
              )
            | e ->  
              ( finally()
              ; raise e
              )
            

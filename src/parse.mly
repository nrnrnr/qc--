/*
// $Id$
// 
// Expect 2 shift/reduce conflicts.
*/

%{

open Error
open Ast
open List

let parse_error = error

let localReg = function
    | (var,ty,id,None) -> Register(var,ty,id)
    | (var,ty,id,_)    -> parse_error "no hint allowed for local variable"

let assign left right = 
    let rec loop = function 
        | [], []            -> []
        | [], rr            -> parse_error "too few lvalues in assignment"
        | ll, []            -> parse_error "too many lvalues in assignment"
        | (l::ll),(r::rr)   -> (l,r)::loop (ll,rr) 
    in
        loop (left,right)

let rec varsOnly = function
    | []                 -> []
    | (Var(_) as v)::vv  -> v :: varsOnly vv
    | _                  -> parse_error "mem location in multiple assignment"
     

%}

/* keywords, symbols, flags */

%token ABORTS
%token ALIGN
%token ALIGNED
%token ALSO
%token AMPERSAND
%token COLON
%token COMMA
%token CONST
%token CONTINUATION
%token CUT
%token CUTS
%token ELSE
%token EOF
%token EQUAL
%token EXPORT
%token FOREIGN
%token GLOBAL
%token GOTO
%token IF
%token IMPORT
%token INVARIANT
%token JUMP
%token LBRACE
%token LBRACKET
%token LPAREN
%token PPERCENT
%token PRAGMA
%token RBRACE
%token RBRACKET
%token RETURN
%token RETURNS
%token RPAREN
%token SECTION
%token SEMI
%token SPAN
%token STACKDATA
%token TARGETS
%token TO
%token UNICODE
%token UNWINDS

/* pragmas */

%token LINE

/* infix and prefix operators */

%token <string> EEQ NEQ LT LEQ GT GEQ
%token <string> BAR                      
%token <string> CARET                    
%token <string> AMPERSAND                
%token <string> LLESS GGREATER           
%token <string> PLUS MINUS               
%token <string> PERCENT STAR SLASH       
%token <string> TILDE                    

%token <string> ID
%token <int>    INT
%token <string> FLT
%token <string> CHAR
%token <string> STR
%token <int>    BITSn
%token <int>    FLOATn

/* precedence - from lowest to highest precedence */

%nonassoc   EEQ NEQ LT LEQ GT GEQ
%left       BAR                      
%left       CARET                    
%left       AMPERSAND                
%left       LLESS GGREATER           
%left       PLUS MINUS               
%left       PERCENT STAR SLASH       
%right      TILDE                    

%start program
%type <Ast.program>program

%%

program     :   toplevels                             { rev $1 }

toplevels   :   toplevels toplevel                    { $2::$1 }
            |   /**/                                  { []     }

pragma      :   LINE LBRACE INT RBRACE                { Pragma }
            |   PRAGMA LBRACE RBRACE                  { Pragma } 

toplevel    :   IMPORT ty names  SEMI                 { Import($2,rev $3)  }
            |   EXPORT    names  SEMI                 { Export(rev $2)     }
            |   CONST LBRACE constants RBRACE         { Const(rev $3)      }
            |   GLOBAL LBRACE registers RBRACE        { Global($3)         } 
            |   SECTION STR LBRACE section RBRACE     { Section($2,rev $4) }
            |   pragma                                { $1 }

section     :   section procedure                     { $2 :: $1        }
            |   section datum                         { Datum($2) :: $1 }
            |   section span                          { $2 :: $1        }
            |   /**/                                  { []              }

span        :   SPAN expr expr LBRACE section RBRACE  { SSpan($2,$3,rev $5) }

constants   :   constants ID EQUAL expr SEMI          { ($2,$4)::$1 }
            |   /**/                                  { []          }

decls       :   decls decl                            { $1 @ $2  }
            |   /**/                                  { []       }

decl        :   register                              { map localReg $1     }
            |   STACKDATA LBRACE data RBRACE          { [Stackdata(rev $3)] }

register    :   INVARIANT ty regs SEMI 
                { map (fun (id,hint) -> (Variant  ,$2,id,hint)) (rev $3) }
            |   /*******/ ty regs SEMI       
                { map (fun (id,hint) -> (Invariant,$1,id,hint)) (rev $2) } 

regs        :   regs COMMA ID STR                     { ($3,Some $4)::$1 }
            |   regs COMMA ID                         { ($3,None   )::$1 }
            |   ID STR                                { [($1,Some $2)]   }
            |   ID                                    { [($1,None   )]   } 

registers   :   registers register                    { $1 @ $2  }
            |   /**/                                  { []       }

datum       :   ID COLON                      { Label($1)                     }
            |   ALIGN INT SEMI                { Align($2)                     }
            |   ty size init SEMI             { MemDecl($1, $2     , Some $3) }
            |   ty size      SEMI             { MemDecl($1, $2     , None)    }
            |   ty      init SEMI             { MemDecl($1, NoSize , Some $2) }
            |   ty           SEMI             { MemDecl($1, NoSize , None)    }


data        :   data  datum                           { $2 :: $1 }
            |   /**/                                  { []       }


init        :   LBRACE   exprs RBRACE             { InitExprs($2) }
            |   string                            { InitStr($1) }
            |   string16                          { InitUStr($1) }

size        :   LBRACKET expr  RBRACKET           { FixSize $2 }
            |   LBRACKET       RBRACKET           { DynSize    }

conv        :   FOREIGN ID                        { Some $2 }

aligned     :   ALIGNED INT                       { Some $2 }

procedure   :   conv ID frmls body      { let (dec,stmt) = $4 in
                                          Procedure($1  ,$2,$3,dec,stmt) 
                                        }
            |        ID frmls body      { let (dec,stmt) = $3 in
                                          Procedure(None,$1,$2,dec,stmt) 
                                        }


frmls       :   LPAREN  formals RPAREN            { rev $2 }
            |   LPAREN          RPAREN            { [] }
actls       :   LPAREN  actuals RPAREN            { rev $2 }
            |   LPAREN          RPAREN            { [] }

formals     :   formals COMMA formal              { $3 :: $1 }
            |   formal                            { [$1]     }
actuals     :   actuals COMMA actual              { $3 :: $1 }
            |   actual                            { [$1]     }

formal      :   STR INVARIANT ty ID     { Some $1, Invariant, $3, $4 }
            |   STR           ty ID     { Some $1,   Variant, $2, $3 }
            |       INVARIANT ty ID     { None   , Invariant, $2, $3 }
            |                 ty ID     { None   ,   Variant, $1, $2 }

actual      :   STR expr                          { Some $1, $2 }
            |       expr                          { None   , $1 }


flow        :   ALSO CUTS     TO names            { CutsTo(rev $4)    }
            |   ALSO UNWINDS  TO names            { UnwindsTo(rev $4) }
            |   ALSO RETURNS  TO names            { ReturnsTo(rev $4) }
            |   ALSO ABORTS                       { Aborts            }

flows       :   flows flow                        { $2 :: $1 }
            |   /**/                              { []       }

targets     :   TARGETS names                     { rev $2 }
            |   /**/                              { []     }

lvalue      :   ID                                { Var($1)             } 
            |   ty LBRACKET expr aligned RBRACKET { Mem($1,$3,$4)       }
            |   ty LBRACKET expr         RBRACKET { Mem($1,$3,None)     }

lvalues     :   lvalues COMMA lvalue              { $3 :: $1 }
            |   lvalue                            { [$1] }


ty          :   BITSn                             { BitsTy($1) }
            |   FLOATn                            { FloatTy($1) }

            /*
             *  the next production causes 2 shift/reduce
             *  conflicts because both decls and stmts can be
             *  empty
             */

body        :   LBRACE decls stmts RBRACE         { $2, rev $3 }
block       :   LBRACE       stmts RBRACE         {     rev $2 }

returnto    :   LT expr SLASH expr GT             { Some ($2,$4) }
            |   /**/                              { None         }

stmt        :   SEMI                             { EmptyStmt          }
            |   ID COLON                         { LabelStmt($1)      }
            |   SPAN expr expr block             { SpanStmt($2,$3,$4) }
            |   lvalues EQUAL exprs SEMI         { AssignStmt(assign $1 $3)}

            |   lvalues EQUAL conv PPERCENT ID actls flows SEMI  
                                { PrimStmt(varsOnly $1, $3, $5, $6, $7)       }
            |                 conv PPERCENT ID actls flows SEMI
                                { PrimStmt( []        , $1, $3, $4, $5)       }
            |   lvalues EQUAL conv expr actls targets flows SEMI
                                { CallStmt(varsOnly $1, $3, $4, $5, $6, $7)   }
            |                 conv expr actls targets flows SEMI
                                { CallStmt( []        , $1, $2, $3, $4, $5)   }
            |   lvalues EQUAL      PPERCENT ID actls flows SEMI
                                { PrimStmt(varsOnly $1, None, $4, $5, $6)     }
            |                      PPERCENT ID actls flows SEMI
                                { PrimStmt( []        , None, $2, $3, $4)     }
            |   lvalues EQUAL      expr actls targets flows SEMI
                                { CallStmt(varsOnly $1, None, $3, $4, $5, $6) }
            |                      expr actls targets flows SEMI
                                { CallStmt( []        , None, $1, $2, $3, $4) }
           
            |   IF expr block                     { IfStmt($2,$3,[])        }
            |   IF expr block ELSE block          { IfStmt($2,$3,$5)        }
            |   GOTO expr targets SEMI            { GotoStmt($2,$3)         }
            |   CONTINUATION ID LPAREN names0 RPAREN COLON
                                                  { ContStmt($2,rev $4)     }
            |   CUT TO ID actls flows SEMI        { CutStmt($3,$4, rev $5)  }
            |   conv JUMP expr actls targets SEMI { JumpStmt($1  ,$3,$4,$5) }
            |        JUMP expr actls targets SEMI { JumpStmt(None,$2,$3,$4) }
            |   conv RETURN returnto actls SEMI   { ReturnStmt($1  ,$3,$4)  }
            |        RETURN returnto actls SEMI   { ReturnStmt(None,$2,$3)  }

stmts       :   stmts stmt                       { $2 :: $1 }
            |   /**/                             { []       }

expr        :   INT                              { Int($1, None)      }
            |   INT COLON INT                    { Int($1, Some $3)   }
            |   FLT                              { Float($1, None)    }
            |   FLT COLON INT                    { Float($1, Some $3) }
            |   CHAR                             { Char($1,None)      }
            |   CHAR COLON INT                   { Char($1, Some $3)  }
            |   lvalue                           { Fetch($1)          }
            |   PERCENT ID actls                 { PrimOp($2, $3)     }

            |   expr PLUS       expr             { BinOp($1,$2,$3)  }
            |   expr MINUS      expr             { BinOp($1,$2,$3)  }
            |   expr PERCENT    expr             { BinOp($1,$2,$3)  }
            |   expr STAR       expr             { BinOp($1,$2,$3)  }
            |   expr SLASH      expr             { BinOp($1,$2,$3)  }
            |   expr LLESS      expr             { BinOp($1,$2,$3)  }
            |   expr GGREATER   expr             { BinOp($1,$2,$3)  }
            |   expr CARET      expr             { BinOp($1,$2,$3)  }
            |   expr BAR        expr             { BinOp($1,$2,$3)  }
            |   expr AMPERSAND  expr             { BinOp($1,$2,$3)  }
            |   expr TILDE      expr             { BinOp($1,$2,$3)  }
            |   expr EEQ        expr             { BinOp($1,$2,$3)  }
            |   expr NEQ        expr             { BinOp($1,$2,$3)  }
            |   expr LT         expr             { BinOp($1,$2,$3)  }
            |   expr LEQ        expr             { BinOp($1,$2,$3)  }
            |   expr GEQ        expr             { BinOp($1,$2,$3)  }
            |   expr GT         expr             { BinOp($1,$2,$3)  }

exprs       :   exprs COMMA expr                 { $3 :: $1 }
            |   expr                             { [$1]     }

names       :   names COMMA ID                   { $3 :: $1 }
            |   ID                               { [$1]     }

names0      :   names                            { $1 }
            |   /**/                             { [] }



string      :   STR                              { $1 }
string16    :   UNICODE LPAREN STR RPAREN        { $3 }

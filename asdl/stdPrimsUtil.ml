open StdPkl
let write_std_int = StdPkl.write_tag
let read_std_int = StdPkl.read_tag
let write_std_string str s =
  begin
    write_tag (String.length str) s;
    output_string s str
  end
let read_std_string s =
  let sz = read_tag s in
  let buff = String.create sz in
  begin
    really_input s buff 0 sz;
    buff
  end
let write_identifier = write_std_string 
let read_identifier = read_std_string
let write_big_int = write_std_int
let read_big_int = read_std_int

let out_prim tag f x s = 
  (SexpPkl.wr_lp s;
   SexpPkl.wr_sym tag s;
   output_string s (SexpLex.string_of_tok (f x));
   SexpPkl.wr_rp s)

let sexp_wr_std_int = out_prim "int" (fun x -> SexpLex.INT x)
let sexp_wr_std_string = out_prim "string" (fun x -> SexpLex.STR x)
let sexp_wr_identifier = out_prim "identifier" (fun x -> SexpLex.STR x)
let sexp_wr_big_int = sexp_wr_std_int 

let get_prim tag s =
  begin 
    SexpPkl.rd_lp s;
    SexpPkl.rd_sym tag s;
    let strm = SexpLex.toInstream s in
    let t = (match (SexpLex.scan SexpLex.input1 strm) with
      Some (t,strm') -> 
	(ignore (SexpLex.fromInstream strm'); t)
    | None -> raise (Failure ("Bad Token"))) in SexpPkl.rd_rp s; t
  end

let sexp_rd_std_int s =
  match (get_prim "int" s) with
   SexpLex.INT i -> i
  | _ -> raise (Failure "Expected int")

let sexp_rd_std_string s =
  match (get_prim "string" s) with
   SexpLex.STR str -> str
  | _ -> raise (Failure "Expected string")

let sexp_rd_big_int = sexp_rd_std_int
let sexp_rd_identifier s =
  match (get_prim "identifier" s) with
    SexpLex.STR str -> str
  | _ -> raise (Failure "Expected identifier")

      





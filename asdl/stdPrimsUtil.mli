val write_std_int    : int -> StdPkl.outstream -> unit
val write_std_string : string -> StdPkl.outstream -> unit
val write_identifier : string -> StdPkl.outstream -> unit
val write_big_int    : int -> StdPkl.outstream -> unit

val read_std_int    : StdPkl.instream -> int
val read_std_string : StdPkl.instream -> string
val read_identifier : StdPkl.instream -> string
val read_big_int    : StdPkl.instream -> int


val sexp_wr_std_int    : StdPrims.std_int -> SexpPkl.outstream -> unit
val sexp_wr_std_string : StdPrims.std_string -> SexpPkl.outstream ->unit
val sexp_wr_identifier : StdPrims.identifier -> SexpPkl.outstream ->unit
val sexp_wr_big_int    : StdPrims.big_int -> SexpPkl.outstream -> unit

val sexp_rd_std_int    : SexpPkl.instream -> StdPrims.std_int      
val sexp_rd_std_string : SexpPkl.instream -> StdPrims.std_string
val sexp_rd_big_int    : SexpPkl.instream -> StdPrims.big_int
val sexp_rd_identifier : SexpPkl.instream -> StdPrims.identifier





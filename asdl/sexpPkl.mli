(* should be in text mode *)
type instream = char Stream.t
and outstream = out_channel

val die : unit -> 'a

val wr_lp        : outstream -> unit
val wr_rp        : outstream -> unit

val rd_lp        : instream -> unit
val rd_rp        : instream -> unit

val get_sym      : instream -> string
val rd_sym       : string -> instream -> unit
val wr_sym       : string -> outstream -> unit

val wr_list      : ('a -> outstream -> unit) -> 'a list  -> outstream -> unit
val rd_list      : (instream -> 'a) -> instream -> 'a list

val wr_option    : ('a -> outstream -> unit) -> 'a option  -> outstream -> unit
val rd_option    : (instream -> 'a) -> instream -> 'a option

val rd_share     : (instream -> 'a) -> instream -> 'a Share.share
val wr_share     : ('a -> outstream -> unit) -> 'a Share.share
                        -> outstream -> unit

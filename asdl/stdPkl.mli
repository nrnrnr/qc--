(* Should be in binary mode *)
type instream = in_channel
and outstream = out_channel

val die : unit -> 'a
val write_tag : int -> outstream -> unit
val read_tag : instream -> int

val write_list : ('a -> outstream -> unit) -> 
                  'a list -> outstream -> unit
val read_list : (instream -> 'b) -> instream -> 'b list
val write_option : ('a -> outstream -> unit) ->
	            'a option -> outstream -> unit
val read_option : (instream -> 'a) -> instream -> 'a option
val read_share : (instream -> 'a) -> instream -> 'a Share.share
val write_share :('a -> outstream -> unit) -> 
	          'a Share.share -> outstream -> unit

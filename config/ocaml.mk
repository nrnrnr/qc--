# ------------------------------------------------------------------ 
# $Id$
# ------------------------------------------------------------------ 

# ------------------------------------------------------------------ 
# compiler and tools
# ------------------------------------------------------------------ 

OCAML =         ocaml
# use the following for execution profiling
OCAMLC =        ocamlcp -p a    
OCAMLC =        ocamlc 
OCAMLO =        ocamlopt 
OCAMLTOP =      ocamlmktop
OCAMLDEP =      ocamldep
OCAMLYACC =     ocamlyacc
OCAMLLEX =      ocamllex

# provide these two where you have included this file
#
# OCAMLC_FLAGS=-I $LIBDIR
# OCAMLO_FLAGS=-I $LIBDIR

# ------------------------------------------------------------------ 
# rules
# ------------------------------------------------------------------ 

%.cmi:          %.mli
	$OCAMLC $OCAMLC_FLAGS -c $stem.mli

%.cmo:          %.ml
	$OCAMLC $OCAMLC_FLAGS -c $stem.ml

%.o %.cmx:      %.ml
	$OCAMLO $OCAMLO_FLAGS -c $stem.ml

%.ml:           %.mll
	$OCAMLLEX $stem.mll

%.mli           \
%.ml            \
%.output:       %.mly
	$OCAMLYACC -v $stem.mly

%.sig:          %.ml
	$OCAMLC $OCAMLC_FLAGS -c -i $stem.ml > $target

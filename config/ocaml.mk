# ------------------------------------------------------------------ 
# $Id$
# ------------------------------------------------------------------ 

# ------------------------------------------------------------------ 
# compiler and tools
# ------------------------------------------------------------------ 

OCAML =         ocaml
OCAMLC =        ocamlc 
OCAMLO =        ocamlopt 
OCAMLTOP =      ocamlmktop
OCAMLDEP =      ocamldep
OCAMLYACC =     ocamlyacc
OCAMLLEX =      ocamllex
INSTRUMENT =    "ocamlprof -instrument"

# setup profiling stuff
# PCHECK should end up being empty, or the user will get an error
#  from the rules in depend.mk

P=
PCHECK = ${P:count=""}
PCHECK = ${PCHECK:gprof=""}

INSTR = ${P:count="-pp $INSTRUMENT"}
INSTR = ${INSTR:gprof=""}

GPROF = ${P:gprof="-p"}
GPROF = ${GPROF:count=""}

# provide these two where you have included this file
#
# OCAMLC_FLAGS=-I $LIBDIR
# OCAMLO_FLAGS=-I $LIBDIR

# ------------------------------------------------------------------ 
# rules
# ------------------------------------------------------------------ 

# these rules are a bit long to make the display nice for the user

$B&.cmi:Q: $B&.mli
	(if [ ! -z "$B" ]; then
	  cd $B;
	  echo "(in $B) $OCAMLC $OCAMLC_FLAGS -c $stem.mli"
	else
	  echo "$OCAMLC $OCAMLC_FLAGS -c $stem.mli"
	fi;
	$OCAMLC $OCAMLC_FLAGS -c $stem.mli)

$B&.cmo:Q: $B&.ml
	(if [ ! -z "$B" ]; then
	  cd $B;
	  echo "(in $B) $OCAMLC $INSTR $OCAMLC_FLAGS -c $stem.ml"
	else
	  echo "$OCAMLC $INSTR $OCAMLC_FLAGS -c $stem.ml"
	fi;
	$OCAMLC $INSTR $OCAMLC_FLAGS -c $stem.ml)

$B&.cmx:Q: $B&.ml
	(if [ ! -z "$B" ]; then
	  cd $B;
	  echo "(in $B) $OCAMLO $INSTR $GPROF $OCAMLO_FLAGS -c $stem.ml"
	else
	  echo "$OCAMLO $INSTR $GPROF $OCAMLO_FLAGS -c $stem.ml"
	fi;
	$OCAMLO $INSTR $GPROF $OCAMLO_FLAGS -c $stem.ml)

%.ml:           %.mll
	$OCAMLLEX $stem.mll

%.mli           \
%.ml            \
%.output:       %.mly
	$OCAMLYACC -v $stem.mly

%.sig:          %.ml
	$OCAMLC $OCAMLC_FLAGS -c -i $stem.ml > $target

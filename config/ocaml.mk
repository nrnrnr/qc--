# ------------------------------------------------------------------ 
# $Id$
# ------------------------------------------------------------------ 

# ------------------------------------------------------------------ 
# compiler and tools
# ------------------------------------------------------------------ 

OCAML =         ocaml
# OCAMLC imported from config.mk, so we can get .opt if available
# OCAMLO imported from config.mk, so we can get .opt if available
OCAMLTOP =      ocamlmktop
OCAMLDEP =      ocamldep
OCAMLYACC =     ocamlyacc
OCAMLLEX =      ocamllex
INSTRUMENT =    "ocamlprof -instrument -m a"

# setup profiling stuff
# PCHECK should end up being empty, or the user will get an error
# from the rules in depend.mk
# 
# For profiling, call as "mk P=count" or "mk P=gprof"

P=
PCHECK = ${P:count=""}
PCHECK = ${PCHECK:gprof=""}

INSTR = ${P:count="-pp $INSTRUMENT"}
INSTR = ${INSTR:gprof=""}

GPROF = ${P:gprof="-p"}
GPROF = ${GPROF:count=""}

#
# PROFCMO defines modules that must be linked when profiling is on.
# Make sure you link these modules exactly once.
# 

PROFCMO = ${P:count="profiling.cmo"}
PROFCMO = ${PROFCMO:gprof=""}

#
# Compiler flags for optimization, debugging, but not for profiling.
# Debugging is handled above.
#
# -g: we want stack traces for debuging bytecode files

OCAMLC_FLAGS=-g
OCAMLO_FLAGS=

# *extend* these where you have included this file:
#
# OCAMLC_FLAGS=$OCAMLC_FLAGS -I $LIBDIR
# OCAMLO_FLAGS=$OCAMLO_FLAGS -I $LIBDIR

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

%.sig:D:          %.ml
	$OCAMLC $OCAMLC_FLAGS -c -i $stem.ml > $target

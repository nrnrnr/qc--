# vim: ts=8 noet sw=8:
# Makefile to build mlburg from sources. Not intended for development.
#

NAME =		mlburg
VERSION =	1.0

OCAML =		ocaml
OCAMLC =	ocamlc 
OCAMLO =	ocamlopt 
OCAMLTOP =	ocamlmktop
OCAMLDEP =	ocamldep
OCAMLYACC =	ocamlyacc
OCAMLLEX =	ocamllex

NOFAKE =	perl -- nofake

# ------------------------------------------------------------------ 
# high level targets
# ------------------------------------------------------------------ 

all:		mlburg	    runtime	examples
all.opt:	mlburg.opt  runtime.opt examples.opt

# ------------------------------------------------------------------ 
# rules
# ------------------------------------------------------------------ 

%.cmi:		%.mli
		$(OCAMLC) $(OCAMLC_FLAGS) -c $<

%.cmo:		%.ml
		$(OCAMLC) $(OCAMLC_FLAGS) -c $<

%.o %.cmx:	%.ml
		$(OCAMLO) $(OCAMLO_FLAGS) -c $<

%.ml:		%.mll
		$(OCAMLLEX) $<

%.mli		\
%.ml		\
%.output:	%.mly
		$(OCAMLYACC) -v $<

%.ml:		%.nw
		$(NOFAKE) -L'# %L "%F"%N' -R$@ $< > $@

%.mli:		%.nw
		$(NOFAKE) -L'# %L "%F"%N' -R$@ $< > $@
		
# ------------------------------------------------------------------ 
# special rules to resolve ambiguities
# ------------------------------------------------------------------ 

parse.mly:	parse.nw
		$(NOFAKE) -R$@ $< > $@

parse.ml:	parse.mly

lex.mll:	lex.nw
		$(NOFAKE) -R$@ $< > $@
		
lex.ml:		lex.mll		

# ------------------------------------------------------------------ 
# files
# ------------------------------------------------------------------ 

ML =		pp.ml		\
		srcmap.ml	\
		code.ml		\
		spec.ml		\
		parseerror.ml	\
		parse.ml	\
		lex.ml		\
		norm.ml		\
		burg.ml		\
		main.ml		\
		
MLI =		pp.mli		\
		srcmap.mli	\
		burg.mli	\
		code.mli	\
		main.mli	\
		norm.mli	\
		parse.mli	\
		parseerror.mli	\
		spec.mli	\

SCAN =		$ML $MLI \
		camlburg.ml camlburg.mli\
		sampleclient.ml\


CMO =		$(addsuffix .cmo,$(basename $(ML))) 
CMX =		$(addsuffix .cmx,$(basename $(ML))) 

# ------------------------------------------------------------------ 
# binaries
# ------------------------------------------------------------------ 

mlburg:		$(CMO)
		$(OCAMLC) $(OCAMLC_FALGS) -o $@ $(CMO)

mlburg.opt:	$(CMX)
		$(OCAMLO) $(OCAMLO_FLAGS) -o $@ $(CMX)

# ------------------------------------------------------------------ 
# runtime code, examples
# ------------------------------------------------------------------ 

sample.mlb:	sample.nw
		$(NOFAKE) -L'# %L "%F"%N' -R$@ $< > $@

sampleclient.ml:    sample.nw
		$(NOFAKE) -L'# %L "%F"%N' -R$@ $< > $@
		
iburg.ml:	iburg.mlb mlburg runtime
		./mlburg iburg.mlb > $@

sample.ml:	sample.mlb mlburg runtime
		./mlburg sample.mlb > $@

runtime:	camlburg.ml camlburg.cmo camlburg.cmi camlburg.mli
runtime.opt:	camlburg.ml camlburg.cmx camlburg.cmi camlburg.mli camlburg.o

examples:	iburg.cmo sample.cmo sampleclient.cmo
examples.opt:	iburg.cmx sample.cmx sampleclient.cmx

# ------------------------------------------------------------------ 
# includes
# ------------------------------------------------------------------ 

include	DEPEND

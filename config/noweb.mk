#
# Rules for Noweb and HTML
#
# Free variables this codes relies on. They must be defined where this
# code in included.
#
# TOP           - path to top level directory (with INSTALL)
# INTERP        - residualizing | evaluating

<$TOP/config/latex.mk

NOWEAVE =       noweave
NOTANGLE =      nofake
NOTANGLE =      notangle
CPIF = cpif
# at need, mk CPIF='cp /dev/stdin'
LINE =          '# %L "%F"%N'

NOCOND =        $TOP/config/nocond $INTERP
OCAMLDEFS =     $TOP/config/autodefs.ocaml
NOPOLY = $TOP/src/nopoly.nw

#
# general rules to extract code from noweb files
#

$B&.ml:D: &.nw
	{ cat $NOPOLY; $NOTANGLE -L"$LINE" -filter "$NOCOND" -R$stem.ml $prereq; } \
	  > $target

$B&.mli:D: &.nw
	$NOTANGLE -L"$LINE" -filter "$NOCOND" -R$stem.mli $prereq | $CPIF $target

$B&.c:D: &.nw
	$NOTANGLE -L -R$stem.c $prereq > $target

%.view:D: %.nw
	$NOTANGLE -R$target $prereq > $target

%.asdl:D: %.nw
	$NOTANGLE -R$target $prereq | $CPIF $target


# Generate a self-contained LaTeX document from a LaTeX file that
# is supposed to be read by \input from a master LaTeX file. This rule
# allows to specify extra packages like tabularx to be included. 
# A file can specify additional lines in the preamble by including 
# a formal comment of the following form:
#     % inc: <text to be included>
# For example
#     % inc: \usepackage{grammar}
# The % sign must be in column 1.

# The here-document ended by EOF relies on a single TAB character at
# the beginning of a line - so don't substitute spaces for it .

NOWEBBREAKCODE=no

%.tex:QD: %.inc
	echo "Building $target from $prereq" 1>&2
	(tr '\n' ' ' <<EOF
	\documentclass{article}
	\usepackage{tabularx,array}
	\usepackage[hypertex]{hyperref}
	\usepackage{path}
	\usepackage[dvips]{graphicx}
	\usepackage{noweb}
	\noweboptions{smallcode,shift}
	`if [ $NOWEBBREAKCODE = yes ]; then echo '\noweboptions{breakcode}'; fi`
	\input{$TOP/config/macros.tex}
	\usepackage[round,sectionbib]{natbib}
	EOF
	awk '/^%  *inc:  */ { $1 = ""; $2 = ""; printf "%s ", $0 }' $stem.inc
	tr '\n' ' ' <<EOF
	\begin{document}
	\pagestyle{noweb}
	\nwfilename{$stem.nw}
	\tableofcontents
	\nwbegindocs{}
	EOF
	cat $stem.inc
	tr '\n' ' ' <<EOF
	\bibliographystyle{plainnat}
	\bibliography{../doc/qc--}
	\end{document}
	EOF
	) > $target

%.inc:D:          %.nw
	$NOWEAVE -delay -filter $OCAMLDEFS -index $prereq > $target

# next is for interface only
%.int:D:          %.nw
	$NOWEAVE -delay -filter $OCAMLDEFS -index $prereq > $target

%.html:D: %.nw
	cat $TOP/config/macros.tex $prereq |
	$NOWEAVE -delay -filter $OCAMLDEFS -index -html -filter l2h - > $target

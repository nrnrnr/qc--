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
NOTANGLE =      notangle
CPIF =          cpif
LINE =          '# %L "%F"%N'

NOCOND =        $TOP/config/nocond $INTERP
OCAMLDEFS =     $TOP/config/autodefs.ocaml

#
# general rules to extract code from noweb files
#


'(([^/]*/)*)(.*)\.ml$':RD:        '\1\3'.nw
	$NOTANGLE -L"$LINE" -filter "$NOCOND" -R$stem3.ml $prereq > $target

'(([^/]*/)*)(.*)\.mli$':RD:        '\1\3'.nw
	$NOTANGLE -L"$LINE" -filter "$NOCOND" -R$stem3.mli $prereq | cpif $target

'(([^/]*/)*)(.*)\.c$':RD:       '\1\3.nw'
	$NOTANGLE -L"$LINE" -R$stem3.c $prereq > $target

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

%.tex:Q: %.inc
	(tr '\n' ' ' <<EOF
	\documentclass{article}
	\usepackage{noweb}
	\usepackage{tabularx,array}
	\usepackage{hyperref}
	\usepackage{path}
	\usepackage[dvips]{graphicx}
	\pagestyle{noweb}
	`if [ $NOWEBBREAKCODE = yes ]; then echo '\noweboptions{breakcode}'; fi`
	\input{$TOP/config/macros.tex}
	EOF
	awk '/^%  *inc:  */ { $1 = ""; $2 = ""; printf "%s ", $0 }' $stem.inc
	tr '\n' ' ' <<EOF
	\begin{document}
	\nwfilename{$stem.nw}
	\tableofcontents
	\nwbegindocs{}
	EOF
	cat $stem.inc
	tr '\n' ' ' <<EOF
	\bibliographystyle{alpha}
	\bibliography{qc--}
	\end{document}
	EOF
	) > $target

%.inc:          %.nw
                $NOWEAVE -delay -filter $OCAMLDEFS -index $prereq > $target

%.html: %.nw
        cat $TOP/config/macros.tex $prereq |\
        $NOWEAVE -delay -filter $OCAMLDEFS -index -html -filter l2h - > $target


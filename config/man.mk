#
# Rules for manual pages
#

%.man:D:          %.1
	nroff -man -Tascii $prereq > $target

#
# Rules for manual pages
#

%.man:D:          %.1
	nroff -man $prereq > $target

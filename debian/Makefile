# vim:ts=8 sw=8 noet:
# 
# $Id$
#
# This Makefile is only used for building Debian packages; all real work
# is done with mk(1), starting from the mkfile in this directory.
#


DESTDIR = 
BINDIR  = $(DESTDIR)/usr/bin
MAN1DIR = $(DESTDIR)/usr/share/man/man1

all:    mkfile
	mk timestamps
	mk all.opt

install: bin/qc--.opt man/man1/qc--.1 man/man1/qc--internals.1
	install -m755 -s bin/qc--.opt $(BINDIR)/qc--
	install -m644 man/man1/qc--.1 $(MAN1DIR)
	install -m644 man/man1/qc--internals.1 $(MAN1DIR)
	gzip -9 $(MAN1DIR)/qc--.1
	gzip -9 $(MAN1DIR)/qc--internals.1

debian:	mkfile
	dpkg-buildpackage -us -uc -rfakeroot

distclean: mkfile
	mk clobber

.PHONY: debian install all distclean	

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
LIBDIR  = $(DESTDIR)/usr/lib
INCDIR  = $(DESTDIR)/usr/include/qc--

all:    mkfile
	mk timestamps
	mk all.opt

install: bin/qc--.opt man/man1/qc--.1 man/man1/qc--internals.1
	# qc-- compiler
	install -m755 -s bin/qc--.opt $(BINDIR)/qc--
	install -m644 man/man1/qc--.1 $(MAN1DIR)
	install -m644 man/man1/qc--internals.1 $(MAN1DIR)
	gzip -9 $(MAN1DIR)/qc--.1
	gzip -9 $(MAN1DIR)/qc--internals.1
	# the interpreter
	install -m755 -s bin/qc--interp $(BINDIR)
	install -m644 man/man1/qc--interp.1 $(MAN1DIR)
	gzip -9 $(MAN1DIR)/qc--interp.1
	install -m644 lib/libqc--interp.a $(LIBDIR) 
	install -m644 interp/libinclude/*.h $(INCDIR)
	# the runtime system (still missing)

debian:	mkfile
	dch -v `date +%Y%m%d` "nightly build"
	dpkg-buildpackage -us -uc -rfakeroot -e lindig@eecs.harvard.edu

distclean: mkfile
	mk clobber

.PHONY: debian install all distclean	

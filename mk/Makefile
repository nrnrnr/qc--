# vim: ts=8 noet sw=8:
# 
#  Edit the variables below if neccessary and call "make".
# 

# 1.0 released on  5 March 2002
# 1.1 released on 11 March 2002
# 1.2 released on 15 May   2002
# 1.3 released on  5 June  2002
# 1.4 released on 29 July  2002
# 1.5 released on 20 April 2004

# VERSION is incremented AFTER a release. After the release of 1.1 we are 
# thus working for a while on 1.2.

VERSION = 1.6

PREFIX  = /usr/local
BINDIR  = $(PREFIX)/bin
MAN1DIR = $(PREFIX)/man/man1

AR	= ar crvs
RANLIB 	= ranlib

all:
	    for i in regexp bio 9; do\
		(cd lib/$$i; make "AR=$(AR)" "RANLIB=$(RANLIB)" "CC=$(CC)")\
	    done
	    cd src; make

install:    all
	    install -s mk $(BINDIR)
	    install mk.1  $(MAN1DIR)

clean:
	    rm -f *~ include/*~
	    for i in lib/regexp lib/bio lib/9 src; do (cd $$i; make clean); done

nuke:
	    rm -f *~ include/*~
	    for i in lib/regexp lib/bio lib/9 src; do (cd $$i; make nuke); done

FILE    =  mk-$(VERSION)

# export creates $(FILE).tar.gz with all sources. The tactic used below is
# to include everything, excpet derived files which are indentified by
# patterns.

tar:		$(FILE).tar.gz
www:		$(FILE).tar.gz
		cp $(FILE).tar.gz $(HOME)/../cminusminus/www/download

tartest:	$(FILE).tar.gz
		gunzip -c $(FILE).tar.gz | tar xvf -
		cd $(FILE) && make && cd .. && rm -rf $(FILE)

$(FILE).tar.gz:	Makefile    
		ln -s . $(FILE)
		tar czvhf $(FILE).tar.gz           \
		`find .                            \
			\( -name 'CVS' -type d     \
			-o -name 'debian*' -type d \
			\) -prune                  \
			-o                         \
			\( -type d                 \
			-o -type l                 \
			\) -true                   \
			-o                         \
			\( -name '.*.swp'          \
			-o -name '*.tar.gz'        \
			-o -name 'mk'              \
			-o -name '*.a'             \
			-o -name '*.o'             \
			\) -prune                  \
			-o -print                  \
			| sed "s|./|$(FILE)/|"`
		rm -f $(FILE)

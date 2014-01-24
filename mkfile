# ------------------------------------------------------------------ 
# $Id: mkfile,v 1.84 2006-04-10 21:28:53 nr Exp $
# ------------------------------------------------------------------ 

NAME =          qc--
VERSION =       `date +%Y%m%d`

#
# For configuration, see the files config/*.mk, in particular check that
# config/lua.mk has the right seting to find the Lua 4.0 header and
# library files.
#

<               config/config.mk    

# ------------------------------------------------------------------ 
# SUBDIRS are made from left to right - order matters
# ------------------------------------------------------------------ 

SUBDIRS =  cllib asdl gen lua rtl camlburg tools doc src runtime interp

# ------------------------------------------------------------------ 
# profiling
# ------------------------------------------------------------------ 
#
# Profiling requires a "mk clobber" in advance.
#
# for ocamlprof(1): mk P=count
# for gprof(1):     mk P=gprof all.opt
# test coverage:    mk coverage         (this uses ocamlprof)
#
# Maybe we should introduce virtual targets for these and call mk(1)
# recursively? --CL
#
# ------------------------------------------------------------------ 
# high level targets
# ------------------------------------------------------------------ 
# all:          build the compiler, interpreter, documentation
# qc--:         build compiler
# interp:       build interpreter
# lib:          build just the lib/ directory, but not the compiler
# clean:        remove non-source files (recursive) but leave all
#               binaries in bin/
# clobber:      remove all non-source file
#
# test:         run test suite
# install:      simple-minded install to $prefix; need to call 'all' first
# coverage:     show how much code is covered by the test suite



all:V:          config qc--     $config_build_interp doc
all.opt:V:      config qc--.opt $config_build_interp doc

config:QV:
	if [ -f config/config.mk ]; then
	if $config_test configure -nt config/config.mk
	then
	  echo "============================================"
	  echo "config.mk is out of date."
	  echo "you must run ./configure before continuing"
	  echo "============================================"
	  exit 1
	fi
	else
	echo "============================================"
	echo "Run the ./configure script first!" 
	echo "Alternatively, create config/config.mk"
	echo "from config/config.mk.template."
	echo "============================================"
	exit 1
	fi

QCSRC=src runtime
qc--:VQ:         tools lib dirs
	./mkdirs $QCSRC
qc--.opt:VQ:     tools.opt lib.opt dirs
	./mkdirs -opt $QCSRC

LIBSRC=cllib asdl gen lua rtl
lib:VQ: dirs
	./mkdirs $LIBSRC
lib.opt:QV:      dirs
	./mkdirs -opt $LIBSRC

TOOLSSRC=tools camlburg
tools:V:        lib dirs
	./mkdirs $TOOLSSRC
tools.opt:V:    lib dirs
	./mkdirs -opt $TOOLSSRC

interp:V:       dirs qc--
	./mkdirs interp
doc:V:          dirs 
	./mkdirs doc
test:V:         all
	cd test2 && NPROC=1 mk $MKFLAGS all

test.opt:V:         all.opt
	cd test2 && NPROC=1 mk QC=../bin/qc--.opt $MKFLAGS all

coverage: test2/ocamlprof.dump	
	rm -f $target
	for f in src/*.ml lua/*.ml cclib/*.ml rtl/*.ml gen/*.ml; do 
	    ocamlprof -f test2/ocamlprof.dump -F @@@ $f | ./tools/coverage $f 
	done | sort -k 2 -n -r > $target

test2/ocamlprof.dump:Q:
	echo "==========================================================="
	echo "== No profile information found. Run first:"
        echo "== mk P=count test"
	echo "==========================================================="
        exit 1

# ------------------------------------------------------------------
# line counting
#
# ------------------------------------------------------------------ 

count:V:
	nocount cllib/*.nw rtl/*.nw src/*.nw


# ------------------------------------------------------------------
# installation
#
# delegate to subdirs
# ------------------------------------------------------------------ 

INST_DIRS=camlburg tools doc src runtime $config_build_interp

# SHOULDN'T THESE TARGETS ALSO MK DEPEND???  ---NR

install:QV: all
	for d in $INST_DIRS
	do
	  (echo "# cd $d" && cd $d && mk $MKFLAGS install) ||
	  exit 1
	done

install.opt:QV: install all.opt
	for d in $INST_DIRS
	do
	  (echo "# cd $d" && cd $d && mk $MKFLAGS install.opt) ||
	  exit 1
	done

# ------------------------------------------------------------------ 
# print dependency graph
# ------------------------------------------------------------------ 

dot:V:		graph.dot
print-dot:V:	graph.ps
	lpr $prereq

%.ps:D: %.dot
	dot -Tps $prereq > $target

DEPENDFILES =   cllib/DEPEND.evaluating \
                gen/DEPEND              \
                lua/DEPEND.std          \
                rtl/DEPEND.evaluating   \
		src/DEPEND.evaluating   \

graph.dot:D:	$DEPENDFILES
	cat $prereq | ocamldot -landscape > $target

# ------------------------------------------------------------------ 
# Devleoper's Documentation
# ------------------------------------------------------------------ 

html            \
dvi:V:          dirs
	for i in $SUBDIRS; 
	do 
	  (echo "# cd $i" && cd $i && mk $MKFLAGS $target) ||
	  exit 1
	done

# ------------------------------------------------------------------ 
# Cleaning
# ------------------------------------------------------------------ 

clean:V:        dirs
	for i in $SUBDIRS test2
	do 
	  (echo "#cd $i" && cd $i && mk $MKFLAGS $target)
	done
	find lib \
	  \( -name 'CVS'                  \
	  -o -name '.cvsignore'           \
	  \) -prune                       \
	  -o -type f -exec rm '{}' \;
	rm -f *.tar.gz        
	rm -f config/auxdir/tst

clean.opt:V:    dirs
	for i in $SUBDIRS test2
	do 
	  (echo "#cd $i" && cd $i && mk $MKFLAGS $target)
	done
	find lib \
	  \( -name 'CVS'                  \
	  -o -name '.cvsignore'           \
	  \) -prune                       \
	  -o                              \
	  \( -name '*.cmx'                \
	  -o -name '*.o'                  \
	  -o -name '*.a'                  \
	  -o -name '*.cmxa'               \
	  \) -exec rm '{}' \;             
	rm -f *.tar.gz        
	rm -f config/auxdir/tst

clobber:V:      dirs clean
	for i in $SUBDIRS test2
	do 
	  (echo "# cd $i" && cd $i && mk $MKFLAGS $target)
	done
	find bin lib man                  \
	  \( -name 'CVS'                  \
	  -o -name '.cvsignore'           \
	  \) -prune -o -type f -exec rm '{}' \;
	rm -f FILES
	rm -f config/config.mk
	rm -f coverage */ocamlprof.dump

# make sure appropriate empty directories exist
dirs:VQ:
	for i in bin include lib man man/man1 lua/std; do
	  [ -d $i ] || mkdir $i
	done

# ------------------------------------------------------------------ 
# build distribution
#
# It is a good idea to call tar on a freshly checked out CVS repository
# to avoid junk being included into the tar file.
#
# tar           - build a *.tar.gz file
# tar-test      - unpack *.tar.gz file and call mk
# timestamps    - make sure that machine generated sources are younger
#                 than their specs to not trigger call to tools
#                 that are unavailable. Usually necessary after
#                 checkout from CVS.
# 
# ------------------------------------------------------------------ 

# name of directory a distribution unpacks into.
DIR =           $NAME$VERSION

# find(1)'s job is it to exclude unwanted files and directories.

FILES:D:          clobber
	find . \
	  \( -path "*/CVS/*"         \
	  -o -path "*/.*"            \
	  -o -path "./lib/*"         \
	  -o -path "./man/*"         \
	  -o -path "./bin/*"         \
	  -o -path "./test/*"        \
	  -o -path "./aug99/*"       \
	  -o -path "./ccl-suite/*"   \
	  -o -path "./mwb/*"         \
	  -o -path "./specialized/*" \
	  -o -path "./tdpe/*"        \
	  -o -path "./bin/*"         \
	  -o -path "./man/*"         \
	  -o -path "./lib/*"         \
	  -o -path "./lua-bench/*"   \
	  -o -path "./lua-uniq/*"    \
	  -o -path "./config/aux/*"  \
	  -o -name "*.tar*"          \
	  -o -type l                 \
	  \) -prune                  \
	  -o -type f -print | sort   > $target 

timestamps:V:   
	(cd interp; mk -t -a disasm-dec.c interp-dec.c encode.[ch])
	touch */*.1

tar:V:          $DIR.tar.gz

$DIR.tar.gz:    FILES timestamps
	ln -s . $DIR 
	tar czvhf $DIR.tar.gz `sed "s+^\./+$DIR/+" FILES` 
	rm -f $DIR
	rm -f FILES

tar-test:V:     $DIR.tar.gz
	tar zxvf $DIR.tar.gz
	( cd $DIR && ./configure && mk )
	rm -rf $DIR

# ------------------------------------------------------------------ 
# $Id$
# ------------------------------------------------------------------ 
#
# Building qc-- as a native code binary is for the moment not supported
# because we fail to compile the machine-generated SPARC recognzier in
# gen/.

NAME =          qc--
VERSION =       `date +%Y%m%d`

# ------------------------------------------------------------------ 
# SUBDIRS are made from left to right - order matters
# ------------------------------------------------------------------ 

SRC     =       src
LIBSRC  =       cllib lua asdl rtl gen camlburg tools
SUBDIRS =       $LIBSRC $SRC

# ------------------------------------------------------------------ 
# high level targets
# ------------------------------------------------------------------ 
# all:          build the compiler
# lib:          build just the lib/ directory, but not the compiler
# depend:       update dependencies (recursive)
# clean:        remove non-source files (recursive)
# test:         run test suite
# precompile:   pre-compile some sources because they depend on special
#               tools

all:V:          lib
                for i in $SRC; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS depend)
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update)
                done

all.opt:V:      lib.opt 
                for i in $SRC; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS depend)
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update.opt)
                done

lib:V:          
                for i in $LIBSRC; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS depend)
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update)
                done

lib.opt:V:      
                for i in $LIBSRC; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS depend)
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update.opt)
                done

precompile:V:
                for i in src tools camlburg
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS $target)
                done
                    

html            \
dvi:V:          dirs
                for i in $SUBDIRS; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS $target)
                done

clean:V:
                for i in $SUBDIRS; do (cd $i && mk $MKFLAGS $target); done
                find bin lib man -name 'CVS' -prune -o -type f -exec rm '{}' \;

test:V:         all
                cd test && mk $target

# make sure appropriate empty directories exist
dirs:V:
                for i in bin lib man man/man1; do
                    [ -d $i ] || mkdir $i
                done

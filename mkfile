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
# export:       create *.tar.gz files for parts we publish

all:V:          lib dirs
                for i in $SRC; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS depend)
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update)
                done

all.opt:V:      lib.opt dirs
                for i in $SRC; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS depend)
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update.opt)
                done

lib:V:          dirs
                for i in $LIBSRC; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS depend)
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update)
                done

lib.opt:V:      dirs
                for i in $LIBSRC; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS depend)
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update.opt)
                done

export:V:
                for i in camlburg tools
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS $target)
                done

precompile:     
                echo "this target has become obsolete"                

html            \
dvi:V:          dirs
                for i in $SUBDIRS; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS $target)
                done

clean:V:        dirs
                for i in $SUBDIRS; do (cd $i && mk $MKFLAGS $target); done
                find bin lib man                        \
                        \( -name 'CVS'                  \
                        -o -name '.cvsignore'           \
                        \) -prune -o -type f -exec rm '{}' \;

clobber:V:      dirs
                find bin lib man -name 'CVS' -prune -o -type f -exec rm '{}' \;
                for i in $SUBDIRS; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS $target)
                done
                
                
test:V:         all
                cd test && mk $target

# make sure appropriate empty directories exist
dirs:V:
                for i in bin lib man man/man1; do
                    [ -d $i ] || mkdir $i
                done

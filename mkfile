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

# A note on profiling.  Profiling is controlled in subdirectories by a
# PROFILE variable in each mkfile.  Profiling is turned on by default,
# but it is not clear whether this is a sensible default.  It might
# even be sensible for different directories to have different
# defaults.  Since we use profiling only for native-code binaries,
# maybe it just doesn't matter.


# ------------------------------------------------------------------ 
# high level targets
# ------------------------------------------------------------------ 
# all:          build the compiler
# lib:          build just the lib/ directory, but not the compiler
#
# clean:        remove non-source files (recursive) but leave all
#               binaries in bin/
# clobber:      remove all non-source file
#
# test:         run test suite


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

precompile:     
                echo "this target has become obsolete"                

html            \
dvi:V:          dirs
                for i in $SUBDIRS; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS $target)
                done

test:V:         all
                cd test && mk $MKFLAGS $target

clean:V:        dirs
                for i in $SUBDIRS; do (cd $i && mk $MKFLAGS $target); done
                find lib \
                        \( -name 'CVS'                  \
                        -o -name '.cvsignore'           \
                        \) -prune                       \
                        -o -type f -exec rm '{}' \;

clean.opt:V:    dirs
                # for i in $SUBDIRS; do (cd $i && mk $MKFLAGS $target); done
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

clobber:V:      dirs clean
                for i in $SUBDIRS; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS $target)
                done
                find bin lib man                        \
                        \( -name 'CVS'                  \
                        -o -name '.cvsignore'           \
                        \) -prune -o -type f -exec rm '{}' \;
                
                
test:V:         all
                cd test && mk $MKFLAGS $target

# make sure appropriate empty directories exist
dirs:V:
                for i in bin lib man man/man1; do
                    [ -d $i ] || mkdir $i
                done

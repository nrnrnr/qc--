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

SUBDIRS =       cllib lua asdl rtl gen camlburg tools src interp doc

# A note on profiling.  Profiling is controlled in subdirectories by a
# PROFILE variable in each mkfile.  Profiling is turned on by default,
# but it is not clear whether this is a sensible default.  It might
# even be sensible for different directories to have different
# defaults.  Since we use profiling only for native-code binaries,
# maybe it just doesn't matter.


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


all:V:          qc--     interp doc
all.opt:V:      qc--.opt interp doc


qc--:V:         tools lib dirs
                for i in src 
                do 
                    (echo "# cd $i" && cd $i && mk $MKFLAGS depend) || exit 1
                    (echo "# cd $i" && cd $i && mk $MKFLAGS update) || exit 1
                done

qc--.opt:V:     tools lib.opt dirs
                for i in src 
                do 
                    (echo "# cd $i" && cd $i && mk $MKFLAGS depend)    || exit 1
                    (echo "# cd $i" && cd $i && mk $MKFLAGS update.opt)|| exit 1
                done

lib:V:          dirs
                for i in cllib lua asdl rtl gen 
                do 
                    (echo "# cd $i" && cd $i && mk $MKFLAGS depend) || exit 1
                    (echo "# cd $i" && cd $i && mk $MKFLAGS update) || exit 1
                done

lib.opt:V:      dirs
                for i in cllib lua asdl rtl gen
                do 
                    (echo "# cd $i" && cd $i && mk $MKFLAGS depend) || exit 1
                    (echo "# cd $i" && cd $i && mk $MKFLAGS update.opt) || exit 1
                done

tools:V:        lib dirs
                for i in tools camlburg
                do 
                    (echo "# cd $i" && cd $i && mk $MKFLAGS depend) || exit 1
                    (echo "# cd $i" && cd $i && mk $MKFLAGS update) || exit 1
                done

interp:V:       dirs
                echo "# cd interp" && cd interp && mk $MKFLAGS update
                
doc:V:          dirs
                echo "# cd doc" && cd doc && mk $MKFLAGS update 

test:V:         all
                cd test2 && mk $MKFLAGS all

# ------------------------------------------------------------------ 
# print dependency graph
# ------------------------------------------------------------------ 

dot:V:		graph.dot
print-dot:V:	graph.ps
	        lpr $prereq

%.ps: %.dot:D:
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
                    (echo "# cd $i" && cd $i && mk $MKFLAGS $target) || exit 1
                done

# ------------------------------------------------------------------ 
# Cleaning
# ------------------------------------------------------------------ 

clean:V:        dirs
                for i in $SUBDIRS 
                do 
                    (echo "#cd $i" && cd $i && mk $MKFLAGS $target)
                done
                find lib \
                        \( -name 'CVS'                  \
                        -o -name '.cvsignore'           \
                        \) -prune                       \
                        -o -type f -exec rm '{}' \;

clean.opt:V:    dirs
                for i in $SUBDIRS 
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

clobber:V:      dirs clean
                for i in $SUBDIRS; 
                do 
                    (echo "# cd $i" && cd $i && mk $MKFLAGS $target)
                done
                find bin lib man                        \
                        \( -name 'CVS'                  \
                        -o -name '.cvsignore'           \
                        \) -prune -o -type f -exec rm '{}' \;
                rm -f FILES
                
                
# make sure appropriate empty directories exist
dirs:V:
                for i in bin lib man man/man1 lua/std; do
                    [ -d $i ] || mkdir $i
                done

# ------------------------------------------------------------------ 
# build distribution
#
# It is a good idea to call tar on a freshly checked out CVS repository
# to avoid junk being included into the tar file.
#
# tar       - build a *.tar.gz file
# tar-test  - unpack *.tar.gz file and call mk
# ------------------------------------------------------------------ 

DIR =           $NAME$VERSION

# find(1)'s job is it to exlcude unwanted files and directories.

FILES:          clobber
                find .  \( -path "*/CVS/*"        \
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
                        -o -name "*.tar*"          \
                        \) -prune                  \
                        -o -type f -print | sort | sed "s+^\./+$DIR/+" \
                        > $target 

timestamps:V:   
                touch interp/*-dec.c interp/encode.[ch]

tar:V:          FILES timestamps
                ln -s . $DIR 
                tar czvhf $DIR.tar.gz `cat FILES` 
                rm -f $DIR
                
tartest:V:      $DIR.tar.gz
                tar zxvf $DIR.tar.gz
                ( cd $DIR && mk )
                rm -rf $DIR


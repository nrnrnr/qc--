# ------------------------------------------------------------------ 
# $Id$
# ------------------------------------------------------------------ 

NAME =          qc--
VERSION =       `date +%Y%m%d`

#
# For configuration, see the files config/*.mk, in particular check that
# config/lua.mk has the right seting to find the Lua 4.0 header and
# library files.
#

<               config/config.mk    

prefix =        $config_prefix
bindir =        $prefix/bin
man1dir =       $prefix/man/man1

# ------------------------------------------------------------------ 
# SUBDIRS are made from left to right - order matters
# ------------------------------------------------------------------ 

SUBDIRS =       cllib lua asdl rtl gen camlburg tools doc src interp 

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
# install:      simple-minded install to $prefix, need to call 'all' first



all:V:          config qc--     interp doc
all.opt:V:      config qc--.opt interp doc

config:QV:       
                if [ -f config/config.mk ]; then : ;else
                    echo "Run the ./configure script first!" 
                    echo "Alternatively, create config/config.mk"
                    echo "from config/config.mk.template."
                    exit 1
                fi    

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
# line counting
#
# ------------------------------------------------------------------ 

count:V:
	nocount cllib/*.nw rtl/*.nw src/*.nw


# ------------------------------------------------------------------
# installation
#
# This is rudimentary install target. Refine as you see fit.
# Should 'all' be a prerequiste? Or 'all' and 'all.opt'?
# ------------------------------------------------------------------ 

INSTALL =       bin/qc--                    \
                bin/qc--interp              \
                man/man1/qc--.1             \
                man/man1/qc--internals.1    \
                man/man1/qc--interp.1       \

install:V:      $INSTALL $bindir $man1dir   
                cp bin/qc--                             $bindir
                [ -x bin/qc--.opt ] && cp bin/qc--.opt  $bindir
                cp bin/qc--interp                       $bindir
                cp bin/man1/qc--.1                      $man1dir
                cp bin/man1/qc--internals.1             $man1dir
                cp bin/man1/qc--interp.1                $man1dir

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
                rm -f *.tar.gz        
                rm -f config/aux/tst

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
                rm -f *.tar.gz        
                rm -f config/aux/tst

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
                rm -f config/config.mk
                
                
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
                find .  \( -path "*/CVS/*"         \
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
                        -o -name "*.tar*"          \
                        -o -type l                 \
                        \) -prune                  \
                        -o -type f -print | sort   > $target 

timestamps:V:   
                cd interp; mk -t -a disasm-dec.c interp-dec.c encode.[ch]

tar:V:          $DIR.tar.gz
                
$DIR.tar.gz:    FILES timestamps
                ln -s . $DIR 
                tar czvhf $DIR.tar.gz `sed "s+^\./+$DIR/+" FILES` 
                rm -f $DIR
                rm -f FILES
                
tar-test:V:     $DIR.tar.gz
                tar zxvf $DIR.tar.gz
                ( cd $DIR && mk )
                rm -rf $DIR


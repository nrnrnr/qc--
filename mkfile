# ------------------------------------------------------------------ 
# $Id$
# ------------------------------------------------------------------ 
#
# High level targets
#
# update:       compile everything and copy it to bin/, man/, ..
# clean:        remove non-sources
#

NAME =          qc--
VERSION =       `date +%Y%m%d`

# ------------------------------------------------------------------ 
# SUBDIRS are made from left to right - order matters
# ------------------------------------------------------------------ 

SUBDIRS =       cllib lua asdl src 

# ------------------------------------------------------------------ 
# high level targets
# ------------------------------------------------------------------ 
# this does not work: "all: depend update" because dependencies are
# not satisfied from left to right.

all:V:          depend 
                for i in $SUBDIRS; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update)
                done

all.opt:V:      depend 
                for i in $SUBDIRS; 
                do 
                    (echo "# entering $i" && cd $i && mk $MKFLAGS update.opt)
                done


depend          \
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

# ------------------------------------------------------------------ 
# build distributions
# ------------------------------------------------------------------ 

SRCDIST =       $NAME-$VERSION.tar.gz

srcdist:V:      clean 
                ln -s . $NAME-$VERSION
                tar cvhf -                                  \
                    `./config/dist.sh -src                  \
                    | sed -e "s|^\.|$NAME-$VERSION|"`       \
                    | gzip -c > $SRCDIST
                rm -f $NAME-$VERSION


# ------------------------------------------------------------------ 
# $id$
# ------------------------------------------------------------------ 


NAME =          qc--
VERSION =       `date +%Y%m%d`

# ------------------------------------------------------------------ 
# SUBDIRS are made from left to right - order matters
# ------------------------------------------------------------------ 

SUBDIRS =       cllib asdl src

# ------------------------------------------------------------------ 
# high level targets
# ------------------------------------------------------------------ 

update all:V:   dirs
                for i in $SUBDIRS; do (cd $i && mk $target); done

clean:V:
                for i in $SUBDIRS; do (cd $i && mk $target); done
                rm -f bin/* lib/* man/man*/*

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


# ------------------------------------------------------------------ 
# $id$
# ------------------------------------------------------------------ 


NAME =          qcc
VERSION =       `date +%Y%m%d`

# ------------------------------------------------------------------ 
# SUBDIRS are made from left to right - order matters
# ------------------------------------------------------------------ 

SUBDIRS =       cllib asdl src

# ------------------------------------------------------------------ 
# high level targets
# ------------------------------------------------------------------ 

update all:V:
                for i in $SUBDIRS; do (cd $i && mk $target); done

clean:V:
                for i in $SUBDIRS; do (cd $i && mk $target); done
                rm -f bin/* lib/* man/man*/*


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


# ------------------------------------------------------------------ 
# targets to update library hierarchy
# ------------------------------------------------------------------ 

libupdate:VQ: all
	($config_test -n "$B" && cd $B; [ -d ../lib ] || mkdir ../lib
	for f in *.cma *.mli *.cmi; do
	  if cmp -s $f ../lib/$f; then # sh may not know !
	    : do nothing
	  else
	    echo "cp $B$f $B../lib/$f"
	    cp $f ../lib
	  fi
	done)

libupdate.opt:VQ: all.opt update
	($config_test -n "$B" && cd $B; [ -d ../lib ] || mkdir ../lib
	for f in *.cmxa *.a; do
	  if cmp -s $f ../lib/$f; then # sh may not know !
	    : do nothing
	  else
	    echo "cp $B$f $B../lib/$f"
	    cp $f ../lib
	  fi
	done)

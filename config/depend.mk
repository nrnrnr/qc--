# ------------------------------------------------------------------ 
# recalculate dependencies
# Main mkfile must set $DEPEND and $SCAN
# ocaml.mk sets PCHECK and it should be empty
# config.mk sets B and it should not be a relative path
# ------------------------------------------------------------------ 

consistency-check:VQ:
	[ -z "$B" ] || [ -d $B ] || mkdir -p $B
	DOTS=`echo $B | sed "s/[^.]//g"`
	if $config_test -n "$DOTS"; then
	  echo
	  echo "Your B variable (B=$B) looks strange to me. I am quiting."
	  echo "Maybe you set B when you wanted to set BT?"
	  echo
	  exit 1
	fi
	if $config_test -n "$PCHECK"; then
	  echo
	  echo "Your P variable looks strange to me. I am quiting."
	  echo "P should be gprof, count, or nothing."
	  echo
	  exit 1
	fi
	A=`echo ${B}P=*`
	if [ "$A" != "${B}P=$P" -a "$A" != "${B}P=*" ]
	then
	  C=`basename $A`
	  echo
	  echo "The build directory $B is configured for $C not P=$P"
	  echo "You must run mk clobber followed by mk depend"
	  echo
	  exit 1
	fi

dep-chk:VQ: consistency-check
	if $config_test $DEPEND -nt mkfile; then true
	else
	  echo
	  echo "You must run mk depend first"
	  echo
	  exit 1
	fi

$DEPEND:DQ: consistency-check $SCAN mkfile
	if [ -z "$B" ]; then
	  echo "$OCAMLDEP $DEPFLAGS $SCAN > $DEPEND"
	  $OCAMLDEP $DEPFLAGS $SCAN > $DEPEND
	else
	  echo "$OCAMLDEP $DEPFLAGS -I $B $SCAN > $DEPEND"
	  (cd ..; $OCAMLDEP $DEPFLAGS -I $B $SCAN > $DEPEND)
	fi
	touch ${B}P=$P

dep-clobber:V:
	rm -f ${B}P=* $DEPEND

# ------------------------------------------------------------------ 
# include dependencies
# ------------------------------------------------------------------ 

<$DEPEND

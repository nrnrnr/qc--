#
# imports LRTLHEAP and MACHINEREGEX
#

LRTL=lrtl

^($MACHINEREGEX).ml'$' ($MACHINEREGEX).mli'$':R: '\1'.sled '\1'.rtl $LRTLHEAP
	$LRTL -inst $stem1

^($MACHINEREGEX)rec.ml'$':R: '\1'.sled '\1'.rtl $LRTLHEAP
	$LRTL -recog4 $stem1

^($MACHINEREGEX)rtl.ml'$':R: '\1'.sled '\1'.rtl $LRTLHEAP
	$LRTL -lower -qc--rtl $stem1

^($MACHINEREGEX)mkasm.ml'$' ($MACHINEREGEX)mkasm.mli'$':R: '\1'.sled $LRTLHEAP
	$LRTL -lower -emitasm $stem1


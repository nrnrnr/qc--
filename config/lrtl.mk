

# imports LRTLHEAP and MACHINEREGEX
#
# Lrtl(1) is in a non-standard bin/ directory. Therefore I include the
# full path to it. Would it be better to extend $PATH? --CL


LRTL=/usr/share/smlnj/bin/lrtl 

^($MACHINEREGEX).ml'$' ($MACHINEREGEX).mli'$':R: '\1'.sled '\1'.rtl $LRTLHEAP
	$LRTL -inst $stem1

^($MACHINEREGEX)rec.ml'$':R: '\1'.sled '\1'.rtl $LRTLHEAP
	$LRTL -recog4 $stem1

^($MACHINEREGEX)rtl.ml'$':R: '\1'.sled '\1'.rtl $LRTLHEAP
	$LRTL -lower -qc--rtl $stem1

^($MACHINEREGEX)mkasm.ml'$' ($MACHINEREGEX)mkasm.mli'$':R: '\1'.sled $LRTLHEAP
	$LRTL -lower -emitasm $stem1


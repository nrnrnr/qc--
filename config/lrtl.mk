# things we can do using \-RTL

LRTL=lrtl -lower

%.ml %.mli: %.sled %.rtl $LRTLHEAP
	$LRTL -inst $stem

%rec.ml: %.sled %.rtl $LRTLHEAP
	$LRTL -recog4 $stem

%mkasm.ml %mkasm.mli: %.sled $LRTLHEAP
	$LRTL -emitasm $stem


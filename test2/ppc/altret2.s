.picsymbol_stub
L_printf$stub:
	.indirect_symbol _printf
	mflr r0
	bcl 20,31,Lprintf$pb
Lprintf$pb:
	mflr r11
	addis r11,r11,ha16(Lprintf$lz-Lprintf$pb)
	mtlr r0
	lwz r12,lo16(Lprintf$lz-Lprintf$pb)(r11)
	mtctr r12
	addi r11,r11,lo16(Lprintf$lz-Lprintf$pb)
	bctr
.lazy_symbol_pointer
Lprintf$lz:
	.indirect_symbol _printf
	.long dyld_stub_binding_helper
.picsymbol_stub
L_read$stub:
	.indirect_symbol _read
	mflr r0
	bcl 20,31,Lread$pb
Lread$pb:
	mflr r11
	addis r11,r11,ha16(Lread$lz-Lread$pb)
	mtlr r0
	lwz r12,lo16(Lread$lz-Lread$pb)(r11)
	mtctr r12
	addi r11,r11,lo16(Lread$lz-Lread$pb)
	bctr
.lazy_symbol_pointer
Lread$lz:
	.indirect_symbol _read
	.long dyld_stub_binding_helper
.picsymbol_stub
L_close$stub:
	.indirect_symbol _close
	mflr r0
	bcl 20,31,Lclose$pb
Lclose$pb:
	mflr r11
	addis r11,r11,ha16(Lclose$lz-Lclose$pb)
	mtlr r0
	lwz r12,lo16(Lclose$lz-Lclose$pb)(r11)
	mtctr r12
	addi r11,r11,lo16(Lclose$lz-Lclose$pb)
	bctr
.lazy_symbol_pointer
Lclose$lz:
	.indirect_symbol _close
	.long dyld_stub_binding_helper
.globl _main
.globl _Cmm.global_area
.globl _Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section __DATA,data
; memory for global registers
_Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
_Cmm.global_area:
.text
_doread:
	addi r1,r1,-96
	mflr r2
_Linitialize_continuations_l6:
_Lproc_body_start_l5:
	bl _Lpic_fun_l21
_Lpic_l20:
_Lpic_fun_l21:
	mflr r6
_Lpic_end_l22:
	addi r3,0,0
	addi r6,r1,96
	addi r7,0,0
	addi r7,r7,-32
	add r4,r6,r7
	addi r5,0,0
	addi r5,r5,10
	stw r2,80(r1)
	bl L_read$stub
_Ljoin_l16:
	addi r2,0,0
	cmpw cr0,r3,r2
	blt _Ljoin_l12
_Ljoin_l13:
	addi r2,0,0
	stw r3,84(r1)
	mr r3,r2
	bl L_close$stub
_Ljoin_l10:
	addi r12,0,0
	addi r12,r12,4
	lwz r11,80(r1)
	add r12,r11,r12
	lwz r3,84(r1)
	mtlr r12
	addi r1,r1,96
	blr
_Ljoin_l12:
	lwz r12,80(r1)
	mtlr r12
	addi r1,r1,96
	blr
.section __DATA,pcmap_data
_Lstackdata_l28:
.long 1
.long 0xffffffe0
.section __DATA,pcmap
.long _Ljoin_l16
.long _Lframe_l29
.section __DATA,pcmap_data
_Lframe_l29:
.long 0xffffffb8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l28
.long 38
.long 1
.long 0
.long 1
.long 0x40000036
.long 0x40000036
.long 0x40000037
.long 0x40000037
.long 0x40000038
.long 0x40000038
.long 0x40000039
.long 0x40000039
.long 0x4000003a
.long 0x4000003a
.long 0x4000003b
.long 0x4000003b
.long 0x4000003c
.long 0x4000003c
.long 0x4000003d
.long 0x4000003d
.long 0x4000003e
.long 0x4000003e
.long 0x4000003f
.long 0x4000003f
.long 0x40000040
.long 0x40000040
.long 0x40000041
.long 0x40000041
.long 0x40000042
.long 0x40000042
.long 0x40000043
.long 0x40000043
.long 0x40000044
.long 0x40000044
.long 0x40000045
.long 0x40000045
.long 0x40000046
.long 0x40000046
.long 0x40000047
.long 0x40000047
.long 0x40000048
.long 0x40000048
.long 0
.long 0
.section __DATA,pcmap
.long _Ljoin_l10
.long _Lframe_l30
.section __DATA,pcmap_data
_Lframe_l30:
.long 0xffffffb8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l28
.long 38
.long 1
.long 0
.long 1
.long 0x40000036
.long 0x40000036
.long 0x40000037
.long 0x40000037
.long 0x40000038
.long 0x40000038
.long 0x40000039
.long 0x40000039
.long 0x4000003a
.long 0x4000003a
.long 0x4000003b
.long 0x4000003b
.long 0x4000003c
.long 0x4000003c
.long 0x4000003d
.long 0x4000003d
.long 0x4000003e
.long 0x4000003e
.long 0x4000003f
.long 0x4000003f
.long 0x40000040
.long 0x40000040
.long 0x40000041
.long 0x40000041
.long 0x40000042
.long 0x40000042
.long 0x40000043
.long 0x40000043
.long 0x40000044
.long 0x40000044
.long 0x40000045
.long 0x40000045
.long 0x40000046
.long 0x40000046
.long 0x40000047
.long 0x40000047
.long 0x40000048
.long 0x40000048
.long 0xfffffff4
.long 0
.text
.text
_main:
	addi r1,r1,-80
	mflr r2
_Linitialize_continuations_l38:
_Lproc_body_start_l37:
	bl _Lpic_fun_l63
_Lpic_l62:
_Lpic_fun_l63:
	mflr r3
_Lpic_end_l64:
	stw r2,64(r1)
	stw r3,68(r1)
	bl _doread
	b _C___R56
_Ljoin_l57:
	addis r2,0,ha16(_success_read-_Lpic_l62)
	addi r2,r2,lo16(_success_read-_Lpic_l62)
	lwz r5,68(r1)
	add r2,r5,r2
	stw r3,72(r1)
	mr r3,r2
	lwz r4,72(r1)
	bl L_printf$stub
_Ljoin_l53:
	bl _doread
	b _C___R49
_Ljoin_l50:
	addis r2,0,ha16(_success_read-_Lpic_l62)
	addi r2,r2,lo16(_success_read-_Lpic_l62)
	lwz r5,68(r1)
	add r2,r5,r2
	stw r3,72(r1)
	mr r3,r2
	lwz r4,72(r1)
	bl L_printf$stub
_Ljoin_l46:
	addi r3,0,0
	lwz r12,64(r1)
	mtlr r12
	addi r1,r1,80
	blr
_C___R49:
	b _Ljoin_l58
_C___R56:
	b _Ljoin_l58
_Ljoin_l58:
	addis r2,0,ha16(_fail_to_read-_Lpic_l62)
	addi r2,r2,lo16(_fail_to_read-_Lpic_l62)
	lwz r5,68(r1)
	add r2,r5,r2
	stw r3,76(r1)
	mr r3,r2
	lwz r4,76(r1)
	bl L_printf$stub
_Ljoin_l42:
	addi r3,0,0
	addi r3,r3,1
	lwz r12,64(r1)
	mtlr r12
	addi r1,r1,80
	blr
.section __DATA,pcmap_data
_Lstackdata_l70:
.long 0
.section __DATA,pcmap
.long _C___R56
.long _Lframe_l71
.section __DATA,pcmap_data
_Lframe_l71:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l70
.long 38
.long 4
.long 0
.long 1
.long 0x40000036
.long 0x40000036
.long 0x40000037
.long 0x40000037
.long 0x40000038
.long 0x40000038
.long 0x40000039
.long 0x40000039
.long 0x4000003a
.long 0x4000003a
.long 0x4000003b
.long 0x4000003b
.long 0x4000003c
.long 0x4000003c
.long 0x4000003d
.long 0x4000003d
.long 0x4000003e
.long 0x4000003e
.long 0x4000003f
.long 0x4000003f
.long 0x40000040
.long 0x40000040
.long 0x40000041
.long 0x40000041
.long 0x40000042
.long 0x40000042
.long 0x40000043
.long 0x40000043
.long 0x40000044
.long 0x40000044
.long 0x40000045
.long 0x40000045
.long 0x40000046
.long 0x40000046
.long 0x40000047
.long 0x40000047
.long 0x40000048
.long 0x40000048
.long 0
.long 0
.long 0
.long 0
.long 0
.section __DATA,pcmap
.long _Ljoin_l53
.long _Lframe_l72
.section __DATA,pcmap_data
_Lframe_l72:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l70
.long 38
.long 4
.long 0
.long 1
.long 0x40000036
.long 0x40000036
.long 0x40000037
.long 0x40000037
.long 0x40000038
.long 0x40000038
.long 0x40000039
.long 0x40000039
.long 0x4000003a
.long 0x4000003a
.long 0x4000003b
.long 0x4000003b
.long 0x4000003c
.long 0x4000003c
.long 0x4000003d
.long 0x4000003d
.long 0x4000003e
.long 0x4000003e
.long 0x4000003f
.long 0x4000003f
.long 0x40000040
.long 0x40000040
.long 0x40000041
.long 0x40000041
.long 0x40000042
.long 0x40000042
.long 0x40000043
.long 0x40000043
.long 0x40000044
.long 0x40000044
.long 0x40000045
.long 0x40000045
.long 0x40000046
.long 0x40000046
.long 0x40000047
.long 0x40000047
.long 0x40000048
.long 0x40000048
.long 0
.long 0
.long 0
.long 0
.long 0
.section __DATA,pcmap
.long _C___R49
.long _Lframe_l73
.section __DATA,pcmap_data
_Lframe_l73:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l70
.long 38
.long 4
.long 0
.long 1
.long 0x40000036
.long 0x40000036
.long 0x40000037
.long 0x40000037
.long 0x40000038
.long 0x40000038
.long 0x40000039
.long 0x40000039
.long 0x4000003a
.long 0x4000003a
.long 0x4000003b
.long 0x4000003b
.long 0x4000003c
.long 0x4000003c
.long 0x4000003d
.long 0x4000003d
.long 0x4000003e
.long 0x4000003e
.long 0x4000003f
.long 0x4000003f
.long 0x40000040
.long 0x40000040
.long 0x40000041
.long 0x40000041
.long 0x40000042
.long 0x40000042
.long 0x40000043
.long 0x40000043
.long 0x40000044
.long 0x40000044
.long 0x40000045
.long 0x40000045
.long 0x40000046
.long 0x40000046
.long 0x40000047
.long 0x40000047
.long 0x40000048
.long 0x40000048
.long 0
.long 0
.long 0
.long 0
.long 0
.section __DATA,pcmap
.long _Ljoin_l46
.long _Lframe_l74
.section __DATA,pcmap_data
_Lframe_l74:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l70
.long 38
.long 4
.long 0
.long 1
.long 0x40000036
.long 0x40000036
.long 0x40000037
.long 0x40000037
.long 0x40000038
.long 0x40000038
.long 0x40000039
.long 0x40000039
.long 0x4000003a
.long 0x4000003a
.long 0x4000003b
.long 0x4000003b
.long 0x4000003c
.long 0x4000003c
.long 0x4000003d
.long 0x4000003d
.long 0x4000003e
.long 0x4000003e
.long 0x4000003f
.long 0x4000003f
.long 0x40000040
.long 0x40000040
.long 0x40000041
.long 0x40000041
.long 0x40000042
.long 0x40000042
.long 0x40000043
.long 0x40000043
.long 0x40000044
.long 0x40000044
.long 0x40000045
.long 0x40000045
.long 0x40000046
.long 0x40000046
.long 0x40000047
.long 0x40000047
.long 0x40000048
.long 0x40000048
.long 0
.long 0
.long 0
.long 0
.long 0
.section __DATA,pcmap
.long _Ljoin_l42
.long _Lframe_l75
.section __DATA,pcmap_data
_Lframe_l75:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l70
.long 38
.long 4
.long 0
.long 1
.long 0x40000036
.long 0x40000036
.long 0x40000037
.long 0x40000037
.long 0x40000038
.long 0x40000038
.long 0x40000039
.long 0x40000039
.long 0x4000003a
.long 0x4000003a
.long 0x4000003b
.long 0x4000003b
.long 0x4000003c
.long 0x4000003c
.long 0x4000003d
.long 0x4000003d
.long 0x4000003e
.long 0x4000003e
.long 0x4000003f
.long 0x4000003f
.long 0x40000040
.long 0x40000040
.long 0x40000041
.long 0x40000041
.long 0x40000042
.long 0x40000042
.long 0x40000043
.long 0x40000043
.long 0x40000044
.long 0x40000044
.long 0x40000045
.long 0x40000045
.long 0x40000046
.long 0x40000046
.long 0x40000047
.long 0x40000047
.long 0x40000048
.long 0x40000048
.long 0
.long 0
.long 0
.long 0
.long 0
.text
.section __DATA,data
_success_read:
.byte 114
.byte 101
.byte 97
.byte 100
.byte 40
.byte 41
.byte 32
.byte 114
.byte 101
.byte 97
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 10
.byte 0
_fail_to_read:
.byte 69
.byte 114
.byte 114
.byte 111
.byte 114
.byte 58
.byte 32
.byte 114
.byte 101
.byte 97
.byte 100
.byte 40
.byte 41
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

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
.globl _main
.globl _Cmm.global_area
.globl _Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section __DATA,data
; memory for global registers
_Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
_Cmm.global_area:
.text
_main:
	addi r1,r1,-80
	mflr r2
_Linitialize_continuations_l5:
_Lproc_body_start_l4:
	bl _Lpic_fun_l17
_Lpic_l16:
_Lpic_fun_l17:
	mflr r4
_Lpic_end_l18:
	addi r3,0,0
	addi r3,r3,3
	stw r2,64(r1)
	bl _tryout
_Ljoin_l12:
	addi r3,0,0
	addi r3,r3,4
	bl _tryout
_Ljoin_l9:
	addi r3,0,0
	lwz r12,64(r1)
	mtlr r12
	addi r1,r1,80
	blr
.section __DATA,pcmap_data
_Lstackdata_l24:
.long 0
.section __DATA,pcmap
.long _Ljoin_l12
.long _Lframe_l25
.section __DATA,pcmap_data
_Lframe_l25:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l24
.long 38
.long 2
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
.section __DATA,pcmap
.long _Ljoin_l9
.long _Lframe_l26
.section __DATA,pcmap_data
_Lframe_l26:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l24
.long 38
.long 2
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
.text
.text
_tryout:
	addi r1,r1,-80
	mflr r2
_Linitialize_continuations_l29:
_Lproc_body_start_l28:
	bl _Lpic_fun_l41
_Lpic_l40:
_Lpic_fun_l41:
	mflr r5
_Lpic_end_l42:
	addi r6,0,0
	addi r6,r6,1
	and  r6,r3,r6
	addi r7,0,0
	cmpw cr0,r6,r7
	bne _Ljoin_l35
_Ljoin_l36:
	addis r6,0,ha16(_z-_Lpic_l40)
	addi r6,r6,lo16(_z-_Lpic_l40)
	add r5,r5,r6
	b _Ljoin_l34
_Ljoin_l35:
	addis r6,0,ha16(_nz-_Lpic_l40)
	addi r6,r6,lo16(_nz-_Lpic_l40)
	add r5,r5,r6
	b _Ljoin_l34
_Ljoin_l34:
	stw r3,64(r1)
	mr r3,r5
	lwz r4,64(r1)
	stw r2,68(r1)
	bl L_printf$stub
_Ljoin_l33:
	lwz r12,68(r1)
	mtlr r12
	addi r1,r1,80
	blr
.section __DATA,pcmap_data
_Lstackdata_l48:
.long 0
.section __DATA,pcmap
.long _Ljoin_l33
.long _Lframe_l49
.section __DATA,pcmap_data
_Lframe_l49:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff4
.long _Lstackdata_l48
.long 38
.long 2
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
.text
.section __DATA,data
_nz:
.byte 37
.byte 100
.byte 32
.byte 108
.byte 111
.byte 119
.byte 32
.byte 98
.byte 105
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 110
.byte 111
.byte 110
.byte 122
.byte 101
.byte 114
.byte 111
.byte 10
.byte 0
_z:
.byte 37
.byte 100
.byte 32
.byte 108
.byte 111
.byte 119
.byte 32
.byte 98
.byte 105
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 10
.byte 0

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
_divmod:
	addi r1,r1,-64
	mflr r12
_Linitialize_continuations_l5:
_Lproc_body_start_l4:
	bl _Lpic_fun_l11
_Lpic_l10:
_Lpic_fun_l11:
	mflr r11
_Lpic_end_l12:
	divwu  r11,r3,r4
	divwu  r10,r3,r4
	mullw  r10,r4,r10
	sub  r4,r3,r10
	mr r3,r11
	mtlr r12
	addi r1,r1,64
	blr
.text
.text
_main:
	addi r1,r1,-96
	mflr r2
_Linitialize_continuations_l22:
_Lproc_body_start_l21:
	bl _Lpic_fun_l34
_Lpic_l33:
_Lpic_fun_l34:
	mflr r5
_Lpic_end_l35:
	addi r3,0,0
	addi r3,r3,987
	addi r4,0,0
	addi r4,r4,33
	stw r3,64(r1)
	stw r4,68(r1)
	stw r2,72(r1)
	stw r5,76(r1)
	bl _divmod
_Ljoin_l29:
	addis r2,0,ha16(_answer-_Lpic_l33)
	addi r2,r2,lo16(_answer-_Lpic_l33)
	lwz r11,76(r1)
	add r2,r11,r2
	stw r3,80(r1)
	mr r3,r2
	stw r4,84(r1)
	lwz r4,64(r1)
	lwz r5,68(r1)
	lwz r6,80(r1)
	lwz r7,64(r1)
	lwz r8,68(r1)
	lwz r9,84(r1)
	lwz r2,68(r1)
	lwz r11,80(r1)
	mullw  r2,r11,r2
	lwz r11,84(r1)
	add r10,r2,r11
	bl L_printf$stub
_Ljoin_l26:
	addi r3,0,0
	lwz r12,72(r1)
	mtlr r12
	addi r1,r1,96
	blr
.section __DATA,pcmap_data
_Lstackdata_l41:
.long 0
.section __DATA,pcmap
.long _Ljoin_l29
.long _Lframe_l42
.section __DATA,pcmap_data
_Lframe_l42:
.long 0xffffffb8
.long 0x80000018
.long 0xffffffe8
.long _Lstackdata_l41
.long 38
.long 6
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
.long 0xffffffe0
.long 0xffffffe4
.long 0
.section __DATA,pcmap
.long _Ljoin_l26
.long _Lframe_l43
.section __DATA,pcmap_data
_Lframe_l43:
.long 0xffffffb8
.long 0x80000018
.long 0xffffffe8
.long _Lstackdata_l41
.long 38
.long 6
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
.long 0
.long 0
.text
.section __DATA,data
_answer:
.byte 37
.byte 100
.byte 32
.byte 100
.byte 105
.byte 118
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 119
.byte 97
.byte 110
.byte 116
.byte 115
.byte 32
.byte 50
.byte 57
.byte 41
.byte 59
.byte 32
.byte 32
.byte 37
.byte 100
.byte 32
.byte 109
.byte 111
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 119
.byte 97
.byte 110
.byte 116
.byte 115
.byte 32
.byte 51
.byte 48
.byte 41
.byte 59
.byte 32
.byte 32
.byte 100
.byte 32
.byte 42
.byte 32
.byte 113
.byte 32
.byte 43
.byte 32
.byte 114
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

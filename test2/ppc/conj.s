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
_foo:
	addi r1,r1,-64
	mflr r12
_Linitialize_continuations_l5:
_Lproc_body_start_l4:
	bl _Lpic_fun_l14
_Lpic_l13:
_Lpic_fun_l14:
	mflr r11
_Lpic_end_l15:
	addi r11,0,0
	addi r11,r11,1
	cmpw cr0,r3,r11
	bne _Ljoin_l16
_Ljoin_l23:
	b _Ljoin_l9
_Ljoin_l16:
	addi r11,0,0
	cmpw cr0,r3,r11
	bne _Ljoin_l8
_Ljoin_l24:
	b _Ljoin_l9
_Ljoin_l9:
	addi r3,0,0
	b _Ljoin_l7
_Ljoin_l8:
	addi r3,0,0
	addi r3,r3,999
	b _Ljoin_l7
_Ljoin_l7:
	mtlr r12
	addi r1,r1,64
	blr
.text
.text
_main:
	addi r1,r1,-96
	mflr r2
_Linitialize_continuations_l28:
_Lproc_body_start_l27:
	bl _Lpic_fun_l46
_Lpic_l45:
_Lpic_fun_l46:
	mflr r4
_Lpic_end_l47:
	addi r3,0,0
	stw r2,64(r1)
	stw r4,68(r1)
	bl _foo
_Ljoin_l41:
	addi r2,0,0
	addi r2,r2,1
	stw r3,72(r1)
	mr r3,r2
	bl _foo
_Ljoin_l38:
	addi r2,0,0
	addi r2,r2,2
	stw r3,76(r1)
	mr r3,r2
	bl _foo
_Ljoin_l35:
	addis r2,0,ha16(_fmt-_Lpic_l45)
	addi r2,r2,lo16(_fmt-_Lpic_l45)
	lwz r7,68(r1)
	add r2,r7,r2
	stw r3,80(r1)
	mr r3,r2
	lwz r4,72(r1)
	lwz r5,76(r1)
	lwz r6,80(r1)
	bl L_printf$stub
_Ljoin_l32:
	addi r3,0,0
	lwz r12,64(r1)
	mtlr r12
	addi r1,r1,96
	blr
.section __DATA,pcmap_data
_Lstackdata_l53:
.long 0
.section __DATA,pcmap
.long _Ljoin_l41
.long _Lframe_l54
.section __DATA,pcmap_data
_Lframe_l54:
.long 0xffffffb8
.long 0x80000018
.long 0xffffffe0
.long _Lstackdata_l53
.long 38
.long 5
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
.section __DATA,pcmap
.long _Ljoin_l38
.long _Lframe_l55
.section __DATA,pcmap_data
_Lframe_l55:
.long 0xffffffb8
.long 0x80000018
.long 0xffffffe0
.long _Lstackdata_l53
.long 38
.long 5
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.section __DATA,pcmap
.long _Ljoin_l35
.long _Lframe_l56
.section __DATA,pcmap_data
_Lframe_l56:
.long 0xffffffb8
.long 0x80000018
.long 0xffffffe0
.long _Lstackdata_l53
.long 38
.long 5
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
.long 0xffffffe8
.long 0xffffffec
.long 0
.long 0
.section __DATA,pcmap
.long _Ljoin_l32
.long _Lframe_l57
.section __DATA,pcmap_data
_Lframe_l57:
.long 0xffffffb8
.long 0x80000018
.long 0xffffffe0
.long _Lstackdata_l53
.long 38
.long 5
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
.text
.section __DATA,data
_fmt:
.byte 102
.byte 111
.byte 111
.byte 40
.byte 48
.byte 41
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 102
.byte 111
.byte 111
.byte 40
.byte 49
.byte 41
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 102
.byte 111
.byte 111
.byte 40
.byte 50
.byte 41
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

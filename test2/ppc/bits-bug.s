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
.section __DATA,data
.align 3
_success:
.byte 115
.byte 117
.byte 99
.byte 99
.byte 101
.byte 115
.byte 115
.byte 10
.byte 0
.align 3
_failed:
.byte 102
.byte 97
.byte 105
.byte 108
.byte 101
.byte 100
.byte 10
.byte 0
.text
_main:
	addi r1,r1,-80
	mflr r4
_Linitialize_continuations_l5:
_Lproc_body_start_l4:
	bl _Lpic_fun_l14
_Lpic_l13:
_Lpic_fun_l14:
	mflr r3
_Lpic_end_l15:
	addi r3,0,-7517
	addis r3,r3,21675
	stw r4,64(r1)
	bl _callee
_Ljoin_l9:
	lwz r2,64(r1)
	mtlr r2
	addi r1,r1,80
	blr
.section __DATA,pcmap_data
_Lstackdata_l21:
.long 0
.section __DATA,pcmap
.long _Ljoin_l9
.long _Lframe_l22
.section __DATA,pcmap_data
_Lframe_l22:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l21
.long 0x80000026
.long 0x80000002
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.text
.text
_callee:
	addi r1,r1,-80
	mflr r2
_Linitialize_continuations_l25:
_Lproc_body_start_l24:
	bl _Lpic_fun_l40
_Lpic_l39:
_Lpic_fun_l40:
	mflr r4
_Lpic_end_l41:
	addi r5,0,-7517
	addis r5,r5,21675
	cmpw cr0,r3,r5
	bne _Ljoin_l34
_Ljoin_l35:
	addis r3,r4,ha16(_success-_Lpic_l39)
	la r3,lo16(_success-_Lpic_l39)(r3)
	stw r2,64(r1)
	bl L_printf$stub
_Ljoin_l29:
	lwz r2,64(r1)
	mtlr r2
	addi r1,r1,80
	blr
_Ljoin_l34:
	addis r3,r4,ha16(_failed-_Lpic_l39)
	la r3,lo16(_failed-_Lpic_l39)(r3)
	stw r2,64(r1)
	bl L_printf$stub
_Ljoin_l33:
	lwz r2,64(r1)
	mtlr r2
	addi r1,r1,80
	blr
.section __DATA,pcmap_data
_Lstackdata_l47:
.long 0
.section __DATA,pcmap
.long _Ljoin_l29
.long _Lframe_l48
.section __DATA,pcmap_data
_Lframe_l48:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l47
.long 0x80000026
.long 0x80000001
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section __DATA,pcmap
.long _Ljoin_l33
.long _Lframe_l49
.section __DATA,pcmap_data
_Lframe_l49:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l47
.long 0x80000026
.long 0x80000001
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.text

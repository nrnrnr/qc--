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
_hello:
.byte 104
.byte 101
.byte 108
.byte 108
.byte 111
.byte 44
.byte 32
.byte 119
.byte 111
.byte 114
.byte 108
.byte 100
.byte 33
.byte 10
.byte 0
_bye:
.byte 98
.byte 121
.byte 101
.byte 33
.byte 10
.byte 0
.text
_main:
	addi r1,r1,-80
	mflr r2
_Linitialize_continuations_l4:
_Lproc_body_start_l3:
	bl _Lpic_fun_l16
_Lpic_l15:
_Lpic_fun_l16:
	mflr r4
_Lpic_end_l17:
	addi r5,0,0
	addi r5,r5,1
	cmplw cr0,r3,r5
	bgt _Ljoin_l10
_Ljoin_l11:
	addis r5,0,ha16(_hello-_Lpic_l15)
	addi r5,r5,lo16(_hello-_Lpic_l15)
	add r3,r4,r5
	b _Ljoin_l9
_Ljoin_l10:
	addis r5,0,ha16(_bye-_Lpic_l15)
	addi r5,r5,lo16(_bye-_Lpic_l15)
	add r3,r4,r5
	b _Ljoin_l9
_Ljoin_l9:
	stw r2,64(r1)
	bl L_printf$stub
_Ljoin_l8:
	addi r3,0,0
	lwz r12,64(r1)
	mtlr r12
	addi r1,r1,80
	blr
.section __DATA,pcmap_data
_Lstackdata_l23:
.long 0
.section __DATA,pcmap
.long _Ljoin_l8
.long _Lframe_l24
.section __DATA,pcmap_data
_Lframe_l24:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l23
.long 38
.long 3
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
.text

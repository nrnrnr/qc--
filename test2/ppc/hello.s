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
.globl _my_data
.globl _Cmm.global_area
.globl _Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section __DATA,data
; memory for global registers
_Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
_Cmm.global_area:
.section __DATA,data
_my_data:
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
.text
_main:
	addi r1,r1,-80
	mflr r2
_Linitialize_continuations_l4:
_Lproc_body_start_l3:
	bl _Lpic_fun_l13
_Lpic_l12:
_Lpic_fun_l13:
	mflr r4
_Lpic_end_l14:
	addis r5,0,ha16(_my_data-_Lpic_l12)
	addi r5,r5,lo16(_my_data-_Lpic_l12)
	add r3,r4,r5
	stw r2,64(r1)
	bl L_printf$stub
_Ljoin_l8:
	addi r3,0,0
	lwz r12,64(r1)
	mtlr r12
	addi r1,r1,80
	blr
.section __DATA,pcmap_data
_Lstackdata_l20:
.long 0
.section __DATA,pcmap
.long _Ljoin_l8
.long _Lframe_l21
.section __DATA,pcmap_data
_Lframe_l21:
.long 0xffffffc8
.long 0x80000018
.long 0xfffffff0
.long _Lstackdata_l20
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

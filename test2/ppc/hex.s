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
L_strlen$stub:
	.indirect_symbol _strlen
	mflr r0
	bcl 20,31,Lstrlen$pb
Lstrlen$pb:
	mflr r11
	addis r11,r11,ha16(Lstrlen$lz-Lstrlen$pb)
	mtlr r0
	lwz r12,lo16(Lstrlen$lz-Lstrlen$pb)(r11)
	mtctr r12
	addi r11,r11,lo16(Lstrlen$lz-Lstrlen$pb)
	bctr
.lazy_symbol_pointer
Lstrlen$lz:
	.indirect_symbol _strlen
	.long dyld_stub_binding_helper
.globl _main
.globl _Cmm.global_area
.globl _Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section __DATA,data
; memory for global registers
_Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
_Cmm.global_area:
.section __DATA,data
_notzero:
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
	addis r5,0,ha16(_notzero-_Lpic_l15)
	addi r5,r5,lo16(_notzero-_Lpic_l15)
	add r3,r4,r5
	stw r2,64(r1)
	stw r4,68(r1)
	bl L_strlen$stub
_Ljoin_l11:
	addis r2,0,ha16(_answer-_Lpic_l15)
	addi r2,r2,lo16(_answer-_Lpic_l15)
	lwz r6,68(r1)
	add r2,r6,r2
	stw r3,72(r1)
	mr r3,r2
	lwz r4,72(r1)
	addis r2,0,ha16(_notzero-_Lpic_l15)
	addi r2,r2,lo16(_notzero-_Lpic_l15)
	add r2,r6,r2
	lbz r5,0(r2)
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
.long _Ljoin_l11
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
.section __DATA,pcmap
.long _Ljoin_l8
.long _Lframe_l25
.section __DATA,pcmap_data
_Lframe_l25:
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
.section __DATA,data
_answer:
.byte 108
.byte 101
.byte 110
.byte 103
.byte 116
.byte 104
.byte 32
.byte 105
.byte 115
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
.byte 49
.byte 41
.byte 32
.byte 97
.byte 110
.byte 100
.byte 32
.byte 102
.byte 105
.byte 114
.byte 115
.byte 116
.byte 32
.byte 99
.byte 104
.byte 97
.byte 114
.byte 97
.byte 99
.byte 116
.byte 101
.byte 114
.byte 32
.byte 105
.byte 115
.byte 32
.byte 116
.byte 104
.byte 101
.byte 32
.byte 102
.byte 105
.byte 110
.byte 97
.byte 108
.byte 32
.byte 110
.byte 101
.byte 119
.byte 108
.byte 105
.byte 110
.byte 101
.byte 46
.byte 37
.byte 99
.byte 0

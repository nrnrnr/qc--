.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".data"
notzero:
.byte 10
.byte 0
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set notzero, %g1
	mov %g1, %o0
	call strlen, 0
	nop
Ljoin_l12:
	mov %o0, %g1
	set answer, %g2
	mov %g2, %o0
	mov %g1, %o1
	set notzero, %g1
	ldub [%g1], %g2
	mov %g2, %o2
	call printf, 0
	nop
Ljoin_l9:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l20:
.word 0
.section ".pcmap"
.word Ljoin_l12
.word Lframe_l21
.section ".pcmap_data"
Lframe_l21:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l20
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l9
.word Lframe_l22
.section ".pcmap_data"
Lframe_l22:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l20
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".data"
answer:
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

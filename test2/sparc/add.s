.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".data"
hello:
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
bye:
.byte 98
.byte 121
.byte 101
.byte 33
.byte 10
.byte 0
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g2
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set 1, %g2
	subcc %g1, %g2, %g0
	bgu Ljoin_l11
	nop
Ljoin_l12:
	set hello, %g1
	ba Ljoin_l10
	nop
Ljoin_l11:
	set bye, %g1
	ba Ljoin_l10
	nop
Ljoin_l10:
	mov %g1, %o0
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
.word Ljoin_l9
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
.section ".text"

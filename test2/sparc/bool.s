.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set 3, %g1
	mov %g1, %o0
	call tryout, 0
	nop
Ljoin_l13:
	set 4, %g1
	mov %g1, %o0
	call tryout, 0
	nop
Ljoin_l10:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l21:
.word 0
.section ".pcmap"
.word Ljoin_l13
.word Lframe_l22
.section ".pcmap_data"
Lframe_l22:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l21
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l10
.word Lframe_l23
.section ".pcmap_data"
Lframe_l23:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l21
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".text"
tryout:
	save %sp, -96, %sp
	mov %i0, %g1
Linitialize_continuations_l27:
Lproc_body_start_l26:
	set 1, %g2
	and %g2, %g1, %g3
	set 0, %g2
	subcc %g3, %g2, %g0
	bne Ljoin_l33
	nop
Ljoin_l34:
	set z, %g2
	ba Ljoin_l32
	nop
Ljoin_l33:
	set nz, %g2
	ba Ljoin_l32
	nop
Ljoin_l32:
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l31:
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l42:
.word 0
.section ".pcmap"
.word Ljoin_l31
.word Lframe_l43
.section ".pcmap_data"
Lframe_l43:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l42
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".data"
nz:
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
z:
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

.global f
.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".text"
f:
	save %sp, -96, %sp
	mov %i0, %l7
Linitialize_continuations_l6:
Lproc_body_start_l5:
	neg %l7, %l6
	mov %l6, %i0
	set -99, %l6
	add %sp, 96, %l7
	set 92, %l5
	add %l7, %l5, %l4
	st %l6, [%l4]
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l20:
Lproc_body_start_l19:
	set -33, %g1
	mov %g1, %o0
	call f, 0
	nop
Ljoin_l27:
	mov %o0, %g1
	add %sp, 96, %g2
	set -4, %g3
	add %g2, %g3, %g4
	ld [%g4], %g2
	set fmt, %g4
	mov %g4, %o0
	mov %g1, %o1
	mov %g2, %o2
	call printf, 0
	nop
Ljoin_l24:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l35:
.word 0
.section ".pcmap"
.word Ljoin_l27
.word Lframe_l36
.section ".pcmap_data"
Lframe_l36:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l35
.word 0x80000000
.word 0x80000004
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l24
.word Lframe_l37
.section ".pcmap_data"
Lframe_l37:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l35
.word 0x80000000
.word 0x80000004
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".data"
fmt:
.byte 100
.byte 117
.byte 97
.byte 108
.byte 45
.byte 114
.byte 101
.byte 115
.byte 117
.byte 108
.byte 116
.byte 32
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 116
.byte 111
.byte 32
.byte 102
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 115
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 101
.byte 120
.byte 112
.byte 101
.byte 99
.byte 116
.byte 101
.byte 100
.byte 32
.byte 51
.byte 51
.byte 44
.byte 32
.byte 45
.byte 57
.byte 57
.byte 41
.byte 10
.byte 0

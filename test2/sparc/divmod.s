.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".text"
divmod:
	save %sp, -96, %sp
	mov %i0, %l7
	mov %i1, %l6
Linitialize_continuations_l6:
Lproc_body_start_l5:
	udiv %l7, %l6, %l5
	udiv %l7, %l6, %l4
	smul %l6, %l4, %l3
	sub %l7, %l3, %l4
	mov %l5, %i0
	add %sp, 96, %l5
	set 92, %l3
	add %l5, %l3, %l7
	st %l4, [%l7]
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -128, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l20:
Lproc_body_start_l19:
	set 987, %g1
	set 33, %g2
	mov %g1, %o0
	mov %g2, %o1
	st %g1, [%sp+112]
	st %g2, [%sp+116]
	call divmod, 0
	nop
Ljoin_l27:
	mov %o0, %g1
	add %sp, 128, %g2
	set -36, %g3
	add %g2, %g3, %g4
	ld [%g4], %g2
	set answer, %g4
	mov %g4, %o0
	ld [%sp+112], %g4
	mov %g4, %o1
	ld [%sp+116], %g3
	mov %g3, %o2
	mov %g1, %o3
	mov %g4, %o4
	mov %g3, %o5
	add %sp, 128, %g4
	set -36, %l0
	add %g4, %l0, %l1
	st %g2, [%l1]
	smul %g1, %g3, %l1
	add %l1, %g2, %g1
	add %sp, 128, %g2
	set -32, %l1
	add %g2, %l1, %g3
	st %g1, [%g3]
	call printf, 0
	nop
Ljoin_l24:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 128, %sp
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
.word 0xffffffdc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l35
.word 0x80000000
.word 0x80000006
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0
.word 0xfffffff0
.word 0xfffffff4
.word 0x80000000
.section ".pcmap"
.word Ljoin_l24
.word Lframe_l37
.section ".pcmap_data"
Lframe_l37:
.word 0xffffffdc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l35
.word 0x80000000
.word 0x80000006
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".data"
answer:
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

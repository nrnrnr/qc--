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
	mov %i0, %g3
	mov %i1, %g4
	mov %i7, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	udiv %g3, %g4, %g2
	udiv %g3, %g4, %l0
	smul %g4, %l0, %g4
	sub %g3, %g4, %g3
	mov %g2, %i0
	mov %g3, %i1
	mov %g1, %i7
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -128, %sp
	mov %i0, %g1
	mov %i1, %g1
	st %i7, [%sp+116]
	st %i7, [%sp+112]
Linitialize_continuations_l20:
Lproc_body_start_l19:
	set 987, %g1
	st %g1, [%sp+120]
	set 33, %g1
	st %g1, [%sp+124]
	ld [%sp+120], %g1
	mov %g1, %o0
	ld [%sp+124], %g1
	mov %g1, %o1
	call divmod, 0
	nop
Ljoin_l27:
	mov %o0, %g1
	mov %o1, %g2
	set answer, %g3
	mov %g3, %o0
	ld [%sp+120], %g3
	mov %g3, %o1
	ld [%sp+124], %g3
	mov %g3, %o2
	mov %g1, %o3
	ld [%sp+120], %g3
	mov %g3, %o4
	ld [%sp+124], %g3
	mov %g3, %o5
	add %sp, 128, %g3
	set -36, %g4
	add %g3, %g4, %g3
	st %g2, [%g3]
	ld [%sp+124], %g3
	smul %g1, %g3, %g1
	add %g1, %g2, %g3
	add %sp, 128, %g1
	set -32, %g2
	add %g1, %g2, %g1
	st %g3, [%g1]
	call printf, 0
	nop
Ljoin_l24:
	set 0, %g1
	mov %g1, %i0
	ld [%sp+116], %i7
	ld [%sp+112], %i7
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
.word 0xfffffff4
.word Lstackdata_l35
.word 2
.word 6
.word 0
.word 1
.word 0x40000031
.word 0xfffffff0
.word 0x40000013
.word 0x40000013
.word 0x40000013
.word 0x40000014
.word 0xfffffff8
.word 0xfffffffc
.word 0
.section ".pcmap"
.word Ljoin_l24
.word Lframe_l37
.section ".pcmap_data"
Lframe_l37:
.word 0xffffffdc
.word 0x8000005c
.word 0xfffffff4
.word Lstackdata_l35
.word 2
.word 6
.word 0
.word 1
.word 0x40000031
.word 0xfffffff0
.word 0x40000013
.word 0x40000013
.word 0x40000013
.word 0x40000014
.word 0xfffffff8
.word 0xfffffffc
.word 0
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

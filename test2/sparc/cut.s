.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
! memory for global registers
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".data"
nocut:
.byte 110
.byte 111
.byte 32
.byte 99
.byte 117
.byte 116
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
ret:
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 10
.byte 0
.section ".text"
main:
	save %sp, -128, %sp
	mov %i0, %g1
	mov %i1, %g1
	st %i7, [%sp+100]
	st %i7, [%sp+96]
Linitialize_continuations_l14:
	set k_C10, %g3
	add %sp, 128, %g1
	set -16, %g2
	add %g1, %g2, %g1
	st %g3, [%g1]
	add %sp, 128, %g1
	set -128, %g2
	add %g1, %g2, %g3
	add %sp, 128, %g1
	set -12, %g2
	add %g1, %g2, %g1
	st %g3, [%g1]
Lproc_body_start_l13:
	set 0, %g1
	st %g1, [%sp+104]
	add %sp, 128, %g1
	set -16, %g2
	add %g1, %g2, %g1
	mov %g1, %o0
	call f, 0
	nop
Ljoin_l25:
	set nocut, %g1
	mov %g1, %o0
	ld [%sp+104], %g1
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l22:
	set 1, %g1
	mov %g1, %i0
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
k_C10:
	mov %i0, %g1
	st %g1, [%sp+104]
	set nocut, %g1
	set 3, %g2
	add %g1, %g2, %g1
	mov %g1, %o0
	ld [%sp+104], %g1
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l18:
	set 0, %g1
	mov %g1, %i0
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l32:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l25
.word Lframe_l33
.section ".pcmap_data"
Lframe_l33:
.byte -1
.byte -1
.byte -1
.byte -36
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l32
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 3
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l22
.word Lframe_l34
.section ".pcmap_data"
Lframe_l34:
.byte -1
.byte -1
.byte -1
.byte -36
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l32
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 3
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word k_C10
.word Lframe_l35
.section ".pcmap_data"
Lframe_l35:
.byte -1
.byte -1
.byte -1
.byte -128
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l32
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 3
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l18
.word Lframe_l36
.section ".pcmap_data"
Lframe_l36:
.byte -1
.byte -1
.byte -1
.byte -36
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -28
.word Lstackdata_l32
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 3
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -32
.byte 64
.byte 0
.byte 0
.byte 19
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -24
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"
.section ".text"
f:
	save %sp, -112, %sp
	mov %i0, %g1
	st %i7, [%sp+100]
	st %i7, [%sp+96]
Linitialize_continuations_l40:
Lproc_body_start_l39:
	mov %g1, %o0
	call g, 0
	nop
Ljoin_l47:
	set ret, %g1
	mov %g1, %o0
	call printf, 0
	nop
Ljoin_l44:
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l55:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l47
.word Lframe_l56
.section ".pcmap_data"
Lframe_l56:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l55
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 1
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l44
.word Lframe_l57
.section ".pcmap_data"
Lframe_l57:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l55
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 1
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"
.section ".text"
g:
	save %sp, -112, %sp
	mov %i0, %g1
	st %i7, [%sp+100]
	st %i7, [%sp+96]
Linitialize_continuations_l61:
Lproc_body_start_l60:
	mov %g1, %o0
	call h, 0
	nop
Ljoin_l68:
	set ret, %g1
	mov %g1, %o0
	call printf, 0
	nop
Ljoin_l65:
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l76:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l68
.word Lframe_l77
.section ".pcmap_data"
Lframe_l77:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l76
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 1
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l65
.word Lframe_l78
.section ".pcmap_data"
Lframe_l78:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l76
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 1
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 64
.byte 0
.byte 0
.byte 49
.byte -1
.byte -1
.byte -1
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"
.section ".text"
h:
	save %sp, -96, %sp
	mov %i0, %g1
Linitialize_continuations_l82:
Lproc_body_start_l81:
	set 99, %g2
	mov %g2, %i0
	set 4, %g2
	add %g1, %g2, %g2
	ld [%g2], %g2
	ld [%g1], %g1
	ta 3
	jmp %g1
	mov %g2, %sp
.section ".text"

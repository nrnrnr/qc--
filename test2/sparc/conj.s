.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
! memory for global registers
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".text"
foo:
	save %sp, -96, %sp
	mov %i0, %g2
	mov %i7, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set 1, %g3
	subcc %g2, %g3, %g0
	bne Ljoin_l14
	nop
Ljoin_l20:
	ba Ljoin_l10
	nop
Ljoin_l14:
	set 0, %g3
	subcc %g2, %g3, %g0
	bne Ljoin_l9
	nop
Ljoin_l21:
	ba Ljoin_l10
	nop
Ljoin_l10:
	set 0, %g2
	ba Ljoin_l8
	nop
Ljoin_l9:
	set 999, %g2
	ba Ljoin_l8
	nop
Ljoin_l8:
	mov %g2, %i0
	mov %g1, %i7
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
	st %i7, [%sp+100]
	st %i7, [%sp+96]
Linitialize_continuations_l26:
Lproc_body_start_l25:
	set 0, %g1
	mov %g1, %o0
	call foo, 0
	nop
Ljoin_l39:
	mov %o0, %g1
	st %g1, [%sp+104]
	set 1, %g1
	mov %g1, %o0
	call foo, 0
	nop
Ljoin_l36:
	mov %o0, %g1
	st %g1, [%sp+108]
	set 2, %g1
	mov %g1, %o0
	call foo, 0
	nop
Ljoin_l33:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	ld [%sp+104], %g2
	mov %g2, %o1
	ld [%sp+108], %g2
	mov %g2, %o2
	mov %g1, %o3
	call printf, 0
	nop
Ljoin_l30:
	set 0, %g1
	mov %g1, %i0
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l47:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l39
.word Lframe_l48
.section ".pcmap_data"
Lframe_l48:
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
.word Lstackdata_l47
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 5
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
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -8
.byte -1
.byte -1
.byte -1
.byte -4
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l36
.word Lframe_l49
.section ".pcmap_data"
Lframe_l49:
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
.word Lstackdata_l47
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 5
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
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -8
.byte -1
.byte -1
.byte -1
.byte -4
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l33
.word Lframe_l50
.section ".pcmap_data"
Lframe_l50:
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
.word Lstackdata_l47
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 5
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
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -8
.byte -1
.byte -1
.byte -1
.byte -4
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l30
.word Lframe_l51
.section ".pcmap_data"
Lframe_l51:
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
.word Lstackdata_l47
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 5
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
.byte 64
.byte 0
.byte 0
.byte 19
.byte -1
.byte -1
.byte -1
.byte -8
.byte -1
.byte -1
.byte -1
.byte -4
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"
.section ".data"
fmt:
.byte 102
.byte 111
.byte 111
.byte 40
.byte 48
.byte 41
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 102
.byte 111
.byte 111
.byte 40
.byte 49
.byte 41
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 59
.byte 32
.byte 102
.byte 111
.byte 111
.byte 40
.byte 50
.byte 41
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

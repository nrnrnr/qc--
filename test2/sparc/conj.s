.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
! memory for global registers
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.global Cmm_stack_growth
.section ".data"
.align 4
Cmm_stack_growth:
.word 0xffffffff
.section ".text"
foo:
	save %sp, -96, %sp
	mov %i0, %l7
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set 1, %l6
	subcc %l7, %l6, %g0
	bne Ljoin_l14
	nop
Ljoin_l21:
	ba Ljoin_l10
	nop
Ljoin_l14:
	set 0, %l6
	subcc %l7, %l6, %g0
	bne Ljoin_l9
	nop
Ljoin_l20:
	ba Ljoin_l10
	nop
Ljoin_l10:
	set 0, %l7
	ba Ljoin_l8
	nop
Ljoin_l9:
	set 999, %l7
	ba Ljoin_l8
	nop
Ljoin_l8:
	mov %l7, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l26:
Lproc_body_start_l25:
	set 0, %g1
	mov %g1, %o0
	st %i7, [%sp+96]
	call foo, 0
	nop
Ljoin_l39:
	mov %o0, %g1
	set 1, %g2
	mov %g2, %o0
	st %g1, [%sp+100]
	call foo, 0
	nop
Ljoin_l36:
	mov %o0, %g1
	set 2, %g2
	mov %g2, %o0
	st %g1, [%sp+104]
	call foo, 0
	nop
Ljoin_l33:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	ld [%sp+100], %g2
	mov %g2, %o1
	ld [%sp+104], %g2
	mov %g2, %o2
	mov %g1, %o3
	call printf, 0
	nop
Ljoin_l30:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l47:
.word 0
.section ".pcmap"
.word Ljoin_l39
.word Lframe_l48
.section ".pcmap_data"
Lframe_l48:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l47
.word 0
.word 5
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l36
.word Lframe_l49
.section ".pcmap_data"
Lframe_l49:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l47
.word 0
.word 5
.word 0
.word 1
.word 0
.word 0
.word 0xfffffff4
.word 0
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l33
.word Lframe_l50
.section ".pcmap_data"
Lframe_l50:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l47
.word 0
.word 5
.word 0
.word 1
.word 0
.word 0
.word 0xfffffff4
.word 0xfffffff8
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l30
.word Lframe_l51
.section ".pcmap_data"
Lframe_l51:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l47
.word 0
.word 5
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
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

.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".data"
.align 4
jump_tab:
.word L1
.word L2
.word L3
.section ".text"
f:
	save %sp, -96, %sp
	mov %i0, %g2
	mov %i7, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set jump_tab, %g3
	set 4, %g4
	smul %g4, %g2, %g2
	add %g3, %g2, %g2
	ld [%g2], %g2
	jmp %g2
	nop
L1:
	set 1, %g2
	mov %g2, %i0
	mov %g1, %i7
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
L2:
	set 2, %g2
	mov %g2, %i0
	mov %g1, %i7
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
L3:
	set 3, %g2
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
Linitialize_continuations_l22:
Lproc_body_start_l21:
	set 0, %g1
	mov %g1, %o0
	call f, 0
	nop
Ljoin_l41:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l38:
	set 1, %g1
	mov %g1, %o0
	call f, 0
	nop
Ljoin_l35:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l32:
	set 2, %g1
	mov %g1, %o0
	call f, 0
	nop
Ljoin_l29:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l26:
	set 0, %g1
	mov %g1, %i0
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l49:
.word 0
.section ".pcmap"
.word Ljoin_l41
.word Lframe_l50
.section ".pcmap_data"
Lframe_l50:
.word 0xffffffec
.word 0x8000005c
.word 0xfffffff4
.word Lstackdata_l49
.word 2
.word 3
.word 0
.word 1
.word 0x40000031
.word 0xfffffff0
.word 0x40000013
.word 0x40000013
.word 0x40000013
.word 0
.section ".pcmap"
.word Ljoin_l38
.word Lframe_l51
.section ".pcmap_data"
Lframe_l51:
.word 0xffffffec
.word 0x8000005c
.word 0xfffffff4
.word Lstackdata_l49
.word 2
.word 3
.word 0
.word 1
.word 0x40000031
.word 0xfffffff0
.word 0x40000013
.word 0x40000013
.word 0x40000013
.word 0
.section ".pcmap"
.word Ljoin_l35
.word Lframe_l52
.section ".pcmap_data"
Lframe_l52:
.word 0xffffffec
.word 0x8000005c
.word 0xfffffff4
.word Lstackdata_l49
.word 2
.word 3
.word 0
.word 1
.word 0x40000031
.word 0xfffffff0
.word 0x40000013
.word 0x40000013
.word 0x40000013
.word 0
.section ".pcmap"
.word Ljoin_l32
.word Lframe_l53
.section ".pcmap_data"
Lframe_l53:
.word 0xffffffec
.word 0x8000005c
.word 0xfffffff4
.word Lstackdata_l49
.word 2
.word 3
.word 0
.word 1
.word 0x40000031
.word 0xfffffff0
.word 0x40000013
.word 0x40000013
.word 0x40000013
.word 0
.section ".pcmap"
.word Ljoin_l29
.word Lframe_l54
.section ".pcmap_data"
Lframe_l54:
.word 0xffffffec
.word 0x8000005c
.word 0xfffffff4
.word Lstackdata_l49
.word 2
.word 3
.word 0
.word 1
.word 0x40000031
.word 0xfffffff0
.word 0x40000013
.word 0x40000013
.word 0x40000013
.word 0
.section ".pcmap"
.word Ljoin_l26
.word Lframe_l55
.section ".pcmap_data"
Lframe_l55:
.word 0xffffffec
.word 0x8000005c
.word 0xfffffff4
.word Lstackdata_l49
.word 2
.word 3
.word 0
.word 1
.word 0x40000031
.word 0xfffffff0
.word 0x40000013
.word 0x40000013
.word 0x40000013
.word 0
.section ".text"
.section ".data"
.align 4
fmt:
.byte 67
.byte 111
.byte 117
.byte 110
.byte 116
.byte 105
.byte 110
.byte 103
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

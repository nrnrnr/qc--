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
.section ".data"
.align 8
success:
.byte 115
.byte 117
.byte 99
.byte 99
.byte 101
.byte 115
.byte 115
.byte 10
.byte 0
.align 8
failed:
.byte 102
.byte 97
.byte 105
.byte 108
.byte 101
.byte 100
.byte 10
.byte 0
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set -1420500317, %g1
	mov %g1, %o0
	st %i7, [%sp+96]
	call callee, 0
	nop
Ljoin_l10:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l18:
.word 0
.section ".pcmap"
.word Ljoin_l10
.word Lframe_l19
.section ".pcmap_data"
Lframe_l19:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l18
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".text"
.section ".text"
callee:
	save %sp, -112, %sp
	mov %i0, %g1
Linitialize_continuations_l23:
Lproc_body_start_l22:
	set -1420500317, %g2
	subcc %g1, %g2, %g0
	bne Ljoin_l32
	nop
Ljoin_l33:
	set success, %g1
	mov %g1, %o0
	st %i7, [%sp+96]
	call printf, 0
	nop
Ljoin_l27:
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
Ljoin_l32:
	set failed, %g1
	mov %g1, %o0
	st %i7, [%sp+96]
	call printf, 0
	nop
Ljoin_l31:
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l41:
.word 0
.section ".pcmap"
.word Ljoin_l27
.word Lframe_l42
.section ".pcmap_data"
Lframe_l42:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l41
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".pcmap"
.word Ljoin_l31
.word Lframe_l43
.section ".pcmap_data"
Lframe_l43:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l41
.word 0
.word 1
.word 0
.word 1
.word 0
.word 0
.section ".text"

.global main
.global Cmm.global_area
.global Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI
.section ".data"
! memory for global registers
.align 8
Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI:
Cmm.global_area:
.skip 1
.global Cmm_stack_growth
.section ".data"
.align 4
Cmm_stack_growth:
.word 0xffffffff
.section ".data"
x:
.word 0x400921fb
.word 0x54411744
.section ".text"
main:
	save %sp, -128, %sp
	mov %i0, %g3
	mov %i1, %g3
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set x, %g3
	add %sp, 128, %g4
	set -32, %l0
	add %g4, %l0, %g4
	set 0, %l0
	add %g3, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g1, %l1, %g1
	or %l0, %g1, %g1
	set 1, %l0
	add %g3, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g1, %l1, %g1
	or %l0, %g1, %g1
	set 2, %l0
	add %g3, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g1, %l1, %g1
	or %l0, %g1, %g1
	set 3, %l0
	add %g3, %l0, %l0
	ldub [%l0], %l0
	set 8, %l1
	sll %g1, %l1, %g1
	or %l0, %g1, %g1
	st %g1, [%sp+108]
	ld [%sp+108], %f0
	set 4, %g1
	add %g3, %g1, %g1
	set 0, %l0
	add %g1, %l0, %g1
	ldub [%g1], %g1
	set 8, %l0
	sll %g2, %l0, %g2
	or %g1, %g2, %g1
	set 4, %g2
	add %g3, %g2, %g2
	set 1, %l0
	add %g2, %l0, %g2
	ldub [%g2], %g2
	set 8, %l0
	sll %g1, %l0, %g1
	or %g2, %g1, %g1
	set 4, %g2
	add %g3, %g2, %g2
	set 2, %l0
	add %g2, %l0, %g2
	ldub [%g2], %g2
	set 8, %l0
	sll %g1, %l0, %g1
	or %g2, %g1, %g1
	set 4, %g2
	add %g3, %g2, %g2
	set 3, %g3
	add %g2, %g3, %g2
	ldub [%g2], %g2
	set 8, %g3
	sll %g1, %g3, %g1
	or %g2, %g1, %g1
	st %g1, [%sp+104]
	ld [%sp+104], %f1
	fmovs %f0, %f8
	fmovs %f1, %f9
	std %f8, [%g4]
	set fmt, %g1
	mov %g1, %o0
	add %sp, 128, %g1
	set -28, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	add %sp, 128, %g1
	set -32, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o1
	st %i7, [%sp+112]
	call printf, 0
	nop
Ljoin_l9:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+112], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l17:
.word 0
.section ".pcmap"
.word Ljoin_l9
.word Lframe_l18
.section ".pcmap_data"
Lframe_l18:
.word 0x8000005c
.word 0xffffffdc
.word 0xfffffff0
.word Lstackdata_l17
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0xffffffe0
.word 0
.section ".text"
.section ".data"
fmt:
.byte 97
.byte 32
.byte 104
.byte 97
.byte 110
.byte 100
.byte 45
.byte 119
.byte 114
.byte 105
.byte 116
.byte 116
.byte 101
.byte 110
.byte 32
.byte 108
.byte 105
.byte 116
.byte 101
.byte 114
.byte 97
.byte 108
.byte 32
.byte 112
.byte 105
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 108
.byte 103
.byte 10
.byte 0

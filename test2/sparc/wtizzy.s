.global main
.global Cmm.global_area
.global Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section ".data"
! memory for global registers
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.global Cmm_stack_growth
.section ".data"
.align 4
Cmm_stack_growth:
.word 0xffffffff
.section ".text"
f:
	save %sp, -128, %sp
Linitialize_continuations_l7:
Lproc_body_start_l6:
	set 388380743, %g1
	mov %g1, %o1
	set 9975624, %g1
	mov %g1, %o0
	set 32, %g1
	st %g1, [%sp+104]
	ld [%sp+104], %f0
	fitod %f0, %f8
	st %f9, [%sp+108]
	ld [%sp+108], %g1
	mov %g1, %o3
	set 32, %g1
	st %g1, [%sp+96]
	ld [%sp+96], %f0
	fitod %f0, %f8
	st %f8, [%sp+100]
	ld [%sp+100], %g1
	mov %g1, %o2
	st %i7, [%sp+112]
	call c_fun, 0
	nop
Ljoin_l11:
	ld [%sp+112], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l19:
.word 0
.section ".pcmap"
.word Ljoin_l11
.word Lframe_l20
.section ".pcmap_data"
Lframe_l20:
.word 0x8000005c
.word 0xffffffdc
.word 0xfffffff0
.word Lstackdata_l19
.word 0
.word 0
.word 0
.word 1
.word 0
.section ".text"
.section ".text"
c_fun:
	save %sp, -128, %sp
	add %sp, 128, %g1
	set -32, %g2
	add %g1, %g2, %g1
	st %i0, [%g1]
	add %sp, 128, %g1
	set -28, %g2
	add %g1, %g2, %g1
	st %i1, [%g1]
	add %sp, 128, %g1
	set -24, %g2
	add %g1, %g2, %g1
	st %i2, [%g1]
	add %sp, 128, %g1
	set -20, %g2
	add %g1, %g2, %g1
	st %i3, [%g1]
Linitialize_continuations_l24:
Lproc_body_start_l23:
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
	add %sp, 128, %g1
	set -20, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o4
	add %sp, 128, %g1
	set -24, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o3
	st %i7, [%sp+112]
	call printf, 0
	nop
Ljoin_l28:
	mov %o0, %l7
	ld [%sp+112], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l36:
.word 0
.section ".pcmap"
.word Ljoin_l28
.word Lframe_l37
.section ".pcmap_data"
Lframe_l37:
.word 0x8000005c
.word 0xffffffdc
.word 0xfffffff0
.word Lstackdata_l36
.word 0
.word 3
.word 0
.word 1
.word 0xffffffe0
.word 0xffffffe8
.word 0
.word 0
.section ".text"
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l41:
Lproc_body_start_l40:
	st %i7, [%sp+96]
	call f, 0
	nop
Ljoin_l45:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l53:
.word 0
.section ".pcmap"
.word Ljoin_l45
.word Lframe_l54
.section ".pcmap_data"
Lframe_l54:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffff0
.word Lstackdata_l53
.word 0
.word 2
.word 0
.word 1
.word 0
.word 0
.word 0
.section ".text"
.section ".data"
fmt:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 101
.byte 100
.byte 32
.byte 99
.byte 95
.byte 102
.byte 117
.byte 110
.byte 40
.byte 48
.byte 120
.byte 37
.byte 48
.byte 49
.byte 54
.byte 108
.byte 108
.byte 120
.byte 44
.byte 32
.byte 37
.byte 108
.byte 102
.byte 41
.byte 10
.byte 0

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
p:
	save %sp, -112, %sp
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set 3, %l7
	st %l7, [%sp+96]
	ld [%sp+96], %f7
	fitos %f7, %f0
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l20:
Lproc_body_start_l19:
	st %i7, [%sp+108]
	call p, 0
	nop
Ljoin_l27:
	add %sp, 112, %g1
	set -16, %g2
	add %g1, %g2, %g1
	st %f0, [%g1]
	set answer, %g1
	mov %g1, %o0
	add %sp, 112, %g1
	set -16, %g2
	add %g1, %g2, %g1
	ld [%g1], %f0
	fstod %f0, %f8
	st %f9, [%sp+104]
	ld [%sp+104], %g1
	mov %g1, %o2
	add %sp, 112, %g1
	set -16, %g2
	add %g1, %g2, %g1
	ld [%g1], %f0
	fstod %f0, %f8
	st %f8, [%sp+100]
	ld [%sp+100], %g1
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l24:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+108], %i7
	! Evil recognizer deleted add %sp, 112, %sp
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
.word 0x8000005c
.word 0xffffffec
.word 0xfffffffc
.word Lstackdata_l35
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0xfffffff0
.word 0
.section ".pcmap"
.word Ljoin_l24
.word Lframe_l37
.section ".pcmap_data"
Lframe_l37:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffffc
.word Lstackdata_l35
.word 0
.word 3
.word 0
.word 1
.word 0
.word 0
.word 0xfffffff0
.word 0
.section ".text"
.section ".data"
answer:
.byte 73
.byte 110
.byte 116
.byte 101
.byte 103
.byte 101
.byte 114
.byte 32
.byte 51
.byte 32
.byte 99
.byte 111
.byte 110
.byte 118
.byte 101
.byte 114
.byte 116
.byte 115
.byte 32
.byte 116
.byte 111
.byte 32
.byte 102
.byte 108
.byte 111
.byte 97
.byte 116
.byte 105
.byte 110
.byte 103
.byte 45
.byte 112
.byte 111
.byte 105
.byte 110
.byte 116
.byte 32
.byte 37
.byte 52
.byte 46
.byte 50
.byte 108
.byte 102
.byte 10
.byte 0

.global main
.global Cmm.global_area
.global Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section ".data"
! memory for global registers
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.global Cmm_stack_growth
.section ".data"
.align 4
Cmm_stack_growth:
.word 0xffffffff
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
	mov %i2, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set 1084227584, %g1
	mov %g1, %o0
	st %i7, [%sp+108]
	call doubleme, 0
	nop
Ljoin_l12:
	add %sp, 112, %g1
	set -16, %g2
	add %g1, %g2, %g1
	st %f0, [%g1]
	set str, %g1
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
Ljoin_l9:
	set 0, %l7
	mov %l7, %i0
	ld [%sp+108], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l20:
.word 0
.section ".pcmap"
.word Ljoin_l12
.word Lframe_l21
.section ".pcmap_data"
Lframe_l21:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffffc
.word Lstackdata_l20
.word 0
.word 5
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.word 0xfffffff0
.word 0
.section ".pcmap"
.word Ljoin_l9
.word Lframe_l22
.section ".pcmap_data"
Lframe_l22:
.word 0x8000005c
.word 0xffffffec
.word 0xfffffffc
.word Lstackdata_l20
.word 0
.word 5
.word 0
.word 1
.word 0
.word 0
.word 0
.word 0
.word 0xfffffff0
.word 0
.section ".text"
.section ".data"
str:
.byte 84
.byte 104
.byte 101
.byte 32
.byte 118
.byte 97
.byte 108
.byte 117
.byte 101
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 119
.byte 97
.byte 115
.byte 32
.byte 37
.byte 102
.byte 32
.byte 40
.byte 115
.byte 104
.byte 111
.byte 117
.byte 108
.byte 100
.byte 32
.byte 98
.byte 101
.byte 32
.byte 49
.byte 48
.byte 46
.byte 48
.byte 41
.byte 10
.byte 0

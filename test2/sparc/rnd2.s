.global main
.global Cmm.global_area
.global Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section ".data"
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
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
	call p, 0
	nop
Ljoin_l27:
	add %sp, 112, %g1
	set -16, %g2
	add %g1, %g2, %g3
	st %f0, [%g3]
	set answer, %g3
	mov %g3, %o0
	add %sp, 112, %g3
	set -16, %g1
	add %g3, %g1, %g2
	ld [%g2], %f0
	fstod %f0, %f8
	st %f9, [%sp+104]
	ld [%sp+104], %g2
	mov %g2, %o2
	add %sp, 112, %g2
	set -16, %g1
	add %g2, %g1, %g3
	ld [%g3], %f0
	fstod %f0, %f8
	st %f8, [%sp+100]
	ld [%sp+100], %g3
	mov %g3, %o1
	call printf, 0
	nop
Ljoin_l24:
	set 0, %g1
	mov %g1, %i0
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
.word 0xffffffec
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l35
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0xfffffff0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l24
.word Lframe_l37
.section ".pcmap_data"
Lframe_l37:
.word 0xffffffec
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l35
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0xfffffff0
.word 0x80000000
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

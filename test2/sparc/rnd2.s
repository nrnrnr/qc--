.global main
.global Cmm.global_area
.global Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section ".data"
! memory for global registers
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section ".text"
p:
	save %sp, -112, %sp
	mov %i7, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set 3, %g2
	st %g2, [%sp+96]
	ld [%sp+96], %f0
	fitos %f0, %f0
	mov %g1, %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -128, %sp
	mov %i0, %g1
	mov %i1, %g1
	st %i7, [%sp+112]
	st %i7, [%sp+108]
Linitialize_continuations_l20:
Lproc_body_start_l19:
	call p, 0
	nop
Ljoin_l27:
	add %sp, 128, %g1
	set -32, %g2
	add %g1, %g2, %g1
	st %f0, [%g1]
	set answer, %g1
	mov %g1, %o0
	add %sp, 128, %g1
	set -32, %g2
	add %g1, %g2, %g1
	ld [%g1], %f0
	fstod %f0, %f8
	st %f9, [%sp+104]
	ld [%sp+104], %g1
	mov %g1, %o2
	add %sp, 128, %g1
	set -32, %g2
	add %g1, %g2, %g1
	ld [%g1], %f0
	fstod %f0, %f8
	st %f8, [%sp+100]
	ld [%sp+100], %g1
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l24:
	set 0, %g1
	mov %g1, %i0
	ld [%sp+112], %i7
	ld [%sp+108], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l35:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l27
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
.byte -16
.word Lstackdata_l35
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
.byte -20
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
.byte -32
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l24
.word Lframe_l37
.section ".pcmap_data"
Lframe_l37:
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
.byte -16
.word Lstackdata_l35
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
.byte -20
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
.byte -32
.byte 0
.byte 0
.byte 0
.byte 0
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

.global main
.global Cmm.global_area
.global Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI
.section ".data"
! memory for global registers
.align 8
Cmm.globalsig.NKZfaaEdeFZVBMDSIVLbEeKXbI:
Cmm.global_area:
.skip 1
.section ".data"
.align 8
x:
.word 0x400921fb
.word 0x54411744
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
	st %i7, [%sp+108]
	st %i7, [%sp+104]
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set x, %g3
	add %sp, 112, %g1
	set -16, %g2
	add %g1, %g2, %g1
	ldd [%g3], %f8
	std %f8, [%g1]
	set fmt, %g1
	mov %g1, %o0
	add %sp, 112, %g1
	set -12, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o2
	add %sp, 112, %g1
	set -16, %g2
	add %g1, %g2, %g1
	ld [%g1], %g1
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l9:
	set 0, %g1
	mov %g1, %i0
	ld [%sp+108], %i7
	ld [%sp+104], %i7
	! Evil recognizer deleted add %sp, 112, %sp
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
.word 0xffffffec
.word 0x8000005c
.word 0xfffffffc
.word Lstackdata_l17
.word 2
.word 3
.word 0
.word 1
.word 0x40000031
.word 0xfffffff8
.word 0x40000013
.word 0x40000013
.word 0xfffffff0
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

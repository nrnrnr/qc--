.global main
.global Cmm.global_area
.global Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section ".data"
! memory for global registers
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section ".text"
f:
	save %sp, -128, %sp
	st %i7, [%sp+116]
	st %i7, [%sp+112]
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
	call c_fun, 0
	nop
Ljoin_l11:
	ld [%sp+116], %i7
	ld [%sp+112], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l19:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l11
.word Lframe_l20
.section ".pcmap_data"
Lframe_l20:
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
.byte -12
.word Lstackdata_l19
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 0
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
.byte -16
.byte 0
.byte 0
.byte 0
.byte 0
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
	st %i7, [%sp+116]
	st %i7, [%sp+112]
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
	call printf, 0
	nop
Ljoin_l28:
	mov %o0, %g1
	ld [%sp+116], %i7
	ld [%sp+112], %i7
	! Evil recognizer deleted add %sp, 128, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l36:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l28
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
.byte -12
.word Lstackdata_l36
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
.byte -16
.byte -1
.byte -1
.byte -1
.byte -32
.byte -1
.byte -1
.byte -1
.byte -24
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
	st %i7, [%sp+100]
	st %i7, [%sp+96]
Linitialize_continuations_l41:
Lproc_body_start_l40:
	call f, 0
	nop
Ljoin_l45:
	set 0, %g1
	mov %g1, %i0
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l53:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Ljoin_l45
.word Lframe_l54
.section ".pcmap_data"
Lframe_l54:
.byte -1
.byte -1
.byte -1
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l53
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 2
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
.byte -16
.byte 64
.byte 0
.byte 0
.byte 19
.byte 64
.byte 0
.byte 0
.byte 19
.byte 0
.byte 0
.byte 0
.byte 0
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

.global main
.global Cmm.global_area
.global Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section ".data"
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section ".text"
f:
	save %sp, -112, %sp
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
	! Evil recognizer deleted add %sp, 112, %sp
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
.word 0xffffffec
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l19
.word 0x80000000
.word 0x80000000
.word 0x80000000
.word 0x80000001
.word 0x80000000
.section ".text"
.section ".text"
c_fun:
	save %sp, -112, %sp
	add %sp, 112, %g1
	set -16, %g2
	add %g1, %g2, %g3
	st %i0, [%g3]
	add %sp, 112, %g3
	set -12, %g1
	add %g3, %g1, %g2
	st %i1, [%g2]
	add %sp, 112, %g2
	set -8, %g1
	add %g2, %g1, %g3
	st %i2, [%g3]
	add %sp, 112, %g3
	set -4, %g1
	add %g3, %g1, %g2
	st %i3, [%g2]
Linitialize_continuations_l24:
Lproc_body_start_l23:
	set fmt, %g2
	mov %g2, %o0
	add %sp, 112, %g2
	set -12, %g1
	add %g2, %g1, %g3
	ld [%g3], %g1
	mov %g1, %o2
	add %sp, 112, %g1
	set -16, %g3
	add %g1, %g3, %g2
	ld [%g2], %g1
	mov %g1, %o1
	add %sp, 112, %g1
	set -4, %g2
	add %g1, %g2, %g3
	ld [%g3], %g1
	mov %g1, %o4
	add %sp, 112, %g1
	set -8, %g3
	add %g1, %g3, %g2
	ld [%g2], %g1
	mov %g1, %o3
	call printf, 0
	nop
Ljoin_l28:
	mov %o0, %g1
	! Evil recognizer deleted add %sp, 112, %sp
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
.word 0xffffffec
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l36
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0xfffffff0
.word 0xfffffff8
.word 0
.word 0x80000000
.section ".text"
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l41:
Lproc_body_start_l40:
	call f, 0
	nop
Ljoin_l45:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
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
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l53
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
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

.global f
.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
! memory for global registers
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".text"
f:
	save %sp, -96, %sp
	mov %i0, %g2
	mov %i7, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	neg %g2, %g2
	mov %g2, %i0
	set -99, %g2
	mov %g2, %i1
	mov %g1, %i7
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
	st %i7, [%sp+100]
	st %i7, [%sp+96]
Linitialize_continuations_l20:
Lproc_body_start_l19:
	set -33, %g1
	mov %g1, %o0
	call f, 0
	nop
Ljoin_l27:
	mov %o0, %g1
	mov %o1, %g2
	set fmt, %g3
	mov %g3, %o0
	mov %g1, %o1
	mov %g2, %o2
	call printf, 0
	nop
Ljoin_l24:
	set 0, %g1
	mov %g1, %i0
	ld [%sp+100], %i7
	ld [%sp+96], %i7
	! Evil recognizer deleted add %sp, 112, %sp
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
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l35
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 4
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
.byte 64
.byte 0
.byte 0
.byte 19
.byte 64
.byte 0
.byte 0
.byte 20
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
.byte -20
.byte -128
.byte 0
.byte 0
.byte 92
.byte -1
.byte -1
.byte -1
.byte -12
.word Lstackdata_l35
.byte 0
.byte 0
.byte 0
.byte 2
.byte 0
.byte 0
.byte 0
.byte 4
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
.byte 64
.byte 0
.byte 0
.byte 19
.byte 64
.byte 0
.byte 0
.byte 20
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"
.section ".data"
fmt:
.byte 100
.byte 117
.byte 97
.byte 108
.byte 45
.byte 114
.byte 101
.byte 115
.byte 117
.byte 108
.byte 116
.byte 32
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 116
.byte 111
.byte 32
.byte 102
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 115
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 101
.byte 120
.byte 112
.byte 101
.byte 99
.byte 116
.byte 101
.byte 100
.byte 32
.byte 51
.byte 51
.byte 44
.byte 32
.byte 45
.byte 57
.byte 57
.byte 41
.byte 10
.byte 0

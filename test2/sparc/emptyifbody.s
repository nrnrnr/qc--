.global main
.global Cmm.global_area
.global Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section ".data"
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section ".text"
main:
	save %sp, -112, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set 1, %g1
	set -1067450368, %g1
	st %g1, [%sp+96]
	ld [%sp+96], %f0
	fstoi %f0, %f1
	st %f1, [%sp+100]
	ld [%sp+100], %g1
	set 1, %g2
	subcc %g1, %g2, %g0
	be Ljoin_l10
	nop
Ljoin_l18:
	ba Ljoin_l10
	nop
Ljoin_l10:
	set fmt, %g1
	mov %g1, %o0
	call printf, 0
	nop
Ljoin_l9:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 112, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l19:
.word 0
.section ".pcmap"
.word Ljoin_l9
.word Lframe_l20
.section ".pcmap_data"
Lframe_l20:
.word 0xffffffec
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l19
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".data"
fmt:
.byte 68
.byte 105
.byte 115
.byte 106
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 44
.byte 32
.byte 99
.byte 111
.byte 110
.byte 118
.byte 101
.byte 114
.byte 115
.byte 105
.byte 111
.byte 110
.byte 44
.byte 32
.byte 101
.byte 109
.byte 112
.byte 116
.byte 121
.byte 32
.byte 105
.byte 102
.byte 45
.byte 98
.byte 111
.byte 100
.byte 121
.byte 58
.byte 32
.byte 119
.byte 111
.byte 114
.byte 107
.byte 115
.byte 46
.byte 10
.byte 0

.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".data"
.align 8
success:
.byte 115
.byte 117
.byte 99
.byte 99
.byte 101
.byte 115
.byte 115
.byte 10
.byte 0
.align 8
failed:
.byte 102
.byte 97
.byte 105
.byte 108
.byte 101
.byte 100
.byte 10
.byte 0
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set -1420500317, %g1
	mov %g1, %o0
	call callee, 0
	nop
Ljoin_l10:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l18:
.word 0
.section ".pcmap"
.word Ljoin_l10
.word Lframe_l19
.section ".pcmap_data"
Lframe_l19:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l18
.word 0x80000000
.word 0x80000002
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0x80000000
.section ".text"
.section ".text"
callee:
	save %sp, -96, %sp
	mov %i0, %g1
Linitialize_continuations_l23:
Lproc_body_start_l22:
	set -1420500317, %g2
	subcc %g1, %g2, %g0
	bne Ljoin_l32
	nop
Ljoin_l33:
	set success, %g1
	mov %g1, %o0
	call printf, 0
	nop
Ljoin_l27:
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
Ljoin_l32:
	set failed, %g1
	mov %g1, %o0
	call printf, 0
	nop
Ljoin_l31:
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l41:
.word 0
.section ".pcmap"
.word Ljoin_l27
.word Lframe_l42
.section ".pcmap_data"
Lframe_l42:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l41
.word 0x80000000
.word 0x80000001
.word 0x80000000
.word 0x80000001
.word 0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l31
.word Lframe_l43
.section ".pcmap_data"
Lframe_l43:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l41
.word 0x80000000
.word 0x80000001
.word 0x80000000
.word 0x80000001
.word 0
.word 0x80000000
.section ".text"

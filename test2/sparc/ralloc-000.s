.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".text"
p:
	save %sp, -96, %sp
Linitialize_continuations_l6:
Lproc_body_start_l5:
	set 1, %l7
	set 2, %l6
	set 0, %l5
	set 0, %l4
	set 2, %l3
	subcc %l6, %l3, %g0
	bgeu Ljoin_l8
	nop
Ljoin_l18:
	ba Ljoin_l9
	nop
Ljoin_l8:
	set 3, %l3
	set 4, %l2
	mov %l3, %l5
	mov %l2, %l4
	ba Ljoin_l9
	nop
Ljoin_l9:
	add %l7, %l6, %l1
	add %l1, %l5, %l6
	add %l6, %l4, %l1
	mov %l1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".text"
.section ".text"
main:
	save %sp, -96, %sp
	mov %i0, %g1
	mov %i1, %g1
Linitialize_continuations_l23:
Lproc_body_start_l22:
	call p, 0
	nop
Ljoin_l30:
	mov %o0, %g1
	set fmt, %g2
	mov %g2, %o0
	mov %g1, %o1
	call printf, 0
	nop
Ljoin_l27:
	set 0, %g1
	mov %g1, %i0
	! Evil recognizer deleted add %sp, 96, %sp
	ret
	restore
.section ".pcmap_data"
Lstackdata_l38:
.word 0
.section ".pcmap"
.word Ljoin_l30
.word Lframe_l39
.section ".pcmap_data"
Lframe_l39:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l38
.word 0x80000000
.word 0x80000003
.word 0x80000000
.word 0x80000001
.word 0
.word 0
.word 0
.word 0x80000000
.section ".pcmap"
.word Ljoin_l27
.word Lframe_l40
.section ".pcmap_data"
Lframe_l40:
.word 0xfffffffc
.word 0x8000005c
.word 0x40000031
.word Lstackdata_l38
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
.byte 116
.byte 111
.byte 116
.byte 97
.byte 108
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

.global main
.global Cmm.global_area
.global Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section ".data"
! memory for global registers
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section ".text"
main:
	save %sp, -96, %sp
	mov %i7, %g1
Linitialize_continuations_l5:
Lproc_body_start_l4:
	set 0, %g2
	mov %g2, %o0
	call exit, 0
	nop
Lpostcall_l8:
.section ".pcmap_data"
Lstackdata_l16:
.byte 0
.byte 0
.byte 0
.byte 0
.section ".pcmap"
.word Lpostcall_l8
.word Lframe_l17
.section ".pcmap_data"
Lframe_l17:
.byte -1
.byte -1
.byte -1
.byte -4
.byte -128
.byte 0
.byte 0
.byte 92
.byte 64
.byte 0
.byte 0
.byte 19
.word Lstackdata_l16
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
.byte 64
.byte 0
.byte 0
.byte 49
.byte 0
.byte 0
.byte 0
.byte 0
.section ".text"

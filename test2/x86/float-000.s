.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
a:
.skip 20, 0
b:
.long 0xc0831271
.long 0x400921ca
fmt:
.byte 112
.byte 105
.byte 32
.byte 119
.byte 105
.byte 116
.byte 104
.byte 32
.byte 50
.byte 32
.byte 117
.byte 108
.byte 112
.byte 115
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 49
.byte 56
.byte 103
.byte 10
.byte 0
.section .text
main:
	leal -12(%esp), %esp
	movl $4,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal fmt,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal b,%eax
	movl $-8,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l15:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l16
.section .pcmap_data
Lframe_l16:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l15
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.section .text

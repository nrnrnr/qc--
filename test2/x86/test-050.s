.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	leal -12(%esp), %esp
	movl $4,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal fmt,%ecx
	movl $-12,%edx
	movl %eax,8(%esp)
	leal 12(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-8,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl %eax,8(%esp)
	call printf
Ljoin_l14:
	leal fmt,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%eax
	leal 12(%esp), %edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl %eax,8(%esp)
	call printf
Ljoin_l11:
	leal fmt,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%eax
	leal 12(%esp), %edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l21:
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l22
.section .pcmap_data
Lframe_l22:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
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
.long 0xfffffffc
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
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
.long 0xfffffffc
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
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
.section .data
fmt:
.byte 97
.byte 114
.byte 103
.byte 99
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

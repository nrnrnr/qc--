.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal fmt,%edx
	leal 16(%esp), %eax
	movl %ecx,8(%esp)
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 16(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	call printf
Ljoin_l14:
	leal fmt,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
Ljoin_l11:
	leal fmt,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 16(%esp), %ecx
	leal 16(%esp), %edx
	movl %ebx,12(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 12(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l21:
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l22
.section .pcmap_data
Lframe_l22:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l11
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l8
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
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

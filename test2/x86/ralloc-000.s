.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
p:
	leal -12(%esp), %esp
	leal 12(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $1,%eax
	movl $2,%edx
	movl %ecx,(%esp)
	movl $0,%ecx
	movl %ebx,4(%esp)
	movl $0,%ebx
	movl %ebp,8(%esp)
	movl $2,%ebp
	cmpl %ebp,%edx
	jae Ljoin_l7
Ljoin_l15:
	jmp Ljoin_l8
Ljoin_l7:
	movl $3,%ebp
	movl $4,%ecx
	movl %ecx,%ebx
	movl %ebp,%ecx
	jmp Ljoin_l8
Ljoin_l8:
	addl %edx,%eax
	addl %ecx,%eax
	addl %ebx,%eax
	leal 12(%esp), %ebx
	movl $0,%ecx
	addl %ecx,%ebx
	movl (%esp),%ecx
	movl %ecx,(%ebx)
	movl 4(%esp),%ebx
	movl 8(%esp),%ebp
	leal 12(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 12(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l19:
Lproc_body_start_l18:
	call p
Ljoin_l26:
	leal fmt,%ecx
	leal 12(%esp), %edx
	movl %ebx,8(%esp)
	movl $-12,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 12(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l23:
	movl $0,%eax
	leal 12(%esp), %ecx
	leal 12(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l32:
.long 0
.section .pcmap
.long Ljoin_l26
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l32
.long 0x80000008
.long 0x80000003
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
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l23
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l32
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
.section .data
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

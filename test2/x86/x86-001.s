.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
playground:
.skip 48, 0
.section .text
p:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $1,%edx
	movl $2,%eax
	movl $3,%edx
	movl %ecx,(%esp)
	movl %eax,%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl %ebx,4(%esp)
	leal playground,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal playground,%ebx
	addl %eax,%ebx
	movl %ebp,8(%esp)
	leal playground,%ebp
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	leal playground,%ecx
	addl %eax,%ecx
	movsbl (%ecx),%ebp
	leal playground,%ebp
	addl %eax,%ebp
	movswl (%ebp),%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movzbl (%ecx),%ebp
	leal playground,%ebp
	addl %eax,%ebp
	movzwl (%ebp),%ecx
	leal playground,%ebp
	addl %ecx,%ebp
	movl %eax,12(%esp)
	movw %ax,(%ebp)
	leal playground,%eax
	addl %ecx,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl 16(%esp),%ecx
	movb %al,(%ecx)
	movl 12(%esp),%eax
	movl %eax,%ecx
	addl %edx,%ecx
	movl %eax,%ecx
	subl %edx,%ecx
	movl %eax,%ecx
	andl %edx,%ecx
	movl %eax,%ecx
	orl %edx,%ecx
	movl %eax,%ecx
	xorl %edx,%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ebp
	addl %edx,%ebp
	leal playground,%ebp
	addl %eax,%ebp
	movl (%ebp),%ecx
	subl %edx,%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ebp
	andl %edx,%ebp
	leal playground,%ebp
	addl %eax,%ebp
	movl (%ebp),%ecx
	orl %edx,%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ebp
	xorl %edx,%ebp
	leal playground,%ebp
	addl %edx,%ebp
	movl (%ebp),%ecx
	movl %eax,%ebp
	addl %ecx,%ebp
	leal playground,%ebp
	addl %edx,%ebp
	movl (%ebp),%ecx
	movl %eax,%ebp
	subl %ecx,%ebp
	leal playground,%ebp
	addl %edx,%ebp
	movl (%ebp),%ecx
	movl %eax,%ebp
	andl %ecx,%ebp
	leal playground,%ebp
	addl %edx,%ebp
	movl (%ebp),%ecx
	movl %eax,%ebp
	orl %ecx,%ebp
	leal playground,%ebp
	addl %edx,%ebp
	movl (%ebp),%ecx
	movl %eax,%ebp
	xorl %ecx,%ebp
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	leal playground,%ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ebx
	movl %eax,%ecx
	subl %ebx,%ecx
	leal playground,%ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ebx
	movl %eax,%ecx
	andl %ebx,%ecx
	leal playground,%ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ebx
	movl %eax,%ecx
	orl %ebx,%ecx
	leal playground,%ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ebx
	movl %eax,%ecx
	xorl %ebx,%ecx
	leal playground,%ebx
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	cmpl %edx,%eax
	jb Ljoin_l10
Ljoin_l11:
	cmpl %edx,%eax
	jbe Ljoin_l8
Ljoin_l9:
	cmpl %edx,%eax
	jbe Ljoin_l7
Ljoin_l18:
	jmp L
Ljoin_l7:
	jmp L
Ljoin_l8:
	jmp L
Ljoin_l10:
	jmp L
L:
	movl $99,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%ebx
	movl 8(%esp),%ebp
	leal 20(%esp), %esp
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
Linitialize_continuations_l22:
Lproc_body_start_l21:
	call p
Ljoin_l29:
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
Ljoin_l26:
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
Lstackdata_l35:
.long 0
.section .pcmap
.long Ljoin_l29
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l35
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
.long Ljoin_l26
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l35
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
.byte 115
.byte 111
.byte 109
.byte 101
.byte 32
.byte 119
.byte 101
.byte 105
.byte 114
.byte 100
.byte 32
.byte 105
.byte 110
.byte 115
.byte 116
.byte 114
.byte 117
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 115
.byte 32
.byte 114
.byte 97
.byte 110
.byte 44
.byte 32
.byte 97
.byte 102
.byte 116
.byte 101
.byte 114
.byte 32
.byte 119
.byte 104
.byte 105
.byte 99
.byte 104
.byte 32
.byte 119
.byte 101
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 97
.byte 32
.byte 108
.byte 105
.byte 116
.byte 101
.byte 114
.byte 97
.byte 108
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

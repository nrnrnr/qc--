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
	leal -80(%esp), %esp
	leal 80(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $1,%ecx
	movl $2,%eax
	movl $3,%ecx
	movl %edx,(%esp)
	movl %eax,%edx
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	leal playground,%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal playground,%edx
	addl %eax,%edx
	movl %edx,12(%esp)
	leal playground,%edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal playground,%edx
	addl %eax,%edx
	movsbl (%edx),%edx
	leal playground,%edx
	addl %eax,%edx
	movswl (%edx),%edx
	leal playground,%edx
	addl %eax,%edx
	movzbl (%edx),%edx
	leal playground,%edx
	addl %eax,%edx
	movzwl (%edx),%edx
	leal playground,%ecx
	addl %edx,%ecx
	movl %eax,16(%esp)
	movw %ax,(%ecx)
	leal playground,%ecx
	addl %edx,%ecx
	movl 16(%esp),%eax
	movb %al,(%ecx)
	movl 16(%esp),%edx
	movl %edx,%ecx
	movl 8(%esp),%eax
	addl %eax,%ecx
	movl %edx,%ecx
	subl %eax,%ecx
	movl %edx,%ecx
	andl %eax,%ecx
	movl %edx,%ecx
	orl %eax,%ecx
	movl %edx,%ecx
	xorl %eax,%ecx
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %eax,%ecx
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	subl %eax,%ecx
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	andl %eax,%ecx
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	orl %eax,%ecx
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	xorl %eax,%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl %ecx,20(%esp)
	movl %edx,%ecx
	movl 20(%esp),%edx
	addl %edx,%ecx
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,24(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%edx
	movl 24(%esp),%ecx
	subl %ecx,%edx
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,28(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%edx
	movl 28(%esp),%ecx
	andl %ecx,%edx
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,32(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%edx
	movl 32(%esp),%ecx
	orl %ecx,%edx
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,36(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%edx
	movl 36(%esp),%ecx
	xorl %ecx,%edx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl %edx,4(%esp)
	movl %ecx,40(%esp)
	movl 16(%esp),%edx
	movl %edx,%ecx
	movl 40(%esp),%edx
	addl %edx,%ecx
	leal playground,%edx
	movl %ecx,44(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,48(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%edx
	movl 48(%esp),%ecx
	subl %ecx,%edx
	leal playground,%ecx
	movl %edx,52(%esp)
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,56(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%edx
	movl 56(%esp),%ecx
	andl %ecx,%edx
	leal playground,%ecx
	movl %edx,60(%esp)
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,64(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%edx
	movl 64(%esp),%ecx
	orl %ecx,%edx
	leal playground,%ecx
	movl %edx,68(%esp)
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl 68(%esp),%edx
	movl %edx,(%ecx)
	leal playground,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,72(%esp)
	movl 16(%esp),%ecx
	movl %ecx,%edx
	movl 72(%esp),%ecx
	xorl %ecx,%edx
	leal playground,%ecx
	movl %edx,76(%esp)
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl 76(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edx
	cmpl %eax,%edx
	jb Ljoin_l10
Ljoin_l11:
	cmpl %eax,%edx
	jbe Ljoin_l8
Ljoin_l9:
	cmpl %eax,%edx
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
	leal 80(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 80(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 12(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l22:
Lproc_body_start_l21:
	call p
Ljoin_l29:
	leal fmt,%ecx
	leal 12(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l26:
	movl $0,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
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
.long 8
.long 3
.long 0
.long 1
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
.long 0
.section .pcmap
.long Ljoin_l26
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l35
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
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

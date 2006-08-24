.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
playground:
.skip 48, 0
.section .text
p:
	leal -76(%esp), %esp
	leal 76(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $1,%ecx
	movl $2,%ecx
	movl $3,%edx
	movl %eax,(%esp)
	movl %ecx,%eax
	leal playground,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	leal playground,%eax
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal playground,%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	leal playground,%eax
	movl 4(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal playground,%eax
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	leal playground,%eax
	addl %ecx,%eax
	movswl (%eax),%eax
	leal playground,%eax
	addl %ecx,%eax
	movzbl (%eax),%eax
	leal playground,%eax
	addl %ecx,%eax
	movzwl (%eax),%eax
	movl %eax,4(%esp)
	leal playground,%eax
	movl 4(%esp),%ecx
	addl %ecx,%eax
	movl %eax,16(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 16(%esp),%ecx
	movw %ax,(%ecx)
	leal playground,%eax
	movl 4(%esp),%ecx
	addl %ecx,%eax
	movl %eax,20(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 20(%esp),%ecx
	movb %al,(%ecx)
	movl 8(%esp),%eax
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
	movl (%ecx),%ecx
	addl %edx,%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ecx
	subl %edx,%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ecx
	andl %edx,%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ecx
	orl %edx,%ecx
	leal playground,%ecx
	addl %eax,%ecx
	movl (%ecx),%ecx
	xorl %edx,%ecx
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	leal playground,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 24(%esp),%ecx
	subl %ecx,%eax
	leal playground,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 28(%esp),%ecx
	andl %ecx,%eax
	leal playground,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 32(%esp),%ecx
	orl %ecx,%eax
	leal playground,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,36(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 36(%esp),%ecx
	xorl %ecx,%eax
	leal playground,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,4(%esp)
	movl 8(%esp),%eax
	addl %ecx,%eax
	leal playground,%ecx
	movl %eax,40(%esp)
	movl 4(%esp),%eax
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
	leal playground,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,44(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 44(%esp),%ecx
	subl %ecx,%eax
	leal playground,%ecx
	movl %eax,48(%esp)
	movl 4(%esp),%eax
	addl %eax,%ecx
	movl 48(%esp),%eax
	movl %eax,(%ecx)
	leal playground,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,52(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 52(%esp),%ecx
	andl %ecx,%eax
	leal playground,%ecx
	movl %eax,56(%esp)
	movl 4(%esp),%eax
	addl %eax,%ecx
	movl 56(%esp),%eax
	movl %eax,(%ecx)
	leal playground,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,60(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 60(%esp),%ecx
	orl %ecx,%eax
	leal playground,%ecx
	movl %eax,64(%esp)
	movl 4(%esp),%eax
	addl %eax,%ecx
	movl 64(%esp),%eax
	movl %eax,(%ecx)
	leal playground,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,68(%esp)
	movl 8(%esp),%ecx
	movl %ecx,%eax
	movl 68(%esp),%ecx
	xorl %ecx,%eax
	leal playground,%ecx
	movl %eax,72(%esp)
	movl 4(%esp),%eax
	addl %eax,%ecx
	movl 72(%esp),%eax
	movl %eax,(%ecx)
.Lbranch_target_l8:
.Lbranch_target_l14:
	movl 8(%esp),%eax
	cmpl %edx,%eax
	jb L
.Lbranch_target_l7:
.Lbranch_target_l13:
	cmpl %edx,%eax
	jbe L
.Lbranch_target_l6:
.Lbranch_target_l12:
	cmpl %edx,%eax
	jbe L
L:
	movl $99,%eax
	leal 76(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 76(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
	movl %eax,8(%esp)
	call p
.Lcall_successor_l27:
	leal fmt,%ecx
	leal 16(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l24:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l33:
.long 0
.section .pcmap
.long .Lcall_successor_l27
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l33
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l33
.long 0
.long 3
.long 0
.long 1
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

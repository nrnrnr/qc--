.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
p:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl %edx,(%esp)
	movl %ecx,%edx
	movl (%ecx),%edx
	movl %ecx,(%edx)
	movl %eax,4(%esp)
	movl (%ecx),%eax
	movl %eax,(%edx)
	movsbl (%ecx),%eax
	movswl (%ecx),%eax
	movzbl (%ecx),%eax
	movzwl (%ecx),%eax
	movl %eax,8(%esp)
	movl %ecx,%eax
	movl 8(%esp),%edx
	movw %ax,(%edx)
	movl %ecx,%eax
	movb %al,(%edx)
	movl %ecx,%eax
	movl (%esp),%edx
	addl %edx,%eax
	movl %ecx,%eax
	subl %edx,%eax
	movl %ecx,%eax
	andl %edx,%eax
	movl %ecx,%eax
	orl %edx,%eax
	movl %ecx,%eax
	xorl %edx,%eax
	movl (%ecx),%eax
	addl %edx,%eax
	movl (%ecx),%eax
	subl %edx,%eax
	movl (%ecx),%eax
	andl %edx,%eax
	movl (%ecx),%eax
	orl %edx,%eax
	movl (%ecx),%eax
	xorl %edx,%eax
	movl (%edx),%eax
	movl %edx,(%esp)
	movl %ecx,%edx
	addl %eax,%edx
	movl (%esp),%edx
	movl (%edx),%eax
	movl %edx,(%esp)
	movl %ecx,%edx
	subl %eax,%edx
	movl (%esp),%edx
	movl (%edx),%eax
	movl %edx,(%esp)
	movl %ecx,%edx
	andl %eax,%edx
	movl (%esp),%edx
	movl (%edx),%eax
	movl %edx,(%esp)
	movl %ecx,%edx
	orl %eax,%edx
	movl (%esp),%edx
	movl (%edx),%eax
	movl %edx,(%esp)
	movl %ecx,%edx
	xorl %eax,%edx
	movl %ecx,12(%esp)
	movl (%esp),%eax
	movl (%eax),%ecx
	movl %ebx,16(%esp)
	movl %eax,(%esp)
	movl 12(%esp),%eax
	movl %eax,%ebx
	addl %ecx,%ebx
	movl %ebx,(%edx)
	movl (%esp),%ebx
	movl (%ebx),%ecx
	movl %ebx,(%esp)
	movl %eax,%ebx
	subl %ecx,%ebx
	movl %ebx,(%edx)
	movl (%esp),%ebx
	movl (%ebx),%ecx
	movl %ebx,(%esp)
	movl %eax,%ebx
	andl %ecx,%ebx
	movl %ebx,(%edx)
	movl (%esp),%ebx
	movl (%ebx),%ecx
	movl %ebx,(%esp)
	movl %eax,%ebx
	orl %ecx,%ebx
	movl %ebx,(%edx)
	movl (%esp),%ebx
	movl (%ebx),%ecx
	movl %ebx,(%esp)
	movl %eax,%ebx
	xorl %ecx,%ebx
	movl %ebx,(%edx)
	movl (%esp),%edx
	cmpl %edx,%eax
	jb Ljoin_l9
Ljoin_l10:
	cmpl %edx,%eax
	jbe Ljoin_l7
Ljoin_l8:
	cmpl %edx,%eax
	jbe Ljoin_l6
Ljoin_l17:
	jmp L
Ljoin_l6:
	jmp L
Ljoin_l7:
	jmp L
Ljoin_l9:
	jmp L
L:
	movl $99,%eax
	movl $0,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl 4(%esp),%edx
	movl %edx,(%ebx)
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .text

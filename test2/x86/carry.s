.globl lladd
.globl llsub
.globl llmul
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
.section .text
lladd:
	leal -68(%esp), %esp
	leal 68(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,24(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 68(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,28(%esp)
	movl $-60,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 68(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	leal 68(%esp), %edx
	movl %ecx,32(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 68(%esp), %edx
	movl %ecx,36(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 68(%esp), %edx
	movl %ecx,40(%esp)
	movl $-56,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 68(%esp), %edx
	movl %ecx,44(%esp)
	movl $-60,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	btl $0,%edx
	movl %ecx,48(%esp)
	movl 40(%esp),%edx
	movl %edx,%ecx
	movl 48(%esp),%edx
	adcl %edx,%ecx
	movl %ecx,52(%esp)
	movl $0,%ecx
	btl $0,%ecx
	movl 40(%esp),%ecx
	adcl %edx,%ecx
	lahf
	shrl $8, %eax
	shll $31, %eax
	shrl $31, %eax
	btl $0,%eax
	movl 36(%esp),%eax
	movl 44(%esp),%ecx
	adcl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,%edx
	leal 68(%esp), %ecx
	movl %ecx,56(%esp)
	movl $0,%ecx
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	movl %ebx,64(%esp)
	movl 60(%esp),%ebx
	addl %ebx,%ecx
	movl 32(%esp),%ebx
	movl %ebx,(%ecx)
	movl 64(%esp),%ebx
	leal 68(%esp), %esp
	ret
.section .text
.section .text
llsub:
	leal -68(%esp), %esp
	leal 68(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,24(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 68(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,28(%esp)
	movl $-60,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 68(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l16:
.Lproc_body_start_l15:
	leal 68(%esp), %edx
	movl %ecx,32(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 68(%esp), %edx
	movl %ecx,36(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 68(%esp), %edx
	movl %ecx,40(%esp)
	movl $-56,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 68(%esp), %edx
	movl %ecx,44(%esp)
	movl $-60,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	btl $0,%edx
	movl %ecx,48(%esp)
	movl 40(%esp),%edx
	movl %edx,%ecx
	movl 48(%esp),%edx
	sbbl %edx,%ecx
	movl %ecx,52(%esp)
	movl $0,%ecx
	btl $0,%ecx
	movl 40(%esp),%ecx
	sbbl %edx,%ecx
	lahf
	shrl $8, %eax
	shll $31, %eax
	shrl $31, %eax
	btl $0,%eax
	movl 36(%esp),%eax
	movl 44(%esp),%ecx
	sbbl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 68(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,%edx
	leal 68(%esp), %ecx
	movl %ecx,56(%esp)
	movl $0,%ecx
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	movl %ebx,64(%esp)
	movl 60(%esp),%ebx
	addl %ebx,%ecx
	movl 32(%esp),%ebx
	movl %ebx,(%ecx)
	movl 64(%esp),%ebx
	leal 68(%esp), %esp
	ret
.section .text
.section .text
llmul:
	leal -72(%esp), %esp
	leal 72(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 72(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 72(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 72(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 72(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l27:
.Lproc_body_start_l26:
	leal 72(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 72(%esp), %edx
	movl %eax,24(%esp)
	movl $-56,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 72(%esp), %edx
	movl %eax,28(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 72(%esp), %edx
	movl %eax,32(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,36(%esp)
	movl 28(%esp),%edx
	movl %edx,%eax
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	mull %ecx
	movl %eax,44(%esp)
	leal 72(%esp), %eax
	movl %eax,48(%esp)
	movl $-72,%eax
	movl %eax,52(%esp)
	movl 48(%esp),%eax
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 72(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 72(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl 28(%esp),%edx
	movl %eax,56(%esp)
	movl 32(%esp),%eax
	imull %eax,%edx
	addl %edx,%ecx
	movl 40(%esp),%eax
	movl 36(%esp),%edx
	imull %edx,%eax
	addl %eax,%ecx
	leal 72(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl 56(%esp),%edx
	movl %edx,(%eax)
	leal 72(%esp), %eax
	movl $-68,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 72(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 72(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,%edx
	leal 72(%esp), %ecx
	movl %ecx,60(%esp)
	movl $0,%ecx
	movl %ecx,64(%esp)
	movl 60(%esp),%ecx
	movl %ebx,68(%esp)
	movl 64(%esp),%ebx
	addl %ebx,%ecx
	movl 24(%esp),%ebx
	movl %ebx,(%ecx)
	movl 68(%esp),%ebx
	leal 72(%esp), %esp
	ret
.section .text

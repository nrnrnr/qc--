.globl lladd
.globl llsub
.globl llmul
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
lladd:
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 48(%esp), %edx
	movl %ecx,24(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 48(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 48(%esp), %ecx
	movl %edx,28(%esp)
	movl $-40,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	fildq (%edx)
	fistpq (%ecx)
Linitialize_continuations_l6:
Lproc_body_start_l5:
	leal 48(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl %ebx,32(%esp)
	movl $-48,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	leal 48(%esp), %ecx
	movl %ebp,36(%esp)
	movl $-36,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	leal 48(%esp), %ecx
	movl %esi,40(%esp)
	movl $-40,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	movl $0,%ecx
	btl $0,%ecx
	movl %ebx,%ecx
	adcl %esi,%ecx
	movl %edi,44(%esp)
	movl $0,%edi
	btl $0,%edi
	adcl %esi,%ebx
	movl $0,%ebx
	lahf
	shrl $8, %eax
	shll $31, %eax
	sarl $31, %eax
	btl $0,%eax
	adcl %ebp,%edx
	leal 48(%esp), %ebp
	movl $-32,%eax
	addl %eax,%ebp
	movl %ecx,(%ebp)
	leal 48(%esp), %ecx
	movl $-28,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	leal 48(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 48(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	leal 48(%esp), %ebp
	movl $0,%ebx
	addl %ebx,%ebp
	movl (%ecx),%ebx
	movl %ebx,(%ebp)
	movl 32(%esp),%ebx
	movl 36(%esp),%ebp
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 48(%esp), %esp
	ret
.section .text
.section .text
llsub:
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 48(%esp), %edx
	movl %ecx,24(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 48(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 48(%esp), %ecx
	movl %edx,28(%esp)
	movl $-40,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	fildq (%edx)
	fistpq (%ecx)
Linitialize_continuations_l18:
Lproc_body_start_l17:
	leal 48(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl %ebx,32(%esp)
	movl $-48,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	leal 48(%esp), %ecx
	movl %ebp,36(%esp)
	movl $-36,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	leal 48(%esp), %ecx
	movl %esi,40(%esp)
	movl $-40,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	movl $0,%ecx
	btl $0,%ecx
	movl %ebx,%ecx
	sbbl %esi,%ecx
	movl %edi,44(%esp)
	movl $0,%edi
	btl $0,%edi
	sbbl %esi,%ebx
	movl $0,%ebx
	lahf
	shrl $8, %eax
	shll $31, %eax
	sarl $31, %eax
	btl $0,%eax
	sbbl %ebp,%edx
	leal 48(%esp), %ebp
	movl $-32,%eax
	addl %eax,%ebp
	movl %ecx,(%ebp)
	leal 48(%esp), %ecx
	movl $-28,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	leal 48(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 48(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	leal 48(%esp), %ebp
	movl $0,%ebx
	addl %ebx,%ebp
	movl (%ecx),%ebx
	movl %ebx,(%ebp)
	movl 32(%esp),%ebx
	movl 36(%esp),%ebp
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 48(%esp), %esp
	ret
.section .text
.section .text
llmul:
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 44(%esp), %edx
	movl $-44,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal 44(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 44(%esp), %ecx
	movl $-36,%eax
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
Linitialize_continuations_l30:
Lproc_body_start_l29:
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 44(%esp), %ecx
	movl $-44,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 44(%esp), %ecx
	movl %ebx,24(%esp)
	movl $-32,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	leal 44(%esp), %ecx
	movl %ebp,28(%esp)
	movl $-36,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl %eax,32(%esp)
	movl %edx,36(%esp)
	mull %ebp
	leal 44(%esp), %ecx
	movl %esi,40(%esp)
	movl $-28,%esi
	addl %esi,%ecx
	movl %eax,(%ecx)
	leal 44(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 44(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 44(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 32(%esp),%eax
	imull %ebx,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	imull %ebp,%eax
	addl %eax,%ecx
	leal 44(%esp), %eax
	movl $-28,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 44(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 44(%esp), %ecx
	leal 44(%esp), %ebp
	movl $0,%ebx
	addl %ebx,%ebp
	movl (%ecx),%ebx
	movl %ebx,(%ebp)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
	movl 40(%esp),%esi
	leal 44(%esp), %esp
	ret
.section .text

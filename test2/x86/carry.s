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
	leal -52(%esp), %esp
	leal 52(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 52(%esp), %ecx
	movl %edx,24(%esp)
	movl $-52,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	fildq (%edx)
	fistpq (%ecx)
	leal 52(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,28(%esp)
	movl $-44,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
Linitialize_continuations_l6:
Lproc_body_start_l5:
	leal 52(%esp), %edx
	movl $-48,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 52(%esp), %edx
	movl %ebx,32(%esp)
	movl $-52,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 52(%esp), %edx
	movl %ebp,36(%esp)
	movl $-40,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	leal 52(%esp), %edx
	movl %esi,40(%esp)
	movl $-44,%esi
	addl %esi,%edx
	movl (%edx),%esi
	movl $0,%edx
	btl $0,%edx
	movl %ebx,%edx
	adcl %esi,%edx
	movl %edi,44(%esp)
	movl $0,%edi
	btl $0,%edi
	adcl %esi,%ebx
	movl $0,%ebx
	lahf
	shrl $8, %eax
	movl $31,%ebx
	movl %ecx,48(%esp)
	movl %ebx,%ecx
	shll %cl, %eax
	movl $31,%ecx
	sarl %cl, %eax
	btl $0,%eax
	movl 48(%esp),%eax
	adcl %ebp,%eax
	leal 52(%esp), %ebp
	movl $-36,%ecx
	addl %ecx,%ebp
	movl %edx,(%ebp)
	leal 52(%esp), %edx
	movl $-32,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 52(%esp), %edx
	movl $-32,%ebp
	addl %ebp,%edx
	movl (%edx),%edx
	leal 52(%esp), %ebp
	leal 52(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	movl 32(%esp),%ebx
	movl 36(%esp),%ebp
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 52(%esp), %esp
	ret
.section .text
.section .text
llsub:
	leal -52(%esp), %esp
	leal 52(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 52(%esp), %ecx
	movl %edx,24(%esp)
	movl $-52,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	fildq (%edx)
	fistpq (%ecx)
	leal 52(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,28(%esp)
	movl $-44,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
Linitialize_continuations_l18:
Lproc_body_start_l17:
	leal 52(%esp), %edx
	movl $-48,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 52(%esp), %edx
	movl %ebx,32(%esp)
	movl $-52,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 52(%esp), %edx
	movl %ebp,36(%esp)
	movl $-40,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	leal 52(%esp), %edx
	movl %esi,40(%esp)
	movl $-44,%esi
	addl %esi,%edx
	movl (%edx),%esi
	movl $0,%edx
	btl $0,%edx
	movl %ebx,%edx
	sbbl %esi,%edx
	movl %edi,44(%esp)
	movl $0,%edi
	btl $0,%edi
	sbbl %esi,%ebx
	movl $0,%ebx
	lahf
	shrl $8, %eax
	movl $31,%ebx
	movl %ecx,48(%esp)
	movl %ebx,%ecx
	shll %cl, %eax
	movl $31,%ecx
	sarl %cl, %eax
	btl $0,%eax
	movl 48(%esp),%eax
	sbbl %ebp,%eax
	leal 52(%esp), %ebp
	movl $-36,%ecx
	addl %ecx,%ebp
	movl %edx,(%ebp)
	leal 52(%esp), %edx
	movl $-32,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 52(%esp), %edx
	movl $-32,%ebp
	addl %ebp,%edx
	movl (%edx),%edx
	leal 52(%esp), %ebp
	leal 52(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	movl 32(%esp),%ebx
	movl 36(%esp),%ebp
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 52(%esp), %esp
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

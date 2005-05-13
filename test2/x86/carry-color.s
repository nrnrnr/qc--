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
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl $4,%ecx
	movl %edx,28(%esp)
	movl 28(%esp),%edx
	addl %ecx,%edx
	movl %edx,28(%esp)
	leal 48(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 48(%esp), %edx
	movl $12,%ecx
	movl %edx,24(%esp)
	movl 24(%esp),%edx
	addl %ecx,%edx
	movl %edx,24(%esp)
	leal 48(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 48(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,44(%esp)
	movl %edi,40(%esp)
	movl %esi,36(%esp)
	movl %ebp,32(%esp)
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	leal 48(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl (%eax),%esi
	leal 48(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl (%eax),%ebp
	leal 48(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl (%eax),%edi
	movl $0,%edx
	btl $0,%edx
	movl %esi,%edx
	adcl %edi,%edx
	movl $0,%eax
	btl $0,%eax
	movl %esi,%eax
	adcl %edi,%eax
	lahf
	shrl $8, %eax
	shll $31, %eax
	shrl $31, %eax
	btl $0,%eax
	adcl %ebp,%ecx
	leal 48(%esp), %eax
	movl $-48,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl $0,%ebp
	addl %ebp,%ecx
	movl 44(%esp),%ebp
	movl %ebp,(%ecx)
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	movl 32(%esp),%ebp
	leal 48(%esp), %esp
	ret
.section .text
.section .text
llsub:
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl $4,%ecx
	movl %edx,28(%esp)
	movl 28(%esp),%edx
	addl %ecx,%edx
	movl %edx,28(%esp)
	leal 48(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 48(%esp), %edx
	movl $12,%ecx
	movl %edx,24(%esp)
	movl 24(%esp),%edx
	addl %ecx,%edx
	movl %edx,24(%esp)
	leal 48(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 48(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,44(%esp)
	movl %edi,40(%esp)
	movl %esi,36(%esp)
	movl %ebp,32(%esp)
.Linitialize_continuations_l16:
.Lproc_body_start_l15:
	leal 48(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl (%eax),%esi
	leal 48(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl (%eax),%ebp
	leal 48(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl (%eax),%edi
	movl $0,%edx
	btl $0,%edx
	movl %esi,%edx
	sbbl %edi,%edx
	movl $0,%eax
	btl $0,%eax
	movl %esi,%eax
	sbbl %edi,%eax
	lahf
	shrl $8, %eax
	shll $31, %eax
	shrl $31, %eax
	btl $0,%eax
	sbbl %ebp,%ecx
	leal 48(%esp), %eax
	movl $-48,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl $0,%ebp
	addl %ebp,%ecx
	movl 44(%esp),%ebp
	movl %ebp,(%ecx)
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	movl 32(%esp),%ebp
	leal 48(%esp), %esp
	ret
.section .text
.section .text
llmul:
	leal -48(%esp), %esp
	leal 48(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 48(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal 48(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 48(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal 48(%esp), %eax
	movl (%eax),%eax
	movl %eax,44(%esp)
	movl %edi,40(%esp)
	movl %esi,36(%esp)
	movl %ebp,32(%esp)
	movl %ebx,28(%esp)
.Linitialize_continuations_l27:
.Lproc_body_start_l26:
	leal 48(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	leal 48(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl (%eax),%ebp
	leal 48(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal 48(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%eax),%ebx
	movl %ebp,%eax
	mull %ebx
	leal 48(%esp), %edi
	movl $-48,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 48(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 48(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	imull %esi,%ebp
	addl %ebp,%ecx
	movl 24(%esp),%eax
	imull %ebx,%eax
	addl %eax,%ecx
	leal 48(%esp), %eax
	movl $-48,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	leal 48(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 44(%esp),%ebx
	movl %ebx,(%ecx)
	movl 40(%esp),%edi
	movl 36(%esp),%esi
	movl 32(%esp),%ebp
	movl 28(%esp),%ebx
	leal 48(%esp), %esp
	ret
.section .text

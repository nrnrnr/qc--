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
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 60(%esp), %edx
	movl %ecx,24(%esp)
	movl $-60,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 60(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 60(%esp), %edx
	movl %ecx,28(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 60(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	leal 60(%esp), %edx
	movl %ecx,32(%esp)
	movl $-56,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl %ecx,36(%esp)
	movl $-60,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl %ecx,40(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl %ecx,44(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	btl $0,%edx
	movl %ecx,48(%esp)
	movl 40(%esp),%edx
	movl %edx,%ecx
	movl %edi,52(%esp)
	movl 48(%esp),%edi
	adcl %edi,%ecx
	movl %ecx,56(%esp)
	movl $0,%ecx
	btl $0,%ecx
	adcl %edi,%edx
	lahf
	shrl $8, %eax
	shll $31, %eax
	sarl $31, %eax
	btl $0,%eax
	movl 36(%esp),%ecx
	movl 44(%esp),%edi
	adcl %edi,%ecx
	leal 60(%esp), %edi
	movl $-44,%edx
	addl %edx,%edi
	movl 56(%esp),%edx
	movl %edx,(%edi)
	leal 60(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 60(%esp), %ecx
	movl $-44,%edi
	addl %edi,%ecx
	movl (%ecx),%eax
	leal 60(%esp), %ecx
	movl $-40,%edi
	addl %edi,%ecx
	movl (%ecx),%edx
	leal 60(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl 32(%esp),%edi
	movl %edi,(%ecx)
	movl 52(%esp),%edi
	leal 60(%esp), %esp
	ret
.section .text
.section .text
llsub:
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 60(%esp), %edx
	movl %ecx,24(%esp)
	movl $-60,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 60(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 60(%esp), %edx
	movl %ecx,28(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	fildq (%ecx)
	fistpq (%edx)
	leal 60(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l18:
Lproc_body_start_l17:
	leal 60(%esp), %edx
	movl %ecx,32(%esp)
	movl $-56,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl %ecx,36(%esp)
	movl $-60,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl %ecx,40(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl %ecx,44(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	btl $0,%edx
	movl %ecx,48(%esp)
	movl 40(%esp),%edx
	movl %edx,%ecx
	movl %edi,52(%esp)
	movl 48(%esp),%edi
	sbbl %edi,%ecx
	movl %ecx,56(%esp)
	movl $0,%ecx
	btl $0,%ecx
	sbbl %edi,%edx
	lahf
	shrl $8, %eax
	shll $31, %eax
	sarl $31, %eax
	btl $0,%eax
	movl 36(%esp),%ecx
	movl 44(%esp),%edi
	sbbl %edi,%ecx
	leal 60(%esp), %edi
	movl $-44,%edx
	addl %edx,%edi
	movl 56(%esp),%edx
	movl %edx,(%edi)
	leal 60(%esp), %edi
	movl $-40,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 60(%esp), %ecx
	movl $-44,%edi
	addl %edi,%ecx
	movl (%ecx),%eax
	leal 60(%esp), %ecx
	movl $-40,%edi
	addl %edi,%ecx
	movl (%ecx),%edx
	leal 60(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl 32(%esp),%edi
	movl %edi,(%ecx)
	movl 52(%esp),%edi
	leal 60(%esp), %esp
	ret
.section .text
.section .text
llmul:
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 56(%esp), %edx
	movl $-56,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal 56(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 56(%esp), %edx
	movl $-48,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal 56(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l30:
Lproc_body_start_l29:
	leal 56(%esp), %edx
	movl $-52,%eax
	addl %eax,%edx
	movl (%edx),%edx
	leal 56(%esp), %eax
	movl %ecx,24(%esp)
	movl $-56,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-44,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %edi
	movl %ecx,40(%esp)
	movl $-48,%ecx
	addl %ecx,%edi
	movl (%edi),%ecx
	movl %eax,44(%esp)
	movl %edx,48(%esp)
	mull %ecx
	leal 56(%esp), %edi
	movl %ecx,52(%esp)
	movl $-40,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 56(%esp), %ecx
	movl $-36,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	leal 56(%esp), %ecx
	movl $-40,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl 44(%esp),%edx
	movl 40(%esp),%eax
	imull %eax,%edx
	addl %edx,%edi
	movl 48(%esp),%edx
	movl 52(%esp),%eax
	imull %eax,%edx
	addl %edx,%edi
	leal 56(%esp), %edx
	movl $-40,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 56(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 56(%esp), %ecx
	movl $-40,%edi
	addl %edi,%ecx
	movl (%ecx),%eax
	leal 56(%esp), %ecx
	movl $-36,%edi
	addl %edi,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl 24(%esp),%edi
	movl %edi,(%ecx)
	movl 36(%esp),%edi
	leal 56(%esp), %esp
	ret
.section .text

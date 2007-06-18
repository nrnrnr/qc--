.globl call3
.section .data
Cmm.ref_to_global_area:
/* reference to global-register signature */
.long Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .text
call3:
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 24(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 24(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 24(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl %eax,8(%esp)
	movl %ecx,%eax
	leal 24(%esp), %ecx
	movl %ecx,12(%esp)
	movl $8,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %edx,20(%esp)
	movl 16(%esp),%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edx
	leal 28(%esp), %esp
	jmp *%edx
.section .text

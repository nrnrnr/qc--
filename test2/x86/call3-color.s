.globl call3
.section .data
Cmm.ref_to_global_area:
/* reference to global-register signature */
.long Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .text
call3:
	leal -16(%esp), %esp
	movl %eax,12(%esp)
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,4(%esp)
	leal 16(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,(%esp)
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal 16(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	movl -8(%esp),%ecx
	jmp *%ecx
.section .text

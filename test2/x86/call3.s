.globl call3
.section .data
Cmm.ref_to_global_area:
/* reference to global-register signature */
.long Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .text
call3:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 20(%esp), %edx
	movl %ecx,4(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	leal 20(%esp), %ecx
	movl %edx,16(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %ecx
	movl $12,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	movl -24(%esp),%ecx
	jmp *%ecx
.section .text

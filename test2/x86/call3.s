.globl call3
.section .data
Cmm.ref_to_global_area:
/* reference to global-register signature */
.long Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .text
call3:
	leal -20(%esp), %esp
	movl $4,%edx
	leal 20(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,(%esp)
	leal 20(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	movl %edx,4(%esp)
	leal 20(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	leal 20(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l4:
proc_body_start_l3:
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl $8,%ecx
	movl %edx,16(%esp)
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $12,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 24(%esp), %esp
	movl -24(%esp),%ecx
	jmp *%ecx
.section .pcmap_data
stackdata_l13:
.long 0
.section .text

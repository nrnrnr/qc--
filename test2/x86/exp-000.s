.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
p:
	leal -12(%esp), %esp
	nop
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
initialize_continuations_l3:
	nop
	addl %eax,%eax
	movl (%eax),%eax
	movl $0,%ecx
	movl %ecx,4(%esp)
	leal 12(%esp), %ecx
	movl %ecx,(%esp)
	movl (%esp),%ecx
	movl 4(%esp),%edx
	addl %edx,%ecx
	movl %ecx,(%esp)
	movl (%esp),%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 12(%esp), %esp
	ret

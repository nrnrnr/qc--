.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
p:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%ecx
initialize_continuations_l3:
	movl %eax,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	movl %ecx,(%esp)
	leal 4(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l11:
.long 0
.section .text

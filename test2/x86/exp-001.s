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
initialize_continuations_l4:
proc_body_start_l3:
	movl $1,%eax
	movl $2,%edx
	movl %ecx,(%esp)
	movl $3,%ecx
	addl %edx,%eax
	addl %ecx,%eax
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l12:
.long 0
.section .text

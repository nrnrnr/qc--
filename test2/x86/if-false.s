.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	movl %esp,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %esp,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
Ljoin_l8:
	movl %esp,%edx
	movl %esp,%ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	ret
.section .text

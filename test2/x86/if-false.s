.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	movl $4,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%edx
	movl %esp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
Ljoin_l8:
	movl %esp,%edx
	movl $0,%ecx
	movl %esp,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	ret
.section .pcmap_data
Lstackdata_l16:
.long 0
.section .text

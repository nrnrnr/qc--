.globl incn
.section .data
Cmm.ref_to_global_area:
/* reference to global-register signature */
.long Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section .text
incn:
	movl %esp,%edx
	movl (%edx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	movl %esp,%ecx
	movl $0,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	ret
.section .text

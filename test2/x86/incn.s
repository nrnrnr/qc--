.globl incn
.section .data
Cmm.ref_to_global_area:
/* reference to global-register signature */
.long Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section .text
incn:
	movl %esp,%edx
	movl (%edx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl %esp,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	ret
.section .text

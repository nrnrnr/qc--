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
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $1,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	movl %esp,%eax
	movl $0,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	ret
.section .text

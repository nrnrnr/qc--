.globl incn
.section .data
Cmm.ref_to_global_area:
/* reference to global-register signature */
.long Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section .text
incn:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text

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
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	movl %esp,%edx
	movl $0,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	ret
.section .text

.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section .text
p:
	movl %esp,%edx
	movl (%edx),%ecx
initialize_continuations_l3:
	movl $0,%edx
	movl %esp,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
	ret
.section .pcmap_data
stackdata_l11:
.long 0
.section .text

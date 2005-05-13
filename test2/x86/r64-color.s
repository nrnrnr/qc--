.globl f
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .text
f:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edi,16(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $-559038737,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-17958194,%ecx
	leal 20(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 20(%esp), %ecx
	movl $0,%edi
	movl %edi,8(%esp)
	movl 8(%esp),%edi
	addl %edi,%ecx
	movl 12(%esp),%edi
	movl %edi,(%ecx)
	movl 16(%esp),%edi
	leal 20(%esp), %esp
	ret
.section .text

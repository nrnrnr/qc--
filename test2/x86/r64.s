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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $-559038737,%edx
	leal 24(%esp), %eax
	movl %ecx,8(%esp)
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $-17958194,%ecx
	leal 24(%esp), %edx
	movl $-20,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 24(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 24(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	addl %edi,%ecx
	movl 8(%esp),%edi
	movl %edi,(%ecx)
	movl 20(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .text

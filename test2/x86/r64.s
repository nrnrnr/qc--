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
	leal 24(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $-559038737,%ecx
	leal 24(%esp), %edx
	movl %eax,8(%esp)
	movl $-24,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-17958194,%eax
	leal 24(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 24(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,%edx
	leal 24(%esp), %ecx
	movl %ecx,12(%esp)
	movl $0,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %ebx,20(%esp)
	movl 16(%esp),%ebx
	addl %ebx,%ecx
	movl 8(%esp),%ebx
	movl %ebx,(%ecx)
	movl 20(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .text

.globl f
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
f:
	leal -16(%esp), %esp
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $-559038737,%ecx
	leal 16(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-17958194,%ecx
	leal 16(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 16(%esp), %ecx
	movl %ebx,8(%esp)
	leal 16(%esp), %ebx
	movl %ebp,12(%esp)
	movl $0,%ebp
	addl %ebp,%ebx
	movl (%ecx),%ebp
	movl %ebp,(%ebx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	leal 16(%esp), %esp
	ret
.section .text

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
	movl $-16,%eax
	leal 16(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-17958194,%ecx
	movl $-12,%edx
	leal 16(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-12,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%edx
	movl $-16,%ecx
	leal 16(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %ecx
	movl %ebx,8(%esp)
	movl $0,%ebx
	movl %ebp,12(%esp)
	leal 16(%esp), %ebp
	addl %ebx,%ebp
	movl (%ecx),%ebx
	movl %ebx,(%ebp)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .text

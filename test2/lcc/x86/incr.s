.globl main
.globl memchar
.globl memint
.globl regchar
.globl regint
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -4(%esp), %esp
Linitialize_continuations_l8:
Lproc_body_start_l7:
	movl $0,%eax
	leal 4(%esp), %edx
	leal 4(%esp), %ecx
	movl %ebx,(%esp)
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .text
memchar:
	leal -28(%esp), %esp
Linitialize_continuations_l21:
Lproc_body_start_l20:
	leal 28(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $1,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl %ebx,(%esp)
	leal 28(%esp), %ebx
	movl %ebp,4(%esp)
	movl $-4,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	leal 28(%esp), %eax
	movl $-8,%ebx
	addl %ebx,%eax
	movzbl (%ecx),%ebx
	movl %eax,8(%esp)
	movl %ebx,%eax
	movl 8(%esp),%ebx
	movb %al,(%ebx)
	leal 28(%esp), %eax
	movl $-4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %edx,%ebx
	leal 28(%esp), %edx
	movl $-4,%eax
	addl %eax,%edx
	movl %ebx,(%edx)
	leal 28(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movzbl (%ebx),%eax
	movb %al,(%edx)
	leal 28(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $-1,%eax
	movl %edx,%ebx
	addl %eax,%ebx
	leal 28(%esp), %ecx
	movl $-4,%ebp
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	leal 28(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movzbl (%edx),%ebx
	movl %eax,12(%esp)
	movl %ebx,%eax
	movb %al,(%ecx)
	leal 28(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl 12(%esp),%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-4,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-8,%ebx
	addl %ebx,%eax
	movzbl (%ecx),%ebx
	movl %eax,16(%esp)
	movl %ebx,%eax
	movl 16(%esp),%ebx
	movb %al,(%ebx)
	movl $0,%eax
	leal 28(%esp), %ebx
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl (%esp),%ebx
	movl 4(%esp),%ebp
	leal 28(%esp), %esp
	ret
.section .text
memint:
	leal -16(%esp), %esp
Linitialize_continuations_l34:
Lproc_body_start_l33:
	leal 16(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl %ebx,(%esp)
	leal 16(%esp), %ebx
	movl %ebp,4(%esp)
	movl $-4,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	leal 16(%esp), %eax
	movl $-8,%ebx
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	leal 16(%esp), %eax
	movl $-4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %edx,%ebx
	leal 16(%esp), %edx
	movl $-4,%eax
	addl %eax,%edx
	movl %ebx,(%edx)
	leal 16(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	leal 16(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $-4,%eax
	movl %edx,%ebx
	addl %eax,%ebx
	leal 16(%esp), %ecx
	movl $-4,%ebp
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	leal 16(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	leal 16(%esp), %ecx
	movl $-4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	leal 16(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl %ebx,(%eax)
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%ebx),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 16(%esp), %ecx
	leal 16(%esp), %ebx
	movl $0,%edx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl (%esp),%ebx
	movl 4(%esp),%ebp
	leal 16(%esp), %esp
	ret
.section .text
regchar:
	leal -4(%esp), %esp
Linitialize_continuations_l47:
Lproc_body_start_l46:
	movl $1,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movsbl (%edx),%edx
	addl %ecx,%eax
	movl %eax,%ecx
	movsbl (%eax),%edx
	movl $-1,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movsbl (%ecx),%ecx
	addl %edx,%eax
	movl %eax,%edx
	movsbl (%eax),%edx
	movl $0,%eax
	leal 4(%esp), %edx
	leal 4(%esp), %ecx
	movl %ebx,(%esp)
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .text
regint:
	leal -4(%esp), %esp
Linitialize_continuations_l60:
Lproc_body_start_l59:
	movl $4,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%edx),%edx
	addl %ecx,%eax
	movl %eax,%ecx
	movl (%eax),%edx
	movl $-4,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	addl %edx,%eax
	movl %eax,%edx
	movl (%eax),%edx
	movl $0,%eax
	leal 4(%esp), %edx
	leal 4(%esp), %ecx
	movl %ebx,(%esp)
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .text

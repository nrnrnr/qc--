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
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .text
memchar:
	leal -44(%esp), %esp
Linitialize_continuations_l21:
Lproc_body_start_l20:
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $1,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %edx,(%esp)
	leal 44(%esp), %edx
	movl %edx,4(%esp)
	movl $-4,%edx
	movl %edx,8(%esp)
	movl 4(%esp),%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movzbl (%ecx),%eax
	movb %al,(%edx)
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 12(%esp),%ecx
	addl %ecx,%edx
	leal 44(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 44(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movzbl (%edx),%eax
	movb %al,(%ecx)
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $-1,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %edx,16(%esp)
	leal 44(%esp), %edx
	movl %edx,20(%esp)
	movl $-4,%edx
	movl %edx,24(%esp)
	movl 20(%esp),%edx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movzbl (%ecx),%eax
	movb %al,(%edx)
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 28(%esp),%ecx
	addl %ecx,%edx
	leal 44(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 44(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movzbl (%edx),%eax
	movb %al,(%ecx)
	movl $0,%eax
	leal 44(%esp), %edx
	leal 44(%esp), %ecx
	movl %edx,32(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.section .text
memint:
	leal -44(%esp), %esp
Linitialize_continuations_l34:
Lproc_body_start_l33:
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %edx,(%esp)
	leal 44(%esp), %edx
	movl %edx,4(%esp)
	movl $-4,%edx
	movl %edx,8(%esp)
	movl 4(%esp),%edx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 12(%esp),%ecx
	addl %ecx,%edx
	leal 44(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 44(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $-4,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %edx,16(%esp)
	leal 44(%esp), %edx
	movl %edx,20(%esp)
	movl $-4,%edx
	movl %edx,24(%esp)
	movl 20(%esp),%edx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 28(%esp),%ecx
	addl %ecx,%edx
	leal 44(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 44(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $0,%eax
	leal 44(%esp), %edx
	leal 44(%esp), %ecx
	movl %edx,32(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
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
	movl %eax,%edx
	movsbl (%eax),%ecx
	movl $-1,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movsbl (%edx),%edx
	addl %ecx,%eax
	movl %eax,%edx
	movsbl (%eax),%edx
	movl $0,%eax
	leal 4(%esp), %edx
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
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
	movl %eax,%edx
	movl (%eax),%ecx
	movl $-4,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%edx),%edx
	addl %ecx,%eax
	movl %eax,%edx
	movl (%eax),%edx
	movl $0,%eax
	leal 4(%esp), %edx
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .text

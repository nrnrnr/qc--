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
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.section .text
main:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
	movl $0,%eax
	leal 4(%esp), %ecx
	movl %edx,(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .text
memchar:
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l21:
.Lproc_body_start_l20:
	leal 48(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $1,%eax
	movl %edx,(%esp)
	movl %ecx,%edx
	addl %eax,%edx
	movl %edx,4(%esp)
	leal 48(%esp), %edx
	movl %edx,8(%esp)
	movl $-4,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movzbl (%ecx),%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	movb %al,(%edx)
	leal 48(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 20(%esp),%ecx
	addl %ecx,%edx
	leal 48(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 48(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movzbl (%edx),%eax
	movb %al,(%ecx)
	leal 48(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $-1,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %edx,24(%esp)
	leal 48(%esp), %edx
	movl %edx,28(%esp)
	movl $-4,%edx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 48(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movzbl (%ecx),%eax
	movb %al,(%edx)
	leal 48(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 36(%esp),%ecx
	addl %ecx,%edx
	leal 48(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 48(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movzbl (%edx),%eax
	movb %al,(%ecx)
	movl $0,%eax
	leal 48(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %esp
	ret
.section .text
memint:
	leal -44(%esp), %esp
	leal 44(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l34:
.Lproc_body_start_l33:
	leal 44(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $4,%eax
	movl %edx,(%esp)
	movl %ecx,%edx
	addl %eax,%edx
	movl %edx,4(%esp)
	leal 44(%esp), %edx
	movl %edx,8(%esp)
	movl $-4,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
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
	addl %eax,%edx
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
	movl %edx,20(%esp)
	leal 44(%esp), %edx
	movl %edx,24(%esp)
	movl $-4,%edx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 44(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 44(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 32(%esp),%ecx
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
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 44(%esp), %esp
	ret
.section .text
regchar:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l47:
.Lproc_body_start_l46:
	movl $1,%eax
	movl %ecx,(%esp)
	movl %edx,%ecx
	addl %eax,%ecx
	movsbl (%edx),%edx
	addl %eax,%ecx
	movl %ecx,%edx
	movsbl (%ecx),%ecx
	movl $-1,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movsbl (%edx),%edx
	addl %ecx,%eax
	movl %eax,%edx
	movsbl (%eax),%edx
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
regint:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l60:
.Lproc_body_start_l59:
	movl $4,%eax
	movl %ecx,(%esp)
	movl %edx,%ecx
	addl %eax,%ecx
	movl (%edx),%edx
	addl %eax,%ecx
	movl %ecx,%edx
	movl (%ecx),%ecx
	movl $-4,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl (%edx),%edx
	addl %ecx,%eax
	movl %eax,%edx
	movl (%eax),%edx
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text

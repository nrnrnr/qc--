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
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l7:
.Lproc_body_start_l6:
	movl $0,%ecx
	movl %eax,(%esp)
	movl %ecx,%eax
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .text
memchar:
	leal -52(%esp), %esp
	leal 52(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l19:
.Lproc_body_start_l18:
	leal 52(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	movl %eax,(%esp)
	movl %ecx,%eax
	addl %edx,%eax
	movl %eax,4(%esp)
	leal 52(%esp), %eax
	movl %eax,8(%esp)
	movl $-4,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movzbl (%ecx),%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	movl 20(%esp),%ecx
	movb %al,(%ecx)
	leal 52(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %edx,%eax
	leal 52(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movzbl (%eax),%eax
	movb %al,(%ecx)
	leal 52(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-1,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	movl %eax,24(%esp)
	leal 52(%esp), %eax
	movl %eax,28(%esp)
	movl $-4,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movzbl (%ecx),%ecx
	movl %eax,40(%esp)
	movl %ecx,%eax
	movl 40(%esp),%ecx
	movb %al,(%ecx)
	leal 52(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movzbl (%eax),%eax
	movb %al,(%ecx)
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
.section .text
memint:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l31:
.Lproc_body_start_l30:
	leal 44(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	movl %eax,(%esp)
	movl %ecx,%eax
	addl %edx,%eax
	movl %eax,4(%esp)
	leal 44(%esp), %eax
	movl %eax,8(%esp)
	movl $-4,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	addl %edx,%eax
	leal 44(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 44(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-4,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	movl %eax,20(%esp)
	leal 44(%esp), %eax
	movl %eax,24(%esp)
	movl $-4,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 44(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 32(%esp),%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 44(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 44(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.section .text
regchar:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l43:
.Lproc_body_start_l42:
	movl $1,%edx
	movl %eax,(%esp)
	addl %edx,%eax
	movl %eax,4(%esp)
	movl (%esp),%eax
	movsbl (%eax),%eax
	movl 4(%esp),%eax
	addl %edx,%eax
	movl %eax,%edx
	movsbl (%eax),%eax
	movl $-1,%eax
	movl %eax,8(%esp)
	movl %edx,%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movsbl (%edx),%edx
	addl %ecx,%eax
	movl %eax,%ecx
	movsbl (%eax),%eax
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .text
regint:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l55:
.Lproc_body_start_l54:
	movl $4,%edx
	movl %eax,(%esp)
	addl %edx,%eax
	movl %eax,4(%esp)
	movl (%esp),%eax
	movl (%eax),%eax
	movl 4(%esp),%eax
	addl %edx,%eax
	movl %eax,%edx
	movl (%eax),%eax
	movl $-4,%eax
	movl %eax,8(%esp)
	movl %edx,%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%edx
	addl %ecx,%eax
	movl %eax,%ecx
	movl (%eax),%eax
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .text

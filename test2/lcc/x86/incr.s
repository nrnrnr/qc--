.globl main
.globl memchar
.globl memint
.globl regchar
.globl regint
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
main:
	leal -4(%esp), %esp
	nop
	nop
	leal 4(%esp), %ecx
	leal 4(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l3:
	nop
	movl $0,%eax
	leal 4(%esp), %ecx
	movl %ecx,(%esp)
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
memchar:
	leal -52(%esp), %esp
	nop
	nop
	leal 52(%esp), %ecx
	leal 52(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l15:
	movl $-4,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	movl %ecx,36(%esp)
	movl %eax,4(%esp)
	movl 4(%esp),%ecx
	movl 36(%esp),%edx
	addl %edx,%ecx
	movl %ecx,4(%esp)
	movl $-4,%ecx
	movl %ecx,(%esp)
	leal 52(%esp), %ecx
	movl (%esp),%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl $-8,%ecx
	movl %ecx,8(%esp)
	leal 52(%esp), %ecx
	movl %ecx,12(%esp)
	movl 12(%esp),%ecx
	movl 8(%esp),%edx
	addl %edx,%ecx
	movl %ecx,12(%esp)
	movzbl (%eax),%eax
	movl 12(%esp),%ecx
	movb %al,(%ecx)
	movl $-4,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl $-4,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movzbl (%eax),%eax
	movb %al,(%ecx)
	movl $-4,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-1,%ecx
	movl %ecx,40(%esp)
	movl %eax,20(%esp)
	movl 20(%esp),%ecx
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl %ecx,20(%esp)
	movl $-4,%ecx
	movl %ecx,16(%esp)
	leal 52(%esp), %ecx
	movl 16(%esp),%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl $-8,%ecx
	movl %ecx,24(%esp)
	leal 52(%esp), %ecx
	movl %ecx,28(%esp)
	movl 28(%esp),%ecx
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl %ecx,28(%esp)
	movzbl (%eax),%eax
	movl 28(%esp),%ecx
	movb %al,(%ecx)
	movl $-4,%ecx
	leal 52(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl $-4,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movzbl (%eax),%eax
	movb %al,(%ecx)
	nop
	movl $0,%eax
	leal 52(%esp), %ecx
	movl %ecx,32(%esp)
	movl $0,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %esp
	ret
memint:
	leal -60(%esp), %esp
	nop
	nop
	leal 60(%esp), %ecx
	leal 60(%esp), %eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
initialize_continuations_l27:
	movl $-4,%ecx
	leal 60(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	movl %ecx,44(%esp)
	movl %eax,4(%esp)
	movl 4(%esp),%ecx
	movl 44(%esp),%edx
	addl %edx,%ecx
	movl %ecx,4(%esp)
	movl $-4,%ecx
	movl %ecx,(%esp)
	leal 60(%esp), %ecx
	movl %ecx,28(%esp)
	movl (%esp),%ecx
	movl 28(%esp),%edx
	addl %ecx,%edx
	movl %edx,28(%esp)
	movl 4(%esp),%ecx
	movl 28(%esp),%edx
	movl %ecx,(%edx)
	movl $-8,%ecx
	movl %ecx,8(%esp)
	leal 60(%esp), %ecx
	movl %ecx,32(%esp)
	movl 8(%esp),%ecx
	movl 32(%esp),%edx
	addl %ecx,%edx
	movl %edx,32(%esp)
	movl (%eax),%eax
	movl 32(%esp),%ecx
	movl %eax,(%ecx)
	movl $-4,%ecx
	leal 60(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl $-4,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	movl $-4,%ecx
	leal 60(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-4,%ecx
	movl %ecx,48(%esp)
	movl %eax,16(%esp)
	movl 16(%esp),%ecx
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl %ecx,16(%esp)
	movl $-4,%ecx
	movl %ecx,12(%esp)
	leal 60(%esp), %ecx
	movl %ecx,36(%esp)
	movl 12(%esp),%ecx
	movl 36(%esp),%edx
	addl %ecx,%edx
	movl %edx,36(%esp)
	movl 16(%esp),%ecx
	movl 36(%esp),%edx
	movl %ecx,(%edx)
	movl $-8,%ecx
	movl %ecx,20(%esp)
	leal 60(%esp), %ecx
	movl %ecx,40(%esp)
	movl 20(%esp),%ecx
	movl 40(%esp),%edx
	addl %ecx,%edx
	movl %edx,40(%esp)
	movl (%eax),%eax
	movl 40(%esp),%ecx
	movl %eax,(%ecx)
	movl $-4,%ecx
	leal 60(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl 48(%esp),%ecx
	addl %ecx,%eax
	movl $-4,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	nop
	movl $0,%eax
	leal 60(%esp), %ecx
	movl %ecx,24(%esp)
	movl $0,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 60(%esp), %esp
	ret
regchar:
	leal -4(%esp), %esp
	nop
	nop
	leal 4(%esp), %ecx
	leal 4(%esp), %edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
initialize_continuations_l39:
	movl %eax,%edx
	movl $1,%eax
	movl %eax,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %eax,%eax
	movzbl (%edx),%edx
	movl %edx,%edx
	addl %ecx,%eax
	movzbl (%eax),%ecx
	movl %ecx,%edx
	movl %eax,%edx
	movl $-1,%eax
	movl %eax,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %eax,%eax
	movzbl (%edx),%edx
	movl %edx,%edx
	movl %eax,%eax
	addl %ecx,%eax
	movl %eax,%eax
	movzbl (%eax),%eax
	movl %eax,%edx
	nop
	movl $0,%eax
	leal 4(%esp), %ecx
	movl %ecx,(%esp)
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
regint:
	leal -4(%esp), %esp
	nop
	nop
	leal 4(%esp), %ecx
	leal 4(%esp), %edx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
initialize_continuations_l51:
	movl %eax,%edx
	movl $4,%eax
	movl %eax,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %eax,%eax
	movl (%edx),%edx
	movl %edx,%edx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %ecx,%edx
	movl %eax,%edx
	movl $-4,%eax
	movl %eax,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %eax,%eax
	movl (%edx),%edx
	movl %edx,%edx
	movl %eax,%eax
	addl %ecx,%eax
	movl %eax,%eax
	movl (%eax),%eax
	movl %eax,%edx
	nop
	movl $0,%eax
	leal 4(%esp), %ecx
	movl %ecx,(%esp)
	movl $0,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret

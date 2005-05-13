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
	movl %eax,(%esp)
.Linitialize_continuations_l7:
.Lproc_body_start_l6:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
memchar:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l19:
.Lproc_body_start_l18:
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	movl $1,%ecx
	movl %esi,%eax
	addl %ecx,%eax
	leal 20(%esp), %edi
	movl $-4,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 20(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movzbl (%esi),%eax
	movb %al,(%edx)
	leal 20(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movzbl (%edx),%eax
	movb %al,(%ecx)
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	movl $-1,%ecx
	movl %esi,%eax
	addl %ecx,%eax
	leal 20(%esp), %edi
	movl $-4,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 20(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movzbl (%esi),%eax
	movb %al,(%edx)
	leal 20(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movzbl (%edx),%eax
	movb %al,(%ecx)
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 20(%esp), %esp
	ret
.section .text
memint:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l31:
.Lproc_body_start_l30:
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%edx
	movl %ecx,%eax
	addl %edx,%eax
	leal 20(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 20(%esp), %eax
	movl $-8,%esi
	addl %esi,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	addl %edx,%ecx
	leal 20(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $-4,%edx
	movl %ecx,%eax
	addl %edx,%eax
	leal 20(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 20(%esp), %eax
	movl $-8,%esi
	addl %esi,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	addl %edx,%ecx
	leal 20(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 20(%esp), %esp
	ret
.section .text
regchar:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
.Linitialize_continuations_l43:
.Lproc_body_start_l42:
	movl %ecx,%eax
	movl $1,%ecx
	movl %ecx,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movsbl (%eax),%eax
	movl %ecx,%eax
	addl %edx,%eax
	movl %eax,%ecx
	movsbl (%eax),%eax
	movl %ecx,%eax
	movl $-1,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movsbl (%eax),%eax
	movl %ecx,%eax
	addl %edx,%eax
	movl %eax,%ecx
	movsbl (%eax),%eax
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
	leal 4(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
.Linitialize_continuations_l55:
.Lproc_body_start_l54:
	movl %ecx,%eax
	movl $4,%ecx
	movl %ecx,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %ecx,%eax
	addl %edx,%eax
	movl %eax,%ecx
	movl (%eax),%eax
	movl %ecx,%eax
	movl $-4,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %ecx,%eax
	addl %edx,%eax
	movl %eax,%ecx
	movl (%eax),%eax
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text

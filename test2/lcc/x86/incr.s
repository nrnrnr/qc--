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
initialize_continuations_l8:
proc_body_start_l7:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	movl %ebx,(%esp)
	leal 4(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l18:
.long 0
.section .text
memchar:
	leal -16(%esp), %esp
initialize_continuations_l21:
proc_body_start_l20:
	movl $-4,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %ebx,(%esp)
	movl $-4,%ebx
	movl %ebp,4(%esp)
	leal 16(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl $-8,%eax
	leal 16(%esp), %ebp
	addl %eax,%ebp
	movzbl (%edx),%eax
	movb %al,(%ebp)
	movl $-4,%eax
	leal 16(%esp), %ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %ecx,%eax
	movl $-4,%ecx
	leal 16(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $-8,%ebp
	leal 16(%esp), %ecx
	addl %ebp,%ecx
	movzbl (%eax),%eax
	movb %al,(%ecx)
	movl $-4,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $-1,%ecx
	movl %eax,%ebp
	addl %ecx,%ebp
	movl $-4,%edx
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl %ebp,(%ebx)
	movl $-8,%ebx
	leal 16(%esp), %ebp
	addl %ebx,%ebp
	movzbl (%eax),%eax
	movb %al,(%ebp)
	movl $-4,%eax
	leal 16(%esp), %ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %ecx,%eax
	movl $-4,%ecx
	leal 16(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $-8,%ebp
	leal 16(%esp), %ecx
	addl %ebp,%ecx
	movzbl (%eax),%eax
	movb %al,(%ecx)
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%ebp
	leal 16(%esp), %ebx
	addl %ebp,%ebx
	movl (%ecx),%ebp
	movl %ebp,(%ebx)
	movl 4(%esp),%ebp
	movl (%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .pcmap_data
stackdata_l31:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .text
memint:
	leal -16(%esp), %esp
initialize_continuations_l34:
proc_body_start_l33:
	movl $-4,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movl %ebx,(%esp)
	movl $-4,%ebx
	movl %ebp,4(%esp)
	leal 16(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl $-8,%eax
	leal 16(%esp), %ebp
	addl %eax,%ebp
	movl (%edx),%eax
	movl %eax,(%ebp)
	movl $-4,%eax
	leal 16(%esp), %ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %ecx,%eax
	movl $-4,%ecx
	leal 16(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $-8,%ebp
	leal 16(%esp), %ecx
	addl %ebp,%ecx
	movl (%eax),%ebp
	movl %ebp,(%ecx)
	movl $-4,%ecx
	leal 16(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $-4,%ebp
	movl %ecx,%eax
	addl %ebp,%eax
	movl $-4,%edx
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-8,%eax
	leal 16(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $-4,%eax
	leal 16(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %ebp,%eax
	movl $-4,%ebp
	leal 16(%esp), %ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl $-8,%ebx
	leal 16(%esp), %ebp
	addl %ebx,%ebp
	movl (%eax),%ebx
	movl %ebx,(%ebp)
	movl $0,%eax
	leal 16(%esp), %ebx
	movl $0,%ebp
	leal 16(%esp), %ecx
	addl %ebp,%ecx
	movl (%ebx),%ebp
	movl %ebp,(%ecx)
	movl 4(%esp),%ebp
	movl (%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .pcmap_data
stackdata_l44:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .text
regchar:
	leal -4(%esp), %esp
initialize_continuations_l47:
proc_body_start_l46:
	movl $1,%ecx
	movl %edx,%eax
	addl %ecx,%eax
	movzbl (%edx),%edx
	addl %ecx,%eax
	movl %eax,%ecx
	movzbl (%eax),%edx
	movl $-1,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movzbl (%ecx),%ecx
	addl %edx,%eax
	movl %eax,%edx
	movzbl (%eax),%edx
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	movl %ebx,(%esp)
	leal 4(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l57:
.long 0
.section .text
regint:
	leal -4(%esp), %esp
initialize_continuations_l60:
proc_body_start_l59:
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
	movl $0,%ecx
	movl %ebx,(%esp)
	leal 4(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l70:
.long 0
.section .text

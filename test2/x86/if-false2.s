.globl main
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
main:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 4(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 4(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
.Ljoin_l7:
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

.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
main:
	leal -4(%esp), %esp
	movl $4,%edx
	leal 4(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%edx
	leal 4(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
Ljoin_l7:
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
.section .text

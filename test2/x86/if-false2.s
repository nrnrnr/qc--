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
	leal 4(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 4(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
Ljoin_l7:
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

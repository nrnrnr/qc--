.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
f:
.byte 48
.byte 85
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 117
.byte 10
.byte 0
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $0,%edi
	leal f,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
.Lcall_successor_l7:
	movl %edi,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l14:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l15
.section .pcmap_data
.Lframe_l15:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l14
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0x4000000b
.long 0
.section .text

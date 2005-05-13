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
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal fmt,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l13:
	leal fmt,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l10:
	leal fmt,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l20:
.long 0
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l21
.section .pcmap_data
.Lframe_l21:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l20
.long 0
.long 2
.long 0
.long 1
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l22
.section .pcmap_data
.Lframe_l22:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l20
.long 0
.long 2
.long 0
.long 1
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l20
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 97
.byte 114
.byte 103
.byte 99
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

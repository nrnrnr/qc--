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
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal fmt,%edx
	movl %eax,8(%esp)
	leal 24(%esp), %eax
	movl %eax,12(%esp)
	movl $-24,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 24(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l13:
	leal fmt,%eax
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 24(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l10:
	leal fmt,%eax
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 24(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
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
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l20
.long 0
.long 2
.long 0
.long 1
.long 0xfffffff0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l22
.section .pcmap_data
.Lframe_l22:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l20
.long 0
.long 2
.long 0
.long 1
.long 0xfffffff0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xffffffe8
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

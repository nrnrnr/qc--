.globl main
.globl my_data
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
my_data:
.byte 104
.byte 101
.byte 108
.byte 108
.byte 111
.byte 10
.byte 0
.section .text
foo:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal my_data,%eax
	leal 12(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl 4(%esp),%eax
	call *%eax
.Lcall_successor_l8:
	movl 4(%esp),%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l15:
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l16
.section .pcmap_data
.Lframe_l16:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l15
.long 0
.long 1
.long 0
.long 1
.long 0xfffffff8
.long 0
.section .text
.section .text
main:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
.Linitialize_continuations_l18:
.Lproc_body_start_l17:
	leal printf,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call foo
.Lcall_successor_l22:
	movl $0,%eax
	leal 8(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l29:
.long 0
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l29
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text

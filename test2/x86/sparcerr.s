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
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal my_data,%edx
	movl %eax,4(%esp)
	leal 24(%esp), %eax
	movl %eax,8(%esp)
	movl $-24,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl %ebx,20(%esp)
	movl 4(%esp),%ebx
	call *%ebx
.Lcall_successor_l8:
	movl %ebx,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 24(%esp), %esp
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
.long 0xffffffe8
.long 0xfffffff8
.long .Lstackdata_l15
.long 1
.long 1
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0xffffffec
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
.Linitialize_continuations_l18:
.Lproc_body_start_l17:
	leal printf,%ecx
	leal 8(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call foo
.Lcall_successor_l22:
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
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

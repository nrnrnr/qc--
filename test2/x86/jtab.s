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
.align 4
jump_tab:
.long L1
.long L2
.long L3
.section .text
f:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal jump_tab,%edx
	movl %eax,(%esp)
	movl $4,%eax
	movl %ecx,4(%esp)
	movl (%esp),%ecx
	imull %ecx,%eax
	addl %eax,%edx
	movl (%edx),%eax
	jmp *%eax
L1:
	movl $1,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
L2:
	movl $2,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
L3:
	movl $3,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .text
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
.Linitialize_continuations_l16:
.Lproc_body_start_l15:
	movl $0,%ecx
	movl %eax,8(%esp)
	movl %ecx,%eax
	call f
.Lcall_successor_l35:
	leal fmt,%ecx
	leal 16(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l32:
	movl $1,%eax
	call f
.Lcall_successor_l29:
	leal fmt,%ecx
	leal 16(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l26:
	movl $2,%eax
	call f
.Lcall_successor_l23:
	leal fmt,%ecx
	leal 16(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l20:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l41:
.long 0
.section .pcmap
.long .Lcall_successor_l35
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l41
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l32
.long .Lframe_l43
.section .pcmap_data
.Lframe_l43:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l41
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l29
.long .Lframe_l44
.section .pcmap_data
.Lframe_l44:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l41
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l26
.long .Lframe_l45
.section .pcmap_data
.Lframe_l45:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l41
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l46
.section .pcmap_data
.Lframe_l46:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l41
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l47
.section .pcmap_data
.Lframe_l47:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l41
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
.align 4
fmt:
.byte 67
.byte 111
.byte 117
.byte 110
.byte 116
.byte 105
.byte 110
.byte 103
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

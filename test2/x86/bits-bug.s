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
.align 8
success:
.byte 115
.byte 117
.byte 99
.byte 99
.byte 101
.byte 115
.byte 115
.byte 10
.byte 0
.align 8
failed:
.byte 102
.byte 97
.byte 105
.byte 108
.byte 101
.byte 100
.byte 10
.byte 0
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
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $-1420500317,%ecx
	leal 8(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call callee
.Ljoin_l9:
	movl $0,%eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l16:
.long 0
.section .pcmap
.long .Ljoin_l9
.long .Lframe_l17
.section .pcmap_data
.Lframe_l17:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l16
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .text
callee:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
	movl $-1420500317,%edx
	cmpl %edx,%eax
	jne .Ljoin_l29
.Ljoin_l30:
	leal success,%eax
	leal 16(%esp), %edx
	movl %eax,4(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,8(%esp)
	call printf
.Ljoin_l24:
	leal 16(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 16(%esp), %esp
	ret
.Ljoin_l29:
	leal failed,%eax
	leal 16(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,8(%esp)
	call printf
.Ljoin_l28:
	leal 16(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l37:
.long 0
.section .pcmap
.long .Ljoin_l24
.long .Lframe_l38
.section .pcmap_data
.Lframe_l38:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l37
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .pcmap
.long .Ljoin_l28
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l37
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text

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
nocut:
.byte 110
.byte 111
.byte 32
.byte 99
.byte 117
.byte 116
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
ret:
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 10
.byte 0
.section .text
main:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edi,16(%esp)
	movl %esi,20(%esp)
	movl %ebp,24(%esp)
	movl %ebx,28(%esp)
.Linitialize_continuations_l13:
	leal .Lcut_entry_l10,%ecx
	leal 40(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %ecx
	movl $-40,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lproc_body_start_l12:
	movl $0,%eax
	movl %eax,8(%esp)
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	call f
.Lcall_successor_l24:
	leal nocut,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l21:
	movl $1,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 20(%esp),%esi
	movl 24(%esp),%ebp
	movl 28(%esp),%ebx
	leal 40(%esp), %esp
	ret
.Lcut_entry_l10:
	movl %edx,8(%esp)
.Lstart_of_continuation_code_l9:
	leal nocut,%ecx
	movl $3,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l17:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 20(%esp),%esi
	movl 24(%esp),%ebp
	movl 28(%esp),%ebx
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l29:
.long 0
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l29
.long 4
.long 3
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0xffffffe0
.long 0
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l29
.long 4
.long 3
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcut_entry_l10
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l29
.long 4
.long 3
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l29
.long 4
.long 3
.long 0
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffec
.long 9
.long 0xfffffff0
.long 7
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
f:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call g
.Lcall_successor_l42:
	leal ret,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l39:
	leal 8(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l48:
.long 0
.section .pcmap
.long .Lcall_successor_l42
.long .Lframe_l49
.section .pcmap_data
.Lframe_l49:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l48
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l48
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
.section .text
g:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
.Linitialize_continuations_l52:
.Lproc_body_start_l51:
	call h
.Lcall_successor_l59:
	leal ret,%eax
	leal 8(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l56:
	leal 8(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l65:
.long 0
.section .pcmap
.long .Lcall_successor_l59
.long .Lframe_l66
.section .pcmap_data
.Lframe_l66:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l65
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l56
.long .Lframe_l67
.section .pcmap_data
.Lframe_l67:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l65
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
.section .text
h:
	movl %esp,%ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l69:
.Lproc_body_start_l68:
	movl $99,%edx
	movl $4,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl (%ecx),%ecx
	movl (%eax),%eax
	movl %ecx, %esp; jmp *%eax
.section .text

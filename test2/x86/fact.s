.globl cmm_threadfun
.globl run_thread
.globl fact
.globl cmm_stacktrace
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
comeback:
.skip 4, 0
.section .text
run_thread:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l14:
	leal .Lcut_entry_l11,%edx
	movl %eax,(%esp)
	leal 40(%esp), %eax
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lproc_body_start_l13:
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal comeback,%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	movl (%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl (%ecx),%ecx
	movl %edi,28(%esp)
	movl %esi,24(%esp)
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
	movl %eax, %esp; jmp *%ecx
.Lcut_entry_l11:
.Lstart_of_continuation_code_l10:
	movl %edx,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	movl 24(%esp),%esi
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l22:
.long 0
.section .pcmap
.long .Lcut_entry_l11
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l22
.long 4
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 7
.long 0xffffffe8
.long 0
.long 0
.long 0
.section .text
.section .text
cmm_threadfun:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l25:
.Lproc_body_start_l24:
	movl (%eax),%edx
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%eax
	leal 8(%esp), %ebx
	movl $-8,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %ecx,4(%esp)
	call *%edx
.Lcall_successor_l28:
	movl %eax,%edx
	leal comeback,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal comeback,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %eax, %esp; jmp *%ecx
.section .pcmap_data
.Lstackdata_l35:
.long 0
.section .pcmap
.long .Lcall_successor_l28
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l35
.long 4
.long 4
.long 2
.long 1
.long 11
.long 0
.long 10
.long 0
.long 9
.long 0
.long 7
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long threadlabel
.section .text
fact:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l38:
.Lproc_body_start_l37:
.Lbranch_target_l50:
.Lbranch_target_l54:
	movl $0,%edx
	cmpl %edx,%eax
	je .Lbranch_target_l49
.Lbranch_target_l44:
	movl $1,%edx
	movl %eax,8(%esp)
	subl %edx,%eax
	leal 16(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,4(%esp)
	call fact
.Lcall_successor_l43:
	movl 8(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.Lbranch_target_l49:
	movl %ecx,4(%esp)
	call cmm_stacktrace
.Lcall_successor_l48:
	movl $1,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l58:
.long 0
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l58
.long 0
.long 2
.long 2
.long 1
.long 0xfffffff8
.long 0
.long 0
.long 0
.long fact_lbl
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l58
.long 0
.long 2
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long fact_lbl
.section .text
cmm_stacktrace:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l68:
	leal .Lcut_entry_l65,%ecx
	leal 32(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lproc_body_start_l67:
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
	movl %ebx,8(%esp)
	call stacktrace
.Lcall_successor_l73:
	leal 32(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	leal 32(%esp), %esp
	ret
.Lcut_entry_l65:
.Lstart_of_continuation_code_l64:
	leal 32(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l79:
.long 0
.section .pcmap
.long .Lcall_successor_l73
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l79
.long 4
.long 0
.long 2
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 7
.long 0xffffffe8
.long 0
.long 0
.long stacktrace_lbl
.section .pcmap
.long .Lcut_entry_l65
.long .Lframe_l81
.section .pcmap_data
.Lframe_l81:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l79
.long 4
.long 0
.long 2
.long 1
.long 11
.long 0xfffffff4
.long 10
.long 0xfffffff0
.long 9
.long 0xffffffec
.long 7
.long 0xffffffe8
.long 0
.long 0
.long stacktrace_lbl
.section .text
.section .data
fact_lbl:
.byte 102
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 102
.byte 97
.byte 99
.byte 116
.byte 40
.byte 110
.byte 44
.byte 32
.byte 109
.byte 41
.byte 0
stacktrace_lbl:
.byte 102
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 99
.byte 109
.byte 109
.byte 95
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 116
.byte 114
.byte 97
.byte 99
.byte 101
.byte 40
.byte 41
.byte 0
threadlabel:
.byte 102
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 99
.byte 109
.byte 109
.byte 95
.byte 116
.byte 104
.byte 114
.byte 101
.byte 97
.byte 100
.byte 102
.byte 117
.byte 110
.byte 40
.byte 52
.byte 32
.byte 100
.byte 101
.byte 97
.byte 100
.byte 115
.byte 41
.byte 0

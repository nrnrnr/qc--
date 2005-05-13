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
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
	movl %ebp,4(%esp)
	movl %ebx,(%esp)
.Linitialize_continuations_l14:
	leal .Lcut_entry_l11,%edx
	leal 28(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	leal 28(%esp), %ecx
	movl $-4,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
.Lproc_body_start_l13:
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	leal comeback,%edx
	movl %ecx,(%edx)
	movl $4,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%eax),%eax
	movl %ecx, %esp; jmp *%eax
.Lcut_entry_l11:
.Lstart_of_continuation_code_l10:
	movl %edx,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	movl 4(%esp),%ebp
	movl (%esp),%ebx
	leal 28(%esp), %esp
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
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l22
.long 4
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
.long 7
.long 0xffffffe4
.long 0
.long 0x40000006
.long 0
.section .text
.section .text
cmm_threadfun:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
.Linitialize_continuations_l25:
.Lproc_body_start_l24:
	movl (%eax),%edx
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 8(%esp), %eax
	movl $-8,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
	call *%edx
.Lcall_successor_l28:
	movl %eax,%edx
	leal comeback,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal comeback,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl %ecx, %esp; jmp *%eax
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
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	leal 12(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
.Linitialize_continuations_l38:
.Lproc_body_start_l37:
.Lbranch_target_l53:
	movl $0,%ecx
	movl 4(%esp),%eax
	cmpl %ecx,%eax
	je .Lbranch_target_l49
.Lbranch_target_l44:
	movl $1,%ecx
	movl 4(%esp),%eax
	subl %ecx,%eax
	leal 12(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call fact
.Lcall_successor_l43:
	movl 4(%esp),%ecx
	imull %eax,%ecx
	movl %ecx,%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.Lbranch_target_l49:
	call cmm_stacktrace
.Lcall_successor_l48:
	movl $1,%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l57:
.long 0
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l57
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
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long .Lstackdata_l57
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
	movl %eax,4(%esp)
	movl %edi,8(%esp)
	movl %esi,12(%esp)
	movl %ebp,16(%esp)
	movl %ebx,20(%esp)
.Linitialize_continuations_l67:
	leal .Lcut_entry_l64,%ecx
	leal 32(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 32(%esp), %ecx
	movl $-32,%eax
	addl %eax,%ecx
	leal 32(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lproc_body_start_l66:
	leal 32(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call stacktrace
.Lcall_successor_l72:
	leal 32(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl 8(%esp),%edi
	movl 12(%esp),%esi
	movl 16(%esp),%ebp
	movl 20(%esp),%ebx
	leal 32(%esp), %esp
	ret
.Lcut_entry_l64:
.Lstart_of_continuation_code_l63:
	leal 32(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl 8(%esp),%edi
	movl 12(%esp),%esi
	movl 16(%esp),%ebp
	movl 20(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l78:
.long 0
.section .pcmap
.long .Lcall_successor_l72
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l78
.long 4
.long 0
.long 2
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
.long stacktrace_lbl
.section .pcmap
.long .Lcut_entry_l64
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l78
.long 4
.long 0
.long 2
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

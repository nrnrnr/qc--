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
Linitialize_continuations_l14:
	leal cutback_C11,%edx
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
Lproc_body_start_l13:
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
cutback_C11:
	movl %edx,%eax
	leal 40(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	movl 24(%esp),%esi
	movl 28(%esp),%edi
	leal 40(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l22:
.long 0
.section .pcmap
.long cutback_C11
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long Lstackdata_l22
.long 4
.long 2
.long 0
.long 1
.long 7
.long 0xffffffe8
.long 9
.long 0xffffffec
.long 10
.long 0xfffffff0
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .text
.section .text
cmm_threadfun:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l26:
Lproc_body_start_l25:
	movl (%eax),%edi
	movl $4,%esi
	addl %esi,%eax
	movl (%eax),%esi
	leal 8(%esp), %ebp
	movl $-8,%ebx
	addl %ebx,%ebp
	movl %esi,(%ebp)
	movl %ecx,4(%esp)
	call *%edi
Ljoin_l29:
	movl %eax,%edx
	leal comeback,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal comeback,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl %edi, %esp; jmp *%esi
.section .pcmap_data
Lstackdata_l36:
.long 0
.section .pcmap
.long Ljoin_l29
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long Lstackdata_l36
.long 4
.long 4
.long 2
.long 1
.long 7
.long 0
.long 9
.long 0
.long 10
.long 0
.long 11
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
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l40:
Lproc_body_start_l39:
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l49
Ljoin_l50:
	movl $1,%edx
	movl %edi,4(%esp)
	movl %eax,%edi
	subl %edx,%edi
	leal 20(%esp), %edx
	movl %edi,8(%esp)
	movl $-20,%edi
	addl %edi,%edx
	movl 8(%esp),%edi
	movl %edi,(%edx)
	movl %ecx,16(%esp)
	movl %eax,12(%esp)
	call fact
Ljoin_l44:
	movl 12(%esp),%edx
	imull %eax,%edx
	movl %edx,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
Ljoin_l49:
	movl %ecx,16(%esp)
	call cmm_stacktrace
Ljoin_l48:
	movl $1,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l56:
.long 0
.section .pcmap
.long Ljoin_l44
.long Lframe_l57
.section .pcmap_data
Lframe_l57:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l56
.long 1
.long 2
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long fact_lbl
.section .pcmap
.long Ljoin_l48
.long Lframe_l58
.section .pcmap_data
Lframe_l58:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l56
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
Linitialize_continuations_l66:
	leal k_C63,%ecx
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
Lproc_body_start_l65:
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
Ljoin_l71:
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	movl 16(%esp),%esi
	movl 20(%esp),%edi
	leal 32(%esp), %esp
	ret
k_C63:
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	movl 16(%esp),%esi
	movl 20(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l77:
.long 0
.section .pcmap
.long Ljoin_l71
.long Lframe_l78
.section .pcmap_data
Lframe_l78:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l77
.long 4
.long 0
.long 2
.long 1
.long 7
.long 0xffffffe8
.long 9
.long 0xffffffec
.long 10
.long 0xfffffff0
.long 11
.long 0xfffffff4
.long 0
.long 0
.long stacktrace_lbl
.section .pcmap
.long k_C63
.long Lframe_l79
.section .pcmap_data
Lframe_l79:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l77
.long 4
.long 0
.long 2
.long 1
.long 7
.long 0xffffffe8
.long 9
.long 0xffffffec
.long 10
.long 0xfffffff0
.long 11
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

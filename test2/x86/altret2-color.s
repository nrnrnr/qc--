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
doread:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %ebx,16(%esp)
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $0,%ecx
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 36(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $10,%ecx
	leal 36(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call read
.Lcall_successor_l15:
	movl %eax,%ebx
.Lbranch_target_l19:
	movl $0,%eax
	cmpl %eax,%ebx
	jl .Lbranch_target_l12
.Lbranch_target_l10:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $-36,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call close
.Lcall_successor_l9:
	movl $5,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	movl %ebx,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 36(%esp), %esp
	ret
.Lbranch_target_l12:
	movl %ebx,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l22:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l22
.long 1
.long 1
.long 0
.long 1
.long 7
.long 0xffffffec
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l24
.section .pcmap_data
.Lframe_l24:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l22
.long 1
.long 1
.long 0
.long 1
.long 7
.long 0xffffffec
.long 0x40000007
.long 0
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
	movl %eax,8(%esp)
	movl %ebx,12(%esp)
.Linitialize_continuations_l32:
.Lproc_body_start_l31:
	call doread
	.byte 0xe9
	.long .Lreturn_entry_l50-.-4
.Lcall_successor_l51:
	leal success_read,%ecx
	leal 16(%esp), %ebx
	movl $-16,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l47:
	call doread
	.byte 0xe9
	.long .Lreturn_entry_l43-.-4
.Lcall_successor_l44:
	leal success_read,%ecx
	leal 16(%esp), %ebx
	movl $-16,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l40:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 16(%esp), %esp
	ret
.Lreturn_entry_l43:
	jmp .Lstart_of_continuation_code_l28
.Lreturn_entry_l50:
.Lstart_of_continuation_code_l28:
	leal fail_to_read,%ecx
	leal 16(%esp), %ebx
	movl $-16,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l36:
	movl $1,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l57:
.long 0
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l57
.long 1
.long 4
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l47
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l57
.long 1
.long 4
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l44
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l57
.long 1
.long 4
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l40
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l57
.long 1
.long 4
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l36
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l57
.long 1
.long 4
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
success_read:
.byte 114
.byte 101
.byte 97
.byte 100
.byte 40
.byte 41
.byte 32
.byte 114
.byte 101
.byte 97
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 10
.byte 0
fail_to_read:
.byte 69
.byte 114
.byte 114
.byte 111
.byte 114
.byte 58
.byte 32
.byte 114
.byte 101
.byte 97
.byte 100
.byte 40
.byte 41
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

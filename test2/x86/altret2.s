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
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $0,%ecx
	leal 36(%esp), %edx
	movl %eax,12(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%eax
	leal 36(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call read
.Lcall_successor_l15:
.Lbranch_target_l19:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl .Lbranch_target_l12
.Lbranch_target_l10:
	movl $0,%ecx
	leal 36(%esp), %edx
	movl %eax,16(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call close
.Lcall_successor_l9:
	movl $5,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl 16(%esp),%eax
	leal 36(%esp), %edx
	movl %ecx,12(%esp)
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 36(%esp), %esp
	ret
.Lbranch_target_l12:
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
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
.long 0
.long 1
.long 0
.long 1
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
.long 0
.long 1
.long 0
.long 1
.long 0xffffffec
.long 0
.section .text
.section .text
main:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l32:
.Lproc_body_start_l31:
	movl %eax,8(%esp)
	call doread
	.byte 0xe9
	.long .Lreturn_entry_l50-.-4
.Lcall_successor_l51:
	leal success_read,%ecx
	leal 20(%esp), %edx
	movl %eax,12(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 20(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l47:
	call doread
	.byte 0xe9
	.long .Lreturn_entry_l43-.-4
.Lcall_successor_l44:
	leal success_read,%ecx
	leal 20(%esp), %edx
	movl %eax,12(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 20(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l40:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	ret
.Lreturn_entry_l43:
	jmp .Lstart_of_continuation_code_l28
.Lreturn_entry_l50:
.Lstart_of_continuation_code_l28:
	leal fail_to_read,%ecx
	leal 20(%esp), %edx
	movl %eax,16(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 20(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l36:
	movl $1,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
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
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l57
.long 0
.long 4
.long 0
.long 1
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
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l57
.long 0
.long 4
.long 0
.long 1
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
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l57
.long 0
.long 4
.long 0
.long 1
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
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l57
.long 0
.long 4
.long 0
.long 1
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
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l57
.long 0
.long 4
.long 0
.long 1
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

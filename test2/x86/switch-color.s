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
main:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 4(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl $1,%eax
	call sw
.Lcall_successor_l23:
	movl $2,%eax
	call sw
.Lcall_successor_l20:
	movl $3,%eax
	call sw
.Lcall_successor_l17:
	movl $4,%eax
	call sw
.Lcall_successor_l14:
	movl $99,%eax
	call sw
.Lcall_successor_l11:
	movl $-3,%eax
	call sw
.Lcall_successor_l8:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l29:
.long 0
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l29
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l29
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l29
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l29
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l29
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l29
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .text
sw:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l37:
.Lproc_body_start_l36:
.Lbranch_target_l60:
.Lbranch_target_l64:
	movl $1,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l59
.Lbranch_target_l55:
.Lbranch_target_l66:
	movl $2,%ecx
	cmpl %eax,%ecx
	jbe .Lbranch_target_l65
	jmp .Lbranch_target_l50
.Lbranch_target_l65:
	movl $3,%ecx
	cmpl %ecx,%eax
	jbe .Lbranch_target_l54
.Lbranch_target_l50:
.Lbranch_target_l67:
	movl $4,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l49
.Lbranch_target_l45:
.Lbranch_target_l72:
	movl $5,%ecx
	cmpl %eax,%ecx
	jbe .Lbranch_target_l71
	jmp .Lbranch_target_l70
.Lbranch_target_l71:
	movl $-1,%ecx
	cmpl %ecx,%eax
	jbe .Lbranch_target_l44
.Lbranch_target_l70:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l44
.Lbranch_target_l69:
	movl $-2147483648,%ecx
	cmpl %eax,%ecx
	jbe .Lbranch_target_l68
	jmp .Lbranch_target_l40
.Lbranch_target_l68:
	movl $-1,%ecx
	cmpl %ecx,%eax
	jbe .Lbranch_target_l44
.Lbranch_target_l40:
	int $3
.Lbranch_target_l44:
	leal def,%ecx
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l43:
	jmp .Lbranch_target_l39
.Lbranch_target_l49:
	leal third,%ecx
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l48:
	jmp .Lbranch_target_l39
.Lbranch_target_l54:
	leal second,%ecx
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l53:
	jmp .Lbranch_target_l39
.Lbranch_target_l59:
	leal first,%ecx
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l58:
.Lbranch_target_l39:
	leal 16(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l75:
.long 0
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l76
.section .pcmap_data
.Lframe_l76:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l75
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l77
.section .pcmap_data
.Lframe_l77:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l75
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l53
.long .Lframe_l78
.section .pcmap_data
.Lframe_l78:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l75
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l58
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l75
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.section .text
.section .data
first:
.byte 102
.byte 105
.byte 114
.byte 115
.byte 116
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
second:
.byte 115
.byte 101
.byte 99
.byte 111
.byte 110
.byte 100
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
third:
.byte 116
.byte 104
.byte 105
.byte 114
.byte 100
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
def:
.byte 100
.byte 101
.byte 102
.byte 97
.byte 117
.byte 108
.byte 116
.byte 32
.byte 98
.byte 114
.byte 97
.byte 110
.byte 99
.byte 104
.byte 58
.byte 32
.byte 110
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

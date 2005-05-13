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
read_:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,16(%esp)
	leal 24(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 24(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %ebx,20(%esp)
.Linitialize_continuations_l7:
.Lproc_body_start_l6:
	leal 24(%esp), %ebx
	movl $-24,%edx
	addl %edx,%ebx
	movl %eax,(%ebx)
	leal 24(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal 24(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call read
.Lcall_successor_l18:
.Lbranch_target_l22:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Lbranch_target_l15
.Lbranch_target_l13:
.Lbranch_target_l23:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l12
.Lbranch_target_l10:
	movl $5,%ecx
	movl 12(%esp),%eax
	addl %ecx,%eax
	movl %eax,12(%esp)
	leal errno,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 32(%esp), %esp
	ret
.Lbranch_target_l12:
	leal 24(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl 20(%esp),%ebx
	leal 32(%esp), %esp
	ret
.Lbranch_target_l15:
	movl $10,%edx
	movl 12(%esp),%ecx
	addl %edx,%ecx
	movl %ecx,12(%esp)
	leal 24(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l26:
.long 0
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l27
.section .pcmap_data
.Lframe_l27:
.long 0x8000000c
.long 0xffffffe8
.long 0xfffffff4
.long .Lstackdata_l26
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
.section .text
open_:
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %ebx,12(%esp)
.Linitialize_continuations_l29:
.Lproc_body_start_l28:
	leal 16(%esp), %ebx
	movl $-16,%edx
	addl %edx,%ebx
	movl %eax,(%ebx)
	leal 16(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call open
.Lcall_successor_l37:
.Lbranch_target_l41:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge .Lbranch_target_l34
.Lbranch_target_l32:
	leal errno,%eax
	movl (%eax),%eax
	leal 16(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 20(%esp), %esp
	ret
.Lbranch_target_l34:
	movl $5,%edx
	movl 8(%esp),%ecx
	addl %edx,%ecx
	movl %ecx,8(%esp)
	leal 16(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l44:
.long 0
.section .pcmap
.long .Lcall_successor_l37
.long .Lframe_l45
.section .pcmap_data
.Lframe_l45:
.long 0x80000008
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l44
.long 1
.long 3
.long 0
.long 1
.long 7
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -88(%esp), %esp
	leal 88(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	leal 88(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 88(%esp), %eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	movl %edi,24(%esp)
	movl %esi,20(%esp)
	movl %ebp,16(%esp)
.Linitialize_continuations_l59:
.Lproc_body_start_l58:
	movl $0,%ebp
L:
	movl $1,%eax
	addl %eax,%ebp
.Lbranch_target_l84:
	movl 28(%esp),%eax
	cmpl %eax,%ebp
	je .Lbranch_target_l80
.Lbranch_target_l78:
	leal -4(%esp), %esp
	movl $4,%ecx
	imull %ebp,%ecx
	movl 16(%esp),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%edx
	leal 92(%esp), %ecx
	movl $-92,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call open_
	.byte 0xe9
	.long .Lreturn_entry_l76-.-4
.Lcall_successor_l77:
	movl %eax,%esi
loop:
	leal -8(%esp), %esp
	movl %esi,%eax
	leal 96(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	leal 96(%esp), %edi
	movl $-96,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $50,%ecx
	leal 96(%esp), %edi
	movl $-92,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call read_
	.byte 0xe9
	.long .Lreturn_entry_l71-.-4
	.byte 0xe9
	.long .Lreturn_entry_l72-.-4
.Lcall_successor_l73:
	movl $1,%ecx
	leal 88(%esp), %edi
	movl $-88,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 88(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	leal 88(%esp), %edi
	movl $-84,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal 88(%esp), %ecx
	movl $-80,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call write
.Lcall_successor_l68:
	jmp loop
.Lreturn_entry_l71:
.Lstart_of_continuation_code_l49:
	jmp L
.Lreturn_entry_l72:
	jmp .Lstart_of_continuation_code_l55
.Lreturn_entry_l76:
.Lstart_of_continuation_code_l55:
	leal errcode,%edx
	leal 88(%esp), %ecx
	movl $-88,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	leal 88(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l65:
	leal aread,%ecx
	leal 88(%esp), %eax
	movl $-88,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call perror
.Lcall_successor_l62:
	jmp L
.Lbranch_target_l80:
	movl $0,%eax
	leal 88(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%edi
	movl 20(%esp),%esi
	movl 16(%esp),%ebp
	leal 88(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l87:
.long 1
.long 0xffffffcc
.section .pcmap
.long .Lcall_successor_l77
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffc8
.long .Lstackdata_l87
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xffffffc0
.long 10
.long 0xffffffbc
.long 9
.long 0xffffffb8
.long 0xffffffc4
.long 0xffffffb4
.long 0x40000009
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l73
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffc8
.long .Lstackdata_l87
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xffffffc0
.long 10
.long 0xffffffbc
.long 9
.long 0xffffffb8
.long 0xffffffc4
.long 0xffffffb4
.long 0x40000009
.long 0x4000000a
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l68
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffc8
.long .Lstackdata_l87
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xffffffc0
.long 10
.long 0xffffffbc
.long 9
.long 0xffffffb8
.long 0xffffffc4
.long 0xffffffb4
.long 0x40000009
.long 0x4000000a
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l65
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffc8
.long .Lstackdata_l87
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xffffffc0
.long 10
.long 0xffffffbc
.long 9
.long 0xffffffb8
.long 0xffffffc4
.long 0xffffffb4
.long 0x40000009
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l62
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffc8
.long .Lstackdata_l87
.long 3
.long 5
.long 0
.long 1
.long 11
.long 0xffffffc0
.long 10
.long 0xffffffbc
.long 9
.long 0xffffffb8
.long 0xffffffc4
.long 0xffffffb4
.long 0x40000009
.long 0
.long 0
.long 0
.section .text
.section .data
errcode:
.byte 69
.byte 114
.byte 114
.byte 111
.byte 114
.byte 32
.byte 99
.byte 111
.byte 100
.byte 101
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
aread:
.byte 97
.byte 108
.byte 116
.byte 114
.byte 101
.byte 97
.byte 100
.byte 0

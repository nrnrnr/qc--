.globl tiger_main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
.align 32
gc_data:
.long 0
.long 5
Lgbl_67:
.long 0
.byte 0
.long 20
Lgbl_95:
.long 15
.byte 116
.byte 111
.byte 111
.byte 32
.byte 109
.byte 97
.byte 110
.byte 121
.byte 32
.byte 105
.byte 116
.byte 101
.byte 109
.byte 115
.byte 10
.byte 0
.long 6
Lgbl_76:
.long 1
.byte 10
.byte 0
.long 6
Lgbl_87:
.long 1
.byte 32
.byte 0
.section .text
mod_46:
	leal -44(%esp), %esp
	movl $4,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 44(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 44(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l15:
	movl %ecx,4(%esp)
	movl $-12,%ecx
	movl %edx,8(%esp)
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,12(%esp)
	leal 44(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-12,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	movl %ebx,16(%esp)
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 20(%esp),%ecx
	idivl %ecx, %eax
	movl $8,%ecx
	movl $-12,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	imull %eax,%ecx
	movl $4,%eax
	movl $-12,%ebx
	leal 44(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	subl %ecx,%eax
	movl $8,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	leal 52(%esp), %esp
	ret
.section .pcmap_data
stackdata_l24:
.long 1
.long 0xfffffff4
.section .text
.section .data
mod_46_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 4
.long 1
.long 0
.long 0
.long 0
.section .text
cmfirst_47:
	leal -44(%esp), %esp
	movl $4,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 44(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 44(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l33:
	movl %ecx,4(%esp)
	movl $-12,%ecx
	movl %edx,8(%esp)
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,12(%esp)
	leal 44(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $4,%eax
	movl $-12,%edx
	movl %ebx,16(%esp)
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-12,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $20,%eax
	movl $-12,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $20,%eax
	movl $-12,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ecx
	leal 44(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,20(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 20(%esp),%ecx
	idivl %ecx, %eax
	movl $16,%ecx
	movl $-12,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal -32(%esp), %esp
	movl $-12,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $20,%ecx
	movl $-12,%ebx
	movl %ebp,56(%esp)
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl $-72,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	movl $-76,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	call mod_46
join_l38:
	leal 24(%esp), %esp
	movl $24,%ecx
	movl $-12,%edx
	leal 44(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	movl $-12,%ecx
	leal 44(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl $12,%ecx
	movl $-12,%edx
	leal 44(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%ebp
	movl 16(%esp),%ebx
	leal 52(%esp), %esp
	ret
.section .pcmap_data
stackdata_l43:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l38
.long frame_l44
.section .pcmap_data
frame_l44:
.long 0xffffffbc
.long 0x8000000c
.long 0xffffffe0
.long stackdata_l43
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long cmfirst_47_gc_data
.section .text
.section .data
cmfirst_47_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 5
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
cmnext_48:
	leal -40(%esp), %esp
	leal 40(%esp), %edx
	movl (%edx),%ecx
initialize_continuations_l53:
	movl $-8,%edx
	movl %eax,(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	movl $1,%eax
	movl $12,%edx
	movl %ecx,4(%esp)
	movl $-8,%ecx
	movl %ebx,8(%esp)
	leal 40(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $12,%eax
	movl $-8,%ecx
	leal 40(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $12,%ecx
	movl $-8,%edx
	leal 40(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $20,%edx
	movl $-8,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jge if_true_l67
if_false_l68:
	movl $0,%ecx
	jmp end_if_l69
if_true_l67:
	movl $1,%ecx
	jmp end_if_l69
end_if_l69:
	movl $0,%edx
	cmpl %edx,%ecx
	jne join_l62
join_l63:
	jmp LifFalse_52
LifFalse_52:
	jmp LifEnd_53
join_l62:
	jmp LifTrue_51
LifTrue_51:
	movl $0,%ecx
	movl $12,%edx
	movl $-8,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $1,%eax
	movl $8,%ecx
	movl $-8,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $8,%eax
	movl $-8,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	jmp LifEnd_53
LifEnd_53:
	movl $16,%ecx
	movl $-8,%edx
	leal 40(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	movl $-8,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	imull %ecx,%edx
	movl $8,%ecx
	movl $-8,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	addl %edx,%ecx
	movl $12,%edx
	movl $-8,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $24,%eax
	movl $-8,%ebx
	movl %ebp,12(%esp)
	leal 40(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	cmpl %eax,%edx
	jg if_true_l70
if_false_l71:
	movl $0,%eax
	jmp end_if_l72
if_true_l70:
	movl $1,%eax
	jmp end_if_l72
end_if_l72:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l60
join_l61:
	jmp LifFalse_56
LifFalse_56:
	movl $12,%eax
	movl $-8,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp LifEnd_57
join_l60:
	jmp LifTrue_55
LifTrue_55:
	movl $24,%edx
	movl $-8,%ebx
	leal 40(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%eax
	jmp LifEnd_57
LifEnd_57:
	addl %eax,%ecx
	movl $4,%eax
	movl $-8,%ebx
	leal 40(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $8,%ecx
	movl $-8,%edx
	leal 40(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $16,%edx
	movl $-8,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jge if_true_l73
if_false_l74:
	movl $0,%ecx
	jmp end_if_l75
if_true_l73:
	movl $1,%ecx
	jmp end_if_l75
end_if_l75:
	movl $0,%edx
	cmpl %edx,%ecx
	jne join_l58
join_l59:
	jmp LifFalse_60
LifFalse_60:
	movl $0,%ecx
	jmp LifEnd_61
join_l58:
	jmp LifTrue_59
LifTrue_59:
	movl $12,%edx
	movl $-8,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $24,%eax
	movl $-8,%ebx
	leal 40(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	cmpl %eax,%edx
	jge if_true_l76
if_false_l77:
	movl $0,%ecx
	jmp end_if_l78
if_true_l76:
	movl $1,%ecx
	jmp end_if_l78
end_if_l78:
	jmp LifEnd_61
LifEnd_61:
	movl $0,%eax
	cmpl %eax,%ecx
	jne join_l56
join_l57:
	jmp LifFalse_64
LifFalse_64:
	movl $4,%eax
	movl $-8,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp LifEnd_65
join_l56:
	jmp LifTrue_63
LifTrue_63:
	movl $-1,%eax
	jmp LifEnd_65
LifEnd_65:
	movl $0,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	leal 40(%esp), %esp
	ret
.section .pcmap_data
stackdata_l82:
.long 1
.long 0xfffffff8
.section .text
.section .data
cmnext_48_gc_data:
.long 2
.long 1
.long 0
.long 6
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
getline_74:
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l91:
	movl $-12,%ecx
	movl %eax,32(%esp)
	leal 76(%esp), %eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	movl %ebp,44(%esp)
	movl %ebx,40(%esp)
	movl %edx,36(%esp)
	call tig_getchar
join_l112:
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal Lgbl_67,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_82
Lloop_start_82:
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl $-76,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	leal Lgbl_67,%eax
	movl $-72,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	call tig_compare_str
join_l109:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne if_true_l116
if_false_l117:
	movl $0,%eax
	jmp end_if_l118
if_true_l116:
	movl $1,%eax
	jmp end_if_l118
end_if_l118:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l105
join_l106:
	jmp LifFalse_80
LifFalse_80:
	movl $0,%eax
	jmp LifEnd_81
join_l105:
	jmp LifTrue_79
LifTrue_79:
	movl $4,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-76,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal Lgbl_76,%eax
	movl $-72,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
join_l104:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne if_true_l119
if_false_l120:
	movl $0,%eax
	jmp end_if_l121
if_true_l119:
	movl $1,%eax
	jmp end_if_l121
end_if_l121:
	jmp LifEnd_81
LifEnd_81:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l100
join_l101:
	jmp Lloop_end_75
Lloop_end_75:
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %edi
	addl %edx,%edi
	addl %ecx,%edi
	movl (%edi),%eax
	movl $0,%edi
	leal 76(%esp), %ecx
	addl %edi,%ecx
	movl 36(%esp),%edi
	movl %edi,(%ecx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 76(%esp), %esp
	ret
join_l100:
	jmp Lloop_body_83
Lloop_body_83:
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl $-72,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_concat
join_l99:
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
join_l96:
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_82
killer_C89:
	movl $0,%eax
	movl $0,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
stackdata_l124:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l112
.long frame_l125
.section .pcmap_data
frame_l125:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l124
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getline_74_gc_data
.section .pcmap
.long join_l109
.long frame_l126
.section .pcmap_data
frame_l126:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l124
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getline_74_gc_data
.section .pcmap
.long join_l104
.long frame_l127
.section .pcmap_data
frame_l127:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l124
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getline_74_gc_data
.section .pcmap
.long join_l99
.long frame_l128
.section .pcmap_data
frame_l128:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l124
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getline_74_gc_data
.section .pcmap
.long join_l96
.long frame_l129
.section .pcmap_data
frame_l129:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l124
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getline_74_gc_data
.section .text
.section .data
getline_74_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 8
.long 1
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.long 1
.section .text
print_width_85:
	leal -80(%esp), %esp
	movl $4,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,32(%esp)
	leal 80(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 80(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l138:
	movl %ecx,36(%esp)
	movl $-16,%ecx
	movl %edx,40(%esp)
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,44(%esp)
	leal 80(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 40(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-16,%edx
	leal 80(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-80,%eax
	leal 80(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	movl %ebx,48(%esp)
	call tig_print
join_l151:
	movl $8,%eax
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-80,%eax
	leal 80(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_size
join_l148:
	movl $12,%ecx
	movl $-16,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_88
Lloop_start_88:
	movl $12,%eax
	movl $-16,%ebx
	leal 80(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%ebx
	leal 80(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	jle if_true_l155
if_false_l156:
	movl $0,%eax
	jmp end_if_l157
if_true_l155:
	movl $1,%eax
	jmp end_if_l157
end_if_l157:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l144
join_l145:
	jmp Lloop_end_86
Lloop_end_86:
	movl $0,%eax
	movl $8,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 88(%esp), %esp
	ret
join_l144:
	jmp Lloop_body_89
Lloop_body_89:
	leal Lgbl_87,%eax
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l143:
	movl $1,%eax
	movl $12,%ebx
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $12,%eax
	movl $-16,%edx
	leal 80(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Lloop_start_88
killer_C136:
	movl $0,%eax
	movl $8,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 88(%esp), %esp
	ret
.section .pcmap_data
stackdata_l160:
.long 1
.long 0xfffffff0
.section .pcmap
.long join_l151
.long frame_l161
.section .pcmap_data
frame_l161:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l160
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_width_85_gc_data
.section .pcmap
.long join_l148
.long frame_l162
.section .pcmap_data
frame_l162:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l160
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_width_85_gc_data
.section .pcmap
.long join_l143
.long frame_l163
.section .pcmap_data
frame_l163:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l160
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long print_width_85_gc_data
.section .text
.section .data
print_width_85_gc_data:
.long 4
.long 1
.long 0
.long 1
.long 0
.long 5
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
tiger_main:
	leal -136(%esp), %esp
	movl $4,%eax
	leal 136(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l172:
	movl $-72,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $4,%edx
	movl $-72,%ecx
	movl %ebx,32(%esp)
	leal 136(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $8,%ebx
	movl $-72,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl $12,%ecx
	movl $-72,%ebx
	leal 136(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $16,%edx
	movl $-72,%ecx
	leal 136(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $20,%ebx
	movl $-72,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl $24,%ecx
	movl $-72,%ebx
	leal 136(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $1024,%eax
	movl $28,%edx
	movl $-72,%ecx
	leal 136(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $28,%ebx
	movl $-72,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $-136,%eax
	leal 136(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
	call tig_alloc
join_l230:
	movl $28,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	jmp Lloop_start_72
Lloop_start_72:
	movl $0,%ecx
	cmpl %ecx,%ebx
	jne join_l226
join_l227:
	jmp Lloop_end_71
Lloop_end_71:
	movl $28,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %ecx,(%eax)
	movl $32,%ecx
	movl $-72,%ebp
	leal 136(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $36,%edx
	movl $-72,%ecx
	leal 136(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $80,%eax
	movl $40,%ebp
	movl $-72,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	leal Lgbl_67,%eax
	movl $44,%ecx
	movl $-72,%ebp
	leal 136(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $48,%edx
	movl $-72,%ecx
	leal 136(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	leal -40(%esp), %esp
	movl $-72,%eax
	leal 176(%esp), %ebp
	addl %eax,%ebp
	movl %ebp,%eax
	call getline_74
join_l225:
	leal 40(%esp), %esp
	movl $44,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp Lloop_start_100
Lloop_start_100:
	movl $44,%eax
	movl $-72,%ebp
	leal 136(%esp), %ecx
	addl %ebp,%ecx
	addl %eax,%ecx
	movl $-136,%eax
	leal 136(%esp), %ebp
	addl %eax,%ebp
	movl (%ecx),%eax
	movl %eax,(%ebp)
	call tig_size
join_l222:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg if_true_l243
if_false_l244:
	movl $0,%eax
	jmp end_if_l245
if_true_l243:
	movl $1,%eax
	jmp end_if_l245
end_if_l245:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l218
join_l219:
	jmp Lloop_end_91
Lloop_end_91:
	movl $2,%eax
	movl $48,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $40,%eax
	movl $-72,%ebx
	leal 136(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $56,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $56,%eax
	movl $-72,%ebx
	leal 136(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl $60,%eax
	movl $-72,%ebx
	leal 136(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $2,%eax
	movl $48,%edx
	movl $-72,%ecx
	leal 136(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl $64,%eax
	movl $-72,%ebx
	leal 136(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal -48(%esp), %esp
	movl $-72,%ecx
	leal 184(%esp), %edx
	addl %ecx,%edx
	movl $36,%ecx
	movl $-72,%eax
	leal 184(%esp), %ebx
	addl %eax,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $60,%ebx
	movl $-72,%eax
	leal 184(%esp), %ebp
	addl %eax,%ebp
	addl %ebx,%ebp
	movl $-180,%ebx
	leal 184(%esp), %eax
	addl %ebx,%eax
	movl (%ebp),%ebx
	movl %ebx,(%eax)
	movl $-184,%eax
	leal 184(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl %edx,%eax
	call cmfirst_47
join_l198:
	leal 40(%esp), %esp
	movl $68,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_106
Lloop_start_106:
	movl $68,%eax
	movl $-72,%ebx
	leal 136(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jge if_true_l237
if_false_l238:
	movl $0,%eax
	jmp end_if_l239
if_true_l237:
	movl $1,%eax
	jmp end_if_l239
end_if_l239:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l194
join_l195:
	jmp Lloop_end_102
Lloop_end_102:
	movl $56,%eax
	movl $-72,%ecx
	leal 136(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $60,%ebx
	movl $-72,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	cmpl %ebx,%eax
	jne if_true_l234
if_false_l235:
	movl $0,%eax
	jmp end_if_l236
if_true_l234:
	movl $1,%eax
	jmp end_if_l236
end_if_l236:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne join_l178
join_l179:
	jmp LifFalse_109
LifFalse_109:
	jmp LifEnd_110
join_l178:
	jmp LifTrue_108
LifTrue_108:
	leal Lgbl_76,%eax
	movl $-136,%ebx
	leal 136(%esp), %edx
	addl %ebx,%edx
	movl %eax,(%edx)
	call tig_print
join_l177:
	jmp LifEnd_110
LifEnd_110:
	movl $0,%edx
	movl %edx,%eax
	leal 136(%esp), %edx
	movl $0,%ecx
	leal 136(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 136(%esp), %esp
	ret
join_l194:
	jmp Lloop_body_107
Lloop_body_107:
	movl $64,%eax
	movl $-72,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $32,%edx
	movl $-72,%ecx
	leal 136(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $68,%ebx
	movl $-72,%ecx
	leal 136(%esp), %ebp
	addl %ecx,%ebp
	addl %ebx,%ebp
	movl $-132,%ebx
	leal 136(%esp), %ecx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	movl $93,%ecx
	movl $-128,%ebx
	leal 136(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-136,%ecx
	leal 136(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl %eax,48(%esp)
	call tig_bounds_check
join_l193:
	leal -40(%esp), %esp
	movl $4,%eax
	movl $68,%ecx
	movl $-72,%edx
	leal 176(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $32,%eax
	movl $-72,%ecx
	leal 176(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ebx,%eax
	movl $-172,%ebx
	leal 176(%esp), %edx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl $-72,%edx
	leal 176(%esp), %eax
	addl %edx,%eax
	movl $-176,%edx
	leal 176(%esp), %ebx
	addl %edx,%ebx
	movl 88(%esp),%edx
	movl %edx,(%ebx)
	call print_width_85
join_l190:
	leal 32(%esp), %esp
	movl $1,%eax
	movl $56,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	subl %eax,%ecx
	movl $56,%eax
	movl $-72,%ebx
	leal 136(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $56,%ecx
	movl $-72,%edx
	leal 136(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je if_true_l240
if_false_l241:
	movl $0,%eax
	jmp end_if_l242
if_true_l240:
	movl $1,%eax
	jmp end_if_l242
end_if_l242:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l186
join_l187:
	jmp LifFalse_104
LifFalse_104:
	jmp LifEnd_105
join_l186:
	jmp LifTrue_103
LifTrue_103:
	leal Lgbl_76,%eax
	movl $-136,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l185:
	movl $60,%ebx
	movl $-72,%ebp
	leal 136(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl $56,%ebx
	movl $-72,%ebp
	leal 136(%esp), %edi
	addl %ebp,%edi
	addl %ebx,%edi
	movl (%esi),%ebx
	movl %ebx,(%edi)
	jmp LifEnd_105
LifEnd_105:
	leal -32(%esp), %esp
	movl $-72,%ebx
	leal 168(%esp), %edi
	addl %ebx,%edi
	movl %edi,%eax
	call cmnext_48
join_l182:
	leal 32(%esp), %esp
	movl $68,%ecx
	movl $-72,%edx
	leal 136(%esp), %edi
	addl %edx,%edi
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_106
join_l218:
	jmp Lloop_body_101
Lloop_body_101:
	movl $44,%eax
	movl $-72,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-136,%eax
	leal 136(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_size
join_l217:
	movl $52,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $48,%eax
	movl $-72,%ebx
	leal 136(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $52,%ecx
	movl $-72,%ebx
	leal 136(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	jl if_true_l246
if_false_l247:
	movl $0,%eax
	jmp end_if_l248
if_true_l246:
	movl $1,%eax
	jmp end_if_l248
end_if_l248:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l213
join_l214:
	jmp LifFalse_93
LifFalse_93:
	jmp LifEnd_94
join_l213:
	jmp LifTrue_92
LifTrue_92:
	movl $52,%eax
	movl $-72,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $48,%eax
	movl $-72,%ecx
	leal 136(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	jmp LifEnd_94
LifEnd_94:
	movl $36,%eax
	movl $-72,%ebx
	leal 136(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $28,%edx
	movl $-72,%ebx
	leal 136(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	cmpl %edx,%eax
	jge if_true_l249
if_false_l250:
	movl $0,%eax
	jmp end_if_l251
if_true_l249:
	movl $1,%eax
	jmp end_if_l251
end_if_l251:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l211
join_l212:
	jmp LifFalse_97
LifFalse_97:
	jmp LifEnd_98
join_l211:
	jmp LifTrue_96
LifTrue_96:
	leal Lgbl_95,%eax
	movl $-136,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l210:
	movl $1,%eax
	movl $-136,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_exit
join_l207:
	jmp LifEnd_98
LifEnd_98:
	movl $32,%eax
	movl $-72,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $36,%edx
	movl $-72,%ecx
	leal 136(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl $-132,%edx
	leal 136(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl $83,%ecx
	movl $-128,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-136,%ecx
	leal 136(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
join_l204:
	movl $44,%ebp
	movl $-72,%esi
	leal 136(%esp), %edi
	addl %esi,%edi
	addl %ebp,%edi
	movl $4,%ebp
	movl $36,%esi
	movl $-72,%ebx
	leal 136(%esp), %ecx
	addl %ebx,%ecx
	addl %esi,%ecx
	movl (%ecx),%esi
	movl $1,%ecx
	addl %esi,%ecx
	imull %ebp,%ecx
	movl $32,%ebp
	movl $-72,%esi
	leal 136(%esp), %ebx
	addl %esi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	movl (%edi),%ecx
	movl %ecx,(%ebp)
	movl $1,%ecx
	movl $36,%ebp
	movl $-72,%edi
	leal 136(%esp), %ebx
	addl %edi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	movl $36,%ecx
	movl $-72,%ebx
	leal 136(%esp), %edi
	addl %ebx,%edi
	addl %ecx,%edi
	movl %ebp,(%edi)
	leal -40(%esp), %esp
	movl $-72,%ebp
	leal 176(%esp), %eax
	addl %ebp,%eax
	call getline_74
join_l201:
	leal 40(%esp), %esp
	movl $44,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp Lloop_start_100
join_l226:
	jmp Lloop_body_73
Lloop_body_73:
	leal Lgbl_67,%ecx
	movl $4,%edx
	movl $1,%ebp
	movl %ebx,%esi
	subl %ebp,%esi
	imull %edx,%esi
	movl %eax,%edx
	addl %esi,%edx
	movl %ecx,(%edx)
	movl $1,%ecx
	subl %ecx,%ebx
	jmp Lloop_start_72
killer_C170:
	movl $0,%eax
	leal 136(%esp), %ecx
	movl $0,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 136(%esp), %esp
	ret
.section .pcmap_data
stackdata_l254:
.long 1
.long 0xffffffb8
.section .pcmap
.long join_l230
.long frame_l255
.section .pcmap_data
frame_l255:
.long 0xffffff78
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l225
.long frame_l256
.section .pcmap_data
frame_l256:
.long 0xffffff50
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l222
.long frame_l257
.section .pcmap_data
frame_l257:
.long 0xffffff78
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l217
.long frame_l258
.section .pcmap_data
frame_l258:
.long 0xffffff78
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l210
.long frame_l259
.section .pcmap_data
frame_l259:
.long 0xffffff78
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l207
.long frame_l260
.section .pcmap_data
frame_l260:
.long 0xffffff78
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l204
.long frame_l261
.section .pcmap_data
frame_l261:
.long 0xffffff78
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l201
.long frame_l262
.section .pcmap_data
frame_l262:
.long 0xffffff50
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l198
.long frame_l263
.section .pcmap_data
frame_l263:
.long 0xffffff50
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l193
.long frame_l264
.section .pcmap_data
frame_l264:
.long 0xffffff78
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0xffffffa8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l190
.long frame_l265
.section .pcmap_data
frame_l265:
.long 0xffffff58
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l185
.long frame_l266
.section .pcmap_data
frame_l266:
.long 0xffffff78
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l182
.long frame_l267
.section .pcmap_data
frame_l267:
.long 0xffffff58
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l177
.long frame_l268
.section .pcmap_data
frame_l268:
.long 0xffffff78
.long 0x80000004
.long 0x80000000
.long stackdata_l254
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffff98
.long 0x40000009
.long 0xffffff9c
.long 0x4000000a
.long 0xffffffa0
.long 0x4000000b
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 18
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 1
.long 0
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 11
.long 1
.long 0
.long 0
.long 0
.long 0
.long 1
.long 0
.long 0
.long 1
.long 0
.long 1

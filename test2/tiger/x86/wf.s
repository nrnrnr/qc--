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
Lgbl_88:
.long 0
.byte 0
.long 6
Lgbl_74:
.long 1
.byte 122
.byte 0
.long 6
Lgbl_67:
.long 1
.byte 65
.byte 0
.long 6
Lgbl_62:
.long 1
.byte 9
.byte 0
.long 7
Lgbl_41:
.long 2
.byte 63
.byte 32
.byte 0
.long 6
Lgbl_69:
.long 1
.byte 90
.byte 0
.long 6
Lgbl_42:
.long 1
.byte 10
.byte 0
.long 6
Lgbl_68:
.long 1
.byte 97
.byte 0
.section .text
err_35:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 72(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l17:
	movl %eax,32(%esp)
	movl $-8,%eax
	movl %ecx,36(%esp)
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,40(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_41,%eax
	movl $-72,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_print
join_l31:
	movl $4,%eax
	movl $-8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-72,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_print
join_l28:
	leal Lgbl_42,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l25:
	movl $1,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_exit
join_l22:
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
killer_C15:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
stackdata_l37:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l31
.long frame_l38
.section .pcmap_data
frame_l38:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l37
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long err_35_gc_data
.section .pcmap
.long join_l28
.long frame_l39
.section .pcmap_data
frame_l39:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l37
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long err_35_gc_data
.section .pcmap
.long join_l25
.long frame_l40
.section .pcmap_data
frame_l40:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l37
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long err_35_gc_data
.section .pcmap
.long join_l22
.long frame_l41
.section .pcmap_data
frame_l41:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l37
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long err_35_gc_data
.section .text
.section .data
err_35_gc_data:
.long 2
.long 1
.long 1
.long 3
.long 1
.long 1
.long 0
.section .text
insert_44:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 72(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l50:
	movl %eax,32(%esp)
	movl $-8,%eax
	movl %ecx,36(%esp)
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,40(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l77
if_false_l78:
	movl $0,%eax
	jmp end_if_l79
if_true_l77:
	movl $1,%eax
	jmp end_if_l79
end_if_l79:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l72
join_l73:
	jmp LifFalse_58
LifFalse_58:
	movl $4,%eax
	movl $-8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	movl $4,%edx
	movl %ebx,44(%esp)
	movl $-8,%ebx
	movl %ebp,48(%esp)
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl $-68,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl (%edx),%ecx
	movl %ecx,(%ebp)
	movl $-72,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	call tig_compare_str
join_l68:
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l83
if_false_l84:
	movl $0,%eax
	jmp end_if_l85
if_true_l83:
	movl $1,%eax
	jmp end_if_l85
end_if_l85:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l64
join_l65:
	jmp LifFalse_54
LifFalse_54:
	movl $4,%eax
	movl $-8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	movl $4,%edx
	movl $-8,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl $-68,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl (%edx),%ecx
	movl %ecx,(%ebp)
	movl $-72,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	call tig_compare_str
join_l63:
	movl $0,%edi
	cmpl %edi,%eax
	jl if_true_l80
if_false_l81:
	movl $0,%eax
	jmp end_if_l82
if_true_l80:
	movl $1,%eax
	jmp end_if_l82
end_if_l82:
	movl $0,%edi
	cmpl %edi,%eax
	jne join_l59
join_l60:
	jmp LifFalse_50
LifFalse_50:
	leal -32(%esp), %esp
	movl $8,%eax
	movl $4,%edi
	movl $-8,%esi
	leal 104(%esp), %ebx
	addl %esi,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	addl %eax,%edi
	movl $-104,%eax
	leal 104(%esp), %ebx
	addl %eax,%ebx
	movl (%edi),%eax
	movl %eax,(%ebx)
	movl $-8,%eax
	leal 104(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	call insert_44
join_l55:
	leal 28(%esp), %esp
	movl $8,%ecx
	movl $4,%edx
	movl $-8,%ebx
	leal 72(%esp), %edi
	addl %ebx,%edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp LifEnd_51
join_l59:
	jmp LifTrue_49
LifTrue_49:
	leal -32(%esp), %esp
	movl $4,%edi
	movl $4,%ebx
	movl $-8,%esi
	leal 104(%esp), %ebp
	addl %esi,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edi,%ebx
	movl $-104,%edi
	leal 104(%esp), %ebp
	addl %edi,%ebp
	movl (%ebx),%edi
	movl %edi,(%ebp)
	movl $-8,%ebp
	leal 104(%esp), %edi
	addl %ebp,%edi
	movl (%edi),%eax
	call insert_44
join_l58:
	leal 28(%esp), %esp
	movl $4,%ecx
	movl $4,%edx
	movl $-8,%edi
	leal 72(%esp), %ebp
	addl %edi,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp LifEnd_51
LifEnd_51:
	jmp LifEnd_55
join_l64:
	jmp LifTrue_53
LifTrue_53:
	movl $1,%ecx
	movl $4,%edx
	movl $-8,%ebp
	leal 72(%esp), %edi
	addl %ebp,%edi
	addl %edx,%edi
	movl (%edi),%edx
	movl (%edx),%edi
	addl %ecx,%edi
	movl $4,%ecx
	movl $-8,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %edi,(%ecx)
	movl $4,%ecx
	movl $-8,%edi
	leal 72(%esp), %ebp
	addl %edi,%ebp
	addl %ecx,%ebp
	movl (%ebp),%eax
	jmp LifEnd_55
LifEnd_55:
	jmp LifEnd_59
join_l72:
	jmp LifTrue_57
LifTrue_57:
	movl $16,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_alloc
join_l71:
	movl $1,%ebp
	movl %ebp,(%eax)
	movl $0,%ebp
	movl $4,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl %ebp,(%edi)
	movl $0,%ebp
	movl $8,%edi
	movl %eax,%ecx
	addl %edi,%ecx
	movl %ebp,(%ecx)
	movl $4,%ecx
	movl $-8,%ebp
	leal 72(%esp), %edi
	addl %ebp,%edi
	movl (%edi),%ebp
	addl %ecx,%ebp
	movl $12,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl (%ebp),%ecx
	movl %ecx,(%edi)
	jmp LifEnd_59
LifEnd_59:
	movl $4,%ecx
	leal 72(%esp), %edi
	addl %ecx,%edi
	movl 40(%esp),%ecx
	movl %ecx,(%edi)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
killer_C48:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
stackdata_l87:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l71
.long frame_l88
.section .pcmap_data
frame_l88:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l87
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
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
.long insert_44_gc_data
.section .pcmap
.long join_l68
.long frame_l89
.section .pcmap_data
frame_l89:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l87
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
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
.long insert_44_gc_data
.section .pcmap
.long join_l63
.long frame_l90
.section .pcmap_data
frame_l90:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l87
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
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
.long insert_44_gc_data
.section .pcmap
.long join_l58
.long frame_l91
.section .pcmap_data
frame_l91:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l87
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
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
.long insert_44_gc_data
.section .pcmap
.long join_l55
.long frame_l92
.section .pcmap_data
frame_l92:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l87
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
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
.long insert_44_gc_data
.section .text
.section .data
insert_44_gc_data:
.long 2
.long 1
.long 1
.long 11
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.long 1
.long 0
.long 1
.long 1
.section .text
add_word_36:
	leal -40(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l101:
	movl %eax,(%esp)
	movl $-8,%eax
	movl %ecx,4(%esp)
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,8(%esp)
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal -32(%esp), %esp
	movl $4,%eax
	movl $-8,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-72,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $-8,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	call insert_44
join_l106:
	leal 28(%esp), %esp
	movl $4,%ecx
	movl $-8,%edx
	movl %ebx,12(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $4,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 44(%esp), %esp
	ret
.section .pcmap_data
stackdata_l111:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l106
.long frame_l112
.section .pcmap_data
frame_l112:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffe0
.long stackdata_l111
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long add_word_36_gc_data
.section .text
.section .data
add_word_36_gc_data:
.long 2
.long 1
.long 1
.long 4
.long 1
.long 1
.long 0
.long 1
.section .text
tprint_37:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 72(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l121:
	movl %eax,32(%esp)
	movl $-8,%eax
	movl %ecx,36(%esp)
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,40(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne if_true_l147
if_false_l148:
	movl $0,%eax
	jmp end_if_l149
if_true_l147:
	movl $1,%eax
	jmp end_if_l149
end_if_l149:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l142
join_l143:
	jmp LifFalse_64
LifFalse_64:
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	jmp LifEnd_65
join_l142:
	jmp LifTrue_63
LifTrue_63:
	leal -32(%esp), %esp
	movl $4,%eax
	movl $4,%ecx
	movl $-8,%edx
	movl %ebx,76(%esp)
	leal 104(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-104,%eax
	leal 104(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $-8,%eax
	leal 104(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	call tprint_37
join_l141:
	leal 28(%esp), %esp
	movl $4,%eax
	movl $-8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $-72,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	call tig_printi
join_l138:
	leal Lgbl_62,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l135:
	movl $12,%eax
	movl $4,%ecx
	movl $-8,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-72,%eax
	leal 72(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	call tig_print
join_l132:
	leal Lgbl_42,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l129:
	leal -32(%esp), %esp
	movl $8,%edi
	movl $4,%esi
	movl $-8,%ebx
	leal 104(%esp), %ebp
	addl %ebx,%ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	addl %edi,%esi
	movl $-104,%edi
	leal 104(%esp), %ebp
	addl %edi,%ebp
	movl (%esi),%edi
	movl %edi,(%ebp)
	movl $-8,%ebp
	leal 104(%esp), %edi
	addl %ebp,%edi
	movl (%edi),%eax
	call tprint_37
join_l126:
	leal 28(%esp), %esp
	jmp LifEnd_65
LifEnd_65:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
killer_C119:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
stackdata_l151:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l141
.long frame_l152
.section .pcmap_data
frame_l152:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l151
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long tprint_37_gc_data
.section .pcmap
.long join_l138
.long frame_l153
.section .pcmap_data
frame_l153:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l151
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long tprint_37_gc_data
.section .pcmap
.long join_l135
.long frame_l154
.section .pcmap_data
frame_l154:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l151
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long tprint_37_gc_data
.section .pcmap
.long join_l132
.long frame_l155
.section .pcmap_data
frame_l155:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l151
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long tprint_37_gc_data
.section .pcmap
.long join_l129
.long frame_l156
.section .pcmap_data
frame_l156:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l151
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long tprint_37_gc_data
.section .pcmap
.long join_l126
.long frame_l157
.section .pcmap_data
frame_l157:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l151
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long tprint_37_gc_data
.section .text
.section .data
tprint_37_gc_data:
.long 2
.long 1
.long 1
.long 3
.long 1
.long 1
.long 0
.section .text
isletter_38:
	leal -104(%esp), %esp
	movl $4,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 104(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l166:
	movl %eax,32(%esp)
	movl $-8,%eax
	movl %ecx,36(%esp)
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,40(%esp)
	leal 104(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 104(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-104,%eax
	leal 104(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_67,%eax
	movl $-100,%edx
	leal 104(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_compare_str
join_l200:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge if_true_l210
if_false_l211:
	movl $0,%eax
	jmp end_if_l212
if_true_l210:
	movl $1,%eax
	jmp end_if_l212
end_if_l212:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l196
join_l197:
	jmp LifFalse_72
LifFalse_72:
	movl $0,%eax
	jmp LifEnd_73
join_l196:
	jmp LifTrue_71
LifTrue_71:
	movl $4,%eax
	movl $-8,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-104,%eax
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal Lgbl_69,%eax
	movl $-100,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
join_l195:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle if_true_l213
if_false_l214:
	movl $0,%eax
	jmp end_if_l215
if_true_l213:
	movl $1,%eax
	jmp end_if_l215
end_if_l215:
	jmp LifEnd_73
LifEnd_73:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l191
join_l192:
	jmp LifFalse_85
LifFalse_85:
	movl $4,%eax
	movl $-8,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-104,%eax
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal Lgbl_68,%eax
	movl $-100,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
join_l181:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge if_true_l204
if_false_l205:
	movl $0,%eax
	jmp end_if_l206
if_true_l204:
	movl $1,%eax
	jmp end_if_l206
end_if_l206:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l177
join_l178:
	jmp LifFalse_77
LifFalse_77:
	movl $0,%eax
	jmp LifEnd_78
join_l177:
	jmp LifTrue_76
LifTrue_76:
	movl $4,%eax
	movl $-8,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-104,%eax
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal Lgbl_74,%eax
	movl $-100,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
join_l176:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle if_true_l207
if_false_l208:
	movl $0,%eax
	jmp end_if_l209
if_true_l207:
	movl $1,%eax
	jmp end_if_l209
end_if_l209:
	jmp LifEnd_78
LifEnd_78:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l172
join_l173:
	jmp LifFalse_81
LifFalse_81:
	movl $0,%eax
	jmp LifEnd_82
join_l172:
	jmp LifTrue_80
LifTrue_80:
	movl $4,%eax
	movl $-8,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-104,%eax
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_ord
join_l171:
	jmp LifEnd_82
LifEnd_82:
	movl %eax,%ecx
	jmp LifEnd_86
join_l191:
	jmp LifTrue_84
LifTrue_84:
	movl $4,%eax
	movl $-8,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-104,%eax
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_ord
join_l190:
	leal Lgbl_68,%ecx
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,60(%esp)
	call tig_ord
join_l187:
	movl 60(%esp),%ecx
	addl %eax,%ecx
	leal Lgbl_67,%eax
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,64(%esp)
	call tig_ord
join_l184:
	movl 64(%esp),%ecx
	subl %eax,%ecx
	jmp LifEnd_86
LifEnd_86:
	movl %ecx,%eax
	movl $4,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 108(%esp), %esp
	ret
killer_C164:
	movl $0,%eax
	movl $4,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 108(%esp), %esp
	ret
.section .pcmap_data
stackdata_l218:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l200
.long frame_l219
.section .pcmap_data
frame_l219:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l218
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_38_gc_data
.section .pcmap
.long join_l195
.long frame_l220
.section .pcmap_data
frame_l220:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l218
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_38_gc_data
.section .pcmap
.long join_l190
.long frame_l221
.section .pcmap_data
frame_l221:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l218
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_38_gc_data
.section .pcmap
.long join_l187
.long frame_l222
.section .pcmap_data
frame_l222:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l218
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
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
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_38_gc_data
.section .pcmap
.long join_l184
.long frame_l223
.section .pcmap_data
frame_l223:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l218
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_38_gc_data
.section .pcmap
.long join_l181
.long frame_l224
.section .pcmap_data
frame_l224:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l218
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_38_gc_data
.section .pcmap
.long join_l176
.long frame_l225
.section .pcmap_data
frame_l225:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l218
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_38_gc_data
.section .pcmap
.long join_l171
.long frame_l226
.section .pcmap_data
frame_l226:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l218
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_38_gc_data
.section .text
.section .data
isletter_38_gc_data:
.long 2
.long 1
.long 1
.long 16
.long 1
.long 1
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
.long 0
.long 0
.section .text
getword_39:
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l235:
	movl $-12,%ecx
	movl %eax,32(%esp)
	leal 76(%esp), %eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_88,%eax
	movl $4,%ecx
	movl %edx,36(%esp)
	movl $-12,%edx
	movl %ebx,40(%esp)
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal Lgbl_88,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	movl %ebp,44(%esp)
	call tig_getchar
join_l275:
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_94
Lloop_start_94:
	movl $8,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl $-76,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal Lgbl_88,%eax
	movl $-72,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
join_l272:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne if_true_l282
if_false_l283:
	movl $0,%eax
	jmp end_if_l284
if_true_l282:
	movl $1,%eax
	jmp end_if_l284
end_if_l284:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l268
join_l269:
	jmp LifFalse_92
LifFalse_92:
	movl $0,%eax
	jmp LifEnd_93
join_l268:
	jmp LifTrue_91
LifTrue_91:
	leal -32(%esp), %esp
	movl $8,%ebx
	movl $-12,%ebp
	leal 108(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl $-108,%ebx
	leal 108(%esp), %ebp
	addl %ebx,%ebp
	movl (%esi),%ebx
	movl %ebx,(%ebp)
	movl $-12,%ebx
	leal 108(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%eax
	call isletter_38
join_l267:
	leal 28(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l285
if_false_l286:
	movl $0,%eax
	jmp end_if_l287
if_true_l285:
	movl $1,%eax
	jmp end_if_l287
end_if_l287:
	jmp LifEnd_93
LifEnd_93:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l263
join_l264:
	jmp Lloop_end_89
Lloop_end_89:
	jmp Lloop_start_101
Lloop_start_101:
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-76,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal Lgbl_88,%eax
	movl $-72,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
join_l259:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne if_true_l279
if_false_l280:
	movl $0,%eax
	jmp end_if_l281
if_true_l279:
	movl $1,%eax
	jmp end_if_l281
end_if_l281:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l255
join_l256:
	jmp LifFalse_99
LifFalse_99:
	movl $0,%eax
	jmp LifEnd_100
join_l255:
	jmp LifTrue_98
LifTrue_98:
	leal -32(%esp), %esp
	movl $8,%ebx
	movl $-12,%ebp
	leal 108(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl $-108,%ebx
	leal 108(%esp), %ebp
	addl %ebx,%ebp
	movl (%esi),%ebx
	movl %ebx,(%ebp)
	movl $-12,%ebx
	leal 108(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%eax
	call isletter_38
join_l254:
	leal 28(%esp), %esp
	jmp LifEnd_100
LifEnd_100:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l250
join_l251:
	jmp Lloop_end_96
Lloop_end_96:
	movl $4,%ecx
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
join_l250:
	jmp Lloop_body_102
Lloop_body_102:
	movl $4,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal -32(%esp), %esp
	movl $8,%edx
	movl $-12,%ecx
	leal 108(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl $-108,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl (%ebp),%edx
	movl %edx,(%ecx)
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,88(%esp)
	movl %ecx,%eax
	call isletter_38
join_l249:
	leal 28(%esp), %esp
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_chr
join_l246:
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl %ecx,(%edx)
	movl $-72,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_concat
join_l243:
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
join_l240:
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp Lloop_start_101
join_l263:
	jmp Lloop_body_95
Lloop_body_95:
	call tig_getchar
join_l262:
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_94
killer_C233:
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
stackdata_l289:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l275
.long frame_l290
.section .pcmap_data
frame_l290:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .pcmap
.long join_l272
.long frame_l291
.section .pcmap_data
frame_l291:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .pcmap
.long join_l267
.long frame_l292
.section .pcmap_data
frame_l292:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .pcmap
.long join_l262
.long frame_l293
.section .pcmap_data
frame_l293:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .pcmap
.long join_l259
.long frame_l294
.section .pcmap_data
frame_l294:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .pcmap
.long join_l254
.long frame_l295
.section .pcmap_data
frame_l295:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .pcmap
.long join_l249
.long frame_l296
.section .pcmap_data
frame_l296:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .pcmap
.long join_l246
.long frame_l297
.section .pcmap_data
frame_l297:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .pcmap
.long join_l243
.long frame_l298
.section .pcmap_data
frame_l298:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .pcmap
.long join_l240
.long frame_l299
.section .pcmap_data
frame_l299:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l289
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_39_gc_data
.section .text
.section .data
getword_39_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 14
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.long 1
.long 0
.long 0
.long 1
.long 0
.long 0
.long 0
.long 1
.section .text
main_40:
	leal -72(%esp), %esp
	leal 72(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l308:
	movl $-8,%ecx
	movl %eax,32(%esp)
	leal 72(%esp), %eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_88,%eax
	movl $4,%ecx
	movl %edx,36(%esp)
	movl $-8,%edx
	movl %ebx,40(%esp)
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal -36(%esp), %esp
	movl $-8,%eax
	leal 108(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	call getword_39
join_l327:
	leal 36(%esp), %esp
	movl $4,%ecx
	movl $-8,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_105
Lloop_start_105:
	movl $4,%eax
	movl $-8,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl $-72,%eax
	leal 72(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	movl %ebp,44(%esp)
	call tig_size
join_l324:
	movl $0,%edi
	cmpl %edi,%eax
	jg if_true_l331
if_false_l332:
	movl $0,%eax
	jmp end_if_l333
if_true_l331:
	movl $1,%eax
	jmp end_if_l333
end_if_l333:
	movl $0,%edi
	cmpl %edi,%eax
	jne join_l320
join_l321:
	jmp Lloop_end_104
Lloop_end_104:
	leal -32(%esp), %esp
	movl $4,%eax
	movl $-8,%edi
	leal 104(%esp), %esi
	addl %edi,%esi
	movl (%esi),%edi
	addl %eax,%edi
	movl $-104,%eax
	leal 104(%esp), %esi
	addl %eax,%esi
	movl (%edi),%eax
	movl %eax,(%esi)
	movl $-8,%eax
	leal 104(%esp), %esi
	addl %eax,%esi
	movl (%esi),%eax
	call tprint_37
join_l313:
	leal 28(%esp), %esp
	movl $0,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 72(%esp), %esp
	ret
join_l320:
	jmp Lloop_body_106
Lloop_body_106:
	leal -40(%esp), %esp
	movl $4,%ebx
	movl $-8,%ebp
	leal 112(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl $-112,%ebx
	leal 112(%esp), %ebp
	addl %ebx,%ebp
	movl (%esi),%ebx
	movl %ebx,(%ebp)
	movl $-8,%ebx
	leal 112(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%eax
	call add_word_36
join_l319:
	leal 36(%esp), %esp
	leal -32(%esp), %esp
	movl $-8,%eax
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	call getword_39
join_l316:
	leal 32(%esp), %esp
	movl $4,%ecx
	movl $-8,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp join_l334
join_l334:
	movl 52(%esp),%edi
	movl 48(%esp),%esi
	movl 44(%esp),%ebp
	jmp Lloop_start_105
killer_C306:
	movl $0,%eax
	movl $0,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 72(%esp), %esp
	ret
.section .pcmap_data
stackdata_l336:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l327
.long frame_l337
.section .pcmap_data
frame_l337:
.long 0xffffff94
.long 0x80000004
.long 0xffffffdc
.long stackdata_l336
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0x40000009
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
.long main_40_gc_data
.section .pcmap
.long join_l324
.long frame_l338
.section .pcmap_data
frame_l338:
.long 0xffffffb8
.long 0x80000004
.long 0xffffffdc
.long stackdata_l336
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
.long main_40_gc_data
.section .pcmap
.long join_l319
.long frame_l339
.section .pcmap_data
frame_l339:
.long 0xffffff94
.long 0x80000004
.long 0xffffffdc
.long stackdata_l336
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
.long main_40_gc_data
.section .pcmap
.long join_l316
.long frame_l340
.section .pcmap_data
frame_l340:
.long 0xffffff98
.long 0x80000004
.long 0xffffffdc
.long stackdata_l336
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
.long main_40_gc_data
.section .pcmap
.long join_l313
.long frame_l341
.section .pcmap_data
frame_l341:
.long 0xffffff9c
.long 0x80000004
.long 0xffffffdc
.long stackdata_l336
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
.long main_40_gc_data
.section .text
.section .data
main_40_gc_data:
.long 2
.long 1
.long 1
.long 5
.long 1
.long 0
.long 1
.long 0
.long 1
.section .text
tiger_main:
	leal -40(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
initialize_continuations_l350:
	movl $-8,%edx
	leal 40(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%eax
	movl $4,%ecx
	movl $-8,%edx
	movl %ebx,(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $-8,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call main_40
join_l355:
	leal 40(%esp), %ecx
	movl $0,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl (%esp),%ebx
	leal 40(%esp), %esp
	ret
.section .pcmap_data
stackdata_l361:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l355
.long frame_l362
.section .pcmap_data
frame_l362:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l361
.long 0x80000008
.long 0x80000002
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 2
.long 1
.long 1
.long 2
.long 1
.long 0

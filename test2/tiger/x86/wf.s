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
initialize_continuations_l18:
proc_body_start_l17:
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
join_l32:
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
join_l29:
	leal Lgbl_42,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l26:
	movl $1,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_exit
join_l23:
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
stackdata_l38:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l32
.long frame_l39
.section .pcmap_data
frame_l39:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l38
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
.long join_l29
.long frame_l40
.section .pcmap_data
frame_l40:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l38
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
.long join_l26
.long frame_l41
.section .pcmap_data
frame_l41:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l38
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
.long join_l23
.long frame_l42
.section .pcmap_data
frame_l42:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l38
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
initialize_continuations_l52:
proc_body_start_l51:
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
	je if_true_l79
if_false_l80:
	movl $0,%eax
	jmp end_if_l81
if_true_l79:
	movl $1,%eax
	jmp end_if_l81
end_if_l81:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l74
join_l75:
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
join_l70:
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l85
if_false_l86:
	movl $0,%eax
	jmp end_if_l87
if_true_l85:
	movl $1,%eax
	jmp end_if_l87
end_if_l87:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l66
join_l67:
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
join_l65:
	movl $0,%edi
	cmpl %edi,%eax
	jl if_true_l82
if_false_l83:
	movl $0,%eax
	jmp end_if_l84
if_true_l82:
	movl $1,%eax
	jmp end_if_l84
end_if_l84:
	movl $0,%edi
	cmpl %edi,%eax
	jne join_l61
join_l62:
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
join_l57:
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
join_l61:
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
join_l60:
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
join_l66:
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
join_l74:
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
join_l73:
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
killer_C49:
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
stackdata_l89:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l73
.long frame_l90
.section .pcmap_data
frame_l90:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l89
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
.long join_l70
.long frame_l91
.section .pcmap_data
frame_l91:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l89
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
.long join_l65
.long frame_l92
.section .pcmap_data
frame_l92:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l89
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
.long join_l60
.long frame_l93
.section .pcmap_data
frame_l93:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l89
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
.long join_l57
.long frame_l94
.section .pcmap_data
frame_l94:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l89
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
initialize_continuations_l104:
proc_body_start_l103:
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
join_l109:
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
stackdata_l114:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l109
.long frame_l115
.section .pcmap_data
frame_l115:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffe0
.long stackdata_l114
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
initialize_continuations_l125:
proc_body_start_l124:
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
	jne if_true_l151
if_false_l152:
	movl $0,%eax
	jmp end_if_l153
if_true_l151:
	movl $1,%eax
	jmp end_if_l153
end_if_l153:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l146
join_l147:
	jmp LifFalse_64
LifFalse_64:
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	jmp LifEnd_65
join_l146:
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
join_l145:
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
join_l142:
	leal Lgbl_62,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l139:
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
join_l136:
	leal Lgbl_42,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l133:
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
join_l130:
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
killer_C122:
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
stackdata_l155:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l145
.long frame_l156
.section .pcmap_data
frame_l156:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l155
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
.long join_l142
.long frame_l157
.section .pcmap_data
frame_l157:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l155
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
.long join_l139
.long frame_l158
.section .pcmap_data
frame_l158:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l155
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
.long join_l136
.long frame_l159
.section .pcmap_data
frame_l159:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l155
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
.long join_l133
.long frame_l160
.section .pcmap_data
frame_l160:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l155
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
.long join_l130
.long frame_l161
.section .pcmap_data
frame_l161:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l155
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
initialize_continuations_l171:
proc_body_start_l170:
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
join_l205:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge if_true_l215
if_false_l216:
	movl $0,%eax
	jmp end_if_l217
if_true_l215:
	movl $1,%eax
	jmp end_if_l217
end_if_l217:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l201
join_l202:
	jmp LifFalse_72
LifFalse_72:
	movl $0,%eax
	jmp LifEnd_73
join_l201:
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
join_l200:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle if_true_l218
if_false_l219:
	movl $0,%eax
	jmp end_if_l220
if_true_l218:
	movl $1,%eax
	jmp end_if_l220
end_if_l220:
	jmp LifEnd_73
LifEnd_73:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l196
join_l197:
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
join_l186:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge if_true_l209
if_false_l210:
	movl $0,%eax
	jmp end_if_l211
if_true_l209:
	movl $1,%eax
	jmp end_if_l211
end_if_l211:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l182
join_l183:
	jmp LifFalse_77
LifFalse_77:
	movl $0,%eax
	jmp LifEnd_78
join_l182:
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
join_l181:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle if_true_l212
if_false_l213:
	movl $0,%eax
	jmp end_if_l214
if_true_l212:
	movl $1,%eax
	jmp end_if_l214
end_if_l214:
	jmp LifEnd_78
LifEnd_78:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l177
join_l178:
	jmp LifFalse_81
LifFalse_81:
	movl $0,%eax
	jmp LifEnd_82
join_l177:
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
join_l176:
	jmp LifEnd_82
LifEnd_82:
	movl %eax,%ecx
	jmp LifEnd_86
join_l196:
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
join_l195:
	leal Lgbl_68,%ecx
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,60(%esp)
	call tig_ord
join_l192:
	movl 60(%esp),%ecx
	addl %eax,%ecx
	leal Lgbl_67,%eax
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,64(%esp)
	call tig_ord
join_l189:
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
killer_C168:
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
stackdata_l223:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l205
.long frame_l224
.section .pcmap_data
frame_l224:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l223
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
.long join_l200
.long frame_l225
.section .pcmap_data
frame_l225:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l223
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
.long frame_l226
.section .pcmap_data
frame_l226:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l223
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
.long join_l192
.long frame_l227
.section .pcmap_data
frame_l227:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l223
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
.long join_l189
.long frame_l228
.section .pcmap_data
frame_l228:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l223
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
.long join_l186
.long frame_l229
.section .pcmap_data
frame_l229:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l223
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
.long join_l181
.long frame_l230
.section .pcmap_data
frame_l230:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l223
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
.long frame_l231
.section .pcmap_data
frame_l231:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l223
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
initialize_continuations_l241:
proc_body_start_l240:
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
join_l281:
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
join_l278:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne if_true_l288
if_false_l289:
	movl $0,%eax
	jmp end_if_l290
if_true_l288:
	movl $1,%eax
	jmp end_if_l290
end_if_l290:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l274
join_l275:
	jmp LifFalse_92
LifFalse_92:
	movl $0,%eax
	jmp LifEnd_93
join_l274:
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
join_l273:
	leal 28(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l291
if_false_l292:
	movl $0,%eax
	jmp end_if_l293
if_true_l291:
	movl $1,%eax
	jmp end_if_l293
end_if_l293:
	jmp LifEnd_93
LifEnd_93:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l269
join_l270:
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
join_l265:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne if_true_l285
if_false_l286:
	movl $0,%eax
	jmp end_if_l287
if_true_l285:
	movl $1,%eax
	jmp end_if_l287
end_if_l287:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l261
join_l262:
	jmp LifFalse_99
LifFalse_99:
	movl $0,%eax
	jmp LifEnd_100
join_l261:
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
join_l260:
	leal 28(%esp), %esp
	jmp LifEnd_100
LifEnd_100:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l256
join_l257:
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
join_l256:
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
join_l255:
	leal 28(%esp), %esp
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_chr
join_l252:
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
join_l249:
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
join_l246:
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp Lloop_start_101
join_l269:
	jmp Lloop_body_95
Lloop_body_95:
	call tig_getchar
join_l268:
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_94
killer_C238:
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
stackdata_l295:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l281
.long frame_l296
.section .pcmap_data
frame_l296:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
.long join_l278
.long frame_l297
.section .pcmap_data
frame_l297:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
.long join_l273
.long frame_l298
.section .pcmap_data
frame_l298:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
.long join_l268
.long frame_l299
.section .pcmap_data
frame_l299:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
.long join_l265
.long frame_l300
.section .pcmap_data
frame_l300:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
.long join_l260
.long frame_l301
.section .pcmap_data
frame_l301:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
.long join_l255
.long frame_l302
.section .pcmap_data
frame_l302:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
.long join_l252
.long frame_l303
.section .pcmap_data
frame_l303:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
.long join_l249
.long frame_l304
.section .pcmap_data
frame_l304:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
.long join_l246
.long frame_l305
.section .pcmap_data
frame_l305:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l295
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
initialize_continuations_l315:
proc_body_start_l314:
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
	leal -28(%esp), %esp
	movl $-8,%eax
	leal 100(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	call getword_39
join_l334:
	leal 28(%esp), %esp
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
join_l331:
	movl $0,%edi
	cmpl %edi,%eax
	jg if_true_l338
if_false_l339:
	movl $0,%eax
	jmp end_if_l340
if_true_l338:
	movl $1,%eax
	jmp end_if_l340
end_if_l340:
	movl $0,%edi
	cmpl %edi,%eax
	jne join_l327
join_l328:
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
join_l320:
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
join_l327:
	jmp Lloop_body_106
Lloop_body_106:
	leal -32(%esp), %esp
	movl $4,%ebx
	movl $-8,%ebp
	leal 104(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl $-104,%ebx
	leal 104(%esp), %ebp
	addl %ebx,%ebp
	movl (%esi),%ebx
	movl %ebx,(%ebp)
	movl $-8,%ebx
	leal 104(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%eax
	call add_word_36
join_l326:
	leal 28(%esp), %esp
	leal -28(%esp), %esp
	movl $-8,%eax
	leal 100(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	call getword_39
join_l323:
	leal 28(%esp), %esp
	movl $4,%ecx
	movl $-8,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp join_l341
join_l341:
	movl 52(%esp),%edi
	movl 48(%esp),%esi
	movl 44(%esp),%ebp
	jmp Lloop_start_105
killer_C312:
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
stackdata_l343:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l334
.long frame_l344
.section .pcmap_data
frame_l344:
.long 0xffffff9c
.long 0x80000004
.long 0xffffffdc
.long stackdata_l343
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
.long join_l331
.long frame_l345
.section .pcmap_data
frame_l345:
.long 0xffffffb8
.long 0x80000004
.long 0xffffffdc
.long stackdata_l343
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
.long join_l326
.long frame_l346
.section .pcmap_data
frame_l346:
.long 0xffffff9c
.long 0x80000004
.long 0xffffffdc
.long stackdata_l343
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
.long join_l323
.long frame_l347
.section .pcmap_data
frame_l347:
.long 0xffffff9c
.long 0x80000004
.long 0xffffffdc
.long stackdata_l343
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
.long join_l320
.long frame_l348
.section .pcmap_data
frame_l348:
.long 0xffffff9c
.long 0x80000004
.long 0xffffffdc
.long stackdata_l343
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
initialize_continuations_l358:
proc_body_start_l357:
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
join_l363:
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
stackdata_l369:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l363
.long frame_l370
.section .pcmap_data
frame_l370:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l369
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

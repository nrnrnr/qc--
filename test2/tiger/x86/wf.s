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
Linitialize_continuations_l24:
Lproc_body_start_l23:
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
Ljoin_l38:
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
Ljoin_l35:
	leal Lgbl_42,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l32:
	movl $1,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_exit
Ljoin_l29:
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
killer_C21:
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
Lstackdata_l44:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l38
.long Lframe_l45
.section .pcmap_data
Lframe_l45:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l44
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
.long Ljoin_l35
.long Lframe_l46
.section .pcmap_data
Lframe_l46:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l44
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
.long Ljoin_l32
.long Lframe_l47
.section .pcmap_data
Lframe_l47:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l44
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
.long Ljoin_l29
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l44
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
Linitialize_continuations_l56:
Lproc_body_start_l55:
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
	je Lif_true_l83
Lif_false_l84:
	movl $0,%eax
	jmp Lend_if_l85
Lif_true_l83:
	movl $1,%eax
	jmp Lend_if_l85
Lend_if_l85:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l78
Ljoin_l79:
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
Ljoin_l74:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Lif_true_l89
Lif_false_l90:
	movl $0,%eax
	jmp Lend_if_l91
Lif_true_l89:
	movl $1,%eax
	jmp Lend_if_l91
Lend_if_l91:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l70
Ljoin_l71:
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
Ljoin_l69:
	movl $0,%edi
	cmpl %edi,%eax
	jl Lif_true_l86
Lif_false_l87:
	movl $0,%eax
	jmp Lend_if_l88
Lif_true_l86:
	movl $1,%eax
	jmp Lend_if_l88
Lend_if_l88:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l65
Ljoin_l66:
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
Ljoin_l61:
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
Ljoin_l65:
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
Ljoin_l64:
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
Ljoin_l70:
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
Ljoin_l78:
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
Ljoin_l77:
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
killer_C53:
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
Lstackdata_l93:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l77
.long Lframe_l94
.section .pcmap_data
Lframe_l94:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l93
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
.long Ljoin_l74
.long Lframe_l95
.section .pcmap_data
Lframe_l95:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l93
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
.long Ljoin_l69
.long Lframe_l96
.section .pcmap_data
Lframe_l96:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l93
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
.long Ljoin_l64
.long Lframe_l97
.section .pcmap_data
Lframe_l97:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l93
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
.long Ljoin_l61
.long Lframe_l98
.section .pcmap_data
Lframe_l98:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l93
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
Linitialize_continuations_l106:
Lproc_body_start_l105:
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
Ljoin_l111:
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
Lstackdata_l116:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l111
.long Lframe_l117
.section .pcmap_data
Lframe_l117:
.long 0xffffffbc
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l116
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
Linitialize_continuations_l125:
Lproc_body_start_l124:
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
	jne Lif_true_l151
Lif_false_l152:
	movl $0,%eax
	jmp Lend_if_l153
Lif_true_l151:
	movl $1,%eax
	jmp Lend_if_l153
Lend_if_l153:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l146
Ljoin_l147:
	jmp LifFalse_64
LifFalse_64:
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	jmp LifEnd_65
Ljoin_l146:
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
Ljoin_l145:
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
Ljoin_l142:
	leal Lgbl_62,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l139:
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
Ljoin_l136:
	leal Lgbl_42,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l133:
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
Ljoin_l130:
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
Lstackdata_l155:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l145
.long Lframe_l156
.section .pcmap_data
Lframe_l156:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l155
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
.long Ljoin_l142
.long Lframe_l157
.section .pcmap_data
Lframe_l157:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l155
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
.long Ljoin_l139
.long Lframe_l158
.section .pcmap_data
Lframe_l158:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l155
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
.long Ljoin_l136
.long Lframe_l159
.section .pcmap_data
Lframe_l159:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l155
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
.long Ljoin_l133
.long Lframe_l160
.section .pcmap_data
Lframe_l160:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l155
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
.long Ljoin_l130
.long Lframe_l161
.section .pcmap_data
Lframe_l161:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l155
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
Linitialize_continuations_l169:
Lproc_body_start_l168:
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
Ljoin_l203:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Lif_true_l213
Lif_false_l214:
	movl $0,%eax
	jmp Lend_if_l215
Lif_true_l213:
	movl $1,%eax
	jmp Lend_if_l215
Lend_if_l215:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l199
Ljoin_l200:
	jmp LifFalse_72
LifFalse_72:
	movl $0,%eax
	jmp LifEnd_73
Ljoin_l199:
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
Ljoin_l198:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Lif_true_l216
Lif_false_l217:
	movl $0,%eax
	jmp Lend_if_l218
Lif_true_l216:
	movl $1,%eax
	jmp Lend_if_l218
Lend_if_l218:
	jmp LifEnd_73
LifEnd_73:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l194
Ljoin_l195:
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
Ljoin_l184:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Lif_true_l207
Lif_false_l208:
	movl $0,%eax
	jmp Lend_if_l209
Lif_true_l207:
	movl $1,%eax
	jmp Lend_if_l209
Lend_if_l209:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l180
Ljoin_l181:
	jmp LifFalse_77
LifFalse_77:
	movl $0,%eax
	jmp LifEnd_78
Ljoin_l180:
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
Ljoin_l179:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Lif_true_l210
Lif_false_l211:
	movl $0,%eax
	jmp Lend_if_l212
Lif_true_l210:
	movl $1,%eax
	jmp Lend_if_l212
Lend_if_l212:
	jmp LifEnd_78
LifEnd_78:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l175
Ljoin_l176:
	jmp LifFalse_81
LifFalse_81:
	movl $0,%eax
	jmp LifEnd_82
Ljoin_l175:
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
Ljoin_l174:
	jmp LifEnd_82
LifEnd_82:
	movl %eax,%ecx
	jmp LifEnd_86
Ljoin_l194:
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
Ljoin_l193:
	leal Lgbl_68,%ecx
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,60(%esp)
	call tig_ord
Ljoin_l190:
	movl 60(%esp),%ecx
	addl %eax,%ecx
	leal Lgbl_67,%eax
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,64(%esp)
	call tig_ord
Ljoin_l187:
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
killer_C166:
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
Lstackdata_l221:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l203
.long Lframe_l222
.section .pcmap_data
Lframe_l222:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l221
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
.long Ljoin_l198
.long Lframe_l223
.section .pcmap_data
Lframe_l223:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l221
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
.long Ljoin_l193
.long Lframe_l224
.section .pcmap_data
Lframe_l224:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l221
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
.long Ljoin_l190
.long Lframe_l225
.section .pcmap_data
Lframe_l225:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l221
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
.long Ljoin_l187
.long Lframe_l226
.section .pcmap_data
Lframe_l226:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l221
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
.long Ljoin_l184
.long Lframe_l227
.section .pcmap_data
Lframe_l227:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l221
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
.long Ljoin_l179
.long Lframe_l228
.section .pcmap_data
Lframe_l228:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l221
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
.long Ljoin_l174
.long Lframe_l229
.section .pcmap_data
Lframe_l229:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l221
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
Linitialize_continuations_l237:
Lproc_body_start_l236:
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
Ljoin_l277:
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
Ljoin_l274:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lif_true_l284
Lif_false_l285:
	movl $0,%eax
	jmp Lend_if_l286
Lif_true_l284:
	movl $1,%eax
	jmp Lend_if_l286
Lend_if_l286:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l270
Ljoin_l271:
	jmp LifFalse_92
LifFalse_92:
	movl $0,%eax
	jmp LifEnd_93
Ljoin_l270:
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
Ljoin_l269:
	leal 28(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	je Lif_true_l287
Lif_false_l288:
	movl $0,%eax
	jmp Lend_if_l289
Lif_true_l287:
	movl $1,%eax
	jmp Lend_if_l289
Lend_if_l289:
	jmp LifEnd_93
LifEnd_93:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l265
Ljoin_l266:
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
Ljoin_l261:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lif_true_l281
Lif_false_l282:
	movl $0,%eax
	jmp Lend_if_l283
Lif_true_l281:
	movl $1,%eax
	jmp Lend_if_l283
Lend_if_l283:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l257
Ljoin_l258:
	jmp LifFalse_99
LifFalse_99:
	movl $0,%eax
	jmp LifEnd_100
Ljoin_l257:
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
Ljoin_l256:
	leal 28(%esp), %esp
	jmp LifEnd_100
LifEnd_100:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l252
Ljoin_l253:
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
Ljoin_l252:
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
Ljoin_l251:
	leal 28(%esp), %esp
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_chr
Ljoin_l248:
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
Ljoin_l245:
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
Ljoin_l242:
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp Lloop_start_101
Ljoin_l265:
	jmp Lloop_body_95
Lloop_body_95:
	call tig_getchar
Ljoin_l264:
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_94
killer_C234:
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
Lstackdata_l291:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l277
.long Lframe_l292
.section .pcmap_data
Lframe_l292:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
.long Ljoin_l274
.long Lframe_l293
.section .pcmap_data
Lframe_l293:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
.long Ljoin_l269
.long Lframe_l294
.section .pcmap_data
Lframe_l294:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
.long Ljoin_l264
.long Lframe_l295
.section .pcmap_data
Lframe_l295:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
.long Ljoin_l261
.long Lframe_l296
.section .pcmap_data
Lframe_l296:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
.long Ljoin_l256
.long Lframe_l297
.section .pcmap_data
Lframe_l297:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
.long Ljoin_l251
.long Lframe_l298
.section .pcmap_data
Lframe_l298:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
.long Ljoin_l248
.long Lframe_l299
.section .pcmap_data
Lframe_l299:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
.long Ljoin_l245
.long Lframe_l300
.section .pcmap_data
Lframe_l300:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
.long Ljoin_l242
.long Lframe_l301
.section .pcmap_data
Lframe_l301:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l291
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
Linitialize_continuations_l309:
Lproc_body_start_l308:
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
Ljoin_l328:
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
Ljoin_l325:
	movl $0,%edi
	cmpl %edi,%eax
	jg Lif_true_l332
Lif_false_l333:
	movl $0,%eax
	jmp Lend_if_l334
Lif_true_l332:
	movl $1,%eax
	jmp Lend_if_l334
Lend_if_l334:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l321
Ljoin_l322:
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
Ljoin_l314:
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
Ljoin_l321:
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
Ljoin_l320:
	leal 28(%esp), %esp
	leal -28(%esp), %esp
	movl $-8,%eax
	leal 100(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	call getword_39
Ljoin_l317:
	leal 28(%esp), %esp
	movl $4,%ecx
	movl $-8,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp Ljoin_l335
Ljoin_l335:
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
Lstackdata_l337:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l328
.long Lframe_l338
.section .pcmap_data
Lframe_l338:
.long 0xffffff9c
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l337
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
.long Ljoin_l325
.long Lframe_l339
.section .pcmap_data
Lframe_l339:
.long 0xffffffb8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l337
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
.long Ljoin_l320
.long Lframe_l340
.section .pcmap_data
Lframe_l340:
.long 0xffffff9c
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l337
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
.long Ljoin_l317
.long Lframe_l341
.section .pcmap_data
Lframe_l341:
.long 0xffffff9c
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l337
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
.long Ljoin_l314
.long Lframe_l342
.section .pcmap_data
Lframe_l342:
.long 0xffffff9c
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l337
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
Linitialize_continuations_l350:
Lproc_body_start_l349:
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
Ljoin_l355:
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
Lstackdata_l361:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l355
.long Lframe_l362
.section .pcmap_data
Lframe_l362:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l361
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

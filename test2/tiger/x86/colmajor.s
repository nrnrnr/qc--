.globl tiger_main
.globl Cmm.global_area
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
Linitialize_continuations_l20:
Lproc_body_start_l19:
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
Lstackdata_l29:
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
	leal -68(%esp), %esp
	movl $4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,24(%esp)
	leal 68(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 68(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l37:
Lproc_body_start_l36:
	movl %ecx,28(%esp)
	movl $-12,%ecx
	movl %edx,32(%esp)
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,36(%esp)
	leal 68(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 32(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $4,%eax
	movl $-12,%edx
	movl %ebx,40(%esp)
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-12,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $20,%eax
	movl $-12,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $20,%eax
	movl $-12,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ecx
	leal 68(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,44(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 44(%esp),%ecx
	idivl %ecx, %eax
	movl $16,%ecx
	movl $-12,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal -8(%esp), %esp
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
Ljoin_l42:
	movl $24,%ecx
	movl $-12,%edx
	leal 68(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	movl $-12,%ecx
	leal 68(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl $12,%ecx
	movl $-12,%edx
	leal 68(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl 48(%esp),%ebp
	movl 40(%esp),%ebx
	leal 76(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l47:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l42
.long Lframe_l48
.section .pcmap_data
Lframe_l48:
.long 0xffffffbc
.long 0x8000000c
.long 0xffffffe0
.long Lstackdata_l47
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
Linitialize_continuations_l56:
Lproc_body_start_l55:
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
	jge Lif_true_l70
Lif_false_l71:
	movl $0,%ecx
	jmp Lend_if_l72
Lif_true_l70:
	movl $1,%ecx
	jmp Lend_if_l72
Lend_if_l72:
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l65
Ljoin_l66:
	jmp LifFalse_52
LifFalse_52:
	jmp LifEnd_53
Ljoin_l65:
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
	jg Lif_true_l73
Lif_false_l74:
	movl $0,%eax
	jmp Lend_if_l75
Lif_true_l73:
	movl $1,%eax
	jmp Lend_if_l75
Lend_if_l75:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l63
Ljoin_l64:
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
Ljoin_l63:
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
	jge Lif_true_l76
Lif_false_l77:
	movl $0,%ecx
	jmp Lend_if_l78
Lif_true_l76:
	movl $1,%ecx
	jmp Lend_if_l78
Lend_if_l78:
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l61
Ljoin_l62:
	jmp LifFalse_60
LifFalse_60:
	movl $0,%ecx
	jmp LifEnd_61
Ljoin_l61:
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
	jge Lif_true_l79
Lif_false_l80:
	movl $0,%ecx
	jmp Lend_if_l81
Lif_true_l79:
	movl $1,%ecx
	jmp Lend_if_l81
Lend_if_l81:
	jmp LifEnd_61
LifEnd_61:
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l59
Ljoin_l60:
	jmp LifFalse_64
LifFalse_64:
	movl $4,%eax
	movl $-8,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp LifEnd_65
Ljoin_l59:
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
Lstackdata_l85:
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
Linitialize_continuations_l93:
Lproc_body_start_l92:
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
Ljoin_l114:
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
Ljoin_l111:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lif_true_l118
Lif_false_l119:
	movl $0,%eax
	jmp Lend_if_l120
Lif_true_l118:
	movl $1,%eax
	jmp Lend_if_l120
Lend_if_l120:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l107
Ljoin_l108:
	jmp LifFalse_80
LifFalse_80:
	movl $0,%eax
	jmp LifEnd_81
Ljoin_l107:
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
Ljoin_l106:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lif_true_l121
Lif_false_l122:
	movl $0,%eax
	jmp Lend_if_l123
Lif_true_l121:
	movl $1,%eax
	jmp Lend_if_l123
Lend_if_l123:
	jmp LifEnd_81
LifEnd_81:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l102
Ljoin_l103:
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
Ljoin_l102:
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
Ljoin_l101:
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
Ljoin_l98:
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_82
killer_C90:
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
Lstackdata_l126:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l114
.long Lframe_l127
.section .pcmap_data
Lframe_l127:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l126
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
.long Ljoin_l111
.long Lframe_l128
.section .pcmap_data
Lframe_l128:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l126
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
.long Ljoin_l106
.long Lframe_l129
.section .pcmap_data
Lframe_l129:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l126
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
.long Ljoin_l101
.long Lframe_l130
.section .pcmap_data
Lframe_l130:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l126
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
.long Ljoin_l98
.long Lframe_l131
.section .pcmap_data
Lframe_l131:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l126
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
Linitialize_continuations_l139:
Lproc_body_start_l138:
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
Ljoin_l152:
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
Ljoin_l149:
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
	jle Lif_true_l156
Lif_false_l157:
	movl $0,%eax
	jmp Lend_if_l158
Lif_true_l156:
	movl $1,%eax
	jmp Lend_if_l158
Lend_if_l158:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l145
Ljoin_l146:
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
Ljoin_l145:
	jmp Lloop_body_89
Lloop_body_89:
	leal Lgbl_87,%eax
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l144:
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
Lstackdata_l161:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l152
.long Lframe_l162
.section .pcmap_data
Lframe_l162:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l161
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
.long Ljoin_l149
.long Lframe_l163
.section .pcmap_data
Lframe_l163:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l161
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
.long Ljoin_l144
.long Lframe_l164
.section .pcmap_data
Lframe_l164:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l161
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
	leal -128(%esp), %esp
	movl $4,%eax
	leal 128(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l172:
Lproc_body_start_l171:
	movl $-72,%ecx
	leal 128(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $4,%edx
	movl $-72,%ecx
	movl %ebx,24(%esp)
	leal 128(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $8,%ebx
	movl $-72,%edx
	leal 128(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl $12,%ecx
	movl $-72,%ebx
	leal 128(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $16,%edx
	movl $-72,%ecx
	leal 128(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $20,%ebx
	movl $-72,%edx
	leal 128(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl $24,%ecx
	movl $-72,%ebx
	leal 128(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $1024,%eax
	movl $28,%edx
	movl $-72,%ecx
	leal 128(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $28,%ebx
	movl $-72,%edx
	leal 128(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $-128,%eax
	leal 128(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl %edi,36(%esp)
	movl %esi,32(%esp)
	movl %ebp,28(%esp)
	call tig_alloc
Ljoin_l230:
	movl $28,%ecx
	movl $-72,%edx
	leal 128(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	jmp Lloop_start_72
Lloop_start_72:
	movl $0,%ecx
	cmpl %ecx,%ebx
	jne Ljoin_l226
Ljoin_l227:
	jmp Lloop_end_71
Lloop_end_71:
	movl $28,%ecx
	movl $-72,%edx
	leal 128(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %ecx,(%eax)
	movl $32,%ecx
	movl $-72,%ebp
	leal 128(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $36,%edx
	movl $-72,%ecx
	leal 128(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $80,%eax
	movl $40,%ebp
	movl $-72,%edx
	leal 128(%esp), %ecx
	addl %edx,%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	leal Lgbl_67,%eax
	movl $44,%ecx
	movl $-72,%ebp
	leal 128(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $48,%edx
	movl $-72,%ecx
	leal 128(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $-72,%eax
	leal 128(%esp), %ebp
	addl %eax,%ebp
	movl %ebp,%eax
	call getline_74
Ljoin_l225:
	movl $44,%ecx
	movl $-72,%edx
	leal 128(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp Lloop_start_100
Lloop_start_100:
	movl $44,%eax
	movl $-72,%ebp
	leal 128(%esp), %ecx
	addl %ebp,%ecx
	addl %eax,%ecx
	movl $-128,%eax
	leal 128(%esp), %ebp
	addl %eax,%ebp
	movl (%ecx),%eax
	movl %eax,(%ebp)
	call tig_size
Ljoin_l222:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Lif_true_l243
Lif_false_l244:
	movl $0,%eax
	jmp Lend_if_l245
Lif_true_l243:
	movl $1,%eax
	jmp Lend_if_l245
Lend_if_l245:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l218
Ljoin_l219:
	jmp Lloop_end_91
Lloop_end_91:
	movl $2,%eax
	movl $48,%ecx
	movl $-72,%edx
	leal 128(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $40,%eax
	movl $-72,%ebx
	leal 128(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $56,%ecx
	movl $-72,%edx
	leal 128(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $56,%eax
	movl $-72,%ebx
	leal 128(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl $60,%eax
	movl $-72,%ebx
	leal 128(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $2,%eax
	movl $48,%edx
	movl $-72,%ecx
	leal 128(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl $64,%eax
	movl $-72,%ebx
	leal 128(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal -8(%esp), %esp
	movl $-72,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	movl $36,%ecx
	movl $-72,%eax
	leal 136(%esp), %ebx
	addl %eax,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $60,%ebx
	movl $-72,%eax
	leal 136(%esp), %ebp
	addl %eax,%ebp
	addl %ebx,%ebp
	movl $-132,%ebx
	leal 136(%esp), %eax
	addl %ebx,%eax
	movl (%ebp),%ebx
	movl %ebx,(%eax)
	movl $-136,%eax
	leal 136(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl %edx,%eax
	call cmfirst_47
Ljoin_l198:
	movl $68,%ecx
	movl $-72,%edx
	leal 128(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_106
Lloop_start_106:
	movl $68,%eax
	movl $-72,%ebx
	leal 128(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Lif_true_l237
Lif_false_l238:
	movl $0,%eax
	jmp Lend_if_l239
Lif_true_l237:
	movl $1,%eax
	jmp Lend_if_l239
Lend_if_l239:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l194
Ljoin_l195:
	jmp Lloop_end_102
Lloop_end_102:
	movl $56,%eax
	movl $-72,%ecx
	leal 128(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $60,%ebx
	movl $-72,%ecx
	leal 128(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	cmpl %ebx,%eax
	jne Lif_true_l234
Lif_false_l235:
	movl $0,%eax
	jmp Lend_if_l236
Lif_true_l234:
	movl $1,%eax
	jmp Lend_if_l236
Lend_if_l236:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne Ljoin_l178
Ljoin_l179:
	jmp LifFalse_109
LifFalse_109:
	jmp LifEnd_110
Ljoin_l178:
	jmp LifTrue_108
LifTrue_108:
	leal Lgbl_76,%eax
	movl $-128,%ebx
	leal 128(%esp), %edx
	addl %ebx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l177:
	jmp LifEnd_110
LifEnd_110:
	movl $0,%edx
	movl %edx,%eax
	leal 128(%esp), %edx
	movl $0,%ecx
	leal 128(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 128(%esp), %esp
	ret
Ljoin_l194:
	jmp Lloop_body_107
Lloop_body_107:
	movl $64,%eax
	movl $-72,%ecx
	leal 128(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $32,%edx
	movl $-72,%ecx
	leal 128(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $68,%ebx
	movl $-72,%ecx
	leal 128(%esp), %ebp
	addl %ecx,%ebp
	addl %ebx,%ebp
	movl $-124,%ebx
	leal 128(%esp), %ecx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	movl $93,%ecx
	movl $-120,%ebx
	leal 128(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-128,%ecx
	leal 128(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl %eax,40(%esp)
	call tig_bounds_check
Ljoin_l193:
	leal -8(%esp), %esp
	movl $4,%eax
	movl $68,%ecx
	movl $-72,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $32,%eax
	movl $-72,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ebx,%eax
	movl $-132,%ebx
	leal 136(%esp), %edx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl $-72,%edx
	leal 136(%esp), %eax
	addl %edx,%eax
	movl $-136,%edx
	leal 136(%esp), %ebx
	addl %edx,%ebx
	movl 48(%esp),%edx
	movl %edx,(%ebx)
	call print_width_85
Ljoin_l190:
	movl $1,%eax
	movl $56,%ecx
	movl $-72,%edx
	leal 128(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	subl %eax,%ecx
	movl $56,%eax
	movl $-72,%ebx
	leal 128(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $56,%ecx
	movl $-72,%edx
	leal 128(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Lif_true_l240
Lif_false_l241:
	movl $0,%eax
	jmp Lend_if_l242
Lif_true_l240:
	movl $1,%eax
	jmp Lend_if_l242
Lend_if_l242:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l186
Ljoin_l187:
	jmp LifFalse_104
LifFalse_104:
	jmp LifEnd_105
Ljoin_l186:
	jmp LifTrue_103
LifTrue_103:
	leal Lgbl_76,%eax
	movl $-128,%ecx
	leal 128(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l185:
	movl $60,%ebx
	movl $-72,%ebp
	leal 128(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl $56,%ebx
	movl $-72,%ebp
	leal 128(%esp), %edi
	addl %ebp,%edi
	addl %ebx,%edi
	movl (%esi),%ebx
	movl %ebx,(%edi)
	jmp LifEnd_105
LifEnd_105:
	movl $-72,%ebx
	leal 128(%esp), %edi
	addl %ebx,%edi
	movl %edi,%eax
	call cmnext_48
Ljoin_l182:
	movl $68,%ecx
	movl $-72,%edx
	leal 128(%esp), %edi
	addl %edx,%edi
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_106
Ljoin_l218:
	jmp Lloop_body_101
Lloop_body_101:
	movl $44,%eax
	movl $-72,%ecx
	leal 128(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-128,%eax
	leal 128(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_size
Ljoin_l217:
	movl $52,%ecx
	movl $-72,%edx
	leal 128(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $48,%eax
	movl $-72,%ebx
	leal 128(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $52,%ecx
	movl $-72,%ebx
	leal 128(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	jl Lif_true_l246
Lif_false_l247:
	movl $0,%eax
	jmp Lend_if_l248
Lif_true_l246:
	movl $1,%eax
	jmp Lend_if_l248
Lend_if_l248:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l213
Ljoin_l214:
	jmp LifFalse_93
LifFalse_93:
	jmp LifEnd_94
Ljoin_l213:
	jmp LifTrue_92
LifTrue_92:
	movl $52,%eax
	movl $-72,%ecx
	leal 128(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $48,%eax
	movl $-72,%ecx
	leal 128(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	jmp LifEnd_94
LifEnd_94:
	movl $36,%eax
	movl $-72,%ebx
	leal 128(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $28,%edx
	movl $-72,%ebx
	leal 128(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	cmpl %edx,%eax
	jge Lif_true_l249
Lif_false_l250:
	movl $0,%eax
	jmp Lend_if_l251
Lif_true_l249:
	movl $1,%eax
	jmp Lend_if_l251
Lend_if_l251:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l211
Ljoin_l212:
	jmp LifFalse_97
LifFalse_97:
	jmp LifEnd_98
Ljoin_l211:
	jmp LifTrue_96
LifTrue_96:
	leal Lgbl_95,%eax
	movl $-128,%ecx
	leal 128(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l210:
	movl $1,%eax
	movl $-128,%ecx
	leal 128(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_exit
Ljoin_l207:
	jmp LifEnd_98
LifEnd_98:
	movl $32,%eax
	movl $-72,%ecx
	leal 128(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $36,%edx
	movl $-72,%ecx
	leal 128(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl $-124,%edx
	leal 128(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl $83,%ecx
	movl $-120,%edx
	leal 128(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-128,%ecx
	leal 128(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
Ljoin_l204:
	movl $44,%ebp
	movl $-72,%esi
	leal 128(%esp), %edi
	addl %esi,%edi
	addl %ebp,%edi
	movl $4,%ebp
	movl $36,%esi
	movl $-72,%ebx
	leal 128(%esp), %ecx
	addl %ebx,%ecx
	addl %esi,%ecx
	movl (%ecx),%esi
	movl $1,%ecx
	addl %esi,%ecx
	imull %ebp,%ecx
	movl $32,%ebp
	movl $-72,%esi
	leal 128(%esp), %ebx
	addl %esi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	movl (%edi),%ecx
	movl %ecx,(%ebp)
	movl $1,%ecx
	movl $36,%ebp
	movl $-72,%edi
	leal 128(%esp), %ebx
	addl %edi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	movl $36,%ecx
	movl $-72,%ebx
	leal 128(%esp), %edi
	addl %ebx,%edi
	addl %ecx,%edi
	movl %ebp,(%edi)
	movl $-72,%ebp
	leal 128(%esp), %eax
	addl %ebp,%eax
	call getline_74
Ljoin_l201:
	movl $44,%ecx
	movl $-72,%edx
	leal 128(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp Lloop_start_100
Ljoin_l226:
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
killer_C169:
	movl $0,%eax
	leal 128(%esp), %ecx
	movl $0,%edx
	leal 128(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 128(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l254:
.long 1
.long 0xffffffb8
.section .pcmap
.long Ljoin_l230
.long Lframe_l255
.section .pcmap_data
Lframe_l255:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l225
.long Lframe_l256
.section .pcmap_data
Lframe_l256:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l222
.long Lframe_l257
.section .pcmap_data
Lframe_l257:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l217
.long Lframe_l258
.section .pcmap_data
Lframe_l258:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l210
.long Lframe_l259
.section .pcmap_data
Lframe_l259:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l207
.long Lframe_l260
.section .pcmap_data
Lframe_l260:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l204
.long Lframe_l261
.section .pcmap_data
Lframe_l261:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l201
.long Lframe_l262
.section .pcmap_data
Lframe_l262:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l198
.long Lframe_l263
.section .pcmap_data
Lframe_l263:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l193
.long Lframe_l264
.section .pcmap_data
Lframe_l264:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l190
.long Lframe_l265
.section .pcmap_data
Lframe_l265:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l185
.long Lframe_l266
.section .pcmap_data
Lframe_l266:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l182
.long Lframe_l267
.section .pcmap_data
Lframe_l267:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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
.long Ljoin_l177
.long Lframe_l268
.section .pcmap_data
Lframe_l268:
.long 0xffffff80
.long 0x80000004
.long 0x80000000
.long Lstackdata_l254
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

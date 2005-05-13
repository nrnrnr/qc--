.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ:
Cmm.global_area:
.skip 4
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.align 4
Lgbl_130:
.long 1
.byte 45
.byte 0
Lgbl_45:
.long 1
.byte 48
.byte 0
Lgbl_63:
.long 1
.byte 10
.byte 0
Lgbl_59:
.long 1
.byte 32
.byte 0
Lgbl_50:
.long 1
.byte 57
.byte 0
.section .text
isdigit_41:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 24(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l11:
.Lproc_body_start_l10:
	leal 24(%esp), %edx
	movl $-8,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 24(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_ord
.Lcall_successor_l24:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_45,%eax
	leal 24(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l21:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l28:
	cmpl %eax,%esi
	jge LifTrue_54
LifFalse_55:
	movl $0,%eax
	jmp LifEnd_56
LifTrue_54:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_ord
.Lcall_successor_l18:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_50,%eax
	leal 24(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l15:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l32:
	cmpl %eax,%esi
	jle .Lbranch_target_l31
.Lbranch_target_l30:
	movl $0,%eax
	jmp .Lbranch_target_l29
.Lbranch_target_l31:
	movl $-1,%eax
.Lbranch_target_l29:
LifEnd_56:
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l35:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000008
.long 0xffffffe8
.long 0xfffffff4
.long .Lstackdata_l35
.long 2
.long 14
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long isdigit_41_gc_data
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000008
.long 0xffffffe8
.long 0xfffffff4
.long .Lstackdata_l35
.long 2
.long 14
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long isdigit_41_gc_data
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l38
.section .pcmap_data
.Lframe_l38:
.long 0x80000008
.long 0xffffffe8
.long 0xfffffff4
.long .Lstackdata_l35
.long 2
.long 14
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isdigit_41_gc_data
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000008
.long 0xffffffe8
.long 0xfffffff4
.long .Lstackdata_l35
.long 2
.long 14
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long isdigit_41_gc_data
.section .text
.section .data
isdigit_41_gc_data:
.long 2
.long 1
.long 1
.long 14
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
.section .text
skipto_42:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l41:
.Lproc_body_start_l40:
	leal 20(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_70:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal Lgbl_59,%eax
	leal 20(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l51:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l55:
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_67
LifFalse_68:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal Lgbl_63,%eax
	leal 20(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l48:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l59:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l58
.Lbranch_target_l57:
	movl $0,%eax
	jmp .Lbranch_target_l56
.Lbranch_target_l58:
	movl $-1,%eax
.Lbranch_target_l56:
	jmp LifEnd_69
LifTrue_67:
	movl $1,%eax
LifEnd_69:
.Lbranch_target_l60:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_71
Lloop_end_58:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 20(%esp), %esp
	ret
Lloop_body_71:
	call tig_getchar
.Lcall_successor_l45:
	leal 20(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_70
.section .pcmap_data
.Lstackdata_l62:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l63
.section .pcmap_data
.Lframe_l63:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l62
.long 1
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long skipto_42_gc_data
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l62
.long 1
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long skipto_42_gc_data
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l65
.section .pcmap_data
.Lframe_l65:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l62
.long 1
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long skipto_42_gc_data
.section .text
.section .data
skipto_42_gc_data:
.long 1
.long 1
.long 8
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 1
.section .text
readint_40:
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l67:
.Lproc_body_start_l66:
	leal 28(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%edx
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	call skipto_42
.Lcall_successor_l86:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 32(%esp), %ecx
	movl $-32,%esi
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	call isdigit_41
.Lcall_successor_l83:
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
Lloop_start_78:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 32(%esp), %ecx
	movl $-32,%esi
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	call isdigit_41
.Lcall_successor_l80:
.Lbranch_target_l90:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_79
Lloop_end_73:
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 32(%esp), %esp
	ret
Lloop_body_79:
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	movl $10,%eax
	imull %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l77:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	addl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_45,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l74:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	subl %eax,%esi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_getchar
.Lcall_successor_l71:
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_78
.section .pcmap_data
.Lstackdata_l92:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l86
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l92
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
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
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l83
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l92
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
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
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l80
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l92
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
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
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l77
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l92
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l74
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l92
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l71
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l92
.long 2
.long 12
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
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
.long readint_40_gc_data
.section .text
.section .data
readint_40_gc_data:
.long 3
.long 1
.long 1
.long 0
.long 12
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
readlist_81:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l100:
.Lproc_body_start_l99:
	leal 20(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l118:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_87
Lalc_gc_87:
	call tig_call_gc
.Lcall_successor_l113:
Lalc_88:
	movl $8,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl %eax,(%ecx)
	leal 20(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call readint_40
.Lcall_successor_l110:
	leal 20(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l117:
	leal 20(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne LifTrue_95
LifFalse_96:
	movl $0,%edi
	jmp LifEnd_97
LifTrue_95:
.Lbranch_target_l119:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_92
Lalc_gc_92:
	call tig_call_gc
.Lcall_successor_l107:
Lalc_93:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	movl $4,%eax
	addl %eax,%edi
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 20(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%edi)
	leal 20(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call readlist_81
.Lcall_successor_l104:
	movl $4,%edx
	movl %edi,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
LifEnd_97:
	movl %edi,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l121:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l113
.long .Lframe_l122
.section .pcmap_data
.Lframe_l122:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff0
.long .Lstackdata_l121
.long 1
.long 9
.long 2
.long 1
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long readlist_81_gc_data
.section .pcmap
.long .Lcall_successor_l110
.long .Lframe_l123
.section .pcmap_data
.Lframe_l123:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff0
.long .Lstackdata_l121
.long 1
.long 9
.long 2
.long 1
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long readlist_81_gc_data
.section .pcmap
.long .Lcall_successor_l107
.long .Lframe_l124
.section .pcmap_data
.Lframe_l124:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff0
.long .Lstackdata_l121
.long 1
.long 9
.long 2
.long 1
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long readlist_81_gc_data
.section .pcmap
.long .Lcall_successor_l104
.long .Lframe_l125
.section .pcmap_data
.Lframe_l125:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff0
.long .Lstackdata_l121
.long 1
.long 9
.long 2
.long 1
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long readlist_81_gc_data
.section .text
.section .data
readlist_81_gc_data:
.long 3
.long 1
.long 1
.long 0
.long 9
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.section .text
merge_82:
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,(%esp)
	leal 32(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
	movl %edx,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
	movl %ebp,4(%esp)
.Linitialize_continuations_l127:
.Lproc_body_start_l126:
	leal 32(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l144:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je LifTrue_116
LifFalse_117:
.Lbranch_target_l145:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je LifTrue_112
LifFalse_113:
.Lbranch_target_l146:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%edx
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jl LifTrue_108
LifFalse_109:
.Lbranch_target_l148:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_105
Lalc_gc_105:
	call tig_call_gc
.Lcall_successor_l134:
Lalc_106:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl %eax,(%ebp)
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $4,%esi
	addl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call merge_82
.Lcall_successor_l131:
	movl $4,%edx
	movl %ebp,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp LifEnd_110
LifTrue_108:
.Lbranch_target_l147:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_101
Lalc_gc_101:
	call tig_call_gc
.Lcall_successor_l140:
Lalc_102:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl %eax,(%ebp)
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call merge_82
.Lcall_successor_l137:
	movl $4,%edx
	movl %ebp,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
LifEnd_110:
	jmp LifEnd_114
LifTrue_112:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ebp
LifEnd_114:
	jmp LifEnd_118
LifTrue_116:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ebp
LifEnd_118:
	movl %ebp,%eax
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	movl 4(%esp),%ebp
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l150:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l134
.long .Lframe_l151
.section .pcmap_data
.Lframe_l151:
.long 0x8000000c
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l150
.long 3
.long 13
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long merge_82_gc_data
.section .pcmap
.long .Lcall_successor_l131
.long .Lframe_l152
.section .pcmap_data
.Lframe_l152:
.long 0x8000000c
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l150
.long 3
.long 13
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long merge_82_gc_data
.section .pcmap
.long .Lcall_successor_l140
.long .Lframe_l153
.section .pcmap_data
.Lframe_l153:
.long 0x8000000c
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l150
.long 3
.long 13
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long merge_82_gc_data
.section .pcmap
.long .Lcall_successor_l137
.long .Lframe_l154
.section .pcmap_data
.Lframe_l154:
.long 0x8000000c
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l150
.long 3
.long 13
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long merge_82_gc_data
.section .text
.section .data
merge_82_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 13
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.section .text
f_120:
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
	movl %edx,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
	movl %ebp,4(%esp)
.Linitialize_continuations_l156:
.Lproc_body_start_l155:
	leal 28(%esp), %edx
	movl $-8,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l173:
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jg LifTrue_126
LifFalse_127:
	movl $0,%eax
	jmp LifEnd_128
LifTrue_126:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $10,%ecx
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call f_120
.Lcall_successor_l169:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $10,%ecx
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $10,%ecx
	imull %ecx,%eax
	subl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_45,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l166:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	addl %eax,%esi
	movl %esi,%eax
	call tig_chr
.Lcall_successor_l163:
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
.Lcall_successor_l160:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
LifEnd_128:
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	movl 4(%esp),%ebp
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l175:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l169
.long .Lframe_l176
.section .pcmap_data
.Lframe_l176:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l175
.long 3
.long 10
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
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
.long f_120_gc_data
.section .pcmap
.long .Lcall_successor_l166
.long .Lframe_l177
.section .pcmap_data
.Lframe_l177:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l175
.long 3
.long 10
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0x4000000b
.long 0
.long 0
.long f_120_gc_data
.section .pcmap
.long .Lcall_successor_l163
.long .Lframe_l178
.section .pcmap_data
.Lframe_l178:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l175
.long 3
.long 10
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long f_120_gc_data
.section .pcmap
.long .Lcall_successor_l160
.long .Lframe_l179
.section .pcmap_data
.Lframe_l179:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l175
.long 3
.long 10
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long f_120_gc_data
.section .text
.section .data
f_120_gc_data:
.long 2
.long 1
.long 0
.long 10
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
.section .text
printint_83:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l181:
.Lproc_body_start_l180:
	leal 20(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l198:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jl LifTrue_140
LifFalse_141:
.Lbranch_target_l199:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jg LifTrue_136
LifFalse_137:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_45,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l185:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	jmp LifEnd_138
LifTrue_136:
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call f_120
.Lcall_successor_l188:
LifEnd_138:
	jmp LifEnd_142
LifTrue_140:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_130,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l194:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $0,%ecx
	leal 24(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edx
	subl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call f_120
.Lcall_successor_l191:
LifEnd_142:
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l201:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l185
.long .Lframe_l202
.section .pcmap_data
.Lframe_l202:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l201
.long 1
.long 9
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long printint_83_gc_data
.section .pcmap
.long .Lcall_successor_l188
.long .Lframe_l203
.section .pcmap_data
.Lframe_l203:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l201
.long 1
.long 9
.long 2
.long 1
.long 11
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
.long printint_83_gc_data
.section .pcmap
.long .Lcall_successor_l194
.long .Lframe_l204
.section .pcmap_data
.Lframe_l204:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l201
.long 1
.long 9
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long printint_83_gc_data
.section .pcmap
.long .Lcall_successor_l191
.long .Lframe_l205
.section .pcmap_data
.Lframe_l205:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l201
.long 1
.long 9
.long 2
.long 1
.long 11
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
.long printint_83_gc_data
.section .text
.section .data
printint_83_gc_data:
.long 2
.long 1
.long 0
.long 9
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
printlist_84:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l207:
.Lproc_body_start_l206:
	leal 20(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l224:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je LifTrue_149
LifFalse_150:
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call printint_83
.Lcall_successor_l217:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_59,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l214:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call printlist_84
.Lcall_successor_l211:
	jmp LifEnd_151
LifTrue_149:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_63,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l220:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
LifEnd_151:
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l226:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l217
.long .Lframe_l227
.section .pcmap_data
.Lframe_l227:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l226
.long 1
.long 8
.long 2
.long 1
.long 11
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
.long printlist_84_gc_data
.section .pcmap
.long .Lcall_successor_l214
.long .Lframe_l228
.section .pcmap_data
.Lframe_l228:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l226
.long 1
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long printlist_84_gc_data
.section .pcmap
.long .Lcall_successor_l211
.long .Lframe_l229
.section .pcmap_data
.Lframe_l229:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l226
.long 1
.long 8
.long 2
.long 1
.long 11
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
.long printlist_84_gc_data
.section .pcmap
.long .Lcall_successor_l220
.long .Lframe_l230
.section .pcmap_data
.Lframe_l230:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l226
.long 1
.long 8
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long printlist_84_gc_data
.section .text
.section .data
printlist_84_gc_data:
.long 2
.long 1
.long 1
.long 8
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
tiger_main:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l232:
.Lproc_body_start_l231:
	leal 28(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l251:
	leal 28(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	call readlist_81
.Lcall_successor_l248:
	leal 28(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l245:
	leal 28(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	call readlist_81
.Lcall_successor_l242:
	leal 28(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	leal 36(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	call merge_82
.Lcall_successor_l239:
	movl %eax,%ecx
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	leal 32(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call printlist_84
.Lcall_successor_l236:
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l256:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l251
.long .Lframe_l257
.section .pcmap_data
.Lframe_l257:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l256
.long 1
.long 7
.long 2
.long 1
.long 11
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l248
.long .Lframe_l258
.section .pcmap_data
.Lframe_l258:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l256
.long 1
.long 7
.long 2
.long 1
.long 11
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l245
.long .Lframe_l259
.section .pcmap_data
.Lframe_l259:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l256
.long 1
.long 7
.long 2
.long 1
.long 11
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l242
.long .Lframe_l260
.section .pcmap_data
.Lframe_l260:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l256
.long 1
.long 7
.long 2
.long 1
.long 11
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l239
.long .Lframe_l261
.section .pcmap_data
.Lframe_l261:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l256
.long 1
.long 7
.long 2
.long 1
.long 11
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l236
.long .Lframe_l262
.section .pcmap_data
.Lframe_l262:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l256
.long 1
.long 7
.long 2
.long 1
.long 11
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
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 4
.long 1
.long 1
.long 1
.long 1
.long 7
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0

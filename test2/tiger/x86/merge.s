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
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l11:
.Lproc_body_start_l10:
	movl %eax,4(%esp)
	leal 76(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl %eax,20(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl %eax,24(%esp)
	movl $-76,%eax
	addl %eax,%ecx
	movl 24(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,28(%esp)
	call tig_ord
.Lcall_successor_l24:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal Lgbl_45,%edx
	movl %eax,32(%esp)
	leal 76(%esp), %eax
	movl %eax,36(%esp)
	movl $-76,%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l21:
	leal Cmm.global_area,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l32:
	movl 32(%esp),%ecx
	cmpl %eax,%ecx
	jge LifTrue_54
LifFalse_55:
	movl $0,%eax
	jmp LifEnd_56
LifTrue_54:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 76(%esp), %edx
	movl %eax,48(%esp)
	movl $-76,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l18:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal Lgbl_50,%edx
	movl %eax,52(%esp)
	leal 76(%esp), %eax
	movl %eax,56(%esp)
	movl $-76,%eax
	movl %eax,60(%esp)
	movl 56(%esp),%eax
	movl %ecx,64(%esp)
	movl 60(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l15:
	leal Cmm.global_area,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l31:
	movl 52(%esp),%ecx
	cmpl %eax,%ecx
	jle .Lbranch_target_l30
.Lbranch_target_l29:
	movl $0,%eax
	jmp .Lbranch_target_l28
.Lbranch_target_l30:
	movl $-1,%eax
.Lbranch_target_l28:
LifEnd_56:
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 80(%esp), %esp
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
.long 0xffffffb4
.long 0xffffffd0
.long .Lstackdata_l35
.long 0
.long 14
.long 2
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
.long 0xffffffc8
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
.long 0xffffffb4
.long 0xffffffd0
.long .Lstackdata_l35
.long 0
.long 14
.long 2
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
.long 0xffffffe0
.long 0
.long 0
.long 0xffffffd4
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
.long 0xffffffb4
.long 0xffffffd0
.long .Lstackdata_l35
.long 0
.long 14
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
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
.long 0xffffffb4
.long 0xffffffd0
.long .Lstackdata_l35
.long 0
.long 14
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe8
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l41:
.Lproc_body_start_l40:
	leal 36(%esp), %edx
	movl %eax,8(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
Lloop_start_70:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %edx
	movl %eax,12(%esp)
	movl $-4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	leal 36(%esp), %edx
	movl %eax,16(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl 16(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	leal Lgbl_59,%eax
	leal 36(%esp), %edx
	movl %eax,20(%esp)
	movl $-32,%eax
	addl %eax,%edx
	movl 20(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,24(%esp)
	call tig_compare_str
.Lcall_successor_l51:
	leal Cmm.global_area,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l60:
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_67
LifFalse_68:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl %eax,28(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_63,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l48:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
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
.Lbranch_target_l55:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_71
Lloop_end_58:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
Lloop_body_71:
	call tig_getchar
.Lcall_successor_l45:
	leal 36(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.LLloop_start_70_l61:
	movl 24(%esp),%ecx
	jmp Lloop_start_70
.section .pcmap_data
.Lstackdata_l63:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l63
.long 0
.long 8
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0
.long 0
.long 0
.long skipto_42_gc_data
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l65
.section .pcmap_data
.Lframe_l65:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l63
.long 0
.long 8
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long skipto_42_gc_data
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l66
.section .pcmap_data
.Lframe_l66:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l63
.long 0
.long 8
.long 2
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
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l68:
.Lproc_body_start_l67:
	movl %eax,4(%esp)
	leal 76(%esp), %eax
	movl %eax,8(%esp)
	movl $-12,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 76(%esp), %ecx
	movl %eax,20(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl 20(%esp),%eax
	movl %eax,(%ecx)
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edx,24(%esp)
	call skipto_42
.Lcall_successor_l87:
	leal -4(%esp), %esp
	leal 80(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 80(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 80(%esp), %edx
	movl %ecx,32(%esp)
	movl $-80,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isdigit_41
.Lcall_successor_l84:
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
Lloop_start_78:
	leal -4(%esp), %esp
	leal 80(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 80(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 80(%esp), %edx
	movl %ecx,36(%esp)
	movl $-80,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isdigit_41
.Lcall_successor_l81:
.Lbranch_target_l91:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_79
Lloop_end_73:
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 80(%esp), %esp
	ret
Lloop_body_79:
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $10,%ecx
	imull %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl %eax,36(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal 76(%esp), %edx
	movl %eax,40(%esp)
	movl $-76,%eax
	addl %eax,%edx
	movl 40(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	movl %ecx,44(%esp)
	call tig_ord
.Lcall_successor_l78:
	leal Cmm.global_area,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	movl 36(%esp),%ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_45,%edx
	movl %eax,48(%esp)
	leal 76(%esp), %eax
	movl %eax,52(%esp)
	movl $-76,%eax
	movl %eax,56(%esp)
	movl 52(%esp),%eax
	movl %ecx,60(%esp)
	movl 56(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l75:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl 60(%esp),%ecx
	subl %eax,%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_getchar
.Lcall_successor_l72:
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_78
.section .pcmap_data
.Lstackdata_l93:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l87
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l93
.long 0
.long 12
.long 2
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
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l84
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l93
.long 0
.long 12
.long 2
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
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l81
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l93
.long 0
.long 12
.long 2
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
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l78
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l93
.long 0
.long 12
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0xffffffd8
.long 0
.long 0
.long 0
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l75
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l93
.long 0
.long 12
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long readint_40_gc_data
.section .pcmap
.long .Lcall_successor_l72
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l93
.long 0
.long 12
.long 2
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l101:
.Lproc_body_start_l100:
	leal 32(%esp), %edx
	movl %eax,(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
.Lbranch_target_l119:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	leal space_end,%edx
	movl (%edx),%edx
	cmpl %edx,%eax
	jg Lalc_gc_87
Lalc_gc_87:
	movl %ecx,4(%esp)
	call tig_call_gc
.Lcall_successor_l114:
Lalc_88:
	movl $8,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl %ecx,12(%esp)
	movl $-36,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call readint_40
.Lcall_successor_l111:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l120:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_95
LifFalse_96:
	movl $0,%eax
.LLifEnd_97_l121:
	movl %eax,%edx
	jmp LifEnd_97
LifTrue_95:
.Lbranch_target_l118:
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
.Lcall_successor_l108:
Lalc_93:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,12(%esp)
	movl %ecx,%eax
	call readlist_81
.Lcall_successor_l105:
	movl $4,%ecx
	movl %eax,16(%esp)
	movl 12(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
LifEnd_97:
	movl %edx,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l123:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l114
.long .Lframe_l124
.section .pcmap_data
.Lframe_l124:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l123
.long 0
.long 9
.long 2
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
.long readlist_81_gc_data
.section .pcmap
.long .Lcall_successor_l111
.long .Lframe_l125
.section .pcmap_data
.Lframe_l125:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l123
.long 0
.long 9
.long 2
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
.long readlist_81_gc_data
.section .pcmap
.long .Lcall_successor_l108
.long .Lframe_l126
.section .pcmap_data
.Lframe_l126:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l123
.long 0
.long 9
.long 2
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
.long readlist_81_gc_data
.section .pcmap
.long .Lcall_successor_l105
.long .Lframe_l127
.section .pcmap_data
.Lframe_l127:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l123
.long 0
.long 9
.long 2
.long 1
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
	leal -88(%esp), %esp
	leal 88(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 88(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 88(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l129:
.Lproc_body_start_l128:
	movl %eax,4(%esp)
	leal 88(%esp), %eax
	movl %eax,8(%esp)
	movl $-12,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 88(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 88(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l150:
	leal 88(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_116
LifFalse_117:
.Lbranch_target_l149:
	leal 88(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_112
LifFalse_113:
.Lbranch_target_l148:
	leal 88(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 88(%esp), %ecx
	movl %eax,20(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	jl LifTrue_108
LifFalse_109:
.Lbranch_target_l146:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_105
Lalc_gc_105:
	movl %edx,24(%esp)
	call tig_call_gc
.Lcall_successor_l136:
Lalc_106:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 88(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 96(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,60(%esp)
	movl %ecx,%eax
	leal 96(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 96(%esp), %edx
	movl %ecx,64(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 96(%esp), %edx
	movl %ecx,68(%esp)
	movl $-92,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 96(%esp), %ecx
	movl $-96,%edx
	addl %edx,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	call merge_82
.Lcall_successor_l133:
	movl $4,%ecx
	movl %eax,64(%esp)
	movl 52(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
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
	movl %edx,24(%esp)
	call tig_call_gc
.Lcall_successor_l142:
Lalc_102:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 88(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 96(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,36(%esp)
	movl %ecx,%eax
	leal 96(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 96(%esp), %edx
	movl %ecx,40(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	leal 96(%esp), %ecx
	movl %ecx,44(%esp)
	movl $-92,%ecx
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	movl %edx,52(%esp)
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 96(%esp), %ecx
	movl $-96,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	call merge_82
.Lcall_successor_l139:
	movl $4,%ecx
	movl %eax,48(%esp)
	movl 28(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
LifEnd_110:
.LLifEnd_114_l151:
	movl %edx,%eax
	movl 24(%esp),%edx
	jmp LifEnd_114
LifTrue_112:
	leal 88(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_114:
	jmp LifEnd_118
LifTrue_116:
	leal 88(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_118:
	leal 88(%esp), %ecx
	movl %ecx,68(%esp)
	movl $8,%ecx
	movl %ecx,72(%esp)
	movl 68(%esp),%ecx
	movl %edx,24(%esp)
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 96(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l153:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l136
.long .Lframe_l154
.section .pcmap_data
.Lframe_l154:
.long 0x8000000c
.long 0xffffffa8
.long 0xffffffc0
.long .Lstackdata_l153
.long 0
.long 13
.long 2
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
.long 0
.long merge_82_gc_data
.section .pcmap
.long .Lcall_successor_l133
.long .Lframe_l155
.section .pcmap_data
.Lframe_l155:
.long 0x8000000c
.long 0xffffffa8
.long 0xffffffc0
.long .Lstackdata_l153
.long 0
.long 13
.long 2
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
.long 0xffffffdc
.long 0
.long 0
.long 0
.long merge_82_gc_data
.section .pcmap
.long .Lcall_successor_l142
.long .Lframe_l156
.section .pcmap_data
.Lframe_l156:
.long 0x8000000c
.long 0xffffffa8
.long 0xffffffc0
.long .Lstackdata_l153
.long 0
.long 13
.long 2
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
.long 0
.long merge_82_gc_data
.section .pcmap
.long .Lcall_successor_l139
.long .Lframe_l157
.section .pcmap_data
.Lframe_l157:
.long 0x8000000c
.long 0xffffffa8
.long 0xffffffc0
.long .Lstackdata_l153
.long 0
.long 13
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0xffffffc4
.long 0
.long 0
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
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l159:
.Lproc_body_start_l158:
	movl %eax,4(%esp)
	leal 64(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l176:
	leal 64(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jg LifTrue_126
LifFalse_127:
	movl $0,%eax
.LLifEnd_128_l177:
	movl %edx,20(%esp)
	jmp LifEnd_128
LifTrue_126:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $10,%ecx
	movl %edx,24(%esp)
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl %eax,%ecx
	leal 68(%esp), %edx
	movl %ecx,28(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	call f_120
.Lcall_successor_l172:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl %eax,28(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $10,%edx
	movl %edx,32(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	idivl %ecx, %eax
	movl $10,%ecx
	imull %ecx,%eax
	movl 36(%esp),%ecx
	subl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_45,%edx
	movl %eax,40(%esp)
	leal 64(%esp), %eax
	movl %eax,44(%esp)
	movl $-64,%eax
	movl %eax,48(%esp)
	movl 44(%esp),%eax
	movl %ecx,52(%esp)
	movl 48(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l169:
	leal Cmm.global_area,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	movl 52(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	call tig_chr
.Lcall_successor_l166:
	leal 64(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
.Lcall_successor_l163:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
LifEnd_128:
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l179:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l172
.long .Lframe_l180
.section .pcmap_data
.Lframe_l180:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l179
.long 0
.long 10
.long 2
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
.long f_120_gc_data
.section .pcmap
.long .Lcall_successor_l169
.long .Lframe_l181
.section .pcmap_data
.Lframe_l181:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l179
.long 0
.long 10
.long 2
.long 1
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0
.long 0xffffffe8
.long 0
.long 0
.long f_120_gc_data
.section .pcmap
.long .Lcall_successor_l166
.long .Lframe_l182
.section .pcmap_data
.Lframe_l182:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l179
.long 0
.long 10
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long f_120_gc_data
.section .pcmap
.long .Lcall_successor_l163
.long .Lframe_l183
.section .pcmap_data
.Lframe_l183:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l179
.long 0
.long 10
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
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
	leal -92(%esp), %esp
	leal 92(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 92(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l185:
.Lproc_body_start_l184:
	movl %eax,4(%esp)
	leal 92(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 92(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l203:
	leal 92(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jl LifTrue_140
LifFalse_141:
.Lbranch_target_l202:
	leal 92(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jg LifTrue_136
LifFalse_137:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_45,%ecx
	movl %eax,68(%esp)
	leal 92(%esp), %eax
	movl %eax,72(%esp)
	movl $-92,%eax
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	addl %ecx,%eax
	movl 80(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,36(%esp)
	call tig_print
.Lcall_successor_l189:
	leal Cmm.global_area,%ecx
	movl 68(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_138
LifTrue_136:
	leal -4(%esp), %esp
	leal 96(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 96(%esp), %ecx
	movl %ecx,60(%esp)
	movl $-8,%ecx
	movl %ecx,64(%esp)
	movl 60(%esp),%ecx
	movl %edx,40(%esp)
	movl 64(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 96(%esp), %edx
	movl %ecx,68(%esp)
	movl $-96,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call f_120
.Lcall_successor_l192:
LifEnd_138:
	jmp LifEnd_142
LifTrue_140:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_130,%ecx
	movl %eax,20(%esp)
	leal 92(%esp), %eax
	movl %eax,24(%esp)
	movl $-92,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,36(%esp)
	call tig_print
.Lcall_successor_l198:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 96(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $0,%ecx
	leal 96(%esp), %edx
	movl %ecx,44(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 44(%esp),%edx
	subl %ecx,%edx
	leal 96(%esp), %ecx
	movl %ecx,48(%esp)
	movl $-96,%ecx
	movl %ecx,52(%esp)
	movl 48(%esp),%ecx
	movl %edx,56(%esp)
	movl 52(%esp),%edx
	addl %edx,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	call f_120
.Lcall_successor_l195:
LifEnd_142:
	leal 92(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 96(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l205:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l189
.long .Lframe_l206
.section .pcmap_data
.Lframe_l206:
.long 0x80000008
.long 0xffffffa4
.long 0xffffffc8
.long .Lstackdata_l205
.long 0
.long 9
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long printint_83_gc_data
.section .pcmap
.long .Lcall_successor_l192
.long .Lframe_l207
.section .pcmap_data
.Lframe_l207:
.long 0x80000008
.long 0xffffffa4
.long 0xffffffc8
.long .Lstackdata_l205
.long 0
.long 9
.long 2
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
.long printint_83_gc_data
.section .pcmap
.long .Lcall_successor_l198
.long .Lframe_l208
.section .pcmap_data
.Lframe_l208:
.long 0x80000008
.long 0xffffffa4
.long 0xffffffc8
.long .Lstackdata_l205
.long 0
.long 9
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffb8
.long 0
.long 0
.long printint_83_gc_data
.section .pcmap
.long .Lcall_successor_l195
.long .Lframe_l209
.section .pcmap_data
.Lframe_l209:
.long 0x80000008
.long 0xffffffa4
.long 0xffffffc8
.long .Lstackdata_l205
.long 0
.long 9
.long 2
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
	leal -68(%esp), %esp
	leal 68(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 68(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l211:
.Lproc_body_start_l210:
	movl %eax,4(%esp)
	leal 68(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l228:
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_149
LifFalse_150:
	leal -4(%esp), %esp
	leal 72(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 72(%esp), %ecx
	movl %ecx,44(%esp)
	movl $-8,%ecx
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	movl %edx,40(%esp)
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 72(%esp), %edx
	movl %ecx,52(%esp)
	movl $-72,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call printint_83
.Lcall_successor_l221:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_59,%ecx
	leal 68(%esp), %edx
	movl %eax,52(%esp)
	movl $-68,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l218:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 72(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 72(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 72(%esp), %edx
	movl %ecx,60(%esp)
	movl $-72,%ecx
	addl %ecx,%edx
	movl 60(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call printlist_84
.Lcall_successor_l215:
	jmp LifEnd_151
LifTrue_149:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_63,%ecx
	movl %eax,20(%esp)
	leal 68(%esp), %eax
	movl %eax,24(%esp)
	movl $-68,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,36(%esp)
	call tig_print
.Lcall_successor_l224:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
LifEnd_151:
	leal 68(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 72(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l230:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l221
.long .Lframe_l231
.section .pcmap_data
.Lframe_l231:
.long 0x80000008
.long 0xffffffbc
.long 0xffffffe0
.long .Lstackdata_l230
.long 0
.long 8
.long 2
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
.long printlist_84_gc_data
.section .pcmap
.long .Lcall_successor_l218
.long .Lframe_l232
.section .pcmap_data
.Lframe_l232:
.long 0x80000008
.long 0xffffffbc
.long 0xffffffe0
.long .Lstackdata_l230
.long 0
.long 8
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long printlist_84_gc_data
.section .pcmap
.long .Lcall_successor_l215
.long .Lframe_l233
.section .pcmap_data
.Lframe_l233:
.long 0x80000008
.long 0xffffffbc
.long 0xffffffe0
.long .Lstackdata_l230
.long 0
.long 8
.long 2
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
.long printlist_84_gc_data
.section .pcmap
.long .Lcall_successor_l224
.long .Lframe_l234
.section .pcmap_data
.Lframe_l234:
.long 0x80000008
.long 0xffffffbc
.long 0xffffffe0
.long .Lstackdata_l230
.long 0
.long 8
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd0
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l236:
.Lproc_body_start_l235:
	leal 44(%esp), %edx
	movl %eax,(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	movl %ecx,4(%esp)
	call tig_getchar
.Lcall_successor_l255:
	leal 44(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	call readlist_81
.Lcall_successor_l252:
	leal 44(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l249:
	leal 44(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 44(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	call readlist_81
.Lcall_successor_l246:
	leal 44(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 52(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl %ecx,16(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 52(%esp), %ecx
	movl %ecx,20(%esp)
	movl $-48,%ecx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	call merge_82
.Lcall_successor_l243:
	leal -4(%esp), %esp
	leal 48(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,28(%esp)
	movl %ecx,%eax
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	call printlist_84
.Lcall_successor_l240:
	leal 44(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l260:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l255
.long .Lframe_l261
.section .pcmap_data
.Lframe_l261:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l260
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l252
.long .Lframe_l262
.section .pcmap_data
.Lframe_l262:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l260
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l249
.long .Lframe_l263
.section .pcmap_data
.Lframe_l263:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l260
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l246
.long .Lframe_l264
.section .pcmap_data
.Lframe_l264:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l260
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l243
.long .Lframe_l265
.section .pcmap_data
.Lframe_l265:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l260
.long 0
.long 7
.long 2
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l240
.long .Lframe_l266
.section .pcmap_data
.Lframe_l266:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l260
.long 0
.long 7
.long 2
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

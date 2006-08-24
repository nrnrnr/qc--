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
.Lcall_successor_l25:
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
.Lcall_successor_l22:
	leal Cmm.global_area,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l19:
.Lbranch_target_l33:
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
.Lbranch_target_l32:
	movl 52(%esp),%ecx
	cmpl %eax,%ecx
	jle .Lbranch_target_l31
.Lbranch_target_l30:
	movl $0,%eax
	jmp .Lbranch_target_l29
.Lbranch_target_l31:
	movl $-1,%eax
.Lbranch_target_l29:
LifEnd_56:
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 80(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l36:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffd0
.long .Lstackdata_l36
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
.long .Lcall_successor_l22
.long .Lframe_l38
.section .pcmap_data
.Lframe_l38:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffd0
.long .Lstackdata_l36
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
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffd0
.long .Lstackdata_l36
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
.long .Lframe_l40
.section .pcmap_data
.Lframe_l40:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffd0
.long .Lstackdata_l36
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
.Linitialize_continuations_l42:
.Lproc_body_start_l41:
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
.Lcall_successor_l54:
	leal Cmm.global_area,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l51:
.Lbranch_target_l63:
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
.Lcall_successor_l50:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l62:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l61
.Lbranch_target_l60:
	movl $0,%eax
	jmp .Lbranch_target_l59
.Lbranch_target_l61:
	movl $-1,%eax
.Lbranch_target_l59:
	jmp LifEnd_69
LifTrue_67:
	movl $1,%eax
LifEnd_69:
.Lbranch_target_l47:
.Lbranch_target_l58:
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
.Lcall_successor_l46:
	leal 36(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.LLloop_start_70_l64:
	movl 24(%esp),%ecx
	jmp Lloop_start_70
.section .pcmap_data
.Lstackdata_l66:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l67
.section .pcmap_data
.Lframe_l67:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l66
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
.long .Lcall_successor_l50
.long .Lframe_l68
.section .pcmap_data
.Lframe_l68:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l66
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
.long .Lcall_successor_l46
.long .Lframe_l69
.section .pcmap_data
.Lframe_l69:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l66
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
.Linitialize_continuations_l71:
.Lproc_body_start_l70:
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
.Lcall_successor_l91:
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
.Lcall_successor_l88:
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
.Lcall_successor_l85:
.Lbranch_target_l82:
.Lbranch_target_l95:
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
.Lcall_successor_l81:
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
.Lcall_successor_l78:
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
.Lcall_successor_l75:
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_78
.section .pcmap_data
.Lstackdata_l97:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l91
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l97
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
.long .Lcall_successor_l88
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l97
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
.long .Lcall_successor_l85
.long .Lframe_l100
.section .pcmap_data
.Lframe_l100:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l97
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
.long .Lframe_l101
.section .pcmap_data
.Lframe_l101:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l97
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
.long .Lcall_successor_l78
.long .Lframe_l102
.section .pcmap_data
.Lframe_l102:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l97
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
.long .Lcall_successor_l75
.long .Lframe_l103
.section .pcmap_data
.Lframe_l103:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l97
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
.Linitialize_continuations_l105:
.Lproc_body_start_l104:
	leal 32(%esp), %edx
	movl %eax,(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
.Lbranch_target_l121:
.Lbranch_target_l127:
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
.Lcall_successor_l120:
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
.Lcall_successor_l117:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l114:
.Lbranch_target_l126:
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
.LLifEnd_97_l128:
	movl %eax,%edx
	jmp LifEnd_97
LifTrue_95:
.Lbranch_target_l113:
.Lbranch_target_l125:
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
.Lcall_successor_l112:
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
.Lcall_successor_l109:
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
.Lstackdata_l130:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l120
.long .Lframe_l131
.section .pcmap_data
.Lframe_l131:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l130
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
.long .Lcall_successor_l117
.long .Lframe_l132
.section .pcmap_data
.Lframe_l132:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l130
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
.long .Lcall_successor_l112
.long .Lframe_l133
.section .pcmap_data
.Lframe_l133:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l130
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
.long .Lcall_successor_l109
.long .Lframe_l134
.section .pcmap_data
.Lframe_l134:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long .Lstackdata_l130
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
.Linitialize_continuations_l136:
.Lproc_body_start_l135:
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
.Lbranch_target_l154:
.Lbranch_target_l162:
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
.Lbranch_target_l153:
.Lbranch_target_l161:
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
.Lbranch_target_l152:
.Lbranch_target_l160:
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
.Lbranch_target_l144:
.Lbranch_target_l158:
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
.Lcall_successor_l143:
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
.Lcall_successor_l140:
	movl $4,%ecx
	movl %eax,64(%esp)
	movl 52(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_110
LifTrue_108:
.Lbranch_target_l151:
.Lbranch_target_l159:
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
.Lcall_successor_l150:
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
.Lcall_successor_l147:
	movl $4,%ecx
	movl %eax,48(%esp)
	movl 28(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
LifEnd_110:
.LLifEnd_114_l163:
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
.Lstackdata_l165:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l143
.long .Lframe_l166
.section .pcmap_data
.Lframe_l166:
.long 0x8000000c
.long 0xffffffa8
.long 0xffffffc0
.long .Lstackdata_l165
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
.long .Lcall_successor_l140
.long .Lframe_l167
.section .pcmap_data
.Lframe_l167:
.long 0x8000000c
.long 0xffffffa8
.long 0xffffffc0
.long .Lstackdata_l165
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
.long .Lcall_successor_l150
.long .Lframe_l168
.section .pcmap_data
.Lframe_l168:
.long 0x8000000c
.long 0xffffffa8
.long 0xffffffc0
.long .Lstackdata_l165
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
.long .Lcall_successor_l147
.long .Lframe_l169
.section .pcmap_data
.Lframe_l169:
.long 0x8000000c
.long 0xffffffa8
.long 0xffffffc0
.long .Lstackdata_l165
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
.Linitialize_continuations_l171:
.Lproc_body_start_l170:
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
.Lbranch_target_l185:
.Lbranch_target_l189:
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
.LLifEnd_128_l190:
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
.Lcall_successor_l184:
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
.Lcall_successor_l181:
	leal Cmm.global_area,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	movl 52(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	call tig_chr
.Lcall_successor_l178:
	leal 64(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
.Lcall_successor_l175:
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
.Lstackdata_l192:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l184
.long .Lframe_l193
.section .pcmap_data
.Lframe_l193:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l192
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
.long .Lcall_successor_l181
.long .Lframe_l194
.section .pcmap_data
.Lframe_l194:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l192
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
.long .Lcall_successor_l178
.long .Lframe_l195
.section .pcmap_data
.Lframe_l195:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l192
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
.long .Lcall_successor_l175
.long .Lframe_l196
.section .pcmap_data
.Lframe_l196:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l192
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
.Linitialize_continuations_l198:
.Lproc_body_start_l197:
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
.Lbranch_target_l213:
.Lbranch_target_l218:
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
.Lbranch_target_l206:
.Lbranch_target_l217:
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
.Lcall_successor_l202:
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
.Lcall_successor_l205:
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
.Lcall_successor_l212:
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
.Lcall_successor_l209:
LifEnd_142:
	leal 92(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 96(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l220:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l202
.long .Lframe_l221
.section .pcmap_data
.Lframe_l221:
.long 0x80000008
.long 0xffffffa4
.long 0xffffffc8
.long .Lstackdata_l220
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
.long .Lcall_successor_l205
.long .Lframe_l222
.section .pcmap_data
.Lframe_l222:
.long 0x80000008
.long 0xffffffa4
.long 0xffffffc8
.long .Lstackdata_l220
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
.long .Lcall_successor_l212
.long .Lframe_l223
.section .pcmap_data
.Lframe_l223:
.long 0x80000008
.long 0xffffffa4
.long 0xffffffc8
.long .Lstackdata_l220
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
.long .Lcall_successor_l209
.long .Lframe_l224
.section .pcmap_data
.Lframe_l224:
.long 0x80000008
.long 0xffffffa4
.long 0xffffffc8
.long .Lstackdata_l220
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
.Linitialize_continuations_l226:
.Lproc_body_start_l225:
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
.Lbranch_target_l240:
.Lbranch_target_l244:
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
.Lcall_successor_l236:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_59,%ecx
	leal 68(%esp), %edx
	movl %eax,52(%esp)
	movl $-68,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l233:
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
.Lcall_successor_l230:
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
.Lcall_successor_l239:
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
.Lstackdata_l246:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l236
.long .Lframe_l247
.section .pcmap_data
.Lframe_l247:
.long 0x80000008
.long 0xffffffbc
.long 0xffffffe0
.long .Lstackdata_l246
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
.long .Lcall_successor_l233
.long .Lframe_l248
.section .pcmap_data
.Lframe_l248:
.long 0x80000008
.long 0xffffffbc
.long 0xffffffe0
.long .Lstackdata_l246
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
.long .Lcall_successor_l230
.long .Lframe_l249
.section .pcmap_data
.Lframe_l249:
.long 0x80000008
.long 0xffffffbc
.long 0xffffffe0
.long .Lstackdata_l246
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
.long .Lcall_successor_l239
.long .Lframe_l250
.section .pcmap_data
.Lframe_l250:
.long 0x80000008
.long 0xffffffbc
.long 0xffffffe0
.long .Lstackdata_l246
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
.Linitialize_continuations_l252:
.Lproc_body_start_l251:
	leal 44(%esp), %edx
	movl %eax,(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	movl %ecx,4(%esp)
	call tig_getchar
.Lcall_successor_l271:
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
.Lcall_successor_l268:
	leal 44(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l265:
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
.Lcall_successor_l262:
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
.Lcall_successor_l259:
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
.Lcall_successor_l256:
	leal 44(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l276:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l271
.long .Lframe_l277
.section .pcmap_data
.Lframe_l277:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l276
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
.long .Lcall_successor_l268
.long .Lframe_l278
.section .pcmap_data
.Lframe_l278:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l276
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
.long .Lcall_successor_l265
.long .Lframe_l279
.section .pcmap_data
.Lframe_l279:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l276
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
.long .Lcall_successor_l262
.long .Lframe_l280
.section .pcmap_data
.Lframe_l280:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l276
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
.long .Lcall_successor_l259
.long .Lframe_l281
.section .pcmap_data
.Lframe_l281:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l276
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
.long .Lcall_successor_l256
.long .Lframe_l282
.section .pcmap_data
.Lframe_l282:
.long 0x80000004
.long 0xffffffd4
.long 0xffffffd8
.long .Lstackdata_l276
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

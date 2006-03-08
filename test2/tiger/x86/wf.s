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
.long 0
.byte 0
Lgbl_112:
.long 1
.byte 122
.byte 0
Lgbl_93:
.long 1
.byte 65
.byte 0
Lgbl_81:
.long 1
.byte 9
.byte 0
Lgbl_43:
.long 2
.byte 63
.byte 32
.byte 0
Lgbl_96:
.long 1
.byte 90
.byte 0
Lgbl_48:
.long 1
.byte 10
.byte 0
Lgbl_105:
.long 1
.byte 97
.byte 0
.section .text
err_37:
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l10:
.Lproc_body_start_l9:
	movl %eax,4(%esp)
	leal 60(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_43,%ecx
	movl %eax,20(%esp)
	leal 60(%esp), %eax
	movl %eax,24(%esp)
	movl $-60,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,36(%esp)
	call tig_print
.Lcall_successor_l23:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 60(%esp), %edx
	movl %eax,40(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l20:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_48,%ecx
	leal 60(%esp), %edx
	movl %eax,44(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l17:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $1,%ecx
	leal 60(%esp), %edx
	movl %eax,48(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_exit
.Lcall_successor_l14:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l29:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l29
.long 0
.long 11
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
.long 0xffffffd8
.long 0
.long 0
.long err_37_gc_data
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l29
.long 0
.long 11
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
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long err_37_gc_data
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l29
.long 0
.long 11
.long 2
.long 1
.long 0
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
.long 0
.long 0
.long err_37_gc_data
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l29
.long 0
.long 11
.long 2
.long 1
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
.long 0
.long err_37_gc_data
.section .text
.section .data
err_37_gc_data:
.long 2
.long 1
.long 1
.long 11
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
.section .text
insert_54:
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
	movl %eax,8(%esp)
	leal 76(%esp), %eax
	movl %eax,12(%esp)
	movl $-8,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l56:
	leal 76(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_74
LifFalse_75:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl %eax,40(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl %eax,44(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl %eax,48(%esp)
	movl $-72,%eax
	addl %eax,%ecx
	movl 48(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 76(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,24(%esp)
	call tig_compare_str
.Lcall_successor_l48:
	leal Cmm.global_area,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l58:
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_70
LifFalse_71:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 76(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 76(%esp), %edx
	movl %eax,52(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	leal 76(%esp), %edx
	movl %eax,56(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl 56(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 76(%esp), %eax
	movl $-76,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l45:
	leal Cmm.global_area,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l57:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl LifTrue_66
LifFalse_67:
	leal -4(%esp), %esp
	leal 80(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 80(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 80(%esp), %edx
	movl %ecx,68(%esp)
	movl $-80,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call insert_54
.Lcall_successor_l39:
	leal 76(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 76(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp LifEnd_68
LifTrue_66:
	leal -4(%esp), %esp
	leal 80(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 80(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 80(%esp), %edx
	movl %ecx,64(%esp)
	movl $-80,%ecx
	addl %ecx,%edx
	movl 64(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call insert_54
.Lcall_successor_l42:
	leal 76(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 76(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_68:
	jmp LifEnd_72
LifTrue_70:
	leal 76(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal 76(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_72:
.LLifEnd_76_l59:
	movl %eax,%edx
	jmp LifEnd_76
LifTrue_74:
.Lbranch_target_l55:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_57
Lalc_gc_57:
	movl %edx,24(%esp)
	call tig_call_gc
.Lcall_successor_l51:
Lalc_58:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl $1,%ecx
	movl %ecx,(%eax)
	movl $0,%ecx
	movl $4,%edx
	movl %eax,28(%esp)
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%eax
	movl $8,%ecx
	movl %eax,32(%esp)
	movl 28(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,36(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
LifEnd_76:
	movl %edx,%eax
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 80(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l61:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l61
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
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_54_gc_data
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l63
.section .pcmap_data
.Lframe_l63:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l61
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_54_gc_data
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l61
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_54_gc_data
.section .pcmap
.long .Lcall_successor_l42
.long .Lframe_l65
.section .pcmap_data
.Lframe_l65:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l61
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_54_gc_data
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l66
.section .pcmap_data
.Lframe_l66:
.long 0x80000008
.long 0xffffffb4
.long 0xffffffcc
.long .Lstackdata_l61
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_54_gc_data
.section .text
.section .data
insert_54_gc_data:
.long 2
.long 1
.long 1
.long 14
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 1
.long 1
.long 1
.long 1
.section .text
add_word_38:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l68:
.Lproc_body_start_l67:
	movl %eax,(%esp)
	leal 40(%esp), %eax
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 44(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 44(%esp), %ecx
	movl %ecx,20(%esp)
	movl $-8,%ecx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 44(%esp), %edx
	movl %ecx,32(%esp)
	movl $-44,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call insert_54
.Lcall_successor_l72:
	leal 40(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l77:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l72
.long .Lframe_l78
.section .pcmap_data
.Lframe_l78:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l77
.long 0
.long 4
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long add_word_38_gc_data
.section .text
.section .data
add_word_38_gc_data:
.long 2
.long 1
.long 1
.long 4
.long 1
.long 1
.long 0
.long 1
.section .text
tprint_39:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l80:
.Lproc_body_start_l79:
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
.Lbranch_target_l103:
	leal 64(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_89
LifFalse_90:
	movl $0,%eax
.LLifEnd_91_l104:
	movl %edx,28(%esp)
	jmp LifEnd_91
LifTrue_89:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl %ecx,24(%esp)
	movl $-8,%ecx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,36(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_39
.Lcall_successor_l99:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl %eax,36(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_printi
.Lcall_successor_l96:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_81,%ecx
	leal 64(%esp), %edx
	movl %eax,40(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l93:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,44(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l90:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_48,%ecx
	leal 64(%esp), %edx
	movl %eax,48(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l87:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,56(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_39
.Lcall_successor_l84:
LifEnd_91:
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l106:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l99
.long .Lframe_l107
.section .pcmap_data
.Lframe_l107:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l106
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
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l96
.long .Lframe_l108
.section .pcmap_data
.Lframe_l108:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l106
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
.long 0xffffffe4
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l93
.long .Lframe_l109
.section .pcmap_data
.Lframe_l109:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l106
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l90
.long .Lframe_l110
.section .pcmap_data
.Lframe_l110:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l106
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
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l87
.long .Lframe_l111
.section .pcmap_data
.Lframe_l111:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l106
.long 0
.long 12
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
.long 0
.long 0
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l84
.long .Lframe_l112
.section .pcmap_data
.Lframe_l112:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l106
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
.long tprint_39_gc_data
.section .text
.section .data
tprint_39_gc_data:
.long 2
.long 1
.long 1
.long 12
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
.section .text
isletter_40:
	leal -108(%esp), %esp
	leal 108(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 108(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l114:
.Lproc_body_start_l113:
	movl %eax,8(%esp)
	leal 108(%esp), %eax
	movl %eax,12(%esp)
	movl $-8,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 108(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl %eax,24(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 108(%esp), %eax
	movl %eax,28(%esp)
	movl $-108,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_93,%eax
	leal 108(%esp), %ecx
	movl %eax,40(%esp)
	movl $-104,%eax
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,44(%esp)
	call tig_compare_str
.Lcall_successor_l139:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l154:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_100
LifFalse_101:
	movl $0,%eax
	jmp LifEnd_102
LifTrue_100:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,48(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_96,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l136:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l153:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l152
.Lbranch_target_l151:
	movl $0,%eax
	jmp .Lbranch_target_l150
.Lbranch_target_l152:
	movl $-1,%eax
.Lbranch_target_l150:
LifEnd_102:
.Lbranch_target_l144:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_126
LifFalse_127:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,88(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_105,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l124:
	leal Cmm.global_area,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l149:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_116
LifFalse_117:
	movl $0,%eax
	jmp LifEnd_118
LifTrue_116:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,92(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_112,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l121:
	leal Cmm.global_area,%ecx
	movl 92(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l148:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l147
.Lbranch_target_l146:
	movl $0,%eax
	jmp .Lbranch_target_l145
.Lbranch_target_l147:
	movl $-1,%eax
.Lbranch_target_l145:
LifEnd_118:
.Lbranch_target_l143:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_122
LifFalse_123:
	movl $0,%eax
	jmp LifEnd_124
LifTrue_122:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,96(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l118:
	leal Cmm.global_area,%ecx
	movl 96(%esp),%edx
	movl %edx,(%ecx)
LifEnd_124:
.LLifEnd_128_l155:
	movl %eax,%ecx
	jmp LifEnd_128
LifTrue_126:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,52(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l133:
	leal Cmm.global_area,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal Lgbl_105,%edx
	movl %eax,56(%esp)
	leal 108(%esp), %eax
	movl %eax,60(%esp)
	movl $-108,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l130:
	leal Cmm.global_area,%ecx
	movl 68(%esp),%edx
	movl %edx,(%ecx)
	movl 56(%esp),%ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_93,%edx
	movl %eax,72(%esp)
	leal 108(%esp), %eax
	movl %eax,76(%esp)
	movl $-108,%eax
	movl %eax,80(%esp)
	movl 76(%esp),%eax
	movl %ecx,84(%esp)
	movl 80(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l127:
	leal Cmm.global_area,%ecx
	movl 72(%esp),%edx
	movl %edx,(%ecx)
	movl 84(%esp),%ecx
	subl %eax,%ecx
LifEnd_128:
	movl %ecx,%eax
	leal 108(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 112(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l158:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l139
.long .Lframe_l159
.section .pcmap_data
.Lframe_l159:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l158
.long 0
.long 25
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffac
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l136
.long .Lframe_l160
.section .pcmap_data
.Lframe_l160:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l158
.long 0
.long 25
.long 2
.long 1
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l124
.long .Lframe_l161
.section .pcmap_data
.Lframe_l161:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l158
.long 0
.long 25
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
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l121
.long .Lframe_l162
.section .pcmap_data
.Lframe_l162:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l158
.long 0
.long 25
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
.long 0
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
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l118
.long .Lframe_l163
.section .pcmap_data
.Lframe_l163:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l158
.long 0
.long 25
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
.long 0
.long 0
.long 0
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l133
.long .Lframe_l164
.section .pcmap_data
.Lframe_l164:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l158
.long 0
.long 25
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
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l130
.long .Lframe_l165
.section .pcmap_data
.Lframe_l165:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l158
.long 0
.long 25
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
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
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
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l127
.long .Lframe_l166
.section .pcmap_data
.Lframe_l166:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l158
.long 0
.long 25
.long 2
.long 1
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
.long 0
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
.long 0
.long 0
.long 0
.long isletter_40_gc_data
.section .text
.section .data
isletter_40_gc_data:
.long 2
.long 1
.long 1
.long 25
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
getword_41:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l168:
.Lproc_body_start_l167:
	leal 64(%esp), %edx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_130,%eax
	leal 64(%esp), %edx
	movl %eax,12(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_130,%eax
	leal 64(%esp), %edx
	movl %eax,16(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,20(%esp)
	call tig_getchar
.Lcall_successor_l199:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_138:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,24(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_130,%eax
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l196:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l210:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_135
LifFalse_136:
	movl $0,%eax
	jmp LifEnd_137
LifTrue_135:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,32(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isletter_40
.Lcall_successor_l193:
.Lbranch_target_l209:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l208
.Lbranch_target_l207:
	movl $0,%eax
	jmp .Lbranch_target_l206
.Lbranch_target_l208:
	movl $-1,%eax
.Lbranch_target_l206:
LifEnd_137:
.Lbranch_target_l204:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_139
Lloop_end_131:
Lloop_start_147:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,32(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_130,%eax
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l187:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l205:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_144
LifFalse_145:
	movl $0,%eax
	jmp LifEnd_146
LifTrue_144:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,40(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isletter_40
.Lcall_successor_l184:
LifEnd_146:
.Lbranch_target_l203:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_148
Lloop_end_140:
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %esp
	ret
Lloop_body_148:
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,44(%esp)
	movl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,48(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isletter_40
.Lcall_successor_l181:
	call tig_chr
.Lcall_successor_l178:
	leal -4(%esp), %esp
	movl %eax,52(%esp)
	movl 44(%esp),%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	call tig_concat
.Lcall_successor_l175:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l172:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_147
Lloop_body_139:
	call tig_getchar
.Lcall_successor_l190:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_138
.section .pcmap_data
.Lstackdata_l212:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l199
.long .Lframe_l213
.section .pcmap_data
.Lframe_l213:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l196
.long .Lframe_l214
.section .pcmap_data
.Lframe_l214:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
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
.long 0xffffffd8
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l193
.long .Lframe_l215
.section .pcmap_data
.Lframe_l215:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l187
.long .Lframe_l216
.section .pcmap_data
.Lframe_l216:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
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
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l184
.long .Lframe_l217
.section .pcmap_data
.Lframe_l217:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l181
.long .Lframe_l218
.section .pcmap_data
.Lframe_l218:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
.long 2
.long 1
.long 0
.long 0
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
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l178
.long .Lframe_l219
.section .pcmap_data
.Lframe_l219:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
.long 2
.long 1
.long 0
.long 0
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
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l175
.long .Lframe_l220
.section .pcmap_data
.Lframe_l220:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l172
.long .Lframe_l221
.section .pcmap_data
.Lframe_l221:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l190
.long .Lframe_l222
.section .pcmap_data
.Lframe_l222:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l212
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .text
.section .data
getword_41_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 16
.long 1
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
main_42:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l224:
.Lproc_body_start_l223:
	leal 36(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_130,%eax
	leal 36(%esp), %edx
	movl %eax,8(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,12(%esp)
	call getword_41
.Lcall_successor_l240:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_153:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl %eax,16(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_size
.Lcall_successor_l237:
	leal Cmm.global_area,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l244:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Lloop_body_154
Lloop_end_150:
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,28(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_39
.Lcall_successor_l228:
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
Lloop_body_154:
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,24(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call add_word_38
.Lcall_successor_l234:
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_41
.Lcall_successor_l231:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_153
.section .pcmap_data
.Lstackdata_l246:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l240
.long .Lframe_l247
.section .pcmap_data
.Lframe_l247:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l246
.long 0
.long 6
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
.long main_42_gc_data
.section .pcmap
.long .Lcall_successor_l237
.long .Lframe_l248
.section .pcmap_data
.Lframe_l248:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l246
.long 0
.long 6
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long main_42_gc_data
.section .pcmap
.long .Lcall_successor_l228
.long .Lframe_l249
.section .pcmap_data
.Lframe_l249:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l246
.long 0
.long 6
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
.long main_42_gc_data
.section .pcmap
.long .Lcall_successor_l234
.long .Lframe_l250
.section .pcmap_data
.Lframe_l250:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l246
.long 0
.long 6
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
.long main_42_gc_data
.section .pcmap
.long .Lcall_successor_l231
.long .Lframe_l251
.section .pcmap_data
.Lframe_l251:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l246
.long 0
.long 6
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
.long main_42_gc_data
.section .text
.section .data
main_42_gc_data:
.long 2
.long 1
.long 1
.long 6
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.section .text
tiger_main:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l253:
.Lproc_body_start_l252:
	leal 20(%esp), %edx
	movl %eax,(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 20(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,8(%esp)
	call main_42
.Lcall_successor_l257:
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l262:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l257
.long .Lframe_l263
.section .pcmap_data
.Lframe_l263:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l262
.long 0
.long 2
.long 2
.long 1
.long 0
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

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
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l10:
.Lproc_body_start_l9:
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
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_43,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l23:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l20:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_48,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l17:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	movl $1,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_exit
.Lcall_successor_l14:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 24(%esp), %esp
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
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l29
.long 1
.long 11
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
.long 0x4000000b
.long 0
.long 0
.long err_37_gc_data
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l29
.long 1
.long 11
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
.long 0
.long 0
.long err_37_gc_data
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l29
.long 1
.long 11
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
.long 0
.long 0
.long err_37_gc_data
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l29
.long 1
.long 11
.long 2
.long 1
.long 11
.long 0xfffffff0
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
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
	leal 28(%esp), %edx
	movl $-8,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l57:
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je LifTrue_74
LifFalse_75:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	leal 28(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l48:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l55:
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_70
LifFalse_71:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	leal 28(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l45:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l56:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl LifTrue_66
LifFalse_67:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	leal 32(%esp), %ecx
	movl $-32,%esi
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	call insert_54
.Lcall_successor_l39:
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp LifEnd_68
LifTrue_66:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 32(%esp), %ecx
	movl $-32,%esi
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	call insert_54
.Lcall_successor_l42:
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_68:
	jmp LifEnd_72
LifTrue_70:
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
LifEnd_72:
	jmp LifEnd_76
LifTrue_74:
.Lbranch_target_l58:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_57
Lalc_gc_57:
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
	movl $0,%edx
	movl $4,%esi
	movl %eax,%ecx
	addl %esi,%ecx
	movl %edx,(%ecx)
	movl $0,%edx
	movl $8,%esi
	movl %eax,%ecx
	addl %esi,%ecx
	movl %edx,(%ecx)
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $12,%esi
	movl %eax,%ecx
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
LifEnd_76:
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l60:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l60
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_54_gc_data
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l60
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
.long insert_54_gc_data
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l63
.section .pcmap_data
.Lframe_l63:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l60
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_54_gc_data
.section .pcmap
.long .Lcall_successor_l42
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l60
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_54_gc_data
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l65
.section .pcmap_data
.Lframe_l65:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l60
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
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l67:
.Lproc_body_start_l66:
	leal 16(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 20(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call insert_54
.Lcall_successor_l71:
	leal 16(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l76:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l71
.long .Lframe_l77
.section .pcmap_data
.Lframe_l77:
.long 0x80000008
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l76
.long 1
.long 4
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
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l79:
.Lproc_body_start_l78:
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
.Lbranch_target_l102:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne LifTrue_89
LifFalse_90:
	movl $0,%eax
	jmp LifEnd_91
LifTrue_89:
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
	call tprint_39
.Lcall_successor_l98:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_printi
.Lcall_successor_l95:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_81,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l92:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l89:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_48,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l86:
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
	movl $8,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call tprint_39
.Lcall_successor_l83:
LifEnd_91:
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l104:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l98
.long .Lframe_l105
.section .pcmap_data
.Lframe_l105:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l104
.long 1
.long 12
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
.long 0
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l95
.long .Lframe_l106
.section .pcmap_data
.Lframe_l106:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l104
.long 1
.long 12
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
.long 0x4000000b
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l92
.long .Lframe_l107
.section .pcmap_data
.Lframe_l107:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l104
.long 1
.long 12
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l89
.long .Lframe_l108
.section .pcmap_data
.Lframe_l108:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l104
.long 1
.long 12
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
.long 0
.long 0
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l86
.long .Lframe_l109
.section .pcmap_data
.Lframe_l109:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l104
.long 1
.long 12
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
.long 0
.long 0
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long .Lcall_successor_l83
.long .Lframe_l110
.section .pcmap_data
.Lframe_l110:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l104
.long 1
.long 12
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
.Linitialize_continuations_l112:
.Lproc_body_start_l111:
	leal 28(%esp), %edx
	movl $-8,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_93,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l137:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l141:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_100
LifFalse_101:
	movl $0,%eax
	jmp LifEnd_102
LifTrue_100:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_96,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l134:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l145:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l144
.Lbranch_target_l143:
	movl $0,%eax
	jmp .Lbranch_target_l142
.Lbranch_target_l144:
	movl $-1,%eax
.Lbranch_target_l142:
LifEnd_102:
.Lbranch_target_l151:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_126
LifFalse_127:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_105,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l122:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l146:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_116
LifFalse_117:
	movl $0,%eax
	jmp LifEnd_118
LifTrue_116:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_112,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l119:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l150:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l149
.Lbranch_target_l148:
	movl $0,%eax
	jmp .Lbranch_target_l147
.Lbranch_target_l149:
	movl $-1,%eax
.Lbranch_target_l147:
LifEnd_118:
.Lbranch_target_l152:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_122
LifFalse_123:
	movl $0,%eax
	jmp LifEnd_124
LifTrue_122:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_ord
.Lcall_successor_l116:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
LifEnd_124:
	movl %eax,%esi
	jmp LifEnd_128
LifTrue_126:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_ord
.Lcall_successor_l131:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_105,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l128:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	addl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_93,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l125:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	subl %eax,%esi
LifEnd_128:
	movl %esi,%eax
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l155:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l137
.long .Lframe_l156
.section .pcmap_data
.Lframe_l156:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 2
.long 25
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l134
.long .Lframe_l157
.section .pcmap_data
.Lframe_l157:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 2
.long 25
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l122
.long .Lframe_l158
.section .pcmap_data
.Lframe_l158:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 2
.long 25
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
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l119
.long .Lframe_l159
.section .pcmap_data
.Lframe_l159:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 2
.long 25
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
.long 0
.long 0
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l116
.long .Lframe_l160
.section .pcmap_data
.Lframe_l160:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 2
.long 25
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l131
.long .Lframe_l161
.section .pcmap_data
.Lframe_l161:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 2
.long 25
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
.long 0
.long 0
.long 0
.long 0
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
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l128
.long .Lframe_l162
.section .pcmap_data
.Lframe_l162:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 2
.long 25
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long isletter_40_gc_data
.section .pcmap
.long .Lcall_successor_l125
.long .Lframe_l163
.section .pcmap_data
.Lframe_l163:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l155
.long 2
.long 25
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,16(%esp)
	movl %edi,12(%esp)
.Linitialize_continuations_l165:
.Lproc_body_start_l164:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_130,%ecx
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Lgbl_130,%ecx
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_getchar
.Lcall_successor_l196:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_138:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 32(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal Lgbl_130,%eax
	leal 32(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l193:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l200:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_135
LifFalse_136:
	movl $0,%eax
	jmp LifEnd_137
LifTrue_135:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call isletter_40
.Lcall_successor_l190:
.Lbranch_target_l204:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l203
.Lbranch_target_l202:
	movl $0,%eax
	jmp .Lbranch_target_l201
.Lbranch_target_l203:
	movl $-1,%eax
.Lbranch_target_l201:
LifEnd_137:
.Lbranch_target_l206:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_139
Lloop_end_131:
Lloop_start_147:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 32(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal Lgbl_130,%eax
	leal 32(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l184:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l205:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_144
LifFalse_145:
	movl $0,%eax
	jmp LifEnd_146
LifTrue_144:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call isletter_40
.Lcall_successor_l181:
LifEnd_146:
.Lbranch_target_l207:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_148
Lloop_end_140:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	leal 32(%esp), %esp
	ret
Lloop_body_148:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call isletter_40
.Lcall_successor_l178:
	call tig_chr
.Lcall_successor_l175:
	movl %eax,%ecx
	leal -4(%esp), %esp
	movl 12(%esp),%eax
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call tig_concat
.Lcall_successor_l172:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l169:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_147
Lloop_body_139:
	call tig_getchar
.Lcall_successor_l187:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_138
.section .pcmap_data
.Lstackdata_l209:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l196
.long .Lframe_l210
.section .pcmap_data
.Lframe_l210:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l193
.long .Lframe_l211
.section .pcmap_data
.Lframe_l211:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l190
.long .Lframe_l212
.section .pcmap_data
.Lframe_l212:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l184
.long .Lframe_l213
.section .pcmap_data
.Lframe_l213:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
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
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l181
.long .Lframe_l214
.section .pcmap_data
.Lframe_l214:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
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
.long .Lframe_l215
.section .pcmap_data
.Lframe_l215:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long .Lframe_l216
.section .pcmap_data
.Lframe_l216:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long .Lcall_successor_l172
.long .Lframe_l217
.section .pcmap_data
.Lframe_l217:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_41_gc_data
.section .pcmap
.long .Lcall_successor_l169
.long .Lframe_l218
.section .pcmap_data
.Lframe_l218:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
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
.long .Lframe_l219
.section .pcmap_data
.Lframe_l219:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l209
.long 1
.long 16
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
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l221:
.Lproc_body_start_l220:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_130,%ecx
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_41
.Lcall_successor_l237:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_153:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_size
.Lcall_successor_l234:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l241:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Lloop_body_154
Lloop_end_150:
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call tprint_39
.Lcall_successor_l225:
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
Lloop_body_154:
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
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call add_word_38
.Lcall_successor_l231:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_41
.Lcall_successor_l228:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_153
.section .pcmap_data
.Lstackdata_l243:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l237
.long .Lframe_l244
.section .pcmap_data
.Lframe_l244:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l243
.long 1
.long 6
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
.long main_42_gc_data
.section .pcmap
.long .Lcall_successor_l234
.long .Lframe_l245
.section .pcmap_data
.Lframe_l245:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l243
.long 1
.long 6
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
.long main_42_gc_data
.section .pcmap
.long .Lcall_successor_l225
.long .Lframe_l246
.section .pcmap_data
.Lframe_l246:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l243
.long 1
.long 6
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
.long main_42_gc_data
.section .pcmap
.long .Lcall_successor_l231
.long .Lframe_l247
.section .pcmap_data
.Lframe_l247:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l243
.long 1
.long 6
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
.long main_42_gc_data
.section .pcmap
.long .Lcall_successor_l228
.long .Lframe_l248
.section .pcmap_data
.Lframe_l248:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l243
.long 1
.long 6
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
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,(%esp)
.Linitialize_continuations_l250:
.Lproc_body_start_l249:
	leal 12(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 12(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 12(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	call main_42
.Lcall_successor_l254:
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l259:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l254
.long .Lframe_l260
.section .pcmap_data
.Lframe_l260:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff4
.long .Lstackdata_l259
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

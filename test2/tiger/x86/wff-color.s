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
Lgbl_142:
.long 0
.byte 0
Lgbl_124:
.long 1
.byte 122
.byte 0
Lgbl_105:
.long 1
.byte 65
.byte 0
Lgbl_93:
.long 1
.byte 9
.byte 0
Lgbl_44:
.long 2
.byte 63
.byte 32
.byte 0
Lgbl_108:
.long 1
.byte 90
.byte 0
Lgbl_49:
.long 1
.byte 10
.byte 0
Lgbl_117:
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
	leal Lgbl_44,%eax
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
	leal Lgbl_49,%eax
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
insert_38:
	leal -40(%esp), %esp
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,8(%esp)
	leal 40(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
	movl %edx,24(%esp)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
	leal 40(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l66:
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je LifTrue_86
LifFalse_87:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	leal 40(%esp), %eax
	movl $-36,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l57:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
.Lbranch_target_l64:
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_82
LifFalse_83:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	leal 40(%esp), %eax
	movl $-36,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l51:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
.Lbranch_target_l65:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl LifTrue_78
LifFalse_79:
.Lbranch_target_l70:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_75
Lalc_gc_75:
	call tig_call_gc
.Lcall_successor_l42:
Lalc_76:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl %eax,(%ebp)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $4,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $8,%esi
	addl %esi,%ecx
	leal 48(%esp), %edi
	movl $-44,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 48(%esp), %ecx
	movl $-48,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call insert_38
.Lcall_successor_l39:
	movl $8,%edx
	movl %ebp,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl $12,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_80
LifTrue_78:
.Lbranch_target_l69:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_71
Lalc_gc_71:
	call tig_call_gc
.Lcall_successor_l48:
Lalc_72:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl %eax,(%ebp)
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $4,%esi
	addl %esi,%ecx
	leal 48(%esp), %edi
	movl $-44,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 48(%esp), %ecx
	movl $-48,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call insert_38
.Lcall_successor_l45:
	movl $4,%edx
	movl %ebp,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl $8,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl $12,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
LifEnd_80:
	jmp LifEnd_84
LifTrue_82:
.Lbranch_target_l68:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_65
Lalc_gc_65:
	call tig_call_gc
.Lcall_successor_l54:
Lalc_66:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl %eax,(%ebp)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $4,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl $8,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $12,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
LifEnd_84:
	jmp LifEnd_88
LifTrue_86:
.Lbranch_target_l67:
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
.Lcall_successor_l60:
Lalc_58:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	movl $1,%eax
	movl %eax,(%ebp)
	movl $0,%ecx
	movl $4,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	movl $8,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $12,%edx
	movl %ebp,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
LifEnd_88:
	movl %ebp,%eax
	leal 40(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	leal 48(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l72:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l57
.long .Lframe_l73
.section .pcmap_data
.Lframe_l73:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l72
.long 3
.long 21
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
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l74
.section .pcmap_data
.Lframe_l74:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l72
.long 3
.long 21
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
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l42
.long .Lframe_l75
.section .pcmap_data
.Lframe_l75:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l72
.long 3
.long 21
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l76
.section .pcmap_data
.Lframe_l76:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l72
.long 3
.long 21
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
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l77
.section .pcmap_data
.Lframe_l77:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l72
.long 3
.long 21
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l78
.section .pcmap_data
.Lframe_l78:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l72
.long 3
.long 21
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
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l72
.long 3
.long 21
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l60
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x8000000c
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l72
.long 3
.long 21
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .text
.section .data
insert_38_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 21
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
.long 0
.long 0
.long 1
.long 1
.long 0
.long 0
.long 1
.long 1
.long 1
.long 1
.section .text
add_word_39:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l82:
.Lproc_body_start_l81:
	leal 20(%esp), %edx
	movl $-8,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 28(%esp), %ecx
	movl $-8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $4,%esi
	addl %esi,%ecx
	leal 28(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 28(%esp), %ecx
	movl $-28,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call insert_38
.Lcall_successor_l86:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l91:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l86
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l91
.long 2
.long 4
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
.long add_word_39_gc_data
.section .text
.section .data
add_word_39_gc_data:
.long 2
.long 1
.long 1
.long 4
.long 1
.long 1
.long 0
.long 1
.section .text
tprint_40:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l94:
.Lproc_body_start_l93:
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
.Lbranch_target_l117:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne LifTrue_101
LifFalse_102:
	movl $0,%eax
	jmp LifEnd_103
LifTrue_101:
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
	call tprint_40
.Lcall_successor_l113:
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
.Lcall_successor_l110:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_93,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l107:
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
.Lcall_successor_l104:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_49,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l101:
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
	call tprint_40
.Lcall_successor_l98:
LifEnd_103:
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l119:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l113
.long .Lframe_l120
.section .pcmap_data
.Lframe_l120:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l119
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
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l110
.long .Lframe_l121
.section .pcmap_data
.Lframe_l121:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l119
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
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l107
.long .Lframe_l122
.section .pcmap_data
.Lframe_l122:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l119
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
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l104
.long .Lframe_l123
.section .pcmap_data
.Lframe_l123:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l119
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
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l101
.long .Lframe_l124
.section .pcmap_data
.Lframe_l124:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l119
.long 1
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff0
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
.long 0
.long 0
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l98
.long .Lframe_l125
.section .pcmap_data
.Lframe_l125:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l119
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
.long tprint_40_gc_data
.section .text
.section .data
tprint_40_gc_data:
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
isletter_41:
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
.Linitialize_continuations_l127:
.Lproc_body_start_l126:
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
	leal Lgbl_105,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l152:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l156:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_112
LifFalse_113:
	movl $0,%eax
	jmp LifEnd_114
LifTrue_112:
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
	leal Lgbl_108,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l149:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l160:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l159
.Lbranch_target_l158:
	movl $0,%eax
	jmp .Lbranch_target_l157
.Lbranch_target_l159:
	movl $-1,%eax
.Lbranch_target_l157:
LifEnd_114:
.Lbranch_target_l166:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_138
LifFalse_139:
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
	leal Lgbl_117,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l137:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l161:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_128
LifFalse_129:
	movl $0,%eax
	jmp LifEnd_130
LifTrue_128:
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
	leal Lgbl_124,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l134:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l165:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l164
.Lbranch_target_l163:
	movl $0,%eax
	jmp .Lbranch_target_l162
.Lbranch_target_l164:
	movl $-1,%eax
.Lbranch_target_l162:
LifEnd_130:
.Lbranch_target_l167:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_134
LifFalse_135:
	movl $0,%eax
	jmp LifEnd_136
LifTrue_134:
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
LifEnd_136:
	movl %eax,%esi
	jmp LifEnd_140
LifTrue_138:
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
.Lcall_successor_l146:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_117,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l143:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	addl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_105,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l140:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	subl %eax,%esi
LifEnd_140:
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
.Lstackdata_l170:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l152
.long .Lframe_l171
.section .pcmap_data
.Lframe_l171:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l170
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
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l149
.long .Lframe_l172
.section .pcmap_data
.Lframe_l172:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l170
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l137
.long .Lframe_l173
.section .pcmap_data
.Lframe_l173:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l170
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
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l134
.long .Lframe_l174
.section .pcmap_data
.Lframe_l174:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l170
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
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l131
.long .Lframe_l175
.section .pcmap_data
.Lframe_l175:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l170
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l146
.long .Lframe_l176
.section .pcmap_data
.Lframe_l176:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l170
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l143
.long .Lframe_l177
.section .pcmap_data
.Lframe_l177:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l170
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l140
.long .Lframe_l178
.section .pcmap_data
.Lframe_l178:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l170
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .text
.section .data
isletter_41_gc_data:
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
getword_42:
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,16(%esp)
	movl %edi,12(%esp)
.Linitialize_continuations_l180:
.Lproc_body_start_l179:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_142,%ecx
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Lgbl_142,%ecx
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_getchar
.Lcall_successor_l211:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_150:
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
	leal Lgbl_142,%eax
	leal 32(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l208:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l215:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_147
LifFalse_148:
	movl $0,%eax
	jmp LifEnd_149
LifTrue_147:
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
	call isletter_41
.Lcall_successor_l205:
.Lbranch_target_l219:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l218
.Lbranch_target_l217:
	movl $0,%eax
	jmp .Lbranch_target_l216
.Lbranch_target_l218:
	movl $-1,%eax
.Lbranch_target_l216:
LifEnd_149:
.Lbranch_target_l221:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_151
Lloop_end_143:
Lloop_start_159:
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
	leal Lgbl_142,%eax
	leal 32(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l199:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l220:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_156
LifFalse_157:
	movl $0,%eax
	jmp LifEnd_158
LifTrue_156:
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
	call isletter_41
.Lcall_successor_l196:
LifEnd_158:
.Lbranch_target_l222:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_160
Lloop_end_152:
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
Lloop_body_160:
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
	call isletter_41
.Lcall_successor_l193:
	call tig_chr
.Lcall_successor_l190:
	movl %eax,%ecx
	leal -4(%esp), %esp
	movl 12(%esp),%eax
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call tig_concat
.Lcall_successor_l187:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l184:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_159
Lloop_body_151:
	call tig_getchar
.Lcall_successor_l202:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_150
.section .pcmap_data
.Lstackdata_l224:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l211
.long .Lframe_l225
.section .pcmap_data
.Lframe_l225:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l208
.long .Lframe_l226
.section .pcmap_data
.Lframe_l226:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l205
.long .Lframe_l227
.section .pcmap_data
.Lframe_l227:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l199
.long .Lframe_l228
.section .pcmap_data
.Lframe_l228:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l196
.long .Lframe_l229
.section .pcmap_data
.Lframe_l229:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l193
.long .Lframe_l230
.section .pcmap_data
.Lframe_l230:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l190
.long .Lframe_l231
.section .pcmap_data
.Lframe_l231:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l187
.long .Lframe_l232
.section .pcmap_data
.Lframe_l232:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l184
.long .Lframe_l233
.section .pcmap_data
.Lframe_l233:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l202
.long .Lframe_l234
.section .pcmap_data
.Lframe_l234:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l224
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
.long getword_42_gc_data
.section .text
.section .data
getword_42_gc_data:
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
main_43:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l236:
.Lproc_body_start_l235:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_142,%ecx
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
	call getword_42
.Lcall_successor_l252:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_165:
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
.Lcall_successor_l249:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l256:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Lloop_body_166
Lloop_end_162:
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
	call tprint_40
.Lcall_successor_l240:
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
Lloop_body_166:
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
	call add_word_39
.Lcall_successor_l246:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_42
.Lcall_successor_l243:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_165
.section .pcmap_data
.Lstackdata_l258:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l252
.long .Lframe_l259
.section .pcmap_data
.Lframe_l259:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l258
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
.long main_43_gc_data
.section .pcmap
.long .Lcall_successor_l249
.long .Lframe_l260
.section .pcmap_data
.Lframe_l260:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l258
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
.long main_43_gc_data
.section .pcmap
.long .Lcall_successor_l240
.long .Lframe_l261
.section .pcmap_data
.Lframe_l261:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l258
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
.long main_43_gc_data
.section .pcmap
.long .Lcall_successor_l246
.long .Lframe_l262
.section .pcmap_data
.Lframe_l262:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l258
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
.long main_43_gc_data
.section .pcmap
.long .Lcall_successor_l243
.long .Lframe_l263
.section .pcmap_data
.Lframe_l263:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l258
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
.long main_43_gc_data
.section .text
.section .data
main_43_gc_data:
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
.Linitialize_continuations_l265:
.Lproc_body_start_l264:
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
	call main_43
.Lcall_successor_l269:
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l274:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l269
.long .Lframe_l275
.section .pcmap_data
.Lframe_l275:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff4
.long .Lstackdata_l274
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

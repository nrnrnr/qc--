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
.long 0xffffffffffffffff
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l11:
Lproc_body_start_l10:
	movl %edi,4(%esp)
	leal 32(%esp), %edi
	movl %edi,8(%esp)
	movl $-8,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 32(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_44,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	movl %edx,20(%esp)
	call tig_print
Ljoin_l24:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 32(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_print
Ljoin_l21:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_49,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l18:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $1,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_exit
Ljoin_l15:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l30:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l24
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l30
.long 2
.long 11
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
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
.long 0x4000000b
.long 0
.long 0
.long err_37_gc_data
.section .pcmap
.long Ljoin_l21
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l30
.long 2
.long 11
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe4
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
.long Ljoin_l18
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l30
.long 2
.long 11
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe4
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
.long Ljoin_l15
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l30
.long 2
.long 11
.long 2
.long 1
.long 10
.long 0xfffffff0
.long 11
.long 0xffffffe4
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
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl %eax,8(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 60(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l37:
Lproc_body_start_l36:
	movl %edi,12(%esp)
	leal 60(%esp), %edi
	movl %edi,16(%esp)
	movl $-12,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl 8(%esp),%esi
	movl %esi,(%edi)
	leal 60(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 60(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 60(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l75
Ljoin_l76:
	jmp LifFalse_87
LifFalse_87:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl %edi,28(%esp)
	movl $-56,%edi
	addl %edi,%ecx
	movl (%eax),%edi
	movl %edi,(%ecx)
	leal 60(%esp), %edi
	movl $-60,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	movl %edx,32(%esp)
	call tig_compare_str
Ljoin_l69:
	leal Cmm.global_area,%edi
	movl 28(%esp),%esi
	movl %esi,(%edi)
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l65
Ljoin_l66:
	jmp LifFalse_83
LifFalse_83:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_compare_str
Ljoin_l59:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	cmpl %edi,%eax
	jl Ljoin_l55
Ljoin_l56:
	jmp LifFalse_79
LifFalse_79:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $20,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jg Ljoin_l45
Ljoin_l46:
	jmp Lalc_gc_75
Ljoin_l45:
	jmp Lalc_gc_75
Lalc_gc_75:
	call tig_call_gc
Ljoin_l44:
Lalc_76:
	movl $20,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%eax
	movl $4,%edi
	addl %edi,%eax
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $20,%esi
	addl %esi,%edi
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl %edi,(%eax)
	leal 60(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl $4,%esi
	movl %eax,%ecx
	addl %esi,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal -8(%esp), %esp
	leal 68(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl %eax,44(%esp)
	movl %edi,%eax
	leal 68(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 68(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $8,%ecx
	addl %ecx,%esi
	leal 68(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	leal 68(%esp), %esi
	movl $-68,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call insert_38
Ljoin_l41:
	movl $8,%edx
	movl 36(%esp),%ecx
	movl %ecx,%edi
	addl %edx,%edi
	movl %eax,(%edi)
	leal 60(%esp), %edx
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edx
	movl $12,%edi
	addl %edi,%edx
	movl $12,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl (%edx),%edx
	movl %edx,(%esi)
	jmp LifEnd_80
Ljoin_l55:
	jmp LifTrue_78
LifTrue_78:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $20,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jg Ljoin_l53
Ljoin_l54:
	jmp Lalc_gc_71
Ljoin_l53:
	jmp Lalc_gc_71
Lalc_gc_71:
	call tig_call_gc
Ljoin_l52:
Lalc_72:
	movl $20,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%ecx
	movl $4,%edi
	addl %edi,%ecx
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $20,%esi
	addl %esi,%edi
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal -8(%esp), %esp
	leal 68(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 68(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 68(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl $8,%edx
	addl %edx,%esi
	movl (%esi),%esi
	movl $4,%edx
	addl %edx,%esi
	leal 68(%esp), %edx
	movl %edi,48(%esp)
	movl $-64,%edi
	addl %edi,%edx
	movl (%esi),%edi
	movl %edi,(%edx)
	leal 68(%esp), %edi
	movl $-68,%esi
	addl %esi,%edi
	movl 48(%esp),%esi
	movl %esi,(%edi)
	movl %ecx,52(%esp)
	call insert_38
Ljoin_l49:
	movl $4,%edx
	movl 44(%esp),%ecx
	movl %ecx,%edi
	addl %edx,%edi
	movl %eax,(%edi)
	leal 60(%esp), %edx
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edx
	movl $8,%edi
	addl %edi,%edx
	movl $8,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl (%edx),%edx
	movl %edx,(%esi)
	leal 60(%esp), %edx
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edx
	movl $12,%edi
	addl %edi,%edx
	movl $12,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl (%edx),%edx
	movl %edx,(%esi)
	jmp LifEnd_80
LifEnd_80:
	jmp LifEnd_84
Ljoin_l65:
	jmp LifTrue_82
LifTrue_82:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $20,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jg Ljoin_l63
Ljoin_l64:
	jmp Lalc_gc_65
Ljoin_l63:
	jmp Lalc_gc_65
Lalc_gc_65:
	call tig_call_gc
Ljoin_l62:
Lalc_66:
	movl $20,%edx
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl %edx,(%edi)
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $20,%edi
	addl %edi,%edx
	leal Cmm.global_area,%edi
	movl %edx,(%edi)
	leal 60(%esp), %edx
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl $1,%edi
	addl %edi,%edx
	movl %edx,(%ecx)
	leal 60(%esp), %edx
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edx
	movl $4,%edi
	addl %edi,%edx
	movl $4,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl (%edx),%edx
	movl %edx,(%esi)
	leal 60(%esp), %edx
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edx
	movl $8,%edi
	addl %edi,%edx
	movl $8,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl (%edx),%edx
	movl %edx,(%esi)
	leal 60(%esp), %edx
	movl $-12,%edi
	addl %edi,%edx
	movl $4,%edi
	addl %edi,%edx
	movl $12,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl (%edx),%edx
	movl %edx,(%esi)
	jmp LifEnd_84
LifEnd_84:
	jmp LifEnd_88
Ljoin_l75:
	jmp LifTrue_86
LifTrue_86:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $20,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jg Ljoin_l73
Ljoin_l74:
	jmp Lalc_gc_57
Ljoin_l73:
	jmp Lalc_gc_57
Lalc_gc_57:
	movl %edx,32(%esp)
	call tig_call_gc
Ljoin_l72:
Lalc_58:
	movl $20,%edx
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl %edx,(%edi)
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $20,%edi
	addl %edi,%edx
	leal Cmm.global_area,%edi
	movl %edx,(%edi)
	movl $1,%edx
	movl %edx,(%ecx)
	movl $0,%edx
	movl $4,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl %edx,(%esi)
	movl $0,%edx
	movl $8,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl %edx,(%esi)
	leal 60(%esp), %edx
	movl $-12,%edi
	addl %edi,%edx
	movl $4,%edi
	addl %edi,%edx
	movl $12,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl (%edx),%edx
	movl %edx,(%esi)
	jmp LifEnd_88
LifEnd_88:
	movl %ecx,%eax
	leal 60(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%esi
	movl 12(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l81:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l69
.long Lframe_l82
.section .pcmap_data
Lframe_l82:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 21
.long 2
.long 1
.long 10
.long 0xffffffdc
.long 11
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
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long Ljoin_l59
.long Lframe_l83
.section .pcmap_data
Lframe_l83:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 21
.long 2
.long 1
.long 10
.long 0xffffffdc
.long 11
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
.long insert_38_gc_data
.section .pcmap
.long Ljoin_l44
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 21
.long 2
.long 1
.long 10
.long 0xffffffdc
.long 11
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long Ljoin_l41
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 21
.long 2
.long 1
.long 10
.long 0xffffffdc
.long 11
.long 0xffffffd0
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
.long 0
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
.long Ljoin_l52
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 21
.long 2
.long 1
.long 10
.long 0xffffffdc
.long 11
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long Ljoin_l49
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 21
.long 2
.long 1
.long 10
.long 0xffffffdc
.long 11
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
.long insert_38_gc_data
.section .pcmap
.long Ljoin_l62
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 21
.long 2
.long 1
.long 10
.long 0xffffffdc
.long 11
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long Ljoin_l72
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0x8000000c
.long 0xffffffc4
.long 0xffffffe4
.long Lstackdata_l81
.long 2
.long 21
.long 2
.long 1
.long 10
.long 0xffffffdc
.long 11
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l92:
Lproc_body_start_l91:
	movl %edi,(%esp)
	leal 32(%esp), %edi
	movl %edi,4(%esp)
	movl $-8,%edi
	movl %edi,8(%esp)
	movl 4(%esp),%edi
	movl %esi,12(%esp)
	movl 8(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 32(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal -8(%esp), %esp
	leal 40(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 40(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $4,%ecx
	addl %ecx,%esi
	leal 40(%esp), %ecx
	movl %edi,24(%esp)
	movl $-36,%edi
	addl %edi,%ecx
	movl (%esi),%edi
	movl %edi,(%ecx)
	leal 40(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	movl %edx,28(%esp)
	call insert_38
Ljoin_l96:
	leal 32(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl (%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l101:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l96
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l101
.long 2
.long 4
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
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
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l105:
Lproc_body_start_l104:
	movl %edx,4(%esp)
	leal 32(%esp), %edx
	movl %edx,8(%esp)
	movl $-8,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 32(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 32(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l125
Ljoin_l126:
	jmp LifFalse_102
LifFalse_102:
	movl $0,%eax
	movl %edi,20(%esp)
	jmp LifEnd_103
Ljoin_l125:
	jmp LifTrue_101
LifTrue_101:
	leal -4(%esp), %esp
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl %edi,24(%esp)
	movl $-36,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	call tprint_40
Ljoin_l124:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_printi
Ljoin_l121:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_93,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l118:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_print
Ljoin_l115:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_49,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l112:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	leal -4(%esp), %esp
	leal 36(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 36(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl $8,%ecx
	addl %ecx,%edi
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call tprint_40
Ljoin_l109:
	jmp LifEnd_103
LifEnd_103:
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l131:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l124
.long Lframe_l132
.section .pcmap_data
Lframe_l132:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff0
.long Lstackdata_l131
.long 1
.long 12
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
.long 0
.long 0
.long 0
.long 0
.long tprint_40_gc_data
.section .pcmap
.long Ljoin_l121
.long Lframe_l133
.section .pcmap_data
Lframe_l133:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff0
.long Lstackdata_l131
.long 1
.long 12
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long tprint_40_gc_data
.section .pcmap
.long Ljoin_l118
.long Lframe_l134
.section .pcmap_data
Lframe_l134:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff0
.long Lstackdata_l131
.long 1
.long 12
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tprint_40_gc_data
.section .pcmap
.long Ljoin_l115
.long Lframe_l135
.section .pcmap_data
Lframe_l135:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff0
.long Lstackdata_l131
.long 1
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff4
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
.long Ljoin_l112
.long Lframe_l136
.section .pcmap_data
Lframe_l136:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff0
.long Lstackdata_l131
.long 1
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff4
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
.long Ljoin_l109
.long Lframe_l137
.section .pcmap_data
Lframe_l137:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff0
.long Lstackdata_l131
.long 1
.long 12
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l140:
Lproc_body_start_l139:
	movl %edi,8(%esp)
	leal 40(%esp), %edi
	movl %edi,12(%esp)
	movl $-8,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 40(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	leal Lgbl_105,%esi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	movl %edx,24(%esp)
	call tig_compare_str
Ljoin_l173:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	cmpl %edi,%eax
	jge Ljoin_l169
Ljoin_l170:
	jmp LifFalse_113
LifFalse_113:
	movl $0,%edi
	jmp LifEnd_114
Ljoin_l169:
	jmp LifTrue_112
LifTrue_112:
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 40(%esp), %edi
	movl $-8,%eax
	addl %eax,%edi
	movl $4,%eax
	addl %eax,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	leal Lgbl_108,%edi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call tig_compare_str
Ljoin_l168:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl $0,%esi
	cmpl %esi,%eax
	jle Ljoin_l181
Ljoin_l182:
	movl $0,%edi
	jmp Ljoin_l180
Ljoin_l181:
	movl $-1,%edi
	jmp Ljoin_l180
Ljoin_l180:
	jmp LifEnd_114
LifEnd_114:
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l164
Ljoin_l165:
	jmp LifFalse_139
LifFalse_139:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	leal Lgbl_117,%esi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_compare_str
Ljoin_l154:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jge Ljoin_l150
Ljoin_l151:
	jmp LifFalse_129
LifFalse_129:
	movl $0,%edx
	jmp LifEnd_130
Ljoin_l150:
	jmp LifTrue_128
LifTrue_128:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	leal Lgbl_124,%esi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_compare_str
Ljoin_l149:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l178
Ljoin_l179:
	movl $0,%edx
	jmp Ljoin_l177
Ljoin_l178:
	movl $-1,%edx
	jmp Ljoin_l177
Ljoin_l177:
	jmp LifEnd_130
LifEnd_130:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l145
Ljoin_l146:
	jmp LifFalse_135
LifFalse_135:
	movl $0,%eax
	jmp LifEnd_136
Ljoin_l145:
	jmp LifTrue_134
LifTrue_134:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_ord
Ljoin_l144:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	jmp LifEnd_136
LifEnd_136:
	movl %eax,%edi
	jmp LifEnd_140
Ljoin_l164:
	jmp LifTrue_138
LifTrue_138:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_ord
Ljoin_l163:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_117,%esi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl %eax,28(%esp)
	call tig_ord
Ljoin_l160:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl 28(%esp),%edi
	addl %eax,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal Lgbl_105,%eax
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_ord
Ljoin_l157:
	leal Cmm.global_area,%edx
	movl %esi,(%edx)
	subl %eax,%edi
	jmp LifEnd_140
LifEnd_140:
	movl %edi,%eax
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l185:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l173
.long Lframe_l186
.section .pcmap_data
Lframe_l186:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l185
.long 2
.long 25
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long isletter_41_gc_data
.section .pcmap
.long Ljoin_l168
.long Lframe_l187
.section .pcmap_data
Lframe_l187:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l185
.long 2
.long 25
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l154
.long Lframe_l188
.section .pcmap_data
Lframe_l188:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l185
.long 2
.long 25
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long Ljoin_l149
.long Lframe_l189
.section .pcmap_data
Lframe_l189:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l185
.long 2
.long 25
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long Ljoin_l144
.long Lframe_l190
.section .pcmap_data
Lframe_l190:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l185
.long 2
.long 25
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long Ljoin_l163
.long Lframe_l191
.section .pcmap_data
Lframe_l191:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l185
.long 2
.long 25
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long isletter_41_gc_data
.section .pcmap
.long Ljoin_l160
.long Lframe_l192
.section .pcmap_data
Lframe_l192:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l185
.long 2
.long 25
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
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
.long Ljoin_l157
.long Lframe_l193
.section .pcmap_data
Lframe_l193:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long Lstackdata_l185
.long 2
.long 25
.long 2
.long 1
.long 10
.long 0xffffffec
.long 11
.long 0xffffffe0
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l196:
Lproc_body_start_l195:
	leal 36(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Lgbl_142,%edi
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal Lgbl_142,%edi
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl %ecx,12(%esp)
	call tig_getchar
Ljoin_l235:
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_150
Lloop_start_150:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Lgbl_142,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l232:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l228
Ljoin_l229:
	jmp LifFalse_148
LifFalse_148:
	movl $0,%edi
	jmp LifEnd_149
Ljoin_l228:
	jmp LifTrue_147
LifTrue_147:
	leal -4(%esp), %esp
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call isletter_41
Ljoin_l227:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l240
Ljoin_l241:
	movl $0,%edi
	jmp Ljoin_l239
Ljoin_l240:
	movl $-1,%edi
	jmp Ljoin_l239
Ljoin_l239:
	jmp LifEnd_149
LifEnd_149:
	movl $0,%eax
	cmpl %eax,%edi
	jne Ljoin_l223
Ljoin_l224:
	jmp Lloop_end_143
Lloop_end_143:
	jmp Lloop_start_159
Lloop_start_159:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Lgbl_142,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l219:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l215
Ljoin_l216:
	jmp LifFalse_157
LifFalse_157:
	movl $0,%edx
	movl %edx,%eax
	jmp LifEnd_158
Ljoin_l215:
	jmp LifTrue_156
LifTrue_156:
	leal -4(%esp), %esp
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call isletter_41
Ljoin_l214:
	jmp LifEnd_158
LifEnd_158:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l210
Ljoin_l211:
	jmp Lloop_end_152
Lloop_end_152:
	leal 36(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 36(%esp), %esp
	ret
Ljoin_l210:
	jmp Lloop_body_160
Lloop_body_160:
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal -4(%esp), %esp
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl %eax,20(%esp)
	movl %edi,%eax
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call isletter_41
Ljoin_l209:
	call tig_chr
Ljoin_l206:
	leal -4(%esp), %esp
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	leal 40(%esp), %edi
	movl $-40,%ecx
	addl %ecx,%edi
	movl 24(%esp),%ecx
	movl %ecx,(%edi)
	call tig_concat
Ljoin_l203:
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_getchar
Ljoin_l200:
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_159
Ljoin_l223:
	jmp Lloop_body_151
Lloop_body_151:
	call tig_getchar
Ljoin_l222:
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_150
.section .pcmap_data
Lstackdata_l243:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l235
.long Lframe_l244
.section .pcmap_data
Lframe_l244:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
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
.long getword_42_gc_data
.section .pcmap
.long Ljoin_l232
.long Lframe_l245
.section .pcmap_data
Lframe_l245:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
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
.long 0x4000000b
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long Ljoin_l227
.long Lframe_l246
.section .pcmap_data
Lframe_l246:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
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
.long getword_42_gc_data
.section .pcmap
.long Ljoin_l219
.long Lframe_l247
.section .pcmap_data
Lframe_l247:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long Ljoin_l214
.long Lframe_l248
.section .pcmap_data
Lframe_l248:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
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
.long getword_42_gc_data
.section .pcmap
.long Ljoin_l209
.long Lframe_l249
.section .pcmap_data
Lframe_l249:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffe4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long Ljoin_l206
.long Lframe_l250
.section .pcmap_data
Lframe_l250:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffe4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long Ljoin_l203
.long Lframe_l251
.section .pcmap_data
Lframe_l251:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
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
.long getword_42_gc_data
.section .pcmap
.long Ljoin_l200
.long Lframe_l252
.section .pcmap_data
Lframe_l252:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
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
.long getword_42_gc_data
.section .pcmap
.long Ljoin_l222
.long Lframe_l253
.section .pcmap_data
Lframe_l253:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long Lstackdata_l243
.long 1
.long 16
.long 2
.long 1
.long 11
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
Linitialize_continuations_l256:
Lproc_body_start_l255:
	leal 20(%esp), %edx
	movl %edi,4(%esp)
	movl $-8,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Lgbl_142,%edi
	leal 20(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	leal 20(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl (%edi),%eax
	movl %ecx,8(%esp)
	call getword_42
Ljoin_l274:
	leal 20(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_165
Lloop_start_165:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_size
Ljoin_l271:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%edi
	cmpl %edi,%eax
	jg Ljoin_l267
Ljoin_l268:
	jmp Lloop_end_162
Lloop_end_162:
	leal -4(%esp), %esp
	leal 24(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 24(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl $4,%ecx
	addl %ecx,%edi
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call tprint_40
Ljoin_l260:
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
Ljoin_l267:
	jmp Lloop_body_166
Lloop_body_166:
	leal -4(%esp), %esp
	leal 24(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 24(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call add_word_39
Ljoin_l266:
	leal 20(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	call getword_42
Ljoin_l263:
	leal 20(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_165
.section .pcmap_data
Lstackdata_l279:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l274
.long Lframe_l280
.section .pcmap_data
Lframe_l280:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long Lstackdata_l279
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
.long Ljoin_l271
.long Lframe_l281
.section .pcmap_data
Lframe_l281:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long Lstackdata_l279
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
.long Ljoin_l260
.long Lframe_l282
.section .pcmap_data
Lframe_l282:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long Lstackdata_l279
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
.long Ljoin_l266
.long Lframe_l283
.section .pcmap_data
Lframe_l283:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long Lstackdata_l279
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
.long Ljoin_l263
.long Lframe_l284
.section .pcmap_data
Lframe_l284:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long Lstackdata_l279
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
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l287:
Lproc_body_start_l286:
	leal 16(%esp), %edx
	movl %edi,(%esp)
	movl $-8,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl $0,%edi
	leal 16(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	leal 16(%esp), %eax
	movl $-8,%edi
	addl %edi,%eax
	movl %ecx,4(%esp)
	call main_43
Ljoin_l291:
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l296:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l291
.long Lframe_l297
.section .pcmap_data
Lframe_l297:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff4
.long Lstackdata_l296
.long 1
.long 2
.long 2
.long 1
.long 11
.long 0xfffffff0
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

.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ:
Cmm.global_area:
.skip 4
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
	leal Lgbl_43,%esi
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
	leal Lgbl_48,%esi
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
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l30
.long 8
.long 11
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
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
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l30
.long 8
.long 11
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
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
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l30
.long 8
.long 11
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
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
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l30
.long 8
.long 11
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
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
insert_54:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l37:
Lproc_body_start_l36:
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
	leal 40(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l60
Ljoin_l61:
	jmp LifFalse_75
LifFalse_75:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl %edi,24(%esp)
	movl $-36,%edi
	addl %edi,%ecx
	movl (%eax),%edi
	movl %edi,(%ecx)
	leal 40(%esp), %edi
	movl $-40,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	movl %edx,28(%esp)
	call tig_compare_str
Ljoin_l54:
	leal Cmm.global_area,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l50
Ljoin_l51:
	jmp LifFalse_71
LifFalse_71:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_compare_str
Ljoin_l49:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	cmpl %edi,%eax
	jl Ljoin_l45
Ljoin_l46:
	jmp LifFalse_67
LifFalse_67:
	leal -4(%esp), %esp
	leal 44(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 44(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	leal 44(%esp), %esi
	movl $-44,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call insert_54
Ljoin_l41:
	leal 40(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 40(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	jmp LifEnd_68
Ljoin_l45:
	jmp LifTrue_66
LifTrue_66:
	leal -4(%esp), %esp
	leal 44(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 44(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 44(%esp), %esi
	movl $-44,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call insert_54
Ljoin_l44:
	leal 40(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 40(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	jmp LifEnd_68
LifEnd_68:
	jmp LifEnd_72
Ljoin_l50:
	jmp LifTrue_70
LifTrue_70:
	leal 40(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal 40(%esp), %ecx
	movl $-8,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal 40(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	jmp LifEnd_72
LifEnd_72:
	jmp LifEnd_76
Ljoin_l60:
	jmp LifTrue_74
LifTrue_74:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $20,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jg Ljoin_l58
Ljoin_l59:
	jmp Lalc_gc_57
Ljoin_l58:
	jmp Lalc_gc_57
Lalc_gc_57:
	movl %edx,28(%esp)
	call tig_call_gc
Ljoin_l57:
Lalc_58:
	movl $20,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $20,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	movl $1,%edx
	movl %edx,(%eax)
	movl $0,%edx
	movl $4,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl %edx,(%edi)
	movl $0,%edx
	movl $8,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl %edx,(%edi)
	leal 40(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl (%edx),%edx
	movl %edx,(%edi)
	jmp LifEnd_76
LifEnd_76:
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l66:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l54
.long Lframe_l67
.section .pcmap_data
Lframe_l67:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l66
.long 8
.long 14
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_54_gc_data
.section .pcmap
.long Ljoin_l49
.long Lframe_l68
.section .pcmap_data
Lframe_l68:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l66
.long 8
.long 14
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long insert_54_gc_data
.section .pcmap
.long Ljoin_l41
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l66
.long 8
.long 14
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long insert_54_gc_data
.section .pcmap
.long Ljoin_l44
.long Lframe_l70
.section .pcmap_data
Lframe_l70:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l66
.long 8
.long 14
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long insert_54_gc_data
.section .pcmap
.long Ljoin_l57
.long Lframe_l71
.section .pcmap_data
Lframe_l71:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l66
.long 8
.long 14
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l74:
Lproc_body_start_l73:
	movl %edi,(%esp)
	leal 28(%esp), %edi
	movl %edi,4(%esp)
	movl $-8,%edi
	movl %edi,8(%esp)
	movl 4(%esp),%edi
	movl %esi,12(%esp)
	movl 8(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 28(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-8,%edi
	addl %edi,%eax
	leal 32(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 32(%esp), %esi
	movl $-32,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,20(%esp)
	call insert_54
Ljoin_l78:
	leal 28(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl (%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l83:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l78
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0xffffffe4
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l83
.long 8
.long 4
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
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
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l87:
Lproc_body_start_l86:
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
	jne Ljoin_l107
Ljoin_l108:
	jmp LifFalse_90
LifFalse_90:
	movl $0,%eax
	movl %edi,20(%esp)
	jmp LifEnd_91
Ljoin_l107:
	jmp LifTrue_89
LifTrue_89:
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
	call tprint_39
Ljoin_l106:
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
Ljoin_l103:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_81,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l100:
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
Ljoin_l97:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_48,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l94:
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
	call tprint_39
Ljoin_l91:
	jmp LifEnd_91
LifEnd_91:
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l113:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l106
.long Lframe_l114
.section .pcmap_data
Lframe_l114:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l113
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l103
.long Lframe_l115
.section .pcmap_data
Lframe_l115:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l113
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x4000000b
.long 0
.long 0
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l100
.long Lframe_l116
.section .pcmap_data
Lframe_l116:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l113
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l97
.long Lframe_l117
.section .pcmap_data
Lframe_l117:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l113
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l94
.long Lframe_l118
.section .pcmap_data
Lframe_l118:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l113
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l91
.long Lframe_l119
.section .pcmap_data
Lframe_l119:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l113
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l122:
Lproc_body_start_l121:
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
	leal Lgbl_93,%esi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	movl %edx,24(%esp)
	call tig_compare_str
Ljoin_l155:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	cmpl %edi,%eax
	jge Ljoin_l151
Ljoin_l152:
	jmp LifFalse_101
LifFalse_101:
	movl $0,%edi
	jmp LifEnd_102
Ljoin_l151:
	jmp LifTrue_100
LifTrue_100:
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
	leal Lgbl_96,%edi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call tig_compare_str
Ljoin_l150:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl $0,%esi
	cmpl %esi,%eax
	jle Ljoin_l163
Ljoin_l164:
	movl $0,%edi
	jmp Ljoin_l162
Ljoin_l163:
	movl $-1,%edi
	jmp Ljoin_l162
Ljoin_l162:
	jmp LifEnd_102
LifEnd_102:
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l146
Ljoin_l147:
	jmp LifFalse_127
LifFalse_127:
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
	call tig_compare_str
Ljoin_l136:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jge Ljoin_l132
Ljoin_l133:
	jmp LifFalse_117
LifFalse_117:
	movl $0,%edx
	jmp LifEnd_118
Ljoin_l132:
	jmp LifTrue_116
LifTrue_116:
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
	leal Lgbl_112,%esi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_compare_str
Ljoin_l131:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l160
Ljoin_l161:
	movl $0,%edx
	jmp Ljoin_l159
Ljoin_l160:
	movl $-1,%edx
	jmp Ljoin_l159
Ljoin_l159:
	jmp LifEnd_118
LifEnd_118:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l127
Ljoin_l128:
	jmp LifFalse_123
LifFalse_123:
	movl $0,%eax
	jmp LifEnd_124
Ljoin_l127:
	jmp LifTrue_122
LifTrue_122:
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
Ljoin_l126:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	jmp LifEnd_124
LifEnd_124:
	movl %eax,%edi
	jmp LifEnd_128
Ljoin_l146:
	jmp LifTrue_126
LifTrue_126:
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
Ljoin_l145:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_105,%esi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl %eax,28(%esp)
	call tig_ord
Ljoin_l142:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl 28(%esp),%edi
	addl %eax,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal Lgbl_93,%eax
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_ord
Ljoin_l139:
	leal Cmm.global_area,%edx
	movl %esi,(%edx)
	subl %eax,%edi
	jmp LifEnd_128
LifEnd_128:
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
Lstackdata_l167:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l155
.long Lframe_l168
.section .pcmap_data
Lframe_l168:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l167
.long 8
.long 25
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long 0
.long 0
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l150
.long Lframe_l169
.section .pcmap_data
Lframe_l169:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l167
.long 8
.long 25
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long Ljoin_l136
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l167
.long 8
.long 25
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x4000000b
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
.long Ljoin_l131
.long Lframe_l171
.section .pcmap_data
Lframe_l171:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l167
.long 8
.long 25
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l126
.long Lframe_l172
.section .pcmap_data
Lframe_l172:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l167
.long 8
.long 25
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l145
.long Lframe_l173
.section .pcmap_data
Lframe_l173:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l167
.long 8
.long 25
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l142
.long Lframe_l174
.section .pcmap_data
Lframe_l174:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l167
.long 8
.long 25
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l139
.long Lframe_l175
.section .pcmap_data
Lframe_l175:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l167
.long 8
.long 25
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long 0x4000000a
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l178:
Lproc_body_start_l177:
	leal 36(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Lgbl_130,%edi
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal Lgbl_130,%edi
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl %ecx,12(%esp)
	call tig_getchar
Ljoin_l217:
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_138
Lloop_start_138:
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
	leal Lgbl_130,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l214:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l210
Ljoin_l211:
	jmp LifFalse_136
LifFalse_136:
	movl $0,%edi
	jmp LifEnd_137
Ljoin_l210:
	jmp LifTrue_135
LifTrue_135:
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
	call isletter_40
Ljoin_l209:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l222
Ljoin_l223:
	movl $0,%edi
	jmp Ljoin_l221
Ljoin_l222:
	movl $-1,%edi
	jmp Ljoin_l221
Ljoin_l221:
	jmp LifEnd_137
LifEnd_137:
	movl $0,%eax
	cmpl %eax,%edi
	jne Ljoin_l205
Ljoin_l206:
	jmp Lloop_end_131
Lloop_end_131:
	jmp Lloop_start_147
Lloop_start_147:
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
	leal Lgbl_130,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l201:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l197
Ljoin_l198:
	jmp LifFalse_145
LifFalse_145:
	movl $0,%edx
	movl %edx,%eax
	jmp LifEnd_146
Ljoin_l197:
	jmp LifTrue_144
LifTrue_144:
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
	call isletter_40
Ljoin_l196:
	jmp LifEnd_146
LifEnd_146:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l192
Ljoin_l193:
	jmp Lloop_end_140
Lloop_end_140:
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
Ljoin_l192:
	jmp Lloop_body_148
Lloop_body_148:
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
	call isletter_40
Ljoin_l191:
	call tig_chr
Ljoin_l188:
	leal -4(%esp), %esp
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	leal 40(%esp), %edi
	movl $-40,%ecx
	addl %ecx,%edi
	movl 24(%esp),%ecx
	movl %ecx,(%edi)
	call tig_concat
Ljoin_l185:
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_getchar
Ljoin_l182:
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_147
Ljoin_l205:
	jmp Lloop_body_139
Lloop_body_139:
	call tig_getchar
Ljoin_l204:
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_138
.section .pcmap_data
Lstackdata_l225:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l217
.long Lframe_l226
.section .pcmap_data
Lframe_l226:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l214
.long Lframe_l227
.section .pcmap_data
Lframe_l227:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l209
.long Lframe_l228
.section .pcmap_data
Lframe_l228:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l201
.long Lframe_l229
.section .pcmap_data
Lframe_l229:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l196
.long Lframe_l230
.section .pcmap_data
Lframe_l230:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l191
.long Lframe_l231
.section .pcmap_data
Lframe_l231:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l188
.long Lframe_l232
.section .pcmap_data
Lframe_l232:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l185
.long Lframe_l233
.section .pcmap_data
Lframe_l233:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l182
.long Lframe_l234
.section .pcmap_data
Lframe_l234:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l204
.long Lframe_l235
.section .pcmap_data
Lframe_l235:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l225
.long 8
.long 16
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
Linitialize_continuations_l238:
Lproc_body_start_l237:
	leal 20(%esp), %edx
	movl %edi,4(%esp)
	movl $-8,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Lgbl_130,%edi
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
	call getword_41
Ljoin_l256:
	leal 20(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_153
Lloop_start_153:
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
Ljoin_l253:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%edi
	cmpl %edi,%eax
	jg Ljoin_l249
Ljoin_l250:
	jmp Lloop_end_150
Lloop_end_150:
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
	call tprint_39
Ljoin_l242:
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
Ljoin_l249:
	jmp Lloop_body_154
Lloop_body_154:
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
	call add_word_38
Ljoin_l248:
	leal 20(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	call getword_41
Ljoin_l245:
	leal 20(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_153
.section .pcmap_data
Lstackdata_l261:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l256
.long Lframe_l262
.section .pcmap_data
Lframe_l262:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l261
.long 8
.long 6
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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
.long main_42_gc_data
.section .pcmap
.long Ljoin_l253
.long Lframe_l263
.section .pcmap_data
Lframe_l263:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l261
.long 8
.long 6
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long Ljoin_l242
.long Lframe_l264
.section .pcmap_data
Lframe_l264:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l261
.long 8
.long 6
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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
.long main_42_gc_data
.section .pcmap
.long Ljoin_l248
.long Lframe_l265
.section .pcmap_data
Lframe_l265:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l261
.long 8
.long 6
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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
.long main_42_gc_data
.section .pcmap
.long Ljoin_l245
.long Lframe_l266
.section .pcmap_data
Lframe_l266:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l261
.long 8
.long 6
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l269:
Lproc_body_start_l268:
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
	call main_42
Ljoin_l273:
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l278:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l273
.long Lframe_l279
.section .pcmap_data
Lframe_l279:
.long 0xfffffff0
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l278
.long 8
.long 2
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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

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
	leal -44(%esp), %esp
	movl $4,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 44(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l11:
Lproc_body_start_l10:
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %ecx,8(%esp)
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,12(%esp)
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Lgbl_43,%eax
	movl $-44,%ecx
	movl %ebx,16(%esp)
	leal 44(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,20(%esp)
	call tig_print
Ljoin_l24:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl $-8,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl $-44,%eax
	leal 44(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	movl %ecx,24(%esp)
	call tig_print
Ljoin_l21:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_48,%eax
	movl $-44,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,28(%esp)
	call tig_print
Ljoin_l18:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $1,%eax
	movl $-44,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,32(%esp)
	call tig_exit
Ljoin_l15:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	leal 48(%esp), %esp
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
.long 0xffffffd4
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l30
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0x80000000
.long 0
.long err_37_gc_data
.section .pcmap
.long Ljoin_l21
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xffffffd4
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l30
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0x80000000
.long 0
.long err_37_gc_data
.section .pcmap
.long Ljoin_l18
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffd4
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l30
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long err_37_gc_data
.section .pcmap
.long Ljoin_l15
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xffffffd4
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l30
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
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
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -48(%esp), %esp
	movl $4,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l37:
Lproc_body_start_l36:
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %ecx,12(%esp)
	leal 48(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,16(%esp)
	leal 48(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l60
Ljoin_l61:
	jmp LifFalse_75
LifFalse_75:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl $-8,%edx
	movl %ebx,20(%esp)
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	movl $4,%ebx
	movl %ebp,24(%esp)
	movl $-8,%ebp
	movl %esi,28(%esp)
	leal 48(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl (%esi),%ebx
	addl %edx,%ebx
	movl $-44,%edx
	leal 48(%esp), %esi
	addl %edx,%esi
	movl (%ebx),%edx
	movl %edx,(%esi)
	movl $-48,%edx
	leal 48(%esp), %esi
	addl %edx,%esi
	movl %eax,(%esi)
	movl %ecx,32(%esp)
	call tig_compare_str
Ljoin_l54:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l50
Ljoin_l51:
	jmp LifFalse_71
LifFalse_71:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl $-8,%edx
	leal 48(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	movl $4,%esi
	movl $-8,%ebx
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	addl %edx,%esi
	movl $-44,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	movl (%esi),%edx
	movl %edx,(%ebp)
	movl $-48,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,36(%esp)
	call tig_compare_str
Ljoin_l49:
	leal Cmm.global_area,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l45
Ljoin_l46:
	jmp LifFalse_67
LifFalse_67:
	leal -4(%esp), %esp
	movl $-8,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $4,%edx
	movl $-8,%ebp
	leal 52(%esp), %esi
	addl %ebp,%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ecx,%edx
	movl $-52,%ecx
	leal 52(%esp), %esi
	addl %ecx,%esi
	movl (%edx),%ecx
	movl %ecx,(%esi)
	call insert_54
Ljoin_l41:
	movl $8,%ecx
	movl $4,%edx
	movl $-8,%esi
	leal 48(%esp), %ebp
	addl %esi,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp LifEnd_68
Ljoin_l45:
	jmp LifTrue_66
LifTrue_66:
	leal -4(%esp), %esp
	movl $-8,%ebp
	leal 52(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%eax
	movl $4,%esi
	movl $4,%ebp
	movl $-8,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %esi,%ebp
	movl $-52,%esi
	leal 52(%esp), %ecx
	addl %esi,%ecx
	movl (%ebp),%esi
	movl %esi,(%ecx)
	call insert_54
Ljoin_l44:
	movl $4,%ecx
	movl $4,%edx
	movl $-8,%esi
	leal 48(%esp), %ebp
	addl %esi,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp LifEnd_68
LifEnd_68:
	jmp LifEnd_72
Ljoin_l50:
	jmp LifTrue_70
LifTrue_70:
	movl $1,%ecx
	movl $4,%edx
	movl $-8,%ebp
	leal 48(%esp), %esi
	addl %ebp,%esi
	addl %edx,%esi
	movl (%esi),%edx
	movl (%edx),%esi
	addl %ecx,%esi
	movl $4,%ecx
	movl $-8,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %esi,(%ecx)
	movl $4,%ecx
	movl $-8,%esi
	leal 48(%esp), %ebp
	addl %esi,%ebp
	addl %ecx,%ebp
	movl (%ebp),%eax
	jmp LifEnd_72
LifEnd_72:
	movl %eax,%ecx
	movl 28(%esp),%esi
	movl 20(%esp),%ebx
	jmp LifEnd_76
Ljoin_l60:
	jmp LifTrue_74
LifTrue_74:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	leal space_end,%eax
	movl (%eax),%ecx
	cmpl %ecx,%edx
	jg Ljoin_l58
Ljoin_l59:
	jmp Lalc_58
Ljoin_l58:
	jmp Lalc_gc_57
Lalc_gc_57:
	call tig_call_gc
Ljoin_l57:
	jmp Lalc_58
Lalc_58:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	movl $4,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $20,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edx,(%eax)
	movl $1,%eax
	movl %eax,(%ecx)
	movl $0,%eax
	movl $4,%edx
	movl %ebp,24(%esp)
	movl %ecx,%ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $0,%eax
	movl $8,%ebp
	movl %ecx,%edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %eax,%edx
	movl $12,%eax
	movl %ecx,%ebp
	addl %eax,%ebp
	movl (%edx),%eax
	movl %eax,(%ebp)
	jmp LifEnd_76
LifEnd_76:
	movl %ecx,%eax
	movl $4,%ecx
	leal 48(%esp), %ebp
	addl %ecx,%ebp
	movl 16(%esp),%ecx
	movl %ecx,(%ebp)
	movl 24(%esp),%ebp
	leal 52(%esp), %esp
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
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l66
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long insert_54_gc_data
.section .pcmap
.long Ljoin_l49
.long Lframe_l68
.section .pcmap_data
Lframe_l68:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l66
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long insert_54_gc_data
.section .pcmap
.long Ljoin_l41
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l66
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x80000000
.long 0
.long insert_54_gc_data
.section .pcmap
.long Ljoin_l44
.long Lframe_l70
.section .pcmap_data
Lframe_l70:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l66
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x80000000
.long 0
.long insert_54_gc_data
.section .pcmap
.long Ljoin_l57
.long Lframe_l71
.section .pcmap_data
Lframe_l71:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l66
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -24(%esp), %esp
	movl $4,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 24(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l74:
Lproc_body_start_l73:
	movl %eax,(%esp)
	movl $-8,%eax
	movl %ecx,4(%esp)
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,8(%esp)
	leal 24(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal -4(%esp), %esp
	movl $-8,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	movl %edx,%eax
	movl $4,%edx
	movl $-8,%ecx
	movl %ebx,16(%esp)
	leal 28(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl $-28,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	call insert_54
Ljoin_l78:
	movl $4,%ecx
	movl $-8,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $4,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
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
.long 0xffffffe8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l83
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.long 0x80000000
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
	leal -48(%esp), %esp
	movl $4,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l87:
Lproc_body_start_l86:
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %edx,8(%esp)
	leal 48(%esp), %edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	movl %ecx,12(%esp)
	leal 48(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l107
Ljoin_l108:
	jmp LifFalse_90
LifFalse_90:
	movl $0,%eax
	movl %ebp,20(%esp)
	movl %ebx,16(%esp)
	jmp LifEnd_91
Ljoin_l107:
	jmp LifTrue_89
LifTrue_89:
	leal -4(%esp), %esp
	movl $-8,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $4,%ecx
	movl %ebx,20(%esp)
	movl $-8,%ebx
	movl %ebp,24(%esp)
	leal 52(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %edx,%ecx
	movl $-52,%edx
	leal 52(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	call tprint_39
Ljoin_l106:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl $-8,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $-48,%ebp
	leal 48(%esp), %edx
	addl %ebp,%edx
	movl (%eax),%ebp
	movl %ebp,(%edx)
	movl %ecx,24(%esp)
	call tig_printi
Ljoin_l103:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_81,%eax
	movl $-48,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,28(%esp)
	call tig_print
Ljoin_l100:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $12,%eax
	movl $4,%edx
	movl $-8,%ebp
	leal 48(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl $-48,%eax
	leal 48(%esp), %ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	movl %ecx,32(%esp)
	call tig_print
Ljoin_l97:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_48,%eax
	movl $-48,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,36(%esp)
	call tig_print
Ljoin_l94:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	movl $-8,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $4,%edx
	movl $-8,%ebx
	leal 52(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl $-52,%ecx
	leal 52(%esp), %ebp
	addl %ecx,%ebp
	movl (%edx),%ecx
	movl %ecx,(%ebp)
	call tprint_39
Ljoin_l91:
	jmp LifEnd_91
LifEnd_91:
	movl $4,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	leal 52(%esp), %esp
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
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l113
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l103
.long Lframe_l115
.section .pcmap_data
Lframe_l115:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l113
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0x80000000
.long 0
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l100
.long Lframe_l116
.section .pcmap_data
Lframe_l116:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l113
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0x80000000
.long 0
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l97
.long Lframe_l117
.section .pcmap_data
Lframe_l117:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l113
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l94
.long Lframe_l118
.section .pcmap_data
Lframe_l118:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l113
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long tprint_39_gc_data
.section .pcmap
.long Ljoin_l91
.long Lframe_l119
.section .pcmap_data
Lframe_l119:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l113
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -76(%esp), %esp
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l122:
Lproc_body_start_l121:
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %ecx,12(%esp)
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,16(%esp)
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	movl $-8,%ecx
	movl %ebx,20(%esp)
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl $-76,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	leal Lgbl_93,%eax
	movl $-72,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,24(%esp)
	call tig_compare_str
Ljoin_l155:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Ljoin_l151
Ljoin_l152:
	jmp LifFalse_101
LifFalse_101:
	movl $0,%eax
	jmp LifEnd_102
Ljoin_l151:
	jmp LifTrue_100
LifTrue_100:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-8,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-76,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	leal Lgbl_96,%ecx
	movl $-72,%ebx
	leal 76(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,28(%esp)
	call tig_compare_str
Ljoin_l150:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l163
Ljoin_l164:
	movl $0,%eax
	jmp Ljoin_l162
Ljoin_l163:
	movl $1,%eax
	jmp Ljoin_l162
Ljoin_l162:
	jmp LifEnd_102
LifEnd_102:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l146
Ljoin_l147:
	jmp LifFalse_127
LifFalse_127:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl $-8,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl $-76,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	leal Lgbl_105,%eax
	movl $-72,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,32(%esp)
	call tig_compare_str
Ljoin_l136:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Ljoin_l132
Ljoin_l133:
	jmp LifFalse_117
LifFalse_117:
	movl $0,%eax
	jmp LifEnd_118
Ljoin_l132:
	jmp LifTrue_116
LifTrue_116:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-8,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-76,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	leal Lgbl_112,%ecx
	movl $-72,%ebx
	leal 76(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,36(%esp)
	call tig_compare_str
Ljoin_l131:
	leal Cmm.global_area,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l160
Ljoin_l161:
	movl $0,%eax
	jmp Ljoin_l159
Ljoin_l160:
	movl $1,%eax
	jmp Ljoin_l159
Ljoin_l159:
	jmp LifEnd_118
LifEnd_118:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l127
Ljoin_l128:
	jmp LifFalse_123
LifFalse_123:
	movl $0,%eax
	jmp LifEnd_124
Ljoin_l127:
	jmp LifTrue_122
LifTrue_122:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-8,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-76,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl %eax,40(%esp)
	call tig_ord
Ljoin_l126:
	leal Cmm.global_area,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_124
LifEnd_124:
	movl %ebp,48(%esp)
	movl %eax,%ecx
	jmp LifEnd_128
Ljoin_l146:
	jmp LifTrue_126
LifTrue_126:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-8,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-76,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl %eax,44(%esp)
	call tig_ord
Ljoin_l145:
	leal Cmm.global_area,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal Lgbl_105,%ecx
	movl $-76,%ebx
	movl %ebp,48(%esp)
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %eax,52(%esp)
	movl %edx,56(%esp)
	call tig_ord
Ljoin_l142:
	leal Cmm.global_area,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	movl 52(%esp),%ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Lgbl_93,%eax
	movl $-76,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %ecx,60(%esp)
	movl %edx,64(%esp)
	call tig_ord
Ljoin_l139:
	leal Cmm.global_area,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	movl 60(%esp),%ecx
	subl %eax,%ecx
	jmp LifEnd_128
LifEnd_128:
	movl %ecx,%eax
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	movl 48(%esp),%ebp
	leal 80(%esp), %esp
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l167
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l150
.long Lframe_l169
.section .pcmap_data
Lframe_l169:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l167
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0x80000000
.long 0
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l136
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l167
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
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
.long 0
.long 0x80000000
.long 0
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l131
.long Lframe_l171
.section .pcmap_data
Lframe_l171:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l167
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
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
.long 0
.long 0x80000000
.long 0
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l126
.long Lframe_l172
.section .pcmap_data
Lframe_l172:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l167
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l145
.long Lframe_l173
.section .pcmap_data
Lframe_l173:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l167
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0x80000000
.long 0
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l142
.long Lframe_l174
.section .pcmap_data
Lframe_l174:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l167
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffe4
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
.long 0xffffffec
.long 0
.long 0
.long 0x80000000
.long 0
.long isletter_40_gc_data
.section .pcmap
.long Ljoin_l139
.long Lframe_l175
.section .pcmap_data
Lframe_l175:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l167
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffe4
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
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l178:
Lproc_body_start_l177:
	movl $-12,%ecx
	movl %eax,8(%esp)
	leal 44(%esp), %eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_130,%eax
	movl $4,%ecx
	movl %edx,12(%esp)
	movl $-12,%edx
	movl %ebx,16(%esp)
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal Lgbl_130,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	call tig_getchar
Ljoin_l217:
	movl $8,%ecx
	movl $-12,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_138
Lloop_start_138:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $8,%eax
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-44,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal Lgbl_130,%eax
	movl $-40,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
Ljoin_l214:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l210
Ljoin_l211:
	jmp LifFalse_136
LifFalse_136:
	movl $0,%eax
	jmp LifEnd_137
Ljoin_l210:
	jmp LifTrue_135
LifTrue_135:
	leal -4(%esp), %esp
	movl $-12,%ebx
	leal 48(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-12,%ebx
	leal 48(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl $-48,%ecx
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	call isletter_40
Ljoin_l209:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l222
Ljoin_l223:
	movl $0,%eax
	jmp Ljoin_l221
Ljoin_l222:
	movl $1,%eax
	jmp Ljoin_l221
Ljoin_l221:
	jmp LifEnd_137
LifEnd_137:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l205
Ljoin_l206:
	jmp Lloop_end_131
Lloop_end_131:
	jmp Lloop_start_147
Lloop_start_147:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl $-44,%eax
	leal 44(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	leal Lgbl_130,%eax
	movl $-40,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,20(%esp)
	call tig_compare_str
Ljoin_l201:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l197
Ljoin_l198:
	jmp LifFalse_145
LifFalse_145:
	movl $0,%eax
	jmp LifEnd_146
Ljoin_l197:
	jmp LifTrue_144
LifTrue_144:
	leal -4(%esp), %esp
	movl $-12,%ebx
	leal 48(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-12,%ebx
	leal 48(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl $-48,%ecx
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	call isletter_40
Ljoin_l196:
	jmp LifEnd_146
LifEnd_146:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l192
Ljoin_l193:
	jmp Lloop_end_140
Lloop_end_140:
	movl $4,%eax
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 44(%esp), %esp
	ret
Ljoin_l192:
	jmp Lloop_body_148
Lloop_body_148:
	movl $4,%ebx
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%eax
	leal -4(%esp), %esp
	movl $-12,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %eax,28(%esp)
	movl %edx,%eax
	movl $8,%edx
	movl $-12,%ebx
	leal 48(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl $-48,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	call isletter_40
Ljoin_l191:
	call tig_chr
Ljoin_l188:
	leal -4(%esp), %esp
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl $-48,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	call tig_concat
Ljoin_l185:
	movl $4,%ecx
	movl $-12,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
Ljoin_l182:
	movl $8,%ecx
	movl $-12,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_147
Ljoin_l205:
	jmp Lloop_body_139
Lloop_body_139:
	call tig_getchar
Ljoin_l204:
	movl $8,%ebx
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
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
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l214
.long Lframe_l227
.section .pcmap_data
Lframe_l227:
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0x80000000
.long 0
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l209
.long Lframe_l228
.section .pcmap_data
Lframe_l228:
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l201
.long Lframe_l229
.section .pcmap_data
Lframe_l229:
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0x80000000
.long 0
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l196
.long Lframe_l230
.section .pcmap_data
Lframe_l230:
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l191
.long Lframe_l231
.section .pcmap_data
Lframe_l231:
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0x80000000
.long 0
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l188
.long Lframe_l232
.section .pcmap_data
Lframe_l232:
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0x80000000
.long 0
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l185
.long Lframe_l233
.section .pcmap_data
Lframe_l233:
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l182
.long Lframe_l234
.section .pcmap_data
Lframe_l234:
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_41_gc_data
.section .pcmap
.long Ljoin_l204
.long Lframe_l235
.section .pcmap_data
Lframe_l235:
.long 0xffffffd4
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l225
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l238:
Lproc_body_start_l237:
	movl $-8,%ecx
	movl %eax,4(%esp)
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_130,%eax
	movl $4,%ecx
	movl %edx,8(%esp)
	movl $-8,%edx
	movl %ebx,12(%esp)
	leal 24(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $-8,%eax
	leal 24(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	call getword_41
Ljoin_l256:
	movl $4,%ecx
	movl $-8,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_153
Lloop_start_153:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-24,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_size
Ljoin_l253:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l249
Ljoin_l250:
	jmp Lloop_end_150
Lloop_end_150:
	leal -4(%esp), %esp
	movl $-8,%eax
	leal 28(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-8,%ebx
	leal 28(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl $-28,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	call tprint_39
Ljoin_l242:
	movl $0,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebx
	leal 24(%esp), %esp
	ret
Ljoin_l249:
	jmp Lloop_body_154
Lloop_body_154:
	leal -4(%esp), %esp
	movl $-8,%ebx
	leal 28(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-8,%ebx
	leal 28(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl $-28,%ecx
	leal 28(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	call add_word_38
Ljoin_l248:
	movl $-8,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	call getword_41
Ljoin_l245:
	movl $4,%ebx
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
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
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l261
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.long 0x80000000
.long 0
.long main_42_gc_data
.section .pcmap
.long Ljoin_l253
.long Lframe_l263
.section .pcmap_data
Lframe_l263:
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l261
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.long 0x40000007
.long 0x80000000
.long 0
.long main_42_gc_data
.section .pcmap
.long Ljoin_l242
.long Lframe_l264
.section .pcmap_data
Lframe_l264:
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l261
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.long 0x80000000
.long 0
.long main_42_gc_data
.section .pcmap
.long Ljoin_l248
.long Lframe_l265
.section .pcmap_data
Lframe_l265:
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l261
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.long 0x80000000
.long 0
.long main_42_gc_data
.section .pcmap
.long Ljoin_l245
.long Lframe_l266
.section .pcmap_data
Lframe_l266:
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l261
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.long 0x80000000
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
	movl (%ecx),%edx
Linitialize_continuations_l269:
Lproc_body_start_l268:
	movl $-8,%ecx
	movl %eax,(%esp)
	leal 20(%esp), %eax
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $4,%ecx
	movl %edx,4(%esp)
	movl $-8,%edx
	movl %ebx,8(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $-8,%eax
	leal 20(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call main_42
Ljoin_l273:
	movl $0,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	leal 20(%esp), %esp
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
.long 0xffffffec
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l278
.long 0x80000008
.long 0x80000002
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x80000000
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

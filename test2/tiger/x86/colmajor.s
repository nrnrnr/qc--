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
Lgbl_70:
.long 0
.byte 0
Lgbl_117:
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
Lgbl_84:
.long 1
.byte 10
.byte 0
Lgbl_102:
.long 1
.byte 32
.byte 0
.section .text
mod_48:
	leal -36(%esp), %esp
	movl $4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 36(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 36(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l9:
Lproc_body_start_l8:
	movl %ecx,4(%esp)
	movl $-12,%ecx
	movl %edx,8(%esp)
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-12,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	movl %ebx,16(%esp)
	leal 36(%esp), %ebx
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
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	imull %eax,%ecx
	movl $4,%eax
	movl $-12,%ebx
	leal 36(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	subl %ecx,%eax
	movl $8,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	leal 44(%esp), %esp
	ret
.section .text
.section .data
mod_48_gc_data:
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
cmfirst_49:
	leal -40(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l20:
Lproc_body_start_l19:
	movl %ecx,4(%esp)
	movl $-12,%ecx
	movl %edx,8(%esp)
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,12(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $4,%eax
	movl $-12,%edx
	movl %ebx,16(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-12,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $20,%eax
	movl $-12,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $20,%eax
	movl $-12,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ecx
	leal 40(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,20(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 20(%esp),%ecx
	idivl %ecx, %eax
	movl $16,%ecx
	movl $-12,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal -8(%esp), %esp
	movl $-12,%eax
	leal 48(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ecx
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $20,%ecx
	movl $-12,%ebx
	movl %ebp,32(%esp)
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl $-44,%ecx
	leal 48(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	movl $-48,%ecx
	leal 48(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	call mod_48
Ljoin_l24:
	movl $24,%ecx
	movl $-12,%edx
	leal 40(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	movl $-12,%ecx
	leal 40(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl $12,%ecx
	movl $-12,%edx
	leal 40(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	movl 24(%esp),%ebp
	leal 48(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l24
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l29
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long cmfirst_49_gc_data
.section .text
.section .data
cmfirst_49_gc_data:
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
cmnext_50:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l33:
Lproc_body_start_l32:
	movl $-8,%edx
	movl %eax,(%esp)
	leal 24(%esp), %eax
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	movl $1,%eax
	movl $12,%edx
	movl %ecx,4(%esp)
	movl $-8,%ecx
	movl %ebx,8(%esp)
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $12,%eax
	movl $-8,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $12,%ecx
	movl $-8,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $20,%edx
	movl $-8,%eax
	leal 24(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jge Ljoin_l41
Ljoin_l42:
	jmp LifFalse_55
LifFalse_55:
	movl $0,%ecx
	jmp LifEnd_56
Ljoin_l41:
	jmp LifTrue_54
LifTrue_54:
	movl $0,%ecx
	movl $12,%edx
	movl $-8,%eax
	leal 24(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $1,%eax
	movl $8,%ecx
	movl $-8,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $8,%eax
	movl $-8,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	jmp LifEnd_56
LifEnd_56:
	movl $16,%ecx
	movl $-8,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	movl $-8,%eax
	leal 24(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	imull %ecx,%edx
	movl $8,%ecx
	movl $-8,%eax
	leal 24(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	addl %edx,%ecx
	movl $12,%edx
	movl $-8,%eax
	leal 24(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $24,%eax
	movl $-8,%ebx
	movl %ebp,12(%esp)
	leal 24(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	cmpl %eax,%edx
	jg Ljoin_l39
Ljoin_l40:
	jmp LifFalse_59
LifFalse_59:
	movl $12,%eax
	movl $-8,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp LifEnd_60
Ljoin_l39:
	jmp LifTrue_58
LifTrue_58:
	movl $24,%edx
	movl $-8,%ebx
	leal 24(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%eax
	jmp LifEnd_60
LifEnd_60:
	addl %eax,%ecx
	movl $4,%eax
	movl $-8,%ebx
	leal 24(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $8,%ecx
	movl $-8,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $16,%edx
	movl $-8,%eax
	leal 24(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jge Ljoin_l37
Ljoin_l38:
	jmp LifFalse_63
LifFalse_63:
	movl $0,%ecx
	jmp LifEnd_64
Ljoin_l37:
	jmp LifTrue_62
LifTrue_62:
	movl $12,%edx
	movl $-8,%eax
	leal 24(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $24,%eax
	movl $-8,%ebx
	leal 24(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	cmpl %eax,%edx
	jge Lif_true_l46
Lif_false_l47:
	movl $0,%ecx
	jmp Lend_if_l48
Lif_true_l46:
	movl $1,%ecx
	jmp Lend_if_l48
Lend_if_l48:
	jmp LifEnd_64
LifEnd_64:
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l35
Ljoin_l36:
	jmp LifFalse_67
LifFalse_67:
	movl $4,%eax
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp LifEnd_68
Ljoin_l35:
	jmp LifTrue_66
LifTrue_66:
	movl $-1,%eax
	jmp LifEnd_68
LifEnd_68:
	movl $0,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	leal 24(%esp), %esp
	ret
.section .text
.section .data
cmnext_50_gc_data:
.long 2
.long 1
.long 0
.long 7
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
getline_79:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l55:
Lproc_body_start_l54:
	movl $-12,%ecx
	movl %eax,8(%esp)
	leal 40(%esp), %eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,12(%esp)
	call tig_getchar
Ljoin_l75:
	movl $4,%ecx
	movl $-12,%edx
	movl %ebx,16(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal Lgbl_70,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_91
Lloop_start_91:
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	movl $-12,%ebx
	leal 40(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl $-40,%eax
	leal 40(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal Lgbl_70,%eax
	movl $-36,%ebx
	leal 40(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl %edx,20(%esp)
	call tig_compare_str
Ljoin_l72:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l68
Ljoin_l69:
	jmp LifFalse_89
LifFalse_89:
	movl $0,%eax
	jmp LifEnd_90
Ljoin_l68:
	jmp LifTrue_88
LifTrue_88:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-12,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-40,%ebx
	leal 40(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	leal Lgbl_84,%ecx
	movl $-36,%ebx
	leal 40(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,24(%esp)
	call tig_compare_str
Ljoin_l67:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lif_true_l79
Lif_false_l80:
	movl $0,%eax
	jmp Lend_if_l81
Lif_true_l79:
	movl $1,%eax
	jmp Lend_if_l81
Lend_if_l81:
	jmp LifEnd_90
LifEnd_90:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l63
Ljoin_l64:
	jmp Lloop_end_80
Lloop_end_80:
	movl $8,%eax
	movl $-12,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 40(%esp), %esp
	ret
Ljoin_l63:
	jmp Lloop_body_92
Lloop_body_92:
	leal -4(%esp), %esp
	movl $8,%ebx
	movl $-12,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ebx
	leal 44(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl $-44,%edx
	leal 44(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	call tig_concat
Ljoin_l62:
	movl $8,%ecx
	movl $-12,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
Ljoin_l59:
	movl $4,%edx
	movl $-12,%ebx
	leal 40(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_91
.section .pcmap_data
Lstackdata_l83:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l75
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l83
.long 0x80000008
.long 0x8000000a
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
.long 0x80000000
.long 0
.long getline_79_gc_data
.section .pcmap
.long Ljoin_l72
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l83
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
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
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getline_79_gc_data
.section .pcmap
.long Ljoin_l67
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l83
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
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
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getline_79_gc_data
.section .pcmap
.long Ljoin_l62
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l83
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
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
.long 0x80000000
.long 0
.long getline_79_gc_data
.section .pcmap
.long Ljoin_l59
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l83
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
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
.long 0x80000000
.long 0
.long getline_79_gc_data
.section .text
.section .data
getline_79_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 10
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 1
.long 1
.long 1
.section .text
print_width_94:
	leal -52(%esp), %esp
	movl $4,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,4(%esp)
	leal 52(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 52(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l91:
Lproc_body_start_l90:
	movl %ecx,8(%esp)
	movl $-16,%ecx
	movl %edx,12(%esp)
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,16(%esp)
	leal 52(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-16,%ecx
	movl %ebx,20(%esp)
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl $-52,%eax
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	movl %edx,24(%esp)
	call tig_print
Ljoin_l103:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-16,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl $-52,%eax
	leal 52(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	movl %ecx,28(%esp)
	call tig_size
Ljoin_l100:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl $12,%ecx
	movl $-16,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_105
Lloop_start_105:
	movl $12,%eax
	movl $-16,%ebx
	leal 52(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	jle Ljoin_l96
Ljoin_l97:
	jmp Lloop_end_101
Lloop_end_101:
	movl $0,%eax
	movl $8,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
	leal 60(%esp), %esp
	ret
Ljoin_l96:
	jmp Lloop_body_106
Lloop_body_106:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	leal Lgbl_102,%ebx
	movl $-52,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl %eax,32(%esp)
	call tig_print
Ljoin_l95:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ebx
	movl %ebx,(%eax)
	movl $1,%eax
	movl $12,%ebx
	movl $-16,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $12,%eax
	movl $-16,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Lloop_start_105
.section .pcmap_data
Lstackdata_l109:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l103
.long Lframe_l110
.section .pcmap_data
Lframe_l110:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l109
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long print_width_94_gc_data
.section .pcmap
.long Ljoin_l100
.long Lframe_l111
.section .pcmap_data
Lframe_l111:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l109
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long print_width_94_gc_data
.section .pcmap
.long Ljoin_l95
.long Lframe_l112
.section .pcmap_data
Lframe_l112:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l109
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0x80000000
.long 0
.long print_width_94_gc_data
.section .text
.section .data
print_width_94_gc_data:
.long 4
.long 1
.long 0
.long 1
.long 0
.long 10
.long 1
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
tiger_main:
	leal -112(%esp), %esp
	leal 112(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l115:
Lproc_body_start_l114:
	movl $-72,%ecx
	movl %eax,12(%esp)
	leal 112(%esp), %eax
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $4,%ecx
	movl %edx,16(%esp)
	movl $-72,%edx
	movl %ebx,20(%esp)
	leal 112(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $8,%ebx
	movl $-72,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $12,%edx
	movl $-72,%ebx
	leal 112(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl $16,%ecx
	movl $-72,%edx
	leal 112(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $20,%ebx
	movl $-72,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $24,%edx
	movl $-72,%ebx
	leal 112(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1024,%eax
	movl $28,%ecx
	movl $-72,%edx
	leal 112(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $2,%ebx
	movl $28,%ecx
	movl $-72,%edx
	movl %ebp,24(%esp)
	leal 112(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	addl %ecx,%ebx
	leal space_end,%ecx
	movl (%ecx),%eax
	cmpl %eax,%ebx
	jg Ljoin_l173
Ljoin_l174:
	jmp Lalc_77
Ljoin_l173:
	jmp Lalc_gc_76
Lalc_gc_76:
	call tig_call_gc
Ljoin_l172:
	jmp Lalc_77
Lalc_77:
	movl $4,%eax
	movl $2,%ecx
	movl $28,%edx
	movl $-72,%ebx
	leal 112(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	imull %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl %edx,(%ecx)
	movl $4,%ecx
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	movl $4,%ecx
	movl $2,%edx
	movl $28,%ebp
	movl $-72,%ebx
	movl %esi,28(%esp)
	leal 112(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	addl %ebp,%edx
	leal Cmm.global_area,%ebp
	movl %edx,(%ebp)
	movl $28,%edx
	movl $-72,%ebp
	leal 112(%esp), %ecx
	addl %ebp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $1,%edx
	jmp Linit_start_73
Linit_start_73:
	leal Lgbl_70,%ecx
	movl $4,%ebp
	movl %edx,%esi
	imull %ebp,%esi
	movl %eax,%ebp
	addl %esi,%ebp
	movl %ecx,(%ebp)
	movl $1,%ecx
	addl %ecx,%edx
	movl $1,%ecx
	movl $28,%ebp
	movl $-72,%esi
	leal 112(%esp), %ebx
	addl %esi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	cmpl %ebp,%edx
	jle Ljoin_l168
Ljoin_l169:
	jmp Linit_end_74
Linit_end_74:
	movl $32,%ebp
	movl $-72,%ecx
	leal 112(%esp), %ebx
	addl %ecx,%ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $36,%ebx
	movl $-72,%ebp
	leal 112(%esp), %ecx
	addl %ebp,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $80,%eax
	movl $40,%ecx
	movl $-72,%ebx
	leal 112(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	leal Lgbl_70,%eax
	movl $44,%ebp
	movl $-72,%ecx
	leal 112(%esp), %ebx
	addl %ecx,%ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $48,%ebx
	movl $-72,%ebp
	leal 112(%esp), %ecx
	addl %ebp,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $-72,%eax
	leal 112(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	call getline_79
Ljoin_l167:
	movl $44,%ecx
	movl $-72,%edx
	leal 112(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_129
Lloop_start_129:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $44,%eax
	movl $-72,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-112,%eax
	leal 112(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_size
Ljoin_l164:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l160
Ljoin_l161:
	jmp Lloop_end_108
Lloop_end_108:
	movl $2,%eax
	movl $48,%ecx
	movl $-72,%ebx
	leal 112(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $40,%eax
	movl $-72,%edx
	leal 112(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl %eax,%ebx
	sarl $31, %ebx
	movl %ebx,%edx
	idivl %ecx, %eax
	movl $56,%ecx
	movl $-72,%edx
	leal 112(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $56,%eax
	movl $-72,%ebx
	leal 112(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl $60,%eax
	movl $-72,%ebx
	leal 112(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $2,%eax
	movl $48,%edx
	movl $-72,%ecx
	leal 112(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl $64,%eax
	movl $-72,%ebx
	leal 112(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal -8(%esp), %esp
	movl $-72,%ecx
	leal 120(%esp), %edx
	addl %ecx,%edx
	movl %edx,%eax
	movl $36,%edx
	movl $-72,%ecx
	leal 120(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $60,%ebx
	movl $-72,%ecx
	leal 120(%esp), %ebp
	addl %ecx,%ebp
	addl %ebx,%ebp
	movl $-116,%ebx
	leal 120(%esp), %ecx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	movl $-120,%ecx
	leal 120(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	call cmfirst_49
Ljoin_l140:
	movl $68,%ecx
	movl $-72,%edx
	leal 112(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_140
Lloop_start_140:
	movl $68,%eax
	movl $-72,%ebx
	leal 112(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Ljoin_l136
Ljoin_l137:
	jmp Lloop_end_131
Lloop_end_131:
	movl $56,%eax
	movl $-72,%ecx
	leal 112(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $60,%ebx
	movl $-72,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	cmpl %ebx,%eax
	jne Ljoin_l120
Ljoin_l121:
	jmp LifFalse_146
LifFalse_146:
	movl $0,%eax
	jmp LifEnd_147
Ljoin_l120:
	jmp LifTrue_145
LifTrue_145:
	leal Cmm.global_area,%ebx
	movl (%ebx),%ebp
	leal Lgbl_84,%ebx
	movl $-112,%esi
	leal 112(%esp), %eax
	addl %esi,%eax
	movl %ebx,(%eax)
	call tig_print
Ljoin_l119:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
	jmp LifEnd_147
LifEnd_147:
	movl $0,%ecx
	leal 112(%esp), %ebp
	addl %ecx,%ebp
	movl 16(%esp),%ecx
	movl %ecx,(%ebp)
	movl 20(%esp),%ebx
	movl 24(%esp),%ebp
	movl 28(%esp),%esi
	leal 112(%esp), %esp
	ret
Ljoin_l136:
	jmp Lloop_body_141
Lloop_body_141:
	movl $64,%ebx
	movl $-72,%ebp
	leal 112(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl (%esi),%ebx
	leal Cmm.global_area,%esi
	movl (%esi),%ebp
	movl $32,%esi
	movl $-72,%eax
	leal 112(%esp), %ecx
	addl %eax,%ecx
	addl %esi,%ecx
	movl (%ecx),%esi
	movl $68,%ecx
	movl $-72,%eax
	leal 112(%esp), %edx
	addl %eax,%edx
	addl %ecx,%edx
	movl $-108,%ecx
	leal 112(%esp), %eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $93,%eax
	movl $-104,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-112,%eax
	leal 112(%esp), %edx
	addl %eax,%edx
	movl %esi,(%edx)
	call tig_bounds_check
Ljoin_l135:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal -8(%esp), %esp
	movl $-72,%eax
	leal 120(%esp), %ebp
	addl %eax,%ebp
	movl %ebp,%eax
	movl $4,%ebp
	movl $1,%ecx
	movl $68,%edx
	movl $-72,%esi
	movl %edi,40(%esp)
	leal 120(%esp), %edi
	addl %esi,%edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ecx,%edx
	imull %ebp,%edx
	movl $32,%ebp
	movl $-72,%ecx
	leal 120(%esp), %edi
	addl %ecx,%edi
	addl %ebp,%edi
	movl (%edi),%ebp
	addl %edx,%ebp
	movl $-116,%edx
	leal 120(%esp), %edi
	addl %edx,%edi
	movl (%ebp),%edx
	movl %edx,(%edi)
	movl $-120,%edx
	leal 120(%esp), %edi
	addl %edx,%edi
	movl %ebx,(%edi)
	call print_width_94
Ljoin_l132:
	movl $1,%eax
	movl $56,%ecx
	movl $-72,%edx
	leal 112(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	subl %eax,%ecx
	movl $56,%eax
	movl $-72,%ebx
	leal 112(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $56,%ecx
	movl $-72,%edx
	leal 112(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l128
Ljoin_l129:
	jmp LifFalse_138
LifFalse_138:
	movl $0,%eax
	jmp LifEnd_139
Ljoin_l128:
	jmp LifTrue_137
LifTrue_137:
	leal Cmm.global_area,%ebx
	movl (%ebx),%edi
	leal Lgbl_84,%ebx
	movl $-112,%ebp
	leal 112(%esp), %esi
	addl %ebp,%esi
	movl %ebx,(%esi)
	call tig_print
Ljoin_l127:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	movl $60,%eax
	movl $-72,%edi
	leal 112(%esp), %ecx
	addl %edi,%ecx
	addl %eax,%ecx
	movl $56,%eax
	movl $-72,%edi
	leal 112(%esp), %edx
	addl %edi,%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $0,%eax
	jmp LifEnd_139
LifEnd_139:
	movl $-72,%eax
	leal 112(%esp), %edx
	addl %eax,%edx
	movl %edx,%eax
	call cmnext_50
Ljoin_l124:
	movl $68,%ebx
	movl $-72,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	jmp Ljoin_l178
Ljoin_l178:
	movl 32(%esp),%edi
	jmp Lloop_start_140
Ljoin_l160:
	jmp Lloop_body_130
Lloop_body_130:
	leal Cmm.global_area,%ebx
	movl (%ebx),%esi
	movl $44,%ebx
	movl $-72,%ebp
	leal 112(%esp), %eax
	addl %ebp,%eax
	addl %ebx,%eax
	movl $-112,%ebx
	leal 112(%esp), %ebp
	addl %ebx,%ebp
	movl (%eax),%ebx
	movl %ebx,(%ebp)
	call tig_size
Ljoin_l159:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl $52,%ecx
	movl $-72,%esi
	leal 112(%esp), %edx
	addl %esi,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $48,%eax
	movl $-72,%edx
	leal 112(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $52,%ecx
	movl $-72,%edx
	leal 112(%esp), %esi
	addl %edx,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	cmpl %ecx,%eax
	jl Ljoin_l155
Ljoin_l156:
	jmp LifFalse_115
LifFalse_115:
	movl $0,%eax
	jmp LifEnd_116
Ljoin_l155:
	jmp LifTrue_114
LifTrue_114:
	movl $52,%eax
	movl $-72,%ecx
	leal 112(%esp), %esi
	addl %ecx,%esi
	addl %eax,%esi
	movl $48,%eax
	movl $-72,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%esi),%eax
	movl %eax,(%edx)
	movl $0,%eax
	jmp LifEnd_116
LifEnd_116:
	movl $36,%eax
	movl $-72,%edx
	leal 112(%esp), %esi
	addl %edx,%esi
	addl %eax,%esi
	movl (%esi),%eax
	movl $28,%esi
	movl $-72,%edx
	leal 112(%esp), %ecx
	addl %edx,%ecx
	addl %esi,%ecx
	movl (%ecx),%esi
	cmpl %esi,%eax
	jge Ljoin_l153
Ljoin_l154:
	jmp LifFalse_124
LifFalse_124:
	movl $0,%eax
	jmp LifEnd_125
Ljoin_l153:
	jmp LifTrue_123
LifTrue_123:
	leal Cmm.global_area,%esi
	movl (%esi),%ebx
	leal Lgbl_117,%esi
	movl $-112,%ebp
	leal 112(%esp), %eax
	addl %ebp,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l152:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $1,%eax
	movl $-112,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_exit
Ljoin_l149:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	jmp LifEnd_125
LifEnd_125:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $32,%eax
	movl $-72,%ebx
	leal 112(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $36,%edx
	movl $-72,%ebx
	leal 112(%esp), %esi
	addl %ebx,%esi
	addl %edx,%esi
	movl $-108,%edx
	leal 112(%esp), %ebx
	addl %edx,%ebx
	movl (%esi),%edx
	movl %edx,(%ebx)
	movl $83,%edx
	movl $-104,%ebx
	leal 112(%esp), %esi
	addl %ebx,%esi
	movl %edx,(%esi)
	movl $-112,%edx
	leal 112(%esp), %esi
	addl %edx,%esi
	movl %eax,(%esi)
	movl %ecx,36(%esp)
	call tig_bounds_check
Ljoin_l146:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $44,%eax
	movl $-72,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $4,%eax
	movl $1,%ecx
	movl $36,%esi
	movl $-72,%ebx
	leal 112(%esp), %ebp
	addl %ebx,%ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	addl %ecx,%esi
	imull %eax,%esi
	movl $32,%eax
	movl $-72,%ecx
	leal 112(%esp), %ebp
	addl %ecx,%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %esi,%eax
	movl (%edx),%esi
	movl %esi,(%eax)
	movl $1,%eax
	movl $36,%esi
	movl $-72,%edx
	leal 112(%esp), %ebp
	addl %edx,%ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	addl %eax,%esi
	movl $36,%eax
	movl $-72,%ebp
	leal 112(%esp), %edx
	addl %ebp,%edx
	addl %eax,%edx
	movl %esi,(%edx)
	movl $-72,%edx
	leal 112(%esp), %esi
	addl %edx,%esi
	movl %esi,%eax
	call getline_79
Ljoin_l143:
	movl $44,%ebx
	movl $-72,%ecx
	leal 112(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_129
Ljoin_l168:
	jmp Linit_start_73
.section .pcmap_data
Lstackdata_l180:
.long 1
.long 0xffffffb8
.section .pcmap
.long Ljoin_l172
.long Lframe_l181
.section .pcmap_data
Lframe_l181:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l167
.long Lframe_l182
.section .pcmap_data
Lframe_l182:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l164
.long Lframe_l183
.section .pcmap_data
Lframe_l183:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l140
.long Lframe_l184
.section .pcmap_data
Lframe_l184:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l119
.long Lframe_l185
.section .pcmap_data
Lframe_l185:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
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
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l135
.long Lframe_l186
.section .pcmap_data
Lframe_l186:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l132
.long Lframe_l187
.section .pcmap_data
Lframe_l187:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
.long 0x4000000b
.long 0xffffffb0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l127
.long Lframe_l188
.section .pcmap_data
Lframe_l188:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
.long 0x4000000b
.long 0xffffffb0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l124
.long Lframe_l189
.section .pcmap_data
Lframe_l189:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
.long 0x4000000b
.long 0xffffffb0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l159
.long Lframe_l190
.section .pcmap_data
Lframe_l190:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
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
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l152
.long Lframe_l191
.section .pcmap_data
Lframe_l191:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
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
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l149
.long Lframe_l192
.section .pcmap_data
Lframe_l192:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
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
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l146
.long Lframe_l193
.section .pcmap_data
Lframe_l193:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
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
.long 0xffffffb4
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l143
.long Lframe_l194
.section .pcmap_data
Lframe_l194:
.long 0xffffff90
.long 0x80000004
.long 0xffffffa0
.long Lstackdata_l180
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffa4
.long 0x40000009
.long 0xffffffa8
.long 0x4000000a
.long 0xffffffac
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
.long 0
.long 30
.long 1
.long 1
.long 0
.long 1
.long 0
.long 0
.long 0
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

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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l9:
Lproc_body_start_l8:
	movl %edx,4(%esp)
	leal 40(%esp), %edx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 40(%esp), %edx
	movl %ecx,12(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl %ebx,16(%esp)
	movl $-12,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 40(%esp), %edx
	movl %ebp,20(%esp)
	movl $-12,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	movl %eax,24(%esp)
	movl %ebx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ebp, %eax
	imull %eax,%ecx
	movl 24(%esp),%eax
	subl %ecx,%eax
	leal 40(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	leal 48(%esp), %esp
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
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l20:
Lproc_body_start_l19:
	movl %edx,4(%esp)
	leal 40(%esp), %edx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 40(%esp), %edx
	movl %ecx,12(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 40(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %eax,%ecx
	sarl $31, %ecx
	movl %edx,16(%esp)
	movl %ecx,%edx
	movl 16(%esp),%ecx
	idivl %ecx, %eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 48(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl %ebx,28(%esp)
	movl $-12,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $20,%ecx
	addl %ecx,%ebx
	leal 48(%esp), %ecx
	movl %ebp,32(%esp)
	movl $-44,%ebp
	addl %ebp,%ecx
	movl (%ebx),%ebp
	movl %ebp,(%ecx)
	leal 48(%esp), %ecx
	movl $-48,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call mod_48
Ljoin_l24:
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 40(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 40(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebx
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
.long 0xffffffec
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
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl (%edx),%ecx
Linitialize_continuations_l33:
Lproc_body_start_l32:
	leal 20(%esp), %edx
	movl %eax,(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	addl %edx,%eax
	leal 20(%esp), %edx
	movl %ecx,4(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	jge Ljoin_l41
Ljoin_l42:
	jmp LifFalse_55
LifFalse_55:
	movl $0,%eax
	jmp LifEnd_56
Ljoin_l41:
	jmp LifTrue_54
LifTrue_54:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	addl %edx,%eax
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	jmp LifEnd_56
LifEnd_56:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl %ebx,8(%esp)
	movl $-8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $16,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	imull %edx,%ecx
	addl %ecx,%eax
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl $-8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $24,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	cmpl %edx,%ecx
	jg Ljoin_l39
Ljoin_l40:
	jmp LifFalse_59
LifFalse_59:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp LifEnd_60
Ljoin_l39:
	jmp LifTrue_58
LifTrue_58:
	leal 20(%esp), %edx
	movl $-8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $24,%edx
	addl %edx,%ebx
	movl (%ebx),%ecx
	jmp LifEnd_60
LifEnd_60:
	addl %ecx,%eax
	leal 20(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 20(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $16,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	cmpl %ecx,%eax
	jge Ljoin_l37
Ljoin_l38:
	jmp LifFalse_63
LifFalse_63:
	movl $0,%eax
	jmp LifEnd_64
Ljoin_l37:
	jmp LifTrue_62
LifTrue_62:
	leal 20(%esp), %ecx
	movl $-8,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $12,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	leal 20(%esp), %ebx
	movl $-8,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $24,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	cmpl %ebx,%ecx
	jge Ljoin_l47
Ljoin_l48:
	movl $0,%eax
	jmp Ljoin_l46
Ljoin_l47:
	movl $-1,%eax
	jmp Ljoin_l46
Ljoin_l46:
	jmp LifEnd_64
LifEnd_64:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l35
Ljoin_l36:
	jmp LifFalse_67
LifFalse_67:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp LifEnd_68
Ljoin_l35:
	jmp LifTrue_66
LifTrue_66:
	movl $-1,%ecx
	jmp LifEnd_68
LifEnd_68:
	movl %ecx,%eax
	leal 20(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl 4(%esp),%ebx
	movl %ebx,(%ecx)
	movl 8(%esp),%ebx
	leal 20(%esp), %esp
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
	leal 40(%esp), %ecx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,12(%esp)
	call tig_getchar
Ljoin_l75:
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_70,%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_91
Lloop_start_91:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 40(%esp), %edx
	movl %ebx,16(%esp)
	movl $-40,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal Lgbl_70,%edx
	leal 40(%esp), %ebx
	movl $-36,%eax
	addl %eax,%ebx
	movl %edx,(%ebx)
	movl %ecx,20(%esp)
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
	leal 40(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	leal Lgbl_84,%ecx
	leal 40(%esp), %edx
	movl $-36,%ebx
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
	jne Ljoin_l80
Ljoin_l81:
	movl $0,%eax
	jmp Ljoin_l79
Ljoin_l80:
	movl $-1,%eax
	jmp Ljoin_l79
Ljoin_l79:
	jmp LifEnd_90
LifEnd_90:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l63
Ljoin_l64:
	jmp Lloop_end_80
Lloop_end_80:
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %ecx,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
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
	leal 44(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl $8,%ecx
	addl %ecx,%ebx
	movl (%ebx),%eax
	leal 44(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 44(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	call tig_concat
Ljoin_l62:
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
Ljoin_l59:
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Ljoin_l82
Ljoin_l82:
	movl 16(%esp),%ebx
	jmp Lloop_start_91
.section .pcmap_data
Lstackdata_l84:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l75
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l84
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
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l84
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
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l84
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
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l84
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
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l84
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
	leal 52(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 52(%esp), %ecx
	movl %eax,4(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 52(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l92:
Lproc_body_start_l91:
	movl %edx,8(%esp)
	leal 52(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 52(%esp), %eax
	movl %ecx,16(%esp)
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-52,%ebx
	addl %ebx,%ecx
	movl (%eax),%ebx
	movl %ebx,(%ecx)
	movl %edx,24(%esp)
	call tig_print
Ljoin_l104:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 52(%esp), %edx
	movl $-52,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl %ecx,28(%esp)
	call tig_size
Ljoin_l101:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_105
Lloop_start_105:
	leal 52(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jle Ljoin_l97
Ljoin_l98:
	jmp Lloop_end_101
Lloop_end_101:
	movl $0,%eax
	leal 52(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 60(%esp), %esp
	ret
Ljoin_l97:
	jmp Lloop_body_106
Lloop_body_106:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	leal Lgbl_102,%ebx
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	movl %eax,32(%esp)
	call tig_print
Ljoin_l96:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 52(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_105
.section .pcmap_data
Lstackdata_l110:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l104
.long Lframe_l111
.section .pcmap_data
Lframe_l111:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l110
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
.long Ljoin_l101
.long Lframe_l112
.section .pcmap_data
Lframe_l112:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l110
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
.long Ljoin_l96
.long Lframe_l113
.section .pcmap_data
Lframe_l113:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffdc
.long Lstackdata_l110
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
	leal -120(%esp), %esp
	leal 120(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l116:
Lproc_body_start_l115:
	leal 120(%esp), %ecx
	movl %eax,12(%esp)
	movl $-72,%eax
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 120(%esp), %ecx
	movl %edx,16(%esp)
	movl $-72,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1024,%eax
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 120(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $28,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $2,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	leal space_end,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	jg Ljoin_l174
Ljoin_l175:
	jmp Lalc_77
Ljoin_l174:
	jmp Lalc_gc_76
Lalc_gc_76:
	call tig_call_gc
Ljoin_l173:
	jmp Lalc_77
Lalc_77:
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $28,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $2,%eax
	addl %eax,%ecx
	movl $4,%eax
	imull %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl %ecx,(%edx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%eax
	leal 120(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-72,%ebx
	addl %ebx,%ecx
	movl $28,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $2,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	imull %ecx,%ebx
	addl %ebx,%eax
	leal Cmm.global_area,%ebx
	movl %eax,(%ebx)
	leal 120(%esp), %eax
	movl $-72,%ebx
	addl %ebx,%eax
	movl $28,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl $1,%ebx
	jmp Linit_start_73
Linit_start_73:
	leal Lgbl_70,%eax
	movl $4,%ecx
	movl %ebp,24(%esp)
	movl %ebx,%ebp
	imull %ecx,%ebp
	movl %edx,%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	movl $1,%eax
	addl %eax,%ebx
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $28,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	cmpl %ecx,%ebx
	jle Ljoin_l169
Ljoin_l170:
	jmp Linit_end_74
Linit_end_74:
	leal 120(%esp), %ecx
	movl $-72,%eax
	addl %eax,%ecx
	movl $32,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $0,%ecx
	leal 120(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl $36,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $80,%ecx
	leal 120(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl $40,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal Lgbl_70,%ecx
	leal 120(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl $44,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 120(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl $48,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %ecx,%eax
	call getline_79
Ljoin_l168:
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_129
Lloop_start_129:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 120(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $44,%edx
	addl %edx,%eax
	leal 120(%esp), %edx
	movl $-120,%ebp
	addl %ebp,%edx
	movl (%eax),%ebp
	movl %ebp,(%edx)
	movl %ecx,28(%esp)
	call tig_size
Ljoin_l165:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l161
Ljoin_l162:
	jmp Lloop_end_108
Lloop_end_108:
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $40,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 120(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $48,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $2,%eax
	addl %eax,%edx
	movl %ecx,%eax
	movl %eax,%ecx
	sarl $31, %ecx
	movl %edx,32(%esp)
	movl %ecx,%edx
	movl 32(%esp),%ecx
	idivl %ecx, %eax
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $60,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $48,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $2,%ecx
	addl %ecx,%edx
	leal 120(%esp), %ecx
	movl $-72,%eax
	addl %eax,%ecx
	movl $64,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal -8(%esp), %esp
	leal 128(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %ecx,%eax
	leal 128(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 128(%esp), %ecx
	movl $-72,%ebp
	addl %ebp,%ecx
	movl $60,%ebp
	addl %ebp,%ecx
	leal 128(%esp), %ebp
	movl $-124,%ebx
	addl %ebx,%ebp
	movl (%ecx),%ebx
	movl %ebx,(%ebp)
	leal 128(%esp), %ebx
	movl $-128,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	call cmfirst_49
Ljoin_l141:
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_140
Lloop_start_140:
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $68,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jge Ljoin_l137
Ljoin_l138:
	jmp Lloop_end_131
Lloop_end_131:
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 120(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $60,%edx
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jne Ljoin_l121
Ljoin_l122:
	jmp LifFalse_146
LifFalse_146:
	movl $0,%ecx
	jmp LifEnd_147
Ljoin_l121:
	jmp LifTrue_145
LifTrue_145:
	leal Cmm.global_area,%ebx
	movl (%ebx),%ebp
	leal Lgbl_84,%ebx
	leal 120(%esp), %eax
	movl $-120,%ecx
	addl %ecx,%eax
	movl %ebx,(%eax)
	call tig_print
Ljoin_l120:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
	jmp LifEnd_147
LifEnd_147:
	movl $0,%eax
	leal 120(%esp), %ecx
	movl $0,%ebp
	addl %ebp,%ecx
	movl 16(%esp),%ebp
	movl %ebp,(%ecx)
	movl 20(%esp),%ebx
	movl 24(%esp),%ebp
	leal 120(%esp), %esp
	ret
Ljoin_l137:
	jmp Lloop_body_141
Lloop_body_141:
	leal 120(%esp), %ebx
	movl $-72,%ebp
	addl %ebp,%ebx
	movl $64,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	leal 120(%esp), %ebx
	movl $-72,%ecx
	addl %ecx,%ebx
	movl $32,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	leal 120(%esp), %ebx
	movl $-72,%edx
	addl %edx,%ebx
	movl $68,%edx
	addl %edx,%ebx
	leal 120(%esp), %edx
	movl %esi,36(%esp)
	movl $-116,%esi
	addl %esi,%edx
	movl (%ebx),%esi
	movl %esi,(%edx)
	movl $93,%edx
	leal 120(%esp), %esi
	movl $-112,%ebx
	addl %ebx,%esi
	movl %edx,(%esi)
	leal 120(%esp), %edx
	movl $-120,%esi
	addl %esi,%edx
	movl %ecx,(%edx)
	movl %eax,40(%esp)
	call tig_bounds_check
Ljoin_l136:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 128(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	leal 128(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $32,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 128(%esp), %ecx
	movl $-72,%esi
	addl %esi,%ecx
	movl $68,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	movl $1,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	imull %ecx,%esi
	addl %esi,%edx
	leal 128(%esp), %esi
	movl $-124,%ecx
	addl %ecx,%esi
	movl (%edx),%ecx
	movl %ecx,(%esi)
	leal 128(%esp), %ecx
	movl $-128,%esi
	addl %esi,%ecx
	movl %ebp,(%ecx)
	call print_width_94
Ljoin_l133:
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	subl %eax,%ecx
	leal 120(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $56,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l129
Ljoin_l130:
	jmp LifFalse_138
LifFalse_138:
	movl $0,%eax
	jmp LifEnd_139
Ljoin_l129:
	jmp LifTrue_137
LifTrue_137:
	leal Cmm.global_area,%ebp
	movl (%ebp),%esi
	leal Lgbl_84,%ebp
	leal 120(%esp), %ebx
	movl $-120,%eax
	addl %eax,%ebx
	movl %ebp,(%ebx)
	call tig_print
Ljoin_l128:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 120(%esp), %eax
	movl $-72,%esi
	addl %esi,%eax
	movl $60,%esi
	addl %esi,%eax
	leal 120(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $56,%ecx
	addl %ecx,%esi
	movl (%eax),%ecx
	movl %ecx,(%esi)
	movl $0,%ecx
	jmp LifEnd_139
LifEnd_139:
	leal 120(%esp), %ecx
	movl $-72,%esi
	addl %esi,%ecx
	movl %ecx,%eax
	call cmnext_50
Ljoin_l125:
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Ljoin_l179
Ljoin_l179:
	movl 36(%esp),%esi
	jmp Lloop_start_140
Ljoin_l161:
	jmp Lloop_body_130
Lloop_body_130:
	leal Cmm.global_area,%ebx
	movl (%ebx),%ebp
	leal 120(%esp), %ebx
	movl $-72,%eax
	addl %eax,%ebx
	movl $44,%eax
	addl %eax,%ebx
	leal 120(%esp), %eax
	movl $-120,%ecx
	addl %ecx,%eax
	movl (%ebx),%ecx
	movl %ecx,(%eax)
	call tig_size
Ljoin_l160:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
	leal 120(%esp), %ecx
	movl $-72,%ebp
	addl %ebp,%ecx
	movl $52,%ebp
	addl %ebp,%ecx
	movl %eax,(%ecx)
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $48,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 120(%esp), %eax
	movl $-72,%ebp
	addl %ebp,%eax
	movl $52,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	cmpl %ebp,%ecx
	jl Ljoin_l156
Ljoin_l157:
	jmp LifFalse_115
LifFalse_115:
	movl $0,%ecx
	jmp LifEnd_116
Ljoin_l156:
	jmp LifTrue_114
LifTrue_114:
	leal 120(%esp), %ecx
	movl $-72,%ebp
	addl %ebp,%ecx
	movl $52,%ebp
	addl %ebp,%ecx
	leal 120(%esp), %ebp
	movl $-72,%eax
	addl %eax,%ebp
	movl $48,%eax
	addl %eax,%ebp
	movl (%ecx),%eax
	movl %eax,(%ebp)
	movl $0,%eax
	jmp LifEnd_116
LifEnd_116:
	leal 120(%esp), %eax
	movl $-72,%ebp
	addl %ebp,%eax
	movl $36,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $28,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	cmpl %ecx,%ebp
	jge Ljoin_l154
Ljoin_l155:
	jmp LifFalse_124
LifFalse_124:
	movl $0,%ecx
	jmp LifEnd_125
Ljoin_l154:
	jmp LifTrue_123
LifTrue_123:
	leal Cmm.global_area,%ebp
	movl (%ebp),%ebx
	leal Lgbl_117,%ebp
	leal 120(%esp), %eax
	movl $-120,%ecx
	addl %ecx,%eax
	movl %ebp,(%eax)
	call tig_print
Ljoin_l153:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $1,%eax
	leal 120(%esp), %ecx
	movl $-120,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_exit
Ljoin_l150:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	jmp LifEnd_125
LifEnd_125:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 120(%esp), %eax
	movl $-72,%ebx
	addl %ebx,%eax
	movl $32,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	leal 120(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $36,%edx
	addl %edx,%eax
	leal 120(%esp), %edx
	movl $-116,%ebp
	addl %ebp,%edx
	movl (%eax),%ebp
	movl %ebp,(%edx)
	movl $83,%edx
	leal 120(%esp), %ebp
	movl $-112,%eax
	addl %eax,%ebp
	movl %edx,(%ebp)
	leal 120(%esp), %edx
	movl $-120,%ebp
	addl %ebp,%edx
	movl %ebx,(%edx)
	movl %ecx,44(%esp)
	call tig_bounds_check
Ljoin_l147:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 120(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $44,%ecx
	addl %ecx,%eax
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $32,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 120(%esp), %ecx
	movl $-72,%ebx
	addl %ebx,%ecx
	movl $36,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	imull %ecx,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal 120(%esp), %edx
	movl $-72,%ebx
	addl %ebx,%edx
	movl $36,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $1,%edx
	addl %edx,%ebx
	leal 120(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl $36,%eax
	addl %eax,%edx
	movl %ebx,(%edx)
	leal 120(%esp), %edx
	movl $-72,%ebx
	addl %ebx,%edx
	movl %edx,%eax
	call getline_79
Ljoin_l144:
	leal 120(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_129
Ljoin_l169:
	jmp Ljoin_l180
Ljoin_l180:
	movl 24(%esp),%ebp
	jmp Linit_start_73
.section .pcmap_data
Lstackdata_l182:
.long 1
.long 0xffffffb8
.section .pcmap
.long Ljoin_l173
.long Lframe_l183
.section .pcmap_data
Lframe_l183:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l168
.long Lframe_l184
.section .pcmap_data
Lframe_l184:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long Ljoin_l165
.long Lframe_l185
.section .pcmap_data
Lframe_l185:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long 0xffffffa4
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l141
.long Lframe_l186
.section .pcmap_data
Lframe_l186:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long Ljoin_l120
.long Lframe_l187
.section .pcmap_data
Lframe_l187:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long Ljoin_l136
.long Lframe_l188
.section .pcmap_data
Lframe_l188:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
.long 0x4000000a
.long 0xffffffac
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l133
.long Lframe_l189
.section .pcmap_data
Lframe_l189:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long Ljoin_l128
.long Lframe_l190
.section .pcmap_data
Lframe_l190:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l125
.long Lframe_l191
.section .pcmap_data
Lframe_l191:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long Ljoin_l160
.long Lframe_l192
.section .pcmap_data
Lframe_l192:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long 0x40000009
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l153
.long Lframe_l193
.section .pcmap_data
Lframe_l193:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long Ljoin_l150
.long Lframe_l194
.section .pcmap_data
Lframe_l194:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long Ljoin_l147
.long Lframe_l195
.section .pcmap_data
Lframe_l195:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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
.long Ljoin_l144
.long Lframe_l196
.section .pcmap_data
Lframe_l196:
.long 0xffffff88
.long 0x80000004
.long 0xffffff98
.long Lstackdata_l182
.long 0x80000008
.long 0x8000001e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffff9c
.long 0x40000009
.long 0xffffffa0
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

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
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l9:
Lproc_body_start_l8:
	movl %ecx,4(%esp)
	leal 48(%esp), %ecx
	movl %ecx,8(%esp)
	movl $-12,%ecx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	addl %edi,%ecx
	movl %eax,(%ecx)
	leal 48(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%esp),%edi
	movl %edi,(%ecx)
	leal 48(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl 4(%esp),%edi
	movl %edi,(%ecx)
	leal 48(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%ecx),%eax
	leal 48(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %edi
	movl %ecx,20(%esp)
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%ecx
	leal 48(%esp), %edi
	movl %ecx,24(%esp)
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%ecx
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %edx,32(%esp)
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl 20(%esp),%edx
	imull %eax,%edx
	movl 28(%esp),%eax
	subl %edx,%eax
	leal 48(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%edi
	leal 56(%esp), %esp
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 36(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l20:
Lproc_body_start_l19:
	movl %edi,4(%esp)
	leal 36(%esp), %edi
	movl %edi,8(%esp)
	movl $-12,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%esp),%esi
	movl %esi,(%edi)
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	leal 36(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $4,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	leal 36(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $20,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $20,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl %edx,20(%esp)
	movl %eax,%edx
	sarl $31, %edx
	idivl %edi, %eax
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $16,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal -8(%esp), %esp
	leal 44(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 44(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 44(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $20,%ecx
	addl %ecx,%esi
	leal 44(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	leal 44(%esp), %esi
	movl $-44,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call mod_48
Ljoin_l24:
	leal 36(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%edx
	leal 36(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl $0,%edx
	leal 36(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl $0,%eax
	leal 36(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
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
.long 0x8000000c
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l29
.long 8
.long 5
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
	movl (%edx),%edx
Linitialize_continuations_l33:
Lproc_body_start_l32:
	leal 20(%esp), %ecx
	movl %edx,(%esp)
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jge Ljoin_l41
Ljoin_l42:
	jmp LifFalse_55
LifFalse_55:
	movl $0,%edx
	jmp LifEnd_56
Ljoin_l41:
	jmp LifTrue_54
LifTrue_54:
	movl $0,%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $0,%edx
	jmp LifEnd_56
LifEnd_56:
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %eax
	movl %edx,4(%esp)
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%edx
	imull %edx,%ecx
	movl 4(%esp),%edx
	addl %ecx,%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %eax
	movl %edx,8(%esp)
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $24,%eax
	addl %eax,%edx
	movl (%edx),%edx
	cmpl %edx,%ecx
	jg Ljoin_l39
Ljoin_l40:
	jmp LifFalse_59
LifFalse_59:
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	jmp LifEnd_60
Ljoin_l39:
	jmp LifTrue_58
LifTrue_58:
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $24,%eax
	addl %eax,%ecx
	movl (%ecx),%edx
	jmp LifEnd_60
LifEnd_60:
	movl 8(%esp),%ecx
	addl %edx,%ecx
	leal 20(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jge Ljoin_l37
Ljoin_l38:
	jmp LifFalse_63
LifFalse_63:
	movl $0,%edx
	jmp LifEnd_64
Ljoin_l37:
	jmp LifTrue_62
LifTrue_62:
	leal 20(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge Ljoin_l47
Ljoin_l48:
	movl $0,%edx
	jmp Ljoin_l46
Ljoin_l47:
	movl $-1,%edx
	jmp Ljoin_l46
Ljoin_l46:
	jmp LifEnd_64
LifEnd_64:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l35
Ljoin_l36:
	jmp LifFalse_67
LifFalse_67:
	leal 20(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	jmp LifEnd_68
Ljoin_l35:
	jmp LifTrue_66
LifTrue_66:
	movl $-1,%eax
	jmp LifEnd_68
LifEnd_68:
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l55:
Lproc_body_start_l54:
	leal 28(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl %ecx,12(%esp)
	call tig_getchar
Ljoin_l75:
	leal 28(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal Lgbl_70,%edi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	jmp Lloop_start_91
Lloop_start_91:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Lgbl_70,%eax
	leal 28(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l72:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l68
Ljoin_l69:
	jmp LifFalse_89
LifFalse_89:
	movl $0,%edx
	jmp LifEnd_90
Ljoin_l68:
	jmp LifTrue_88
LifTrue_88:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Lgbl_84,%eax
	leal 28(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l67:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l80
Ljoin_l81:
	movl $0,%edx
	jmp Ljoin_l79
Ljoin_l80:
	movl $-1,%edx
	jmp Ljoin_l79
Ljoin_l79:
	jmp LifEnd_90
LifEnd_90:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l63
Ljoin_l64:
	jmp Lloop_end_80
Lloop_end_80:
	leal 28(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 28(%esp), %esp
	ret
Ljoin_l63:
	jmp Lloop_body_92
Lloop_body_92:
	leal -4(%esp), %esp
	leal 32(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 32(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call tig_concat
Ljoin_l62:
	leal 28(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_getchar
Ljoin_l59:
	leal 28(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl %eax,(%edi)
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
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long Lstackdata_l83
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getline_79_gc_data
.section .pcmap
.long Ljoin_l72
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long Lstackdata_l83
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
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
.long getline_79_gc_data
.section .pcmap
.long Ljoin_l67
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long Lstackdata_l83
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
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
.long getline_79_gc_data
.section .pcmap
.long Ljoin_l62
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long Lstackdata_l83
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long getline_79_gc_data
.section .pcmap
.long Ljoin_l59
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long Lstackdata_l83
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl %eax,4(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 44(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l91:
Lproc_body_start_l90:
	movl %edi,8(%esp)
	leal 44(%esp), %edi
	movl %edi,12(%esp)
	movl $-16,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl 4(%esp),%esi
	movl %esi,(%edi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	leal 44(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	movl %edx,24(%esp)
	call tig_print
Ljoin_l103:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 44(%esp), %esi
	movl $-16,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	leal 44(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_size
Ljoin_l100:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_105
Lloop_start_105:
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 44(%esp), %ecx
	movl $-16,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jle Ljoin_l96
Ljoin_l97:
	jmp Lloop_end_101
Lloop_end_101:
	movl $0,%eax
	leal 44(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 52(%esp), %esp
	ret
Ljoin_l96:
	jmp Lloop_body_106
Lloop_body_106:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_102,%esi
	leal 44(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l95:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	leal 44(%esp), %esi
	movl $-16,%edx
	addl %edx,%esi
	movl $12,%edx
	addl %edx,%esi
	movl %edi,(%esi)
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
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long Lstackdata_l109
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffdc
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
.long print_width_94_gc_data
.section .pcmap
.long Ljoin_l100
.long Lframe_l111
.section .pcmap_data
Lframe_l111:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long Lstackdata_l109
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffdc
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
.long print_width_94_gc_data
.section .pcmap
.long Ljoin_l95
.long Lframe_l112
.section .pcmap_data
Lframe_l112:
.long 0x8000000c
.long 0xffffffd4
.long 0xffffffec
.long Lstackdata_l109
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffdc
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
	leal -108(%esp), %esp
	leal 108(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l115:
Lproc_body_start_l114:
	leal 108(%esp), %edx
	movl %edi,12(%esp)
	movl $-72,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl $0,%edi
	leal 108(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl $0,%edi
	leal 108(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl $0,%edi
	leal 108(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl $0,%edi
	leal 108(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl $0,%edi
	leal 108(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl $0,%edi
	leal 108(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $24,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl $1024,%edi
	leal 108(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $28,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 108(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $28,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $2,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%edi
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jg Ljoin_l173
Ljoin_l174:
	jmp Lalc_gc_76
Ljoin_l173:
	jmp Lalc_gc_76
Lalc_gc_76:
	movl %ecx,16(%esp)
	call tig_call_gc
Ljoin_l172:
Lalc_77:
	leal 108(%esp), %edi
	movl $-72,%ecx
	addl %ecx,%edi
	movl $28,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl $2,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	imull %ecx,%edi
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edi,(%ecx)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $4,%ecx
	addl %ecx,%edi
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 108(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl $28,%eax
	addl %eax,%edx
	movl (%edx),%edx
	movl $2,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 108(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	movl $1,%ecx
	jmp Linit_start_73
Linit_start_73:
	leal Lgbl_70,%edx
	movl $4,%eax
	movl %edi,20(%esp)
	movl %ecx,%edi
	imull %eax,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%eax
	movl %eax,%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $1,%edi
	addl %edi,%ecx
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $28,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	cmpl %edi,%ecx
	jle Ljoin_l168
Ljoin_l169:
	jmp Linit_end_74
Linit_end_74:
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $32,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl $0,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $80,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $40,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal Lgbl_70,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $44,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $0,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $48,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 108(%esp), %eax
	movl $-72,%edi
	addl %edi,%eax
	call getline_79
Ljoin_l167:
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $44,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	jmp Lloop_start_129
Lloop_start_129:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 108(%esp), %esi
	movl $-72,%eax
	addl %eax,%esi
	movl $44,%eax
	addl %eax,%esi
	leal 108(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_size
Ljoin_l164:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	cmpl %edi,%eax
	jg Ljoin_l160
Ljoin_l161:
	jmp Lloop_end_108
Lloop_end_108:
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $40,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $48,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $2,%esi
	addl %esi,%edi
	movl %eax,%edx
	sarl $31, %edx
	idivl %edi, %eax
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $56,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $56,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $60,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $48,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $2,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $64,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal -8(%esp), %esp
	leal 116(%esp), %eax
	movl $-72,%edi
	addl %edi,%eax
	leal 116(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $36,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 116(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $60,%ecx
	addl %ecx,%esi
	leal 116(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	leal 116(%esp), %esi
	movl $-116,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call cmfirst_49
Ljoin_l140:
	leal 108(%esp), %edx
	movl $-72,%ecx
	addl %ecx,%edx
	movl $68,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_140
Lloop_start_140:
	leal 108(%esp), %edx
	movl $-72,%ecx
	addl %ecx,%edx
	movl $68,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jge Ljoin_l136
Ljoin_l137:
	jmp Lloop_end_131
Lloop_end_131:
	leal 108(%esp), %edx
	movl $-72,%ecx
	addl %ecx,%edx
	movl $56,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 108(%esp), %ecx
	movl $-72,%edi
	addl %edi,%ecx
	movl $60,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jne Ljoin_l120
Ljoin_l121:
	jmp LifFalse_146
LifFalse_146:
	movl $0,%eax
	jmp LifEnd_147
Ljoin_l120:
	jmp LifTrue_145
LifTrue_145:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_84,%esi
	leal 108(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l119:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	jmp LifEnd_147
LifEnd_147:
	leal 108(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 12(%esp),%edi
	leal 108(%esp), %esp
	ret
Ljoin_l136:
	jmp Lloop_body_141
Lloop_body_141:
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $64,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 108(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $32,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $68,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %edi,32(%esp)
	movl $-104,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $93,%edi
	leal 108(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 108(%esp), %edi
	movl $-108,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_bounds_check
Ljoin_l135:
	leal Cmm.global_area,%edi
	movl %esi,(%edi)
	leal -8(%esp), %esp
	leal 116(%esp), %eax
	movl $-72,%edi
	addl %edi,%eax
	leal 116(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $32,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 116(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $68,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $1,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	imull %ecx,%esi
	addl %esi,%edi
	leal 116(%esp), %esi
	movl $-112,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 116(%esp), %edi
	movl $-116,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	call print_width_94
Ljoin_l132:
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $56,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	subl %esi,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $56,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $56,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l128
Ljoin_l129:
	jmp LifFalse_138
LifFalse_138:
	movl $0,%edi
	jmp LifEnd_139
Ljoin_l128:
	jmp LifTrue_137
LifTrue_137:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_84,%esi
	leal 108(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l127:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $60,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $56,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl $0,%edi
	jmp LifEnd_139
LifEnd_139:
	leal 108(%esp), %eax
	movl $-72,%edi
	addl %edi,%eax
	call cmnext_50
Ljoin_l124:
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $68,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	jmp Lloop_start_140
Ljoin_l160:
	jmp Lloop_body_130
Lloop_body_130:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 108(%esp), %esi
	movl $-72,%eax
	addl %eax,%esi
	movl $44,%eax
	addl %eax,%esi
	leal 108(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_size
Ljoin_l159:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $52,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $48,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 108(%esp), %esi
	movl $-72,%eax
	addl %eax,%esi
	movl $52,%eax
	addl %eax,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jl Ljoin_l155
Ljoin_l156:
	jmp LifFalse_115
LifFalse_115:
	movl $0,%edi
	jmp LifEnd_116
Ljoin_l155:
	jmp LifTrue_114
LifTrue_114:
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $52,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-72,%eax
	addl %eax,%esi
	movl $48,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl $0,%edi
	jmp LifEnd_116
LifEnd_116:
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $36,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 108(%esp), %esi
	movl $-72,%eax
	addl %eax,%esi
	movl $28,%eax
	addl %eax,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jge Ljoin_l153
Ljoin_l154:
	jmp LifFalse_124
LifFalse_124:
	movl $0,%edi
	jmp LifEnd_125
Ljoin_l153:
	jmp LifTrue_123
LifTrue_123:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_117,%esi
	leal 108(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l152:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $1,%esi
	leal 108(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_exit
Ljoin_l149:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	jmp LifEnd_125
LifEnd_125:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 108(%esp), %esi
	movl $-72,%eax
	addl %eax,%esi
	movl $32,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 108(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $36,%ecx
	addl %ecx,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $83,%eax
	leal 108(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 108(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l146:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $44,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $32,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	leal 108(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $36,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl $36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 108(%esp), %eax
	movl $-72,%edi
	addl %edi,%eax
	call getline_79
Ljoin_l143:
	leal 108(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl $44,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	jmp Lloop_start_129
Ljoin_l168:
	jmp Ljoin_l178
Ljoin_l178:
	movl %eax,%edi
	movl 28(%esp),%esi
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
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l167
.long Lframe_l182
.section .pcmap_data
Lframe_l182:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l164
.long Lframe_l183
.section .pcmap_data
Lframe_l183:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l140
.long Lframe_l184
.section .pcmap_data
Lframe_l184:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l119
.long Lframe_l185
.section .pcmap_data
Lframe_l185:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l135
.long Lframe_l186
.section .pcmap_data
Lframe_l186:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l132
.long Lframe_l187
.section .pcmap_data
Lframe_l187:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l127
.long Lframe_l188
.section .pcmap_data
Lframe_l188:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l124
.long Lframe_l189
.section .pcmap_data
Lframe_l189:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l159
.long Lframe_l190
.section .pcmap_data
Lframe_l190:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l152
.long Lframe_l191
.section .pcmap_data
Lframe_l191:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l149
.long Lframe_l192
.section .pcmap_data
Lframe_l192:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l146
.long Lframe_l193
.section .pcmap_data
Lframe_l193:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l143
.long Lframe_l194
.section .pcmap_data
Lframe_l194:
.long 0x80000004
.long 0xffffff94
.long 0xffffffa4
.long Lstackdata_l180
.long 8
.long 30
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb0
.long 0x4000000b
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 18
.long 1
.long 0
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

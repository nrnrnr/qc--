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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l12:
Lproc_body_start_l11:
	movl %edi,4(%esp)
	leal 40(%esp), %edi
	movl %edi,8(%esp)
	movl $-8,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
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
	movl (%esi),%esi
	movl (%esi),%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	movl %edx,20(%esp)
	call tig_ord
Ljoin_l27:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_45,%esi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl %eax,24(%esp)
	call tig_ord
Ljoin_l24:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl 24(%esp),%edx
	cmpl %eax,%edx
	jge Ljoin_l20
Ljoin_l21:
	jmp LifFalse_55
LifFalse_55:
	movl $0,%eax
	jmp LifEnd_56
Ljoin_l20:
	jmp LifTrue_54
LifTrue_54:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_ord
Ljoin_l19:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_50,%esi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl %eax,28(%esp)
	call tig_ord
Ljoin_l16:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl 28(%esp),%edx
	cmpl %eax,%edx
	jle Ljoin_l32
Ljoin_l33:
	movl $0,%eax
	jmp Ljoin_l31
Ljoin_l32:
	movl $-1,%eax
	jmp Ljoin_l31
Ljoin_l31:
	jmp LifEnd_56
LifEnd_56:
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l36:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l27
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0x80000008
.long 0xffffffd8
.long 0xffffffec
.long Lstackdata_l36
.long 8
.long 14
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
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long isdigit_41_gc_data
.section .pcmap
.long Ljoin_l24
.long Lframe_l38
.section .pcmap_data
Lframe_l38:
.long 0x80000008
.long 0xffffffd8
.long 0xffffffec
.long Lstackdata_l36
.long 8
.long 14
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
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long isdigit_41_gc_data
.section .pcmap
.long Ljoin_l19
.long Lframe_l39
.section .pcmap_data
Lframe_l39:
.long 0x80000008
.long 0xffffffd8
.long 0xffffffec
.long Lstackdata_l36
.long 8
.long 14
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
.long 0x4000000b
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
.long Ljoin_l16
.long Lframe_l40
.section .pcmap_data
Lframe_l40:
.long 0x80000008
.long 0xffffffd8
.long 0xffffffec
.long Lstackdata_l36
.long 8
.long 14
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
.long 0
.long 0xfffffff4
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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l43:
Lproc_body_start_l42:
	leal 24(%esp), %edx
	movl %edi,8(%esp)
	movl $-4,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	jmp Lloop_start_70
Lloop_start_70:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 24(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	leal 24(%esp), %edx
	movl %edi,12(%esp)
	movl $-24,%edi
	addl %edi,%edx
	movl (%eax),%edi
	movl %edi,(%edx)
	leal Lgbl_59,%edi
	leal 24(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl %ecx,16(%esp)
	call tig_compare_str
Ljoin_l57:
	leal Cmm.global_area,%edi
	movl 12(%esp),%ecx
	movl %ecx,(%edi)
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l53
Ljoin_l54:
	jmp LifFalse_68
LifFalse_68:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 24(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Lgbl_63,%eax
	leal 24(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l52:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l62
Ljoin_l63:
	movl $0,%edx
	jmp Ljoin_l61
Ljoin_l62:
	movl $-1,%edx
	jmp Ljoin_l61
Ljoin_l61:
	jmp LifEnd_69
Ljoin_l53:
	jmp LifTrue_67
LifTrue_67:
	movl $1,%edx
	jmp LifEnd_69
LifEnd_69:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l48
Ljoin_l49:
	jmp Lloop_end_58
Lloop_end_58:
	movl $0,%eax
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 24(%esp), %esp
	ret
Ljoin_l48:
	jmp Lloop_body_71
Lloop_body_71:
	call tig_getchar
Ljoin_l47:
	leal 24(%esp), %edi
	movl $-4,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $4,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Ljoin_l64
Ljoin_l64:
	movl 16(%esp),%ecx
	jmp Lloop_start_70
.section .pcmap_data
Lstackdata_l66:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l57
.long Lframe_l67
.section .pcmap_data
Lframe_l67:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff8
.long Lstackdata_l66
.long 8
.long 8
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
.long 0xfffffff4
.long 0
.long 0
.long 0
.long skipto_42_gc_data
.section .pcmap
.long Ljoin_l52
.long Lframe_l68
.section .pcmap_data
Lframe_l68:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff8
.long Lstackdata_l66
.long 8
.long 8
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long skipto_42_gc_data
.section .pcmap
.long Ljoin_l47
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff8
.long Lstackdata_l66
.long 8
.long 8
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l72:
Lproc_body_start_l71:
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
	movl %ecx,(%edi)
	movl $0,%edi
	leal 36(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 36(%esp), %eax
	movl $-12,%edi
	addl %edi,%eax
	movl %edx,20(%esp)
	call skipto_42
Ljoin_l93:
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-12,%edi
	addl %edi,%eax
	leal 40(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 40(%esp), %esi
	movl $-40,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call isdigit_41
Ljoin_l90:
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl %eax,(%edi)
	jmp Lloop_start_78
Lloop_start_78:
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-12,%edi
	addl %edi,%eax
	leal 40(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 40(%esp), %esi
	movl $-40,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call isdigit_41
Ljoin_l87:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l83
Ljoin_l84:
	jmp Lloop_end_73
Lloop_end_73:
	leal 36(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 36(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 40(%esp), %esp
	ret
Ljoin_l83:
	jmp Lloop_body_79
Lloop_body_79:
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $10,%esi
	imull %esi,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_ord
Ljoin_l82:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	addl %eax,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal Lgbl_45,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_ord
Ljoin_l79:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	subl %eax,%edi
	leal 36(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call tig_getchar
Ljoin_l76:
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	jmp Lloop_start_78
.section .pcmap_data
Lstackdata_l98:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l93
.long Lframe_l99
.section .pcmap_data
Lframe_l99:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l98
.long 8
.long 12
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
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l90
.long Lframe_l100
.section .pcmap_data
Lframe_l100:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l98
.long 8
.long 12
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
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l87
.long Lframe_l101
.section .pcmap_data
Lframe_l101:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l98
.long 8
.long 12
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
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l82
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l98
.long 8
.long 12
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l79
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l98
.long 8
.long 12
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l76
.long Lframe_l104
.section .pcmap_data
Lframe_l104:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long Lstackdata_l98
.long 8
.long 12
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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l107:
Lproc_body_start_l106:
	leal 24(%esp), %edx
	movl %edi,(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $8,%eax
	addl %eax,%edi
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jg Ljoin_l125
Ljoin_l126:
	jmp Lalc_gc_87
Ljoin_l125:
	jmp Lalc_gc_87
Lalc_gc_87:
	movl %ecx,4(%esp)
	call tig_call_gc
Ljoin_l124:
Lalc_88:
	movl $8,%edi
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edi,(%ecx)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $4,%ecx
	addl %ecx,%edi
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl %ecx,(%edi)
	leal 24(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal -4(%esp), %esp
	leal 28(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 28(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call readint_40
Ljoin_l121:
	leal 24(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 24(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l117
Ljoin_l118:
	jmp LifFalse_96
LifFalse_96:
	movl $0,%eax
	movl %eax,%ecx
	jmp LifEnd_97
Ljoin_l117:
	jmp LifTrue_95
LifTrue_95:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $12,%eax
	addl %eax,%edi
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jg Ljoin_l115
Ljoin_l116:
	jmp Lalc_gc_92
Ljoin_l115:
	jmp Lalc_gc_92
Lalc_gc_92:
	call tig_call_gc
Ljoin_l114:
Lalc_93:
	movl $12,%edi
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edi,(%ecx)
	leal Cmm.global_area,%edi
	movl (%edi),%eax
	movl $4,%edi
	addl %edi,%eax
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $12,%ecx
	addl %ecx,%edi
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	leal 24(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl %edi,(%eax)
	leal 24(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl %eax,8(%esp)
	movl %edi,%eax
	call readlist_81
Ljoin_l111:
	movl $4,%edx
	movl 8(%esp),%ecx
	movl %ecx,%edi
	addl %edx,%edi
	movl %eax,(%edi)
	jmp LifEnd_97
LifEnd_97:
	movl %ecx,%eax
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l131:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l124
.long Lframe_l132
.section .pcmap_data
Lframe_l132:
.long 0x80000004
.long 0xffffffe8
.long 0xffffffec
.long Lstackdata_l131
.long 8
.long 9
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long readlist_81_gc_data
.section .pcmap
.long Ljoin_l121
.long Lframe_l133
.section .pcmap_data
Lframe_l133:
.long 0x80000004
.long 0xffffffe8
.long 0xffffffec
.long Lstackdata_l131
.long 8
.long 9
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long readlist_81_gc_data
.section .pcmap
.long Ljoin_l114
.long Lframe_l134
.section .pcmap_data
Lframe_l134:
.long 0x80000004
.long 0xffffffe8
.long 0xffffffec
.long Lstackdata_l131
.long 8
.long 9
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long readlist_81_gc_data
.section .pcmap
.long Ljoin_l111
.long Lframe_l135
.section .pcmap_data
Lframe_l135:
.long 0x80000004
.long 0xffffffe8
.long 0xffffffec
.long Lstackdata_l131
.long 8
.long 9
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe8
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
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 48(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l138:
Lproc_body_start_l137:
	movl %edi,4(%esp)
	leal 48(%esp), %edi
	movl %edi,8(%esp)
	movl $-12,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl (%esp),%esi
	movl %esi,(%edi)
	leal 48(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 48(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 48(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l160
Ljoin_l161:
	jmp LifFalse_117
LifFalse_117:
	leal 48(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l158
Ljoin_l159:
	jmp LifFalse_113
LifFalse_113:
	leal 48(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	leal 48(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jl Ljoin_l156
Ljoin_l157:
	jmp LifFalse_109
LifFalse_109:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $12,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jg Ljoin_l146
Ljoin_l147:
	jmp Lalc_gc_105
Ljoin_l146:
	jmp Lalc_gc_105
Lalc_gc_105:
	movl %edx,20(%esp)
	call tig_call_gc
Ljoin_l145:
Lalc_106:
	movl $12,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%eax
	movl $4,%edi
	addl %edi,%eax
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $12,%esi
	addl %esi,%edi
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 48(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl %edi,(%eax)
	leal -8(%esp), %esp
	leal 56(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl %eax,32(%esp)
	movl %edi,%eax
	leal 56(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $4,%ecx
	addl %ecx,%esi
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%esi),%esi
	movl %esi,(%ecx)
	leal 56(%esp), %esi
	movl $-56,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call merge_82
Ljoin_l142:
	movl $4,%edx
	movl 24(%esp),%ecx
	movl %ecx,%edi
	addl %edx,%edi
	movl %eax,(%edi)
	jmp LifEnd_110
Ljoin_l156:
	jmp LifTrue_108
LifTrue_108:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $12,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	jg Ljoin_l154
Ljoin_l155:
	jmp Lalc_gc_101
Ljoin_l154:
	jmp Lalc_gc_101
Lalc_gc_101:
	movl %edx,20(%esp)
	call tig_call_gc
Ljoin_l153:
Lalc_102:
	movl $12,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%ecx
	movl $4,%edi
	addl %edi,%ecx
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $12,%esi
	addl %esi,%edi
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 48(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal -8(%esp), %esp
	leal 56(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 56(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl $8,%edx
	addl %edx,%esi
	leal 56(%esp), %edx
	movl %edi,36(%esp)
	movl $-52,%edi
	addl %edi,%edx
	movl (%esi),%edi
	movl %edi,(%edx)
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl 36(%esp),%esi
	movl %esi,(%edi)
	movl %ecx,40(%esp)
	call merge_82
Ljoin_l150:
	movl $4,%edx
	movl 32(%esp),%ecx
	movl %ecx,%edi
	addl %edx,%edi
	movl %eax,(%edi)
	jmp LifEnd_110
LifEnd_110:
	movl 20(%esp),%edx
	jmp LifEnd_114
Ljoin_l158:
	jmp LifTrue_112
LifTrue_112:
	leal 48(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%ecx
	jmp LifEnd_114
LifEnd_114:
	jmp LifEnd_118
Ljoin_l160:
	jmp LifTrue_116
LifTrue_116:
	leal 48(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%ecx
	jmp LifEnd_118
LifEnd_118:
	movl %ecx,%eax
	leal 48(%esp), %ecx
	movl $8,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 56(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l166:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l145
.long Lframe_l167
.section .pcmap_data
Lframe_l167:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe4
.long Lstackdata_l166
.long 8
.long 13
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l142
.long Lframe_l168
.section .pcmap_data
Lframe_l168:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe4
.long Lstackdata_l166
.long 8
.long 13
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffd4
.long 0
.long 0
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
.long merge_82_gc_data
.section .pcmap
.long Ljoin_l153
.long Lframe_l169
.section .pcmap_data
Lframe_l169:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe4
.long Lstackdata_l166
.long 8
.long 13
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Ljoin_l150
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0x8000000c
.long 0xffffffd0
.long 0xffffffe4
.long Lstackdata_l166
.long 8
.long 13
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffd4
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
	leal 64(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 64(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l173:
Lproc_body_start_l172:
	movl %edx,4(%esp)
	leal 64(%esp), %edx
	movl %edx,8(%esp)
	movl $-8,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 64(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 64(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jg Ljoin_l187
Ljoin_l188:
	jmp LifFalse_127
LifFalse_127:
	movl $0,%eax
	movl %edi,20(%esp)
	movl %esi,44(%esp)
	jmp LifEnd_128
Ljoin_l187:
	jmp LifTrue_126
LifTrue_126:
	leal -4(%esp), %esp
	leal 68(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 68(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	movl $10,%ecx
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl %eax,%ecx
	leal 68(%esp), %edx
	movl %edi,24(%esp)
	movl $-68,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	call f_120
Ljoin_l186:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 64(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 64(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $10,%edx
	movl %eax,24(%esp)
	movl %ecx,%eax
	movl %edx,28(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl 28(%esp),%ecx
	idivl %ecx, %eax
	movl $10,%ecx
	imull %ecx,%eax
	movl 24(%esp),%ecx
	subl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_45,%edx
	movl %edi,32(%esp)
	leal 64(%esp), %edi
	movl %edi,36(%esp)
	movl $-64,%edi
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	movl %esi,44(%esp)
	movl 40(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,52(%esp)
	movl %eax,48(%esp)
	call tig_ord
Ljoin_l183:
	leal Cmm.global_area,%edi
	movl 48(%esp),%esi
	movl %esi,(%edi)
	movl 52(%esp),%edi
	addl %eax,%edi
	movl %edi,%eax
	call tig_chr
Ljoin_l180:
	leal 64(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call tig_print
Ljoin_l177:
	leal Cmm.global_area,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	jmp LifEnd_128
LifEnd_128:
	leal 64(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%esi
	movl 20(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l193:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l186
.long Lframe_l194
.section .pcmap_data
Lframe_l194:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd0
.long Lstackdata_l193
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
.long 0xffffffd4
.long 0
.long 0
.long 0
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
.long Ljoin_l183
.long Lframe_l195
.section .pcmap_data
Lframe_l195:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd0
.long Lstackdata_l193
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffd4
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long f_120_gc_data
.section .pcmap
.long Ljoin_l180
.long Lframe_l196
.section .pcmap_data
Lframe_l196:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd0
.long Lstackdata_l193
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffd4
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
.long f_120_gc_data
.section .pcmap
.long Ljoin_l177
.long Lframe_l197
.section .pcmap_data
Lframe_l197:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd0
.long Lstackdata_l193
.long 8
.long 10
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffd4
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l200:
Lproc_body_start_l199:
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
	leal 32(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	jl Ljoin_l216
Ljoin_l217:
	jmp LifFalse_141
LifFalse_141:
	leal 32(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	jg Ljoin_l208
Ljoin_l209:
	jmp LifFalse_137
LifFalse_137:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_45,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	movl %edx,20(%esp)
	call tig_print
Ljoin_l204:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	jmp LifEnd_138
Ljoin_l208:
	jmp LifTrue_136
LifTrue_136:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-8,%edi
	addl %edi,%eax
	leal 36(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,24(%esp)
	call f_120
Ljoin_l207:
	jmp LifEnd_138
LifEnd_138:
	jmp LifEnd_142
Ljoin_l216:
	jmp LifTrue_140
LifTrue_140:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_130,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	movl %edx,20(%esp)
	call tig_print
Ljoin_l215:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-8,%edi
	addl %edi,%eax
	movl $0,%edi
	leal 36(%esp), %esi
	movl $-8,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	subl %esi,%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call f_120
Ljoin_l212:
	jmp LifEnd_142
LifEnd_142:
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
Lstackdata_l222:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l204
.long Lframe_l223
.section .pcmap_data
Lframe_l223:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l222
.long 8
.long 9
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
.long printint_83_gc_data
.section .pcmap
.long Ljoin_l207
.long Lframe_l224
.section .pcmap_data
Lframe_l224:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l222
.long 8
.long 9
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
.long 0
.long printint_83_gc_data
.section .pcmap
.long Ljoin_l215
.long Lframe_l225
.section .pcmap_data
Lframe_l225:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l222
.long 8
.long 9
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
.long printint_83_gc_data
.section .pcmap
.long Ljoin_l212
.long Lframe_l226
.section .pcmap_data
Lframe_l226:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l222
.long 8
.long 9
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l229:
Lproc_body_start_l228:
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
	leal 32(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l243
Ljoin_l244:
	jmp LifFalse_150
LifFalse_150:
	leal -4(%esp), %esp
	leal 36(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 36(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,24(%esp)
	call printint_83
Ljoin_l239:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_59,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l236:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal -4(%esp), %esp
	leal 36(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 36(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal 36(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call printlist_84
Ljoin_l233:
	jmp LifEnd_151
Ljoin_l243:
	jmp LifTrue_149
LifTrue_149:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_63,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	movl %edx,20(%esp)
	call tig_print
Ljoin_l242:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	jmp LifEnd_151
LifEnd_151:
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
Lstackdata_l249:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l239
.long Lframe_l250
.section .pcmap_data
Lframe_l250:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l249
.long 8
.long 8
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
.long printlist_84_gc_data
.section .pcmap
.long Ljoin_l236
.long Lframe_l251
.section .pcmap_data
Lframe_l251:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l249
.long 8
.long 8
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long printlist_84_gc_data
.section .pcmap
.long Ljoin_l233
.long Lframe_l252
.section .pcmap_data
Lframe_l252:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l249
.long 8
.long 8
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
.long printlist_84_gc_data
.section .pcmap
.long Ljoin_l242
.long Lframe_l253
.section .pcmap_data
Lframe_l253:
.long 0x80000008
.long 0xffffffe0
.long 0xfffffff4
.long Lstackdata_l249
.long 8
.long 8
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
.long 0x4000000b
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l256:
Lproc_body_start_l255:
	leal 32(%esp), %edx
	movl %edi,(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl %ecx,4(%esp)
	call tig_getchar
Ljoin_l275:
	leal 32(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 32(%esp), %eax
	movl $-16,%edi
	addl %edi,%eax
	call readlist_81
Ljoin_l272:
	leal 32(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_getchar
Ljoin_l269:
	leal 32(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 32(%esp), %eax
	movl $-16,%edi
	addl %edi,%eax
	call readlist_81
Ljoin_l266:
	leal 32(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl $12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%edi
	addl %edi,%eax
	leal 40(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %edi,16(%esp)
	movl $-36,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	leal 40(%esp), %edi
	movl $-40,%ecx
	addl %ecx,%edi
	movl 16(%esp),%ecx
	movl %ecx,(%edi)
	call merge_82
Ljoin_l263:
	leal -4(%esp), %esp
	leal 36(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl %eax,16(%esp)
	movl %edi,%eax
	leal 36(%esp), %edi
	movl $-36,%ecx
	addl %ecx,%edi
	movl 16(%esp),%ecx
	movl %ecx,(%edi)
	call printlist_84
Ljoin_l260:
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l280:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l275
.long Lframe_l281
.section .pcmap_data
Lframe_l281:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l280
.long 8
.long 7
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l272
.long Lframe_l282
.section .pcmap_data
Lframe_l282:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l280
.long 8
.long 7
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l269
.long Lframe_l283
.section .pcmap_data
Lframe_l283:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l280
.long 8
.long 7
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l266
.long Lframe_l284
.section .pcmap_data
Lframe_l284:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l280
.long 8
.long 7
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l263
.long Lframe_l285
.section .pcmap_data
Lframe_l285:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l280
.long 8
.long 7
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l260
.long Lframe_l286
.section .pcmap_data
Lframe_l286:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe4
.long Lstackdata_l280
.long 8
.long 7
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
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

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
Lgbl_68:
.long 2
.byte 32
.byte 79
.byte 0
Lgbl_78:
.long 1
.byte 10
.byte 0
Lgbl_69:
.long 2
.byte 32
.byte 46
.byte 0
.section .text
printboard_61:
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $-12,%ecx
	movl %eax,12(%esp)
	leal 48(%esp), %eax
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $4,%ecx
	movl %edx,16(%esp)
	movl $-12,%edx
	movl %ebx,20(%esp)
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_81
Lloop_start_81:
	movl $4,%eax
	movl $-12,%ebx
	leal 48(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	movl $4,%ebx
	movl $-12,%edx
	movl %ebp,24(%esp)
	leal 48(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	subl %ecx,%ebx
	cmpl %ebx,%eax
	jle Ljoin_l24
Ljoin_l25:
	jmp Lloop_end_63
Lloop_end_63:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal Lgbl_78,%eax
	movl $-48,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l10:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	movl $0,%ecx
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	movl 16(%esp),%ecx
	movl %ecx,(%ebx)
	movl 20(%esp),%ebx
	movl 24(%esp),%ebp
	leal 48(%esp), %esp
	ret
Ljoin_l24:
	jmp Lloop_body_82
Lloop_body_82:
	movl $0,%ebx
	movl $8,%ebp
	movl $-12,%eax
	leal 48(%esp), %ecx
	addl %eax,%ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	jmp Lloop_start_76
Lloop_start_76:
	movl $8,%ecx
	movl $-12,%ebx
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $1,%ebp
	movl $4,%ebx
	movl $-12,%eax
	leal 48(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	subl %ebp,%ebx
	cmpl %ebx,%ecx
	jle Ljoin_l22
Ljoin_l23:
	jmp Lloop_end_64
Lloop_end_64:
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebx
	leal Lgbl_78,%ecx
	movl $-48,%ebp
	leal 48(%esp), %eax
	addl %ebp,%eax
	movl %ecx,(%eax)
	call tig_print
Ljoin_l13:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $1,%eax
	movl $4,%ebx
	movl $-12,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $4,%eax
	movl $-12,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Ljoin_l30
Ljoin_l30:
	movl 24(%esp),%ebp
	jmp Lloop_start_81
Ljoin_l22:
	jmp Lloop_body_77
Lloop_body_77:
	leal Cmm.global_area,%ebp
	movl (%ebp),%ebx
	leal Cmm.global_area,%ebp
	movl (%ebp),%eax
	movl $12,%ebp
	movl $-12,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $4,%ecx
	movl $-12,%edx
	movl %esi,28(%esp)
	leal 48(%esp), %esi
	addl %edx,%esi
	addl %ecx,%esi
	movl $-44,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%esi),%ecx
	movl %ecx,(%edx)
	movl $16,%ecx
	movl $-40,%edx
	leal 48(%esp), %esi
	addl %edx,%esi
	movl %ecx,(%esi)
	movl $-48,%ecx
	leal 48(%esp), %esi
	addl %ecx,%esi
	movl %ebp,(%esi)
	movl %eax,32(%esp)
	call tig_bounds_check
Ljoin_l21:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $1,%ecx
	movl $4,%edx
	movl $-12,%ebp
	leal 48(%esp), %esi
	addl %ebp,%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ecx,%edx
	imull %eax,%edx
	movl $12,%eax
	movl $-12,%ecx
	leal 48(%esp), %esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-12,%ecx
	leal 48(%esp), %esi
	addl %ecx,%esi
	addl %eax,%esi
	movl (%esi),%eax
	cmpl %eax,%edx
	je Ljoin_l17
Ljoin_l18:
	jmp LifFalse_72
LifFalse_72:
	leal Lgbl_69,%eax
	jmp LifEnd_73
Ljoin_l17:
	jmp LifTrue_71
LifTrue_71:
	leal Lgbl_68,%eax
	jmp LifEnd_73
LifEnd_73:
	movl $-48,%edx
	leal 48(%esp), %esi
	addl %edx,%esi
	movl %eax,(%esi)
	call tig_print
Ljoin_l16:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $1,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 48(%esp), %ebp
	addl %ecx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %eax,%ebx
	movl $8,%eax
	movl $-12,%ebp
	leal 48(%esp), %ecx
	addl %ebp,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Ljoin_l29
Ljoin_l29:
	movl 28(%esp),%esi
	jmp Lloop_start_76
.section .pcmap_data
Lstackdata_l33:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l10
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long printboard_61_gc_data
.section .pcmap
.long Ljoin_l13
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long printboard_61_gc_data
.section .pcmap
.long Ljoin_l21
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
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
.long 0x40000007
.long 0
.long 0
.long 0xfffffff0
.long 0x80000000
.long 0
.long printboard_61_gc_data
.section .pcmap
.long Ljoin_l16
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
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
.long 0x40000007
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long printboard_61_gc_data
.section .text
.section .data
printboard_61_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 11
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
.section .text
tryy_62:
	leal -84(%esp), %esp
	movl $4,%edx
	leal 84(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 84(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l40:
Lproc_body_start_l39:
	movl %eax,12(%esp)
	movl $-12,%eax
	movl %edx,16(%esp)
	leal 84(%esp), %edx
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	movl %ecx,20(%esp)
	leal 84(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-12,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ecx
	movl %ebx,24(%esp)
	leal 84(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	cmpl %edx,%eax
	je Ljoin_l86
Ljoin_l87:
	jmp LifFalse_123
LifFalse_123:
	movl $0,%eax
	movl $8,%edx
	movl $-12,%ecx
	leal 84(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_119
Lloop_start_119:
	movl $8,%eax
	movl $-12,%ebx
	leal 84(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	movl $4,%ebx
	movl $-12,%ecx
	movl %ebp,28(%esp)
	leal 84(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	subl %edx,%ebx
	cmpl %ebx,%eax
	jle Ljoin_l81
Ljoin_l82:
	jmp Lloop_end_86
Lloop_end_86:
	movl $0,%eax
	movl 28(%esp),%ebp
	jmp LifEnd_124
Ljoin_l81:
	jmp Lloop_body_120
Lloop_body_120:
	leal Cmm.global_area,%ebx
	movl (%ebx),%ebp
	movl $8,%ebx
	movl $-12,%eax
	leal 84(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	movl $-12,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-80,%eax
	leal 84(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $25,%eax
	movl $-76,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-84,%eax
	leal 84(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	call tig_bounds_check
Ljoin_l80:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	movl $4,%eax
	movl $1,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %ebp,%ecx
	imull %eax,%ecx
	movl $8,%eax
	movl $-12,%ebp
	leal 84(%esp), %ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l76
Ljoin_l77:
	jmp LifFalse_93
LifFalse_93:
	movl $0,%eax
	movl %esi,32(%esp)
	jmp LifEnd_94
Ljoin_l76:
	jmp LifTrue_92
LifTrue_92:
	leal Cmm.global_area,%ebp
	movl (%ebp),%ebx
	movl $16,%ebp
	movl $-12,%eax
	leal 84(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $4,%eax
	movl $-12,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	movl $-12,%ecx
	movl %esi,32(%esp)
	leal 84(%esp), %esi
	addl %ecx,%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %eax,%edx
	movl $-80,%eax
	leal 84(%esp), %esi
	addl %eax,%esi
	movl %edx,(%esi)
	movl $25,%edx
	movl $-76,%esi
	leal 84(%esp), %eax
	addl %esi,%eax
	movl %edx,(%eax)
	movl $-84,%eax
	leal 84(%esp), %edx
	addl %eax,%edx
	movl %ebp,(%edx)
	call tig_bounds_check
Ljoin_l75:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $4,%eax
	movl $1,%ebx
	movl $4,%ecx
	movl $-12,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $8,%ebp
	movl $-12,%edx
	leal 84(%esp), %esi
	addl %edx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ecx,%ebp
	addl %ebx,%ebp
	imull %eax,%ebp
	movl $16,%eax
	movl $-12,%ebx
	leal 84(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $0,%eax
	cmpl %eax,%ebp
	je Lif_true_l91
Lif_false_l92:
	movl $0,%eax
	jmp Lend_if_l93
Lif_true_l91:
	movl $1,%eax
	jmp Lend_if_l93
Lend_if_l93:
	jmp LifEnd_94
LifEnd_94:
	movl $0,%ebp
	cmpl %ebp,%eax
	jne Ljoin_l71
Ljoin_l72:
	jmp LifFalse_99
LifFalse_99:
	movl $0,%eax
	movl %edi,36(%esp)
	jmp LifEnd_100
Ljoin_l71:
	jmp LifTrue_98
LifTrue_98:
	leal Cmm.global_area,%ebp
	movl (%ebp),%ebx
	movl $20,%ebp
	movl $-12,%esi
	leal 84(%esp), %eax
	addl %esi,%eax
	movl (%eax),%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	movl $4,%esi
	movl $-12,%eax
	leal 84(%esp), %ecx
	addl %eax,%ecx
	addl %esi,%ecx
	movl (%ecx),%esi
	movl $7,%ecx
	movl $8,%eax
	movl $-12,%edx
	movl %edi,36(%esp)
	leal 84(%esp), %edi
	addl %edx,%edi
	addl %eax,%edi
	movl (%edi),%eax
	addl %ecx,%eax
	subl %esi,%eax
	movl $-80,%esi
	leal 84(%esp), %ecx
	addl %esi,%ecx
	movl %eax,(%ecx)
	movl $25,%eax
	movl $-76,%ecx
	leal 84(%esp), %esi
	addl %ecx,%esi
	movl %eax,(%esi)
	movl $-84,%eax
	leal 84(%esp), %esi
	addl %eax,%esi
	movl %ebp,(%esi)
	call tig_bounds_check
Ljoin_l70:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $4,%eax
	movl $1,%ebx
	movl $4,%ecx
	movl $-12,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $7,%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 84(%esp), %edi
	addl %esi,%edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ebp,%edx
	subl %ecx,%edx
	addl %ebx,%edx
	imull %eax,%edx
	movl $20,%eax
	movl $-12,%ebx
	leal 84(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $0,%eax
	cmpl %eax,%edx
	je Lif_true_l94
Lif_false_l95:
	movl $0,%eax
	jmp Lend_if_l96
Lif_true_l94:
	movl $1,%eax
	jmp Lend_if_l96
Lend_if_l96:
	jmp LifEnd_100
LifEnd_100:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l66
Ljoin_l67:
	jmp LifFalse_117
LifFalse_117:
	movl $0,%eax
	jmp LifEnd_118
Ljoin_l66:
	jmp LifTrue_116
LifTrue_116:
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $8,%eax
	movl $-12,%ebx
	leal 84(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 84(%esp), %ebp
	addl %ecx,%ebp
	addl %ebx,%ebp
	movl $-80,%ebx
	leal 84(%esp), %ecx
	addl %ebx,%ecx
	movl (%ebp),%ebx
	movl %ebx,(%ecx)
	movl $26,%ecx
	movl $-76,%ebx
	leal 84(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl $-84,%ecx
	leal 84(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl %edx,40(%esp)
	call tig_bounds_check
Ljoin_l65:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $8,%ebp
	movl $-12,%ebx
	leal 84(%esp), %edi
	addl %ebx,%edi
	addl %ebp,%edi
	movl (%edi),%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $16,%eax
	movl $-12,%ebp
	leal 84(%esp), %edx
	addl %ebp,%edx
	movl (%edx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $4,%ebp
	movl $-12,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	addl %ebp,%edi
	movl (%edi),%ebp
	movl $8,%edi
	movl $-12,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	addl %ebp,%edi
	movl $-80,%ebp
	leal 84(%esp), %ebx
	addl %ebp,%ebx
	movl %edi,(%ebx)
	movl $26,%ebx
	movl $-76,%edi
	leal 84(%esp), %ebp
	addl %edi,%ebp
	movl %ebx,(%ebp)
	movl $-84,%ebx
	leal 84(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl %ecx,44(%esp)
	call tig_bounds_check
Ljoin_l62:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $4,%ebp
	movl $-12,%ebx
	leal 84(%esp), %edi
	addl %ebx,%edi
	addl %ebp,%edi
	movl (%edi),%ebp
	movl $8,%edi
	movl $-12,%ebx
	leal 84(%esp), %esi
	addl %ebx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	addl %ebp,%edi
	addl %edx,%edi
	imull %ecx,%edi
	movl $16,%ecx
	movl $-12,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %edi,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $20,%eax
	movl $-12,%edi
	leal 84(%esp), %edx
	addl %edi,%edx
	movl (%edx),%edi
	addl %eax,%edi
	movl (%edi),%eax
	movl $4,%edi
	movl $-12,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	addl %edi,%ebp
	movl (%ebp),%edi
	movl $7,%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 84(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ebp,%edx
	subl %edi,%edx
	movl $-80,%edi
	leal 84(%esp), %ebp
	addl %edi,%ebp
	movl %edx,(%ebp)
	movl $26,%edx
	movl $-76,%ebp
	leal 84(%esp), %edi
	addl %ebp,%edi
	movl %edx,(%edi)
	movl $-84,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	movl %eax,(%edi)
	movl %ecx,48(%esp)
	call tig_bounds_check
Ljoin_l59:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $4,%edi
	movl $-12,%ebp
	leal 84(%esp), %ebx
	addl %ebp,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl $7,%ebx
	movl $8,%ebp
	movl $-12,%esi
	movl %eax,52(%esp)
	leal 84(%esp), %eax
	addl %esi,%eax
	addl %ebp,%eax
	movl (%eax),%ebp
	addl %ebx,%ebp
	subl %edi,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $20,%ecx
	movl $-12,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebp,%ecx
	movl 52(%esp),%ebp
	movl %ebp,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebp
	movl $12,%ecx
	movl $-12,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	movl $-12,%edi
	leal 84(%esp), %ebx
	addl %edi,%ebx
	addl %edx,%ebx
	movl $-80,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	movl (%ebx),%edx
	movl %edx,(%edi)
	movl $27,%edx
	movl $-76,%edi
	leal 84(%esp), %ebx
	addl %edi,%ebx
	movl %edx,(%ebx)
	movl $-84,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call tig_bounds_check
Ljoin_l56:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	movl $8,%eax
	movl $-12,%ebp
	leal 84(%esp), %ecx
	addl %ebp,%ecx
	addl %eax,%ecx
	movl $4,%eax
	movl $1,%ebp
	movl $4,%edx
	movl $-12,%ebx
	leal 84(%esp), %edi
	addl %ebx,%edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ebp,%edx
	imull %eax,%edx
	movl $12,%eax
	movl $-12,%ebp
	leal 84(%esp), %edi
	addl %ebp,%edi
	movl (%edi),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	leal -4(%esp), %esp
	movl $-12,%eax
	leal 88(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	movl $4,%ecx
	movl $-12,%ebp
	leal 88(%esp), %edi
	addl %ebp,%edi
	addl %ecx,%edi
	movl (%edi),%ecx
	addl %edx,%ecx
	movl $-88,%edx
	leal 88(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	call tryy_62
Ljoin_l53:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	movl $-12,%edi
	leal 84(%esp), %ebp
	addl %edi,%ebp
	addl %edx,%ebp
	movl $-80,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	movl (%ebp),%edx
	movl %edx,(%edi)
	movl $29,%edx
	movl $-76,%edi
	leal 84(%esp), %ebp
	addl %edi,%ebp
	movl %edx,(%ebp)
	movl $-84,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,56(%esp)
	call tig_bounds_check
Ljoin_l50:
	leal Cmm.global_area,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $8,%ebp
	movl $-12,%edi
	leal 84(%esp), %ebx
	addl %edi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $16,%eax
	movl $-12,%ebp
	leal 84(%esp), %edx
	addl %ebp,%edx
	movl (%edx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $4,%ebp
	movl $-12,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl $8,%ebx
	movl $-12,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	addl %ebp,%ebx
	movl $-80,%ebp
	leal 84(%esp), %edi
	addl %ebp,%edi
	movl %ebx,(%edi)
	movl $29,%ebx
	movl $-76,%edi
	leal 84(%esp), %ebp
	addl %edi,%ebp
	movl %ebx,(%ebp)
	movl $-84,%ebx
	leal 84(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl %ecx,60(%esp)
	call tig_bounds_check
Ljoin_l47:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $4,%ecx
	movl $1,%edx
	movl $4,%ebp
	movl $-12,%ebx
	leal 84(%esp), %edi
	addl %ebx,%edi
	addl %ebp,%edi
	movl (%edi),%ebp
	movl $8,%edi
	movl $-12,%ebx
	leal 84(%esp), %esi
	addl %ebx,%esi
	addl %edi,%esi
	movl (%esi),%edi
	addl %ebp,%edi
	addl %edx,%edi
	imull %ecx,%edi
	movl $16,%ecx
	movl $-12,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %edi,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $20,%eax
	movl $-12,%edi
	leal 84(%esp), %edx
	addl %edi,%edx
	movl (%edx),%edi
	addl %eax,%edi
	movl (%edi),%eax
	movl $4,%edi
	movl $-12,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	addl %edi,%ebp
	movl (%ebp),%edi
	movl $7,%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 84(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ebp,%edx
	subl %edi,%edx
	movl $-80,%edi
	leal 84(%esp), %ebp
	addl %edi,%ebp
	movl %edx,(%ebp)
	movl $29,%edx
	movl $-76,%ebp
	leal 84(%esp), %edi
	addl %ebp,%edi
	movl %edx,(%edi)
	movl $-84,%edx
	leal 84(%esp), %edi
	addl %edx,%edi
	movl %eax,(%edi)
	movl %ecx,64(%esp)
	call tig_bounds_check
Ljoin_l44:
	leal Cmm.global_area,%eax
	movl 64(%esp),%ebx
	movl %ebx,(%eax)
	movl $0,%eax
	movl $4,%ebx
	movl $1,%edx
	movl $4,%ecx
	movl $-12,%ebp
	leal 84(%esp), %esi
	addl %ebp,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	movl $7,%esi
	movl $8,%ebp
	movl $-12,%edi
	movl %eax,68(%esp)
	leal 84(%esp), %eax
	addl %edi,%eax
	addl %ebp,%eax
	movl (%eax),%ebp
	addl %esi,%ebp
	subl %ecx,%ebp
	addl %edx,%ebp
	imull %ebx,%ebp
	movl $20,%ebx
	movl $-12,%edx
	leal 84(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ebp,%ebx
	movl 68(%esp),%ebp
	movl %ebp,(%ebx)
	movl $0,%ebx
	jmp LifEnd_118
LifEnd_118:
	movl $1,%ebx
	movl $8,%ebp
	movl $-12,%edx
	leal 84(%esp), %ecx
	addl %edx,%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %ebx,%ebp
	movl $8,%ebx
	movl $-12,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %ebp,(%edx)
	jmp Ljoin_l97
Ljoin_l97:
	movl 36(%esp),%edi
	movl 32(%esp),%esi
	movl 28(%esp),%ebp
	jmp Lloop_start_119
Ljoin_l86:
	jmp LifTrue_122
LifTrue_122:
	movl $-12,%ebx
	leal 84(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	call printboard_61
Ljoin_l85:
	jmp LifEnd_124
LifEnd_124:
	movl $4,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%ebx
	leal 88(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l99:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l80
.long Lframe_l100
.section .pcmap_data
Lframe_l100:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
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
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l75
.long Lframe_l101
.section .pcmap_data
Lframe_l101:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0x4000000b
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
.long 0
.long 0
.long 0
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
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l70
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
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
.long 0
.long 0
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
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l65
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l62
.long Lframe_l104
.section .pcmap_data
Lframe_l104:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0
.long 0xffffffd8
.long 0
.long 0
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l59
.long Lframe_l105
.section .pcmap_data
Lframe_l105:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l56
.long Lframe_l106
.section .pcmap_data
Lframe_l106:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l53
.long Lframe_l107
.section .pcmap_data
Lframe_l107:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l50
.long Lframe_l108
.section .pcmap_data
Lframe_l108:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0xffffffe4
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
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l47
.long Lframe_l109
.section .pcmap_data
Lframe_l109:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l44
.long Lframe_l110
.section .pcmap_data
Lframe_l110:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l85
.long Lframe_l111
.section .pcmap_data
Lframe_l111:
.long 0xffffffac
.long 0x80000008
.long 0xffffffc0
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc4
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .text
.section .data
tryy_62_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 27
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
.long 0
.long 0
.section .text
tiger_main:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l114:
Lproc_body_start_l113:
	movl $-24,%ecx
	movl %eax,(%esp)
	leal 64(%esp), %eax
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $4,%ecx
	movl %edx,4(%esp)
	movl $-24,%edx
	movl %ebx,8(%esp)
	leal 64(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $2,%ebx
	movl $4,%ecx
	movl $-24,%edx
	movl %ebp,12(%esp)
	leal 64(%esp), %ebp
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
	jg Ljoin_l145
Ljoin_l146:
	jmp Lalc_38
Ljoin_l145:
	jmp Lalc_gc_37
Lalc_gc_37:
	call tig_call_gc
Ljoin_l144:
	jmp Lalc_38
Lalc_38:
	movl $4,%eax
	movl $2,%ecx
	movl $4,%edx
	movl $-24,%ebx
	leal 64(%esp), %ebp
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
	movl $4,%ebp
	movl $-24,%ebx
	movl %esi,16(%esp)
	leal 64(%esp), %esi
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
	movl $4,%edx
	movl $-24,%ebp
	leal 64(%esp), %ecx
	addl %ebp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $1,%edx
	jmp Linit_start_34
Linit_start_34:
	movl $0,%ecx
	movl $4,%ebp
	movl %edx,%esi
	imull %ebp,%esi
	movl %eax,%ebp
	addl %esi,%ebp
	movl %ecx,(%ebp)
	movl $1,%ecx
	addl %ecx,%edx
	movl $1,%ecx
	movl $4,%ebp
	movl $-24,%esi
	leal 64(%esp), %ebx
	addl %esi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	cmpl %ebp,%edx
	jle Ljoin_l140
Ljoin_l141:
	jmp Linit_end_35
Linit_end_35:
	movl $8,%ebp
	movl $-24,%ecx
	leal 64(%esp), %ebx
	addl %ecx,%ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $2,%ebx
	movl $4,%ebp
	movl $-24,%ecx
	leal 64(%esp), %esi
	addl %ecx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	imull %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	addl %ebp,%ebx
	leal space_end,%ebp
	movl (%ebp),%eax
	cmpl %eax,%ebx
	jg Ljoin_l138
Ljoin_l139:
	jmp Lalc_46
Ljoin_l138:
	jmp Lalc_gc_45
Lalc_gc_45:
	call tig_call_gc
Ljoin_l137:
	jmp Lalc_46
Lalc_46:
	movl $4,%eax
	movl $2,%ecx
	movl $4,%edx
	movl $-24,%ebx
	leal 64(%esp), %ebp
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
	movl $4,%ebp
	movl $-24,%ebx
	leal 64(%esp), %esi
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
	movl $4,%edx
	movl $-24,%ebp
	leal 64(%esp), %ecx
	addl %ebp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $1,%edx
	jmp Linit_start_42
Linit_start_42:
	movl $0,%ecx
	movl $4,%ebp
	movl %edx,%esi
	imull %ebp,%esi
	movl %eax,%ebp
	addl %esi,%ebp
	movl %ecx,(%ebp)
	movl $1,%ecx
	addl %ecx,%edx
	movl $1,%ecx
	movl $4,%ebp
	movl $-24,%esi
	leal 64(%esp), %ebx
	addl %esi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	cmpl %ebp,%edx
	jle Ljoin_l133
Ljoin_l134:
	jmp Linit_end_43
Linit_end_43:
	movl $12,%ebp
	movl $-24,%ecx
	leal 64(%esp), %ebx
	addl %ecx,%ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $2,%ebx
	movl $1,%ebp
	movl $4,%ecx
	movl $-24,%esi
	leal 64(%esp), %edx
	addl %esi,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	movl $-24,%esi
	movl %edi,20(%esp)
	leal 64(%esp), %edi
	addl %esi,%edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ecx,%edx
	subl %ebp,%edx
	addl %ebx,%edx
	imull %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	addl %edx,%ebx
	leal space_end,%edx
	movl (%edx),%eax
	cmpl %eax,%ebx
	jg Ljoin_l131
Ljoin_l132:
	jmp Lalc_53
Ljoin_l131:
	jmp Lalc_gc_52
Lalc_gc_52:
	call tig_call_gc
Ljoin_l130:
	jmp Lalc_53
Lalc_53:
	movl $4,%eax
	movl $2,%ecx
	movl $1,%edx
	movl $4,%ebx
	movl $-24,%ebp
	leal 64(%esp), %edi
	addl %ebp,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl $4,%edi
	movl $-24,%ebp
	leal 64(%esp), %esi
	addl %ebp,%esi
	addl %edi,%esi
	movl (%esi),%edi
	addl %ebx,%edi
	subl %edx,%edi
	addl %ecx,%edi
	imull %eax,%edi
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl %edi,(%ecx)
	movl $4,%ecx
	leal Cmm.global_area,%edi
	movl (%edi),%eax
	addl %ecx,%eax
	movl $4,%ecx
	movl $2,%edi
	movl $1,%edx
	movl $4,%ebx
	movl $-24,%esi
	leal 64(%esp), %ebp
	addl %esi,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl $4,%ebp
	movl $-24,%esi
	movl %eax,24(%esp)
	leal 64(%esp), %eax
	addl %esi,%eax
	addl %ebp,%eax
	movl (%eax),%ebp
	addl %ebx,%ebp
	subl %edx,%ebp
	addl %edi,%ebp
	imull %ecx,%ebp
	leal Cmm.global_area,%ecx
	movl (%ecx),%edi
	addl %ebp,%edi
	leal Cmm.global_area,%ebp
	movl %edi,(%ebp)
	movl 24(%esp),%ebp
	movl $1,%edi
	movl $4,%ecx
	movl $-24,%edx
	leal 64(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $4,%ebx
	movl $-24,%edx
	leal 64(%esp), %eax
	addl %edx,%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %ecx,%ebx
	subl %edi,%ebx
	movl %ebx,(%ebp)
	movl $1,%ebx
	jmp Linit_start_49
Linit_start_49:
	movl $0,%edi
	movl $4,%ecx
	movl %ebx,%eax
	imull %ecx,%eax
	movl %ebp,%ecx
	addl %eax,%ecx
	movl %edi,(%ecx)
	movl $1,%ecx
	addl %ecx,%ebx
	movl $1,%ecx
	movl $1,%edi
	movl $4,%eax
	movl $-24,%edx
	leal 64(%esp), %esi
	addl %edx,%esi
	addl %eax,%esi
	movl (%esi),%eax
	movl $4,%esi
	movl $-24,%edx
	movl %ebp,28(%esp)
	leal 64(%esp), %ebp
	addl %edx,%ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	addl %eax,%esi
	subl %edi,%esi
	addl %ecx,%esi
	cmpl %esi,%ebx
	jle Ljoin_l126
Ljoin_l127:
	jmp Linit_end_50
Linit_end_50:
	movl $16,%esi
	movl $-24,%ecx
	leal 64(%esp), %edi
	addl %ecx,%edi
	addl %esi,%edi
	movl 28(%esp),%esi
	movl %esi,(%edi)
	movl $4,%esi
	movl $2,%edi
	movl $1,%ecx
	movl $4,%eax
	movl $-24,%ebp
	leal 64(%esp), %edx
	addl %ebp,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-24,%ebp
	leal 64(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	subl %ecx,%edx
	addl %edi,%edx
	imull %esi,%edx
	leal Cmm.global_area,%esi
	movl (%esi),%edi
	addl %edx,%edi
	leal space_end,%edx
	movl (%edx),%esi
	cmpl %esi,%edi
	jg Ljoin_l124
Ljoin_l125:
	jmp Lalc_60
Ljoin_l124:
	jmp Lalc_gc_59
Lalc_gc_59:
	call tig_call_gc
Ljoin_l123:
	jmp Lalc_60
Lalc_60:
	movl $4,%eax
	movl $2,%ecx
	movl $1,%edx
	movl $4,%esi
	movl $-24,%edi
	leal 64(%esp), %ebx
	addl %edi,%ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	movl $4,%ebx
	movl $-24,%edi
	leal 64(%esp), %ebp
	addl %edi,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %esi,%ebx
	subl %edx,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl %ebx,(%ecx)
	movl $4,%ecx
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	addl %ecx,%eax
	movl $4,%ecx
	movl $2,%ebx
	movl $1,%edx
	movl $4,%esi
	movl $-24,%ebp
	leal 64(%esp), %edi
	addl %ebp,%edi
	addl %esi,%edi
	movl (%edi),%esi
	movl $4,%edi
	movl $-24,%ebp
	movl %eax,32(%esp)
	leal 64(%esp), %eax
	addl %ebp,%eax
	addl %edi,%eax
	movl (%eax),%edi
	addl %esi,%edi
	subl %edx,%edi
	addl %ebx,%edi
	imull %ecx,%edi
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebx
	addl %edi,%ebx
	leal Cmm.global_area,%edi
	movl %ebx,(%edi)
	movl 32(%esp),%ebx
	movl $1,%edi
	movl $4,%ecx
	movl $-24,%edx
	leal 64(%esp), %esi
	addl %edx,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	movl $4,%esi
	movl $-24,%edx
	leal 64(%esp), %eax
	addl %edx,%eax
	addl %esi,%eax
	movl (%eax),%esi
	addl %ecx,%esi
	subl %edi,%esi
	movl %esi,(%ebx)
	movl $1,%esi
	jmp Linit_start_56
Linit_start_56:
	movl $0,%edi
	movl $4,%ecx
	movl %esi,%eax
	imull %ecx,%eax
	movl %ebx,%ecx
	addl %eax,%ecx
	movl %edi,(%ecx)
	movl $1,%ecx
	addl %ecx,%esi
	movl $1,%ecx
	movl $1,%edi
	movl $4,%eax
	movl $-24,%edx
	leal 64(%esp), %ebp
	addl %edx,%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $4,%ebp
	movl $-24,%edx
	movl %ebx,36(%esp)
	leal 64(%esp), %ebx
	addl %edx,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %eax,%ebp
	subl %edi,%ebp
	addl %ecx,%ebp
	cmpl %ebp,%esi
	jle Ljoin_l119
Ljoin_l120:
	jmp Linit_end_57
Linit_end_57:
	movl $20,%ebp
	movl $-24,%ecx
	leal 64(%esp), %edi
	addl %ecx,%edi
	addl %ebp,%edi
	movl 36(%esp),%ebp
	movl %ebp,(%edi)
	leal -4(%esp), %esp
	movl $-24,%ebp
	leal 68(%esp), %edi
	addl %ebp,%edi
	movl %edi,%eax
	movl $0,%edi
	movl $-68,%ebp
	leal 68(%esp), %ecx
	addl %ebp,%ecx
	movl %edi,(%ecx)
	call tryy_62
Ljoin_l118:
	movl $0,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	movl 16(%esp),%esi
	movl 20(%esp),%edi
	leal 64(%esp), %esp
	ret
Ljoin_l119:
	jmp Ljoin_l150
Ljoin_l150:
	movl 36(%esp),%ebx
	jmp Linit_start_56
Ljoin_l126:
	jmp Ljoin_l151
Ljoin_l151:
	movl 28(%esp),%ebp
	jmp Linit_start_49
Ljoin_l133:
	jmp Linit_start_42
Ljoin_l140:
	jmp Linit_start_34
.section .pcmap_data
Lstackdata_l153:
.long 1
.long 0xffffffe8
.section .pcmap
.long Ljoin_l144
.long Lframe_l154
.section .pcmap_data
Lframe_l154:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffc4
.long Lstackdata_l153
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l137
.long Lframe_l155
.section .pcmap_data
Lframe_l155:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffc4
.long Lstackdata_l153
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd0
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l130
.long Lframe_l156
.section .pcmap_data
Lframe_l156:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffc4
.long Lstackdata_l153
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd0
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l123
.long Lframe_l157
.section .pcmap_data
Lframe_l157:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffc4
.long Lstackdata_l153
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd0
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l118
.long Lframe_l158
.section .pcmap_data
Lframe_l158:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffc4
.long Lstackdata_l153
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd0
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 6
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.long 14
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 1
.long 0

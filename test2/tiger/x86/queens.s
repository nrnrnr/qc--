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
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	leal 64(%esp), %edx
	movl %edi,12(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl $0,%edi
	leal 64(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	jmp Lloop_start_81
Lloop_start_81:
	leal 64(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl $4,%eax
	addl %eax,%edi
	movl (%edi),%edi
	leal 64(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%edi
	jle Ljoin_l24
Ljoin_l25:
	jmp Lloop_end_63
Lloop_end_63:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_78,%eax
	leal 64(%esp), %edx
	movl %edi,16(%esp)
	movl $-64,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl %ecx,20(%esp)
	call tig_print
Ljoin_l10:
	leal Cmm.global_area,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 64(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%edi
	leal 64(%esp), %esp
	ret
Ljoin_l24:
	jmp Lloop_body_82
Lloop_body_82:
	movl $0,%edi
	leal 64(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	jmp Lloop_start_76
Lloop_start_76:
	leal 64(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	leal 64(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%edi
	jle Ljoin_l22
Ljoin_l23:
	jmp Lloop_end_64
Lloop_end_64:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_78,%eax
	leal 64(%esp), %edx
	movl %edi,24(%esp)
	movl $-64,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl %ecx,20(%esp)
	call tig_print
Ljoin_l13:
	leal Cmm.global_area,%edi
	movl 24(%esp),%edx
	movl %edx,(%edi)
	leal 64(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl $1,%edx
	addl %edx,%edi
	leal 64(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %edi,(%edx)
	jmp Ljoin_l30
Ljoin_l30:
	movl 20(%esp),%ecx
	jmp Lloop_start_81
Ljoin_l22:
	jmp Lloop_body_77
Lloop_body_77:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %edx
	movl %edi,28(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl $12,%edx
	addl %edx,%edi
	movl (%edi),%edi
	leal 64(%esp), %edx
	movl %edi,32(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl $4,%edi
	addl %edi,%edx
	leal 64(%esp), %edi
	movl %edi,36(%esp)
	movl $-60,%edi
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	movl %esi,44(%esp)
	movl 40(%esp),%esi
	addl %esi,%edi
	movl (%edx),%esi
	movl %esi,(%edi)
	movl $16,%edi
	leal 64(%esp), %esi
	movl $-56,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal 64(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	movl %ecx,20(%esp)
	movl %eax,48(%esp)
	call tig_bounds_check
Ljoin_l21:
	leal Cmm.global_area,%edi
	movl 48(%esp),%esi
	movl %esi,(%edi)
	leal 64(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 64(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 64(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
	je Ljoin_l17
Ljoin_l18:
	jmp LifFalse_72
LifFalse_72:
	leal Lgbl_69,%edi
	jmp LifEnd_73
Ljoin_l17:
	jmp LifTrue_71
LifTrue_71:
	leal Lgbl_68,%edi
	jmp LifEnd_73
LifEnd_73:
	leal 64(%esp), %esi
	movl $-64,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call tig_print
Ljoin_l16:
	leal Cmm.global_area,%edi
	movl 28(%esp),%esi
	movl %esi,(%edi)
	leal 64(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	leal 64(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl $8,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	jmp Ljoin_l29
Ljoin_l29:
	movl 44(%esp),%esi
	movl 20(%esp),%ecx
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
.long 0xffffffc0
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffcc
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
.long 0x80000000
.long 0
.long printboard_61_gc_data
.section .pcmap
.long Ljoin_l13
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffcc
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
.long 0x80000000
.long 0
.long printboard_61_gc_data
.section .pcmap
.long Ljoin_l21
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffcc
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
.long 0xfffffff0
.long 0x80000000
.long 0
.long printboard_61_gc_data
.section .pcmap
.long Ljoin_l16
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0xffffffc0
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffcc
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
	leal -60(%esp), %esp
	leal 60(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 60(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l40:
Lproc_body_start_l39:
	movl %edx,12(%esp)
	leal 60(%esp), %edx
	movl %edx,16(%esp)
	movl $-12,%edx
	movl %edx,20(%esp)
	movl 16(%esp),%edx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 60(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 60(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 60(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	je Ljoin_l86
Ljoin_l87:
	jmp LifFalse_123
LifFalse_123:
	movl $0,%edx
	leal 60(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	jmp Lloop_start_119
Lloop_start_119:
	leal 60(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 60(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $1,%eax
	subl %eax,%ecx
	cmpl %ecx,%edx
	jle Ljoin_l81
Ljoin_l82:
	jmp Lloop_end_86
Lloop_end_86:
	movl $0,%eax
	jmp LifEnd_124
Ljoin_l81:
	jmp Lloop_body_120
Lloop_body_120:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl %edi,28(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	leal 60(%esp), %edi
	movl %edi,32(%esp)
	movl $-56,%edi
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	movl %esi,40(%esp)
	movl 36(%esp),%esi
	addl %esi,%edi
	movl (%edx),%esi
	movl %esi,(%edi)
	movl $25,%edi
	leal 60(%esp), %esi
	movl $-52,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %eax,44(%esp)
	call tig_bounds_check
Ljoin_l80:
	leal Cmm.global_area,%edi
	movl 44(%esp),%esi
	movl %esi,(%edi)
	leal 60(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l76
Ljoin_l77:
	jmp LifFalse_93
LifFalse_93:
	movl $0,%edi
	jmp LifEnd_94
Ljoin_l76:
	jmp LifTrue_92
LifTrue_92:
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 60(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $16,%eax
	addl %eax,%edi
	movl (%edi),%edi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $25,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call tig_bounds_check
Ljoin_l75:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $0,%eax
	cmpl %eax,%esi
	je Ljoin_l92
Ljoin_l93:
	movl $0,%edi
	jmp Ljoin_l91
Ljoin_l92:
	movl $-1,%edi
	jmp Ljoin_l91
Ljoin_l91:
	jmp LifEnd_94
LifEnd_94:
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l71
Ljoin_l72:
	jmp LifFalse_99
LifFalse_99:
	movl $0,%edi
	jmp LifEnd_100
Ljoin_l71:
	jmp LifTrue_98
LifTrue_98:
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 60(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $20,%eax
	addl %eax,%edi
	movl (%edi),%edi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $7,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	subl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $25,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call tig_bounds_check
Ljoin_l70:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $20,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $7,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	subl %ecx,%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $0,%eax
	cmpl %eax,%esi
	je Ljoin_l95
Ljoin_l96:
	movl $0,%edi
	jmp Ljoin_l94
Ljoin_l95:
	movl $-1,%edi
	jmp Ljoin_l94
Ljoin_l94:
	jmp LifEnd_100
LifEnd_100:
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l66
Ljoin_l67:
	jmp LifFalse_117
LifFalse_117:
	movl $0,%edi
	jmp LifEnd_118
Ljoin_l66:
	jmp LifTrue_116
LifTrue_116:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $26,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l65:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $1,%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $26,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l62:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $1,%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $20,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $7,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	subl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $26,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l59:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $1,%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $20,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $7,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	subl %ecx,%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $27,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l56:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal 60(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $12,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal -4(%esp), %esp
	leal 64(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 64(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	leal 64(%esp), %esi
	movl $-64,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call tryy_62
Ljoin_l53:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $29,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l50:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $29,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l47:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $16,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 60(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $20,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $7,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	subl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $29,%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l44:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	leal 60(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl (%esi),%esi
	movl $20,%edx
	addl %edx,%esi
	movl (%esi),%esi
	leal 60(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $7,%ecx
	addl %ecx,%edx
	leal 60(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	subl %ecx,%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	movl $0,%edi
	jmp LifEnd_118
LifEnd_118:
	leal 60(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl $8,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	jmp Ljoin_l97
Ljoin_l97:
	movl 28(%esp),%edi
	movl 40(%esp),%esi
	jmp Lloop_start_119
Ljoin_l86:
	jmp LifTrue_122
LifTrue_122:
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	call printboard_61
Ljoin_l85:
	jmp LifEnd_124
LifEnd_124:
	leal 60(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal 64(%esp), %esp
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
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
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
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l70
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l65
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0x4000000b
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l62
.long Lframe_l104
.section .pcmap_data
Lframe_l104:
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l59
.long Lframe_l105
.section .pcmap_data
Lframe_l105:
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0x4000000b
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
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0x4000000b
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
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l47
.long Lframe_l109
.section .pcmap_data
Lframe_l109:
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l44
.long Lframe_l110
.section .pcmap_data
Lframe_l110:
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
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
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l85
.long Lframe_l111
.section .pcmap_data
Lframe_l111:
.long 0xffffffc4
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
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
	leal -104(%esp), %esp
	leal 104(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l114:
Lproc_body_start_l113:
	leal 104(%esp), %edx
	movl %edi,(%esp)
	movl $-24,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl $8,%edi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	movl $2,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%edi
	leal space_end,%edx
	movl (%edx),%edx
	cmpl %edx,%edi
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
	leal 104(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl $2,%edx
	addl %edx,%edi
	movl $4,%edx
	imull %edx,%edi
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl %edi,(%edx)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $4,%edx
	addl %edx,%edi
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	leal 104(%esp), %eax
	movl %edi,4(%esp)
	movl $-24,%edi
	addl %edi,%eax
	movl $4,%edi
	addl %edi,%eax
	movl (%eax),%edi
	movl $2,%eax
	addl %eax,%edi
	movl $4,%eax
	imull %eax,%edi
	addl %edi,%edx
	leal Cmm.global_area,%edi
	movl %edx,(%edi)
	movl 4(%esp),%edi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	movl %edx,(%edi)
	movl $1,%edx
	jmp Linit_start_34
Linit_start_34:
	movl $0,%eax
	movl %edi,8(%esp)
	movl $4,%edi
	movl %edi,12(%esp)
	movl %edx,%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	imull %esi,%edi
	movl %edi,20(%esp)
	movl 8(%esp),%esi
	movl %esi,%edi
	movl 20(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl $1,%edi
	addl %edi,%edx
	leal 104(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $1,%esi
	addl %esi,%edi
	cmpl %edi,%edx
	jle Ljoin_l140
Ljoin_l141:
	jmp Linit_end_35
Linit_end_35:
	leal 104(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl 8(%esp),%esi
	movl %esi,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 104(%esp), %esi
	movl $-24,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	movl $2,%edx
	addl %edx,%esi
	movl $4,%edx
	imull %edx,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
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
	leal 104(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $2,%esi
	addl %esi,%edi
	movl $4,%esi
	imull %esi,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	movl $2,%eax
	addl %eax,%edx
	movl $4,%eax
	imull %eax,%edx
	addl %edx,%esi
	leal Cmm.global_area,%edx
	movl %esi,(%edx)
	leal 104(%esp), %esi
	movl $-24,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	movl %esi,(%edi)
	movl $1,%esi
	jmp Linit_start_42
Linit_start_42:
	movl $0,%edx
	movl $4,%eax
	movl %edi,24(%esp)
	movl %esi,%edi
	imull %eax,%edi
	movl %edi,28(%esp)
	movl 24(%esp),%eax
	movl %eax,%edi
	movl %esi,32(%esp)
	movl 28(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $1,%edi
	movl 32(%esp),%esi
	addl %edi,%esi
	leal 104(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl $1,%edx
	addl %edx,%edi
	cmpl %edi,%esi
	jle Ljoin_l133
Ljoin_l134:
	jmp Linit_end_43
Linit_end_43:
	leal 104(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $12,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 104(%esp), %esi
	movl $-24,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	addl %edx,%esi
	movl $1,%edx
	subl %edx,%esi
	movl $2,%edx
	addl %edx,%esi
	movl $4,%edx
	imull %edx,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
	cmpl %esi,%edi
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
	leal 104(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 104(%esp), %esi
	movl $-24,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	addl %esi,%edi
	movl $1,%esi
	subl %esi,%edi
	movl $2,%esi
	addl %esi,%edi
	movl $4,%esi
	imull %esi,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	leal 104(%esp), %eax
	movl %edi,36(%esp)
	movl $-24,%edi
	addl %edi,%eax
	movl $4,%edi
	addl %edi,%eax
	movl (%eax),%edi
	addl %edi,%edx
	movl $1,%edi
	subl %edi,%edx
	movl $2,%edi
	addl %edi,%edx
	movl $4,%edi
	imull %edi,%edx
	addl %edx,%esi
	leal Cmm.global_area,%edi
	movl %esi,(%edi)
	movl 36(%esp),%edi
	leal 104(%esp), %esi
	movl $-24,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	addl %edx,%esi
	movl $1,%edx
	subl %edx,%esi
	movl %esi,(%edi)
	movl $1,%esi
	jmp Linit_start_49
Linit_start_49:
	movl $0,%edx
	movl $4,%eax
	movl %edi,40(%esp)
	movl %esi,%edi
	imull %eax,%edi
	movl %edi,44(%esp)
	movl 40(%esp),%eax
	movl %eax,%edi
	movl %esi,48(%esp)
	movl 44(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $1,%edi
	movl 48(%esp),%esi
	addl %edi,%esi
	leal 104(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edi
	leal 104(%esp), %edx
	movl %edi,52(%esp)
	movl $-24,%edi
	addl %edi,%edx
	movl $4,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl 52(%esp),%edx
	addl %edi,%edx
	movl $1,%edi
	subl %edi,%edx
	movl $1,%edi
	addl %edi,%edx
	cmpl %edx,%esi
	jle Ljoin_l126
Ljoin_l127:
	jmp Linit_end_50
Linit_end_50:
	leal 104(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $16,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 104(%esp), %esi
	movl $-24,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	addl %edx,%esi
	movl $1,%edx
	subl %edx,%esi
	movl $2,%edx
	addl %edx,%esi
	movl $4,%edx
	imull %edx,%esi
	addl %esi,%edi
	leal space_end,%esi
	movl (%esi),%esi
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
	leal 104(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 104(%esp), %esi
	movl $-24,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	addl %esi,%edi
	movl $1,%esi
	subl %esi,%edi
	movl $2,%esi
	addl %esi,%edi
	movl $4,%esi
	imull %esi,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $4,%esi
	addl %esi,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	leal 104(%esp), %eax
	movl %edi,56(%esp)
	movl $-24,%edi
	addl %edi,%eax
	movl $4,%edi
	addl %edi,%eax
	movl (%eax),%edi
	addl %edi,%edx
	movl $1,%edi
	subl %edi,%edx
	movl $2,%edi
	addl %edi,%edx
	movl $4,%edi
	imull %edi,%edx
	addl %edx,%esi
	leal Cmm.global_area,%edi
	movl %esi,(%edi)
	movl 56(%esp),%edi
	leal 104(%esp), %esi
	movl $-24,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	leal 104(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	addl %edx,%esi
	movl $1,%edx
	subl %edx,%esi
	movl %esi,(%edi)
	movl $1,%esi
	jmp Linit_start_56
Linit_start_56:
	movl $0,%edx
	movl $4,%eax
	movl %edi,60(%esp)
	movl %esi,%edi
	imull %eax,%edi
	movl %edi,64(%esp)
	movl 60(%esp),%eax
	movl %eax,%edi
	movl %esi,68(%esp)
	movl 64(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $1,%edi
	movl 68(%esp),%esi
	addl %edi,%esi
	leal 104(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edi
	leal 104(%esp), %edx
	movl %edi,72(%esp)
	movl $-24,%edi
	addl %edi,%edx
	movl $4,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl 72(%esp),%edx
	addl %edi,%edx
	movl $1,%edi
	subl %edi,%edx
	movl $1,%edi
	addl %edi,%edx
	cmpl %edx,%esi
	jle Ljoin_l119
Ljoin_l120:
	jmp Linit_end_57
Linit_end_57:
	leal 104(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $20,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal -4(%esp), %esp
	leal 108(%esp), %eax
	movl $-24,%edi
	addl %edi,%eax
	movl $0,%edi
	leal 108(%esp), %esi
	movl $-108,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	movl %ecx,80(%esp)
	call tryy_62
Ljoin_l118:
	movl $0,%eax
	leal 104(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 76(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl (%esp),%edi
	leal 104(%esp), %esp
	ret
Ljoin_l119:
	jmp Ljoin_l153
Ljoin_l153:
	movl %eax,%edi
	jmp Linit_start_56
Ljoin_l126:
	jmp Ljoin_l152
Ljoin_l152:
	movl %eax,%edi
	jmp Linit_start_49
Ljoin_l133:
	jmp Ljoin_l151
Ljoin_l151:
	movl %eax,%edi
	jmp Linit_start_42
Ljoin_l140:
	jmp Ljoin_l150
Ljoin_l150:
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	jmp Linit_start_34
.section .pcmap_data
Lstackdata_l155:
.long 1
.long 0xffffffe8
.section .pcmap
.long Ljoin_l144
.long Lframe_l156
.section .pcmap_data
Lframe_l156:
.long 0xffffff98
.long 0x80000004
.long 0x40000005
.long Lstackdata_l155
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
.long 0xffffff98
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Lframe_l157
.section .pcmap_data
Lframe_l157:
.long 0xffffff98
.long 0x80000004
.long 0x40000005
.long Lstackdata_l155
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffa8
.long 0x4000000b
.long 0xffffff98
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Lframe_l158
.section .pcmap_data
Lframe_l158:
.long 0xffffff98
.long 0x80000004
.long 0x40000005
.long Lstackdata_l155
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffa8
.long 0x4000000b
.long 0xffffff98
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Lframe_l159
.section .pcmap_data
Lframe_l159:
.long 0xffffff98
.long 0x80000004
.long 0x40000005
.long Lstackdata_l155
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffa8
.long 0x4000000b
.long 0xffffff98
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long Lframe_l160
.section .pcmap_data
Lframe_l160:
.long 0xffffff98
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l155
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffa8
.long 0x4000000b
.long 0xffffff98
.long 0
.long 0
.long 0
.long 0
.long 0
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

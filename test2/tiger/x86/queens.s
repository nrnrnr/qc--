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
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	leal 60(%esp), %ecx
	movl %eax,12(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 60(%esp), %ecx
	movl %edx,16(%esp)
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_81
Lloop_start_81:
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 60(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%ecx
	jle Ljoin_l24
Ljoin_l25:
	jmp Lloop_end_63
Lloop_end_63:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_78,%eax
	leal 60(%esp), %edx
	movl %ebx,20(%esp)
	movl $-60,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,24(%esp)
	call tig_print
Ljoin_l10:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 60(%esp), %esp
	ret
Ljoin_l24:
	jmp Lloop_body_82
Lloop_body_82:
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_76
Lloop_start_76:
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 60(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%ecx
	jle Ljoin_l22
Ljoin_l23:
	jmp Lloop_end_64
Lloop_end_64:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_78,%eax
	leal 60(%esp), %edx
	movl %ebx,20(%esp)
	movl $-60,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,28(%esp)
	call tig_print
Ljoin_l13:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 60(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Ljoin_l30
Ljoin_l30:
	movl 20(%esp),%ebx
	jmp Lloop_start_81
Ljoin_l22:
	jmp Lloop_body_77
Lloop_body_77:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 60(%esp), %eax
	movl %ebx,20(%esp)
	movl $-12,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $12,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	leal 60(%esp), %ebx
	movl %ebp,32(%esp)
	movl $-12,%ebp
	addl %ebp,%ebx
	movl $4,%ebp
	addl %ebp,%ebx
	leal 60(%esp), %ebp
	movl %esi,36(%esp)
	movl $-56,%esi
	addl %esi,%ebp
	movl (%ebx),%esi
	movl %esi,(%ebp)
	movl $16,%ebp
	leal 60(%esp), %esi
	movl $-52,%ebx
	addl %ebx,%esi
	movl %ebp,(%esi)
	leal 60(%esp), %ebp
	movl $-60,%esi
	addl %esi,%ebp
	movl %eax,(%ebp)
	movl %ecx,40(%esp)
	movl %edx,44(%esp)
	call tig_bounds_check
Ljoin_l21:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	cmpl %ecx,%edx
	je Ljoin_l17
Ljoin_l18:
	jmp LifFalse_72
LifFalse_72:
	leal Lgbl_69,%ecx
	jmp LifEnd_73
Ljoin_l17:
	jmp LifTrue_71
LifTrue_71:
	leal Lgbl_68,%ecx
	jmp LifEnd_73
LifEnd_73:
	leal 60(%esp), %edx
	movl $-60,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
Ljoin_l16:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 60(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Ljoin_l29
Ljoin_l29:
	movl 36(%esp),%esi
	movl 32(%esp),%ebp
	movl 20(%esp),%ebx
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
.long 0xffffffc4
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long printboard_61_gc_data
.section .pcmap
.long Ljoin_l13
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffc4
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
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
.long 0xffffffe0
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
.long 0xffffffc4
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
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
.long 0xfffffff0
.long 0x80000000
.long 0
.long printboard_61_gc_data
.section .pcmap
.long Ljoin_l16
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0xffffffc4
.long 0x80000004
.long 0xffffffd4
.long Lstackdata_l33
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
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
	leal -76(%esp), %esp
	leal 76(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l40:
Lproc_body_start_l39:
	movl %eax,12(%esp)
	leal 76(%esp), %eax
	movl %ecx,16(%esp)
	movl $-12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl %edx,20(%esp)
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	je Ljoin_l86
Ljoin_l87:
	jmp LifFalse_123
LifFalse_123:
	movl $0,%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_119
Lloop_start_119:
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%ecx
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
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl %ebx,24(%esp)
	movl $-12,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	leal 76(%esp), %ebx
	movl %ebp,28(%esp)
	movl $-72,%ebp
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	movl $25,%ebx
	leal 76(%esp), %ebp
	movl $-68,%edx
	addl %edx,%ebp
	movl %ebx,(%ebp)
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %ecx,32(%esp)
	call tig_bounds_check
Ljoin_l80:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $0,%eax
	cmpl %eax,%edx
	je Ljoin_l76
Ljoin_l77:
	jmp LifFalse_93
LifFalse_93:
	movl $0,%eax
	jmp LifEnd_94
Ljoin_l76:
	jmp LifTrue_92
LifTrue_92:
	leal Cmm.global_area,%ebx
	movl (%ebx),%ebp
	leal 76(%esp), %ebx
	movl $-12,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $16,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	addl %edx,%ecx
	leal 76(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $25,%ecx
	leal 76(%esp), %edx
	movl $-68,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 76(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	call tig_bounds_check
Ljoin_l75:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 76(%esp), %eax
	movl $-12,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $16,%eax
	addl %eax,%ebp
	movl (%ebp),%eax
	leal 76(%esp), %ebp
	movl $-12,%ecx
	addl %ecx,%ebp
	movl $8,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	leal 76(%esp), %ebp
	movl $-12,%edx
	addl %edx,%ebp
	movl $4,%edx
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %edx,%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l92
Ljoin_l93:
	movl $0,%eax
	jmp Ljoin_l91
Ljoin_l92:
	movl $-1,%eax
	jmp Ljoin_l91
Ljoin_l91:
	jmp LifEnd_94
LifEnd_94:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l71
Ljoin_l72:
	jmp LifFalse_99
LifFalse_99:
	movl $0,%eax
	jmp LifEnd_100
Ljoin_l71:
	jmp LifTrue_98
LifTrue_98:
	leal Cmm.global_area,%ebp
	movl (%ebp),%ebx
	leal 76(%esp), %ebp
	movl $-12,%eax
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $20,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $7,%eax
	addl %eax,%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	subl %edx,%ecx
	leal 76(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $25,%ecx
	leal 76(%esp), %edx
	movl $-68,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 76(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl %ebp,(%ecx)
	call tig_bounds_check
Ljoin_l70:
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal 76(%esp), %eax
	movl $-12,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $20,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	leal 76(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl $8,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $7,%ebx
	addl %ebx,%ecx
	leal 76(%esp), %ebx
	movl $-12,%edx
	addl %edx,%ebx
	movl $4,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	subl %edx,%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Ljoin_l95
Ljoin_l96:
	movl $0,%eax
	jmp Ljoin_l94
Ljoin_l95:
	movl $-1,%eax
	jmp Ljoin_l94
Ljoin_l94:
	jmp LifEnd_100
LifEnd_100:
	movl $0,%ecx
	cmpl %ecx,%eax
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
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	leal 76(%esp), %ebx
	movl $-72,%ebp
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	movl $26,%ebx
	leal 76(%esp), %ebp
	movl $-68,%edx
	addl %edx,%ebp
	movl %ebx,(%ebp)
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %ecx,36(%esp)
	call tig_bounds_check
Ljoin_l65:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $1,%edx
	addl %edx,%ebx
	movl $4,%edx
	imull %edx,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $16,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	leal 76(%esp), %ebx
	movl $-12,%edx
	addl %edx,%ebx
	movl $8,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	leal 76(%esp), %ebx
	movl $-12,%ebp
	addl %ebp,%ebx
	movl $4,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ebp,%edx
	leal 76(%esp), %ebp
	movl $-72,%ebx
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl $26,%edx
	leal 76(%esp), %ebp
	movl $-68,%ebx
	addl %ebx,%ebp
	movl %edx,(%ebp)
	leal 76(%esp), %edx
	movl $-76,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	movl %ecx,40(%esp)
	call tig_bounds_check
Ljoin_l62:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	leal 76(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ebx,%ebp
	movl $1,%ebx
	addl %ebx,%ebp
	movl $4,%ebx
	imull %ebx,%ebp
	addl %ebp,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $20,%eax
	addl %eax,%ebp
	movl (%ebp),%eax
	leal 76(%esp), %ebp
	movl $-12,%ebx
	addl %ebx,%ebp
	movl $8,%ebx
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl $7,%ebp
	addl %ebp,%ebx
	leal 76(%esp), %ebp
	movl $-12,%edx
	addl %edx,%ebp
	movl $4,%edx
	addl %edx,%ebp
	movl (%ebp),%edx
	subl %edx,%ebx
	leal 76(%esp), %edx
	movl $-72,%ebp
	addl %ebp,%edx
	movl %ebx,(%edx)
	movl $26,%edx
	leal 76(%esp), %ebx
	movl $-68,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	leal 76(%esp), %edx
	movl $-76,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,44(%esp)
	call tig_bounds_check
Ljoin_l59:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $7,%edx
	addl %edx,%ebx
	leal 76(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl $4,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	subl %ebp,%ebx
	movl $1,%ebp
	addl %ebp,%ebx
	movl $4,%ebp
	imull %ebp,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $12,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	leal 76(%esp), %ebx
	movl $-12,%ebp
	addl %ebp,%ebx
	movl $4,%ebp
	addl %ebp,%ebx
	leal 76(%esp), %ebp
	movl $-72,%edx
	addl %edx,%ebp
	movl (%ebx),%edx
	movl %edx,(%ebp)
	movl $27,%edx
	leal 76(%esp), %ebp
	movl $-68,%ebx
	addl %ebx,%ebp
	movl %edx,(%ebp)
	leal 76(%esp), %edx
	movl $-76,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	movl %ecx,48(%esp)
	call tig_bounds_check
Ljoin_l56:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl $4,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	movl $1,%edx
	addl %edx,%ebp
	movl $4,%edx
	imull %edx,%ebp
	addl %ebp,%ecx
	movl (%eax),%ebp
	movl %ebp,(%ecx)
	leal -4(%esp), %esp
	leal 80(%esp), %ecx
	movl $-12,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl %ebp,%eax
	leal 80(%esp), %ebp
	movl $-12,%ecx
	addl %ecx,%ebp
	movl $4,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $1,%ebp
	addl %ebp,%ecx
	leal 80(%esp), %ebp
	movl $-80,%edx
	addl %edx,%ebp
	movl %ecx,(%ebp)
	call tryy_62
Ljoin_l53:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 76(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	addl %ebp,%edx
	leal 76(%esp), %ebp
	movl $-72,%ebx
	addl %ebx,%ebp
	movl (%edx),%ebx
	movl %ebx,(%ebp)
	movl $29,%ebx
	leal 76(%esp), %ebp
	movl $-68,%edx
	addl %edx,%ebp
	movl %ebx,(%ebp)
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %ecx,52(%esp)
	call tig_bounds_check
Ljoin_l50:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $1,%edx
	addl %edx,%ebx
	movl $4,%edx
	imull %edx,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $16,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	leal 76(%esp), %ebx
	movl $-12,%edx
	addl %edx,%ebx
	movl $8,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	leal 76(%esp), %ebx
	movl $-12,%ebp
	addl %ebp,%ebx
	movl $4,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ebp,%edx
	leal 76(%esp), %ebp
	movl $-72,%ebx
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl $29,%edx
	leal 76(%esp), %ebp
	movl $-68,%ebx
	addl %ebx,%ebp
	movl %edx,(%ebp)
	leal 76(%esp), %edx
	movl $-76,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	movl %ecx,56(%esp)
	call tig_bounds_check
Ljoin_l47:
	leal Cmm.global_area,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	leal 76(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ebx,%ebp
	movl $1,%ebx
	addl %ebx,%ebp
	movl $4,%ebx
	imull %ebx,%ebp
	addl %ebp,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-12,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $20,%eax
	addl %eax,%ebp
	movl (%ebp),%eax
	leal 76(%esp), %ebp
	movl $-12,%ebx
	addl %ebx,%ebp
	movl $8,%ebx
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl $7,%ebp
	addl %ebp,%ebx
	leal 76(%esp), %ebp
	movl $-12,%edx
	addl %edx,%ebp
	movl $4,%edx
	addl %edx,%ebp
	movl (%ebp),%edx
	subl %edx,%ebx
	leal 76(%esp), %edx
	movl $-72,%ebp
	addl %ebp,%edx
	movl %ebx,(%edx)
	movl $29,%edx
	leal 76(%esp), %ebx
	movl $-68,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	leal 76(%esp), %edx
	movl $-76,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,60(%esp)
	call tig_bounds_check
Ljoin_l44:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $7,%edx
	addl %edx,%ebx
	leal 76(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl $4,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	subl %ebp,%ebx
	movl $1,%ebp
	addl %ebp,%ebx
	movl $4,%ebp
	imull %ebp,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	jmp LifEnd_118
LifEnd_118:
	leal 76(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 76(%esp), %eax
	movl $-12,%ebx
	addl %ebx,%eax
	movl $8,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
	jmp Ljoin_l97
Ljoin_l97:
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
	jmp Lloop_start_119
Ljoin_l86:
	jmp LifTrue_122
LifTrue_122:
	leal 76(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	call printboard_61
Ljoin_l85:
	jmp LifEnd_124
LifEnd_124:
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 80(%esp), %esp
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.long 0xffffffd8
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l62
.long Lframe_l104
.section .pcmap_data
Lframe_l104:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.long 0xffffffdc
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.long 0xffffffe0
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.long 0xffffffe4
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.section .pcmap
.long Ljoin_l50
.long Lframe_l108
.section .pcmap_data
Lframe_l108:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.long 0xffffffe8
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
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l44
.long Lframe_l110
.section .pcmap_data
Lframe_l110:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000001b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffcc
.long 0x40000009
.long 0xffffffd0
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
.long 0x80000000
.long 0
.long tryy_62_gc_data
.section .pcmap
.long Ljoin_l85
.long Lframe_l111
.section .pcmap_data
Lframe_l111:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc8
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l114:
Lproc_body_start_l113:
	leal 40(%esp), %ecx
	movl %eax,(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $8,%eax
	leal 40(%esp), %ecx
	movl %edx,4(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $4,%edx
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
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
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
	leal 40(%esp), %ecx
	movl %ebx,8(%esp)
	movl $-24,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $2,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	imull %ecx,%ebx
	addl %ebx,%eax
	leal Cmm.global_area,%ebx
	movl %eax,(%ebx)
	leal 40(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl $1,%ebx
	jmp Linit_start_34
Linit_start_34:
	movl $0,%eax
	movl $4,%ecx
	movl %ebp,12(%esp)
	movl %ebx,%ebp
	imull %ecx,%ebp
	movl %edx,%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	movl $1,%eax
	addl %eax,%ebx
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	cmpl %ecx,%ebx
	jle Ljoin_l140
Ljoin_l141:
	jmp Linit_end_35
Linit_end_35:
	leal 40(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $2,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%edx
	leal space_end,%eax
	movl (%eax),%ecx
	cmpl %ecx,%edx
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
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
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
	leal 40(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $2,%ecx
	addl %ecx,%ebp
	movl $4,%ecx
	imull %ecx,%ebp
	addl %ebp,%eax
	leal Cmm.global_area,%ebp
	movl %eax,(%ebp)
	leal 40(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $4,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl %ebp,(%edx)
	movl $1,%ebp
	jmp Linit_start_42
Linit_start_42:
	movl $0,%eax
	movl $4,%ecx
	movl %ebp,%ebx
	imull %ecx,%ebx
	movl %edx,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $1,%eax
	addl %eax,%ebp
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	cmpl %ecx,%ebp
	jle Ljoin_l133
Ljoin_l134:
	jmp Linit_end_43
Linit_end_43:
	leal 40(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 40(%esp), %ecx
	movl $-24,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %ebx,%eax
	movl $1,%ebx
	subl %ebx,%eax
	movl $2,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	imull %ebx,%eax
	addl %eax,%edx
	leal space_end,%eax
	movl (%eax),%ebx
	cmpl %ebx,%edx
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
	leal 40(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %ebx,%edx
	movl $1,%ebx
	subl %ebx,%edx
	movl $2,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	imull %ebx,%edx
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $4,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	addl %ebp,%ecx
	movl $1,%ebp
	subl %ebp,%ecx
	movl $2,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	imull %ebp,%ecx
	addl %ecx,%ebx
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	leal 40(%esp), %ecx
	movl $-24,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	leal 40(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %ebp,%ebx
	movl $1,%ebp
	subl %ebp,%ebx
	movl %ebx,(%edx)
	movl $1,%ebx
	jmp Linit_start_49
Linit_start_49:
	movl $0,%ebp
	movl $4,%ecx
	movl %ebx,%eax
	imull %ecx,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl %ebp,(%ecx)
	movl $1,%ecx
	addl %ecx,%ebx
	leal 40(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	leal 40(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %eax,%ebp
	movl $1,%eax
	subl %eax,%ebp
	movl $1,%eax
	addl %eax,%ebp
	cmpl %ebp,%ebx
	jle Ljoin_l126
Ljoin_l127:
	jmp Linit_end_50
Linit_end_50:
	leal 40(%esp), %ebp
	movl $-24,%eax
	addl %eax,%ebp
	movl $16,%eax
	addl %eax,%ebp
	movl %edx,(%ebp)
	leal Cmm.global_area,%edx
	movl (%edx),%ebp
	leal 40(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 40(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	subl %ecx,%eax
	movl $2,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	addl %eax,%ebp
	leal space_end,%eax
	movl (%eax),%ecx
	cmpl %ecx,%ebp
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
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $4,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	addl %ebp,%ecx
	movl $1,%ebp
	subl %ebp,%ecx
	movl $2,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	imull %ebp,%ecx
	leal Cmm.global_area,%ebp
	movl (%ebp),%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 40(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %ebx,%edx
	movl $1,%ebx
	subl %ebx,%edx
	movl $2,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	imull %ebx,%edx
	addl %edx,%ebp
	leal Cmm.global_area,%edx
	movl %ebp,(%edx)
	leal 40(%esp), %edx
	movl $-24,%ebp
	addl %ebp,%edx
	movl $4,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	leal 40(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ebx,%ebp
	movl $1,%ebx
	subl %ebx,%ebp
	movl %ebp,(%ecx)
	movl $1,%ebp
	jmp Linit_start_56
Linit_start_56:
	movl $0,%ebx
	movl $4,%edx
	movl %ebp,%eax
	imull %edx,%eax
	movl %ecx,%edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $1,%edx
	addl %edx,%ebp
	leal 40(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 40(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	addl %eax,%ebx
	movl $1,%eax
	subl %eax,%ebx
	movl $1,%eax
	addl %eax,%ebx
	cmpl %ebx,%ebp
	jle Ljoin_l119
Ljoin_l120:
	jmp Linit_end_57
Linit_end_57:
	leal 40(%esp), %ebx
	movl $-24,%eax
	addl %eax,%ebx
	movl $20,%eax
	addl %eax,%ebx
	movl %ecx,(%ebx)
	leal -4(%esp), %esp
	leal 44(%esp), %ecx
	movl $-24,%ebx
	addl %ebx,%ecx
	movl %ecx,%eax
	movl $0,%ecx
	leal 44(%esp), %ebx
	movl $-44,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call tryy_62
Ljoin_l118:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	leal 40(%esp), %esp
	ret
Ljoin_l119:
	jmp Linit_start_56
Ljoin_l126:
	jmp Linit_start_49
Ljoin_l133:
	jmp Linit_start_42
Ljoin_l140:
	jmp Ljoin_l150
Ljoin_l150:
	movl 12(%esp),%ebp
	jmp Linit_start_34
.section .pcmap_data
Lstackdata_l152:
.long 1
.long 0xffffffe8
.section .pcmap
.long Ljoin_l144
.long Lframe_l153
.section .pcmap_data
Lframe_l153:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l152
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l137
.long Lframe_l154
.section .pcmap_data
Lframe_l154:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l152
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l130
.long Lframe_l155
.section .pcmap_data
Lframe_l155:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l152
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l123
.long Lframe_l156
.section .pcmap_data
Lframe_l156:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l152
.long 0x80000008
.long 0x8000000e
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
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l118
.long Lframe_l157
.section .pcmap_data
Lframe_l157:
.long 0xffffffd8
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l152
.long 0x80000008
.long 0x8000000e
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

.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
.align 32
gc_data:
.long 0
.long 7
Lgbl_55:
.long 2
.byte 32
.byte 79
.byte 0
.long 6
Lgbl_64:
.long 1
.byte 10
.byte 0
.long 7
Lgbl_57:
.long 2
.byte 32
.byte 46
.byte 0
.section .text
printboard_51:
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l14:
Lproc_body_start_l13:
	movl $-12,%ecx
	movl %eax,32(%esp)
	leal 76(%esp), %eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $4,%ecx
	movl %edx,36(%esp)
	movl $-12,%edx
	movl %ebx,40(%esp)
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_65
Lloop_start_65:
	movl $4,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	movl $4,%ebx
	movl $-12,%edx
	movl %ebp,44(%esp)
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	subl %ecx,%ebx
	cmpl %ebx,%eax
	jle Lif_true_l38
Lif_false_l39:
	movl $0,%eax
	jmp Lend_if_l40
Lif_true_l38:
	movl $1,%eax
	jmp Lend_if_l40
Lend_if_l40:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne Ljoin_l33
Ljoin_l34:
	jmp Lloop_end_53
Lloop_end_53:
	leal Lgbl_64,%eax
	movl $-76,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	call tig_print
Ljoin_l19:
	movl $0,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 76(%esp), %esp
	ret
Ljoin_l33:
	jmp Lloop_body_66
Lloop_body_66:
	movl $0,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_62
Lloop_start_62:
	movl $8,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	movl $4,%ebx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	subl %ecx,%ebx
	cmpl %ebx,%eax
	jle Lif_true_l41
Lif_false_l42:
	movl $0,%eax
	jmp Lend_if_l43
Lif_true_l41:
	movl $1,%eax
	jmp Lend_if_l43
Lend_if_l43:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne Ljoin_l31
Ljoin_l32:
	jmp Lloop_end_54
Lloop_end_54:
	leal Lgbl_64,%eax
	movl $-76,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	call tig_print
Ljoin_l22:
	movl $1,%eax
	movl $4,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Ljoin_l48
Ljoin_l48:
	movl 52(%esp),%edi
	movl 48(%esp),%esi
	movl 44(%esp),%ebp
	jmp Lloop_start_65
Ljoin_l31:
	jmp Lloop_body_63
Lloop_body_63:
	movl $12,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-72,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $16,%ecx
	movl $-68,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	call tig_bounds_check
Ljoin_l30:
	movl $4,%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $12,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	cmpl %eax,%ebx
	je Lif_true_l44
Lif_false_l45:
	movl $0,%eax
	jmp Lend_if_l46
Lif_true_l44:
	movl $1,%eax
	jmp Lend_if_l46
Lend_if_l46:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne Ljoin_l26
Ljoin_l27:
	jmp LifFalse_60
LifFalse_60:
	leal Lgbl_57,%eax
	jmp LifEnd_61
Ljoin_l26:
	jmp LifTrue_59
LifTrue_59:
	leal Lgbl_55,%eax
	jmp LifEnd_61
LifEnd_61:
	movl $-76,%ebx
	leal 76(%esp), %edx
	addl %ebx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l25:
	movl $1,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $8,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Ljoin_l47
Ljoin_l47:
	movl 52(%esp),%edi
	movl 48(%esp),%esi
	jmp Lloop_start_62
killer_C11:
	movl $0,%eax
	movl $0,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l51:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l30
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l51
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long printboard_51_gc_data
.section .pcmap
.long Ljoin_l25
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l51
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long printboard_51_gc_data
.section .pcmap
.long Ljoin_l22
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l51
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long printboard_51_gc_data
.section .pcmap
.long Ljoin_l19
.long Lframe_l55
.section .pcmap_data
Lframe_l55:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long Lstackdata_l51
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long printboard_51_gc_data
.section .text
.section .data
printboard_51_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 3
.long 1
.long 0
.long 1
.section .text
try_52:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 72(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l63:
Lproc_body_start_l62:
	movl %eax,28(%esp)
	movl $-12,%eax
	movl %ecx,32(%esp)
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-12,%ecx
	movl %edx,36(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 32(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	movl %ebx,40(%esp)
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	je Lif_true_l115
Lif_false_l116:
	movl $0,%eax
	jmp Lend_if_l117
Lif_true_l115:
	movl $1,%eax
	jmp Lend_if_l117
Lend_if_l117:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l110
Ljoin_l111:
	jmp LifFalse_83
LifFalse_83:
	movl $0,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_80
Lloop_start_80:
	movl $8,%eax
	movl $-12,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	movl $4,%ebx
	movl $-12,%edx
	movl %ebp,44(%esp)
	leal 72(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	subl %ecx,%ebx
	cmpl %ebx,%eax
	jle Lif_true_l118
Lif_false_l119:
	movl $0,%eax
	jmp Lend_if_l120
Lif_true_l118:
	movl $1,%eax
	jmp Lend_if_l120
Lend_if_l120:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne Ljoin_l105
Ljoin_l106:
	jmp Lloop_end_68
Lloop_end_68:
	movl 44(%esp),%ebp
	jmp LifEnd_84
Ljoin_l105:
	jmp Lloop_body_81
Lloop_body_81:
	movl $8,%eax
	movl $-12,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-68,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl $25,%ecx
	movl $-64,%ebx
	leal 72(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	call tig_bounds_check
Ljoin_l104:
	movl $4,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $8,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $0,%eax
	cmpl %eax,%ebx
	je Lif_true_l121
Lif_false_l122:
	movl $0,%eax
	jmp Lend_if_l123
Lif_true_l121:
	movl $1,%eax
	jmp Lend_if_l123
Lend_if_l123:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne Ljoin_l100
Ljoin_l101:
	jmp LifFalse_71
LifFalse_71:
	movl $0,%eax
	jmp LifEnd_72
Ljoin_l100:
	jmp LifTrue_70
LifTrue_70:
	movl $16,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $8,%ebx
	movl $-12,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl $-68,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl %ebx,(%ebp)
	movl $25,%ebx
	movl $-64,%ebp
	leal 72(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl $-72,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
Ljoin_l99:
	movl $4,%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $8,%ebx
	movl $-12,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl $1,%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $16,%eax
	movl $-12,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Lif_true_l124
Lif_false_l125:
	movl $0,%eax
	jmp Lend_if_l126
Lif_true_l124:
	movl $1,%eax
	jmp Lend_if_l126
Lend_if_l126:
	jmp LifEnd_72
LifEnd_72:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l95
Ljoin_l96:
	jmp LifFalse_75
LifFalse_75:
	movl $0,%eax
	jmp LifEnd_76
Ljoin_l95:
	jmp LifTrue_74
LifTrue_74:
	movl $20,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $7,%ebx
	movl $8,%edx
	movl $-12,%ebp
	leal 72(%esp), %esi
	addl %ebp,%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ebx,%edx
	subl %ecx,%edx
	movl $-68,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $25,%edx
	movl $-64,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
Ljoin_l94:
	movl $4,%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $7,%ebx
	movl $8,%edx
	movl $-12,%ebp
	leal 72(%esp), %esi
	addl %ebp,%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ebx,%edx
	subl %ecx,%edx
	movl $1,%ecx
	addl %edx,%ecx
	imull %eax,%ecx
	movl $20,%eax
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je Lif_true_l127
Lif_false_l128:
	movl $0,%eax
	jmp Lend_if_l129
Lif_true_l127:
	movl $1,%eax
	jmp Lend_if_l129
Lend_if_l129:
	jmp LifEnd_76
LifEnd_76:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l90
Ljoin_l91:
	jmp LifFalse_78
LifFalse_78:
	jmp LifEnd_79
Ljoin_l90:
	jmp LifTrue_77
LifTrue_77:
	movl $8,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-68,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $26,%ecx
	movl $-64,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-72,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
Ljoin_l89:
	movl $1,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $-12,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	movl $16,%eax
	movl $-12,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%ebp
	leal 72(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl $-12,%ebp
	leal 72(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl $-68,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $26,%edx
	movl $-64,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
Ljoin_l86:
	movl $1,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $8,%ebp
	movl $-12,%ebx
	leal 72(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %edx,%ebp
	movl $1,%edx
	addl %ebp,%edx
	imull %ecx,%edx
	movl $16,%ecx
	movl $-12,%ebp
	leal 72(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $20,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $7,%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 72(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ebp,%edx
	subl %ecx,%edx
	movl $-68,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl $26,%edx
	movl $-64,%ebp
	leal 72(%esp), %ecx
	addl %ebp,%ecx
	movl %edx,(%ecx)
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
Ljoin_l83:
	movl $1,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $7,%ebp
	movl $8,%ebx
	movl $-12,%esi
	leal 72(%esp), %edi
	addl %esi,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	addl %ebp,%ebx
	subl %edx,%ebx
	movl $1,%edx
	addl %ebx,%edx
	imull %ecx,%edx
	movl $20,%ecx
	movl $-12,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $12,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-68,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $27,%ecx
	movl $-64,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-72,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
Ljoin_l80:
	movl $8,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $4,%eax
	movl $4,%ecx
	movl $-12,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $1,%ebp
	addl %ecx,%ebp
	imull %eax,%ebp
	movl $12,%eax
	movl $-12,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebp,%eax
	movl (%edx),%ebp
	movl %ebp,(%eax)
	leal -4(%esp), %esp
	movl $1,%eax
	movl $4,%ebp
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl $-76,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl %ebp,(%ecx)
	movl $-12,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %ecx,%eax
	call try_52
Ljoin_l77:
	movl $8,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl $-68,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%ebp),%ecx
	movl %ecx,(%edx)
	movl $29,%ecx
	movl $-64,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $-72,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	call tig_bounds_check
Ljoin_l74:
	movl $0,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $-12,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	movl $16,%eax
	movl $-12,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%ebp
	leal 72(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl $-12,%ebp
	leal 72(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl $-68,%ecx
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $29,%edx
	movl $-64,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
Ljoin_l71:
	movl $0,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 72(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $8,%ebp
	movl $-12,%ebx
	leal 72(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %edx,%ebp
	movl $1,%edx
	addl %ebp,%edx
	imull %ecx,%edx
	movl $16,%ecx
	movl $-12,%ebp
	leal 72(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $20,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $7,%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 72(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ebp,%edx
	subl %ecx,%edx
	movl $-68,%ecx
	leal 72(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl $29,%edx
	movl $-64,%ebp
	leal 72(%esp), %ecx
	addl %ebp,%ecx
	movl %edx,(%ecx)
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
Ljoin_l68:
	movl $0,%eax
	movl $4,%ebx
	movl $4,%ecx
	movl $-12,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $7,%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 72(%esp), %edi
	addl %esi,%edi
	addl %edx,%edi
	movl (%edi),%edx
	addl %ebp,%edx
	subl %ecx,%edx
	movl $1,%ecx
	addl %edx,%ecx
	imull %ebx,%ecx
	movl $20,%ebx
	movl $-12,%edx
	leal 72(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp LifEnd_79
LifEnd_79:
	movl $1,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $8,%eax
	movl $-12,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Ljoin_l130
Ljoin_l130:
	movl 52(%esp),%edi
	movl 48(%esp),%esi
	movl 44(%esp),%ebp
	jmp Lloop_start_80
killer_C60:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 76(%esp), %esp
	ret
Ljoin_l110:
	jmp LifTrue_82
LifTrue_82:
	movl $-12,%ebx
	leal 72(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	call printboard_51
Ljoin_l109:
	jmp LifEnd_84
LifEnd_84:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 40(%esp),%ebx
	leal 76(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l132:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l109
.long Lframe_l133
.section .pcmap_data
Lframe_l133:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
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
.long try_52_gc_data
.section .pcmap
.long Ljoin_l104
.long Lframe_l134
.section .pcmap_data
Lframe_l134:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l99
.long Lframe_l135
.section .pcmap_data
Lframe_l135:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l94
.long Lframe_l136
.section .pcmap_data
Lframe_l136:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l89
.long Lframe_l137
.section .pcmap_data
Lframe_l137:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l86
.long Lframe_l138
.section .pcmap_data
Lframe_l138:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l83
.long Lframe_l139
.section .pcmap_data
Lframe_l139:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l80
.long Lframe_l140
.section .pcmap_data
Lframe_l140:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l77
.long Lframe_l141
.section .pcmap_data
Lframe_l141:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l74
.long Lframe_l142
.section .pcmap_data
Lframe_l142:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l71
.long Lframe_l143
.section .pcmap_data
Lframe_l143:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .pcmap
.long Ljoin_l68
.long Lframe_l144
.section .pcmap_data
Lframe_l144:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l132
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long try_52_gc_data
.section .text
.section .data
try_52_gc_data:
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
tiger_main:
	leal -84(%esp), %esp
	movl $4,%eax
	leal 84(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l152:
Lproc_body_start_l151:
	movl $-24,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $4,%edx
	movl $-24,%ecx
	movl %ebx,28(%esp)
	leal 84(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $4,%ebx
	movl $-24,%edx
	leal 84(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $-84,%eax
	leal 84(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl %edi,40(%esp)
	movl %esi,36(%esp)
	movl %ebp,32(%esp)
	call tig_alloc
Ljoin_l177:
	movl $4,%ecx
	movl $-24,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	jmp Lloop_start_34
Lloop_start_34:
	movl $0,%ecx
	cmpl %ecx,%ebx
	jne Ljoin_l173
Ljoin_l174:
	jmp Lloop_end_33
Lloop_end_33:
	movl $4,%ecx
	movl $-24,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %ecx,(%eax)
	movl $8,%ecx
	movl $-24,%ebp
	leal 84(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $4,%edx
	movl $-24,%ecx
	leal 84(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %eax,%ebp
	movl $-84,%eax
	leal 84(%esp), %edx
	addl %eax,%edx
	movl %ebp,(%edx)
	call tig_alloc
Ljoin_l172:
	movl $4,%ecx
	movl $-24,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	jmp Lloop_start_39
Lloop_start_39:
	movl $0,%ecx
	cmpl %ecx,%ebx
	jne Ljoin_l168
Ljoin_l169:
	jmp Lloop_end_38
Lloop_end_38:
	movl $4,%ecx
	movl $-24,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %ecx,(%eax)
	movl $12,%ecx
	movl $-24,%ebp
	leal 84(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $1,%edx
	movl $4,%ecx
	movl $-24,%ebp
	leal 84(%esp), %esi
	addl %ebp,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	movl $4,%esi
	movl $-24,%ebp
	leal 84(%esp), %edi
	addl %ebp,%edi
	addl %esi,%edi
	movl (%edi),%esi
	addl %ecx,%esi
	subl %edx,%esi
	movl $1,%edx
	addl %esi,%edx
	imull %eax,%edx
	movl $-84,%eax
	leal 84(%esp), %esi
	addl %eax,%esi
	movl %edx,(%esi)
	call tig_alloc
Ljoin_l167:
	movl $1,%ecx
	movl $4,%edx
	movl $-24,%ebx
	leal 84(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $4,%ebp
	movl $-24,%ebx
	leal 84(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %edx,%ebp
	subl %ecx,%ebp
	movl $1,%ecx
	addl %ebp,%ecx
	jmp Lloop_start_44
Lloop_start_44:
	movl $0,%ebp
	cmpl %ebp,%ecx
	jne Ljoin_l163
Ljoin_l164:
	jmp Lloop_end_43
Lloop_end_43:
	movl $1,%ebp
	movl $4,%edx
	movl $-24,%esi
	leal 84(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $4,%ebx
	movl $-24,%esi
	leal 84(%esp), %edi
	addl %esi,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	addl %edx,%ebx
	subl %ebp,%ebx
	movl %ebx,(%eax)
	movl $16,%ebx
	movl $-24,%ebp
	leal 84(%esp), %edx
	addl %ebp,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $1,%edx
	movl $4,%ebx
	movl $-24,%ebp
	leal 84(%esp), %edi
	addl %ebp,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl $4,%edi
	movl $-24,%ebp
	leal 84(%esp), %esi
	addl %ebp,%esi
	addl %edi,%esi
	movl (%esi),%edi
	addl %ebx,%edi
	subl %edx,%edi
	movl $1,%edx
	addl %edi,%edx
	imull %eax,%edx
	movl $-84,%eax
	leal 84(%esp), %edi
	addl %eax,%edi
	movl %edx,(%edi)
	call tig_alloc
Ljoin_l162:
	movl $1,%edi
	movl $4,%esi
	movl $-24,%ebx
	leal 84(%esp), %ebp
	addl %ebx,%ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	movl $4,%ebp
	movl $-24,%ebx
	leal 84(%esp), %ecx
	addl %ebx,%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %esi,%ebp
	subl %edi,%ebp
	movl $1,%edi
	addl %ebp,%edi
	jmp Lloop_start_49
Lloop_start_49:
	movl $0,%ebp
	cmpl %ebp,%edi
	jne Ljoin_l158
Ljoin_l159:
	jmp Lloop_end_48
Lloop_end_48:
	movl $1,%ebp
	movl $4,%esi
	movl $-24,%ecx
	leal 84(%esp), %ebx
	addl %ecx,%ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	movl $4,%ebx
	movl $-24,%ecx
	leal 84(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %esi,%ebx
	subl %ebp,%ebx
	movl %ebx,(%eax)
	movl $20,%ebx
	movl $-24,%ebp
	leal 84(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl %eax,(%esi)
	leal -4(%esp), %esp
	movl $-24,%eax
	leal 88(%esp), %esi
	addl %eax,%esi
	movl %esi,%eax
	movl $0,%esi
	movl $-88,%ebx
	leal 88(%esp), %ebp
	addl %ebx,%ebp
	movl %esi,(%ebp)
	call try_52
Ljoin_l157:
	leal 84(%esp), %ecx
	movl $0,%edx
	leal 84(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl 32(%esp),%ebp
	movl 28(%esp),%ebx
	movl 36(%esp),%esi
	movl 40(%esp),%edi
	leal 84(%esp), %esp
	ret
Ljoin_l158:
	jmp Lloop_body_50
Lloop_body_50:
	movl $0,%ebp
	movl $4,%esi
	movl $1,%ecx
	movl %edi,%ebx
	subl %ecx,%ebx
	imull %esi,%ebx
	movl %eax,%esi
	addl %ebx,%esi
	movl %ebp,(%esi)
	movl $1,%ebp
	subl %ebp,%edi
	jmp Lloop_start_49
Ljoin_l163:
	jmp Lloop_body_45
Lloop_body_45:
	movl $0,%ebp
	movl $4,%edx
	movl $1,%esi
	movl %ecx,%ebx
	subl %esi,%ebx
	imull %edx,%ebx
	movl %eax,%edx
	addl %ebx,%edx
	movl %ebp,(%edx)
	movl $1,%edx
	subl %edx,%ecx
	jmp Lloop_start_44
Ljoin_l168:
	jmp Lloop_body_40
Lloop_body_40:
	movl $0,%ecx
	movl $4,%edx
	movl $1,%ebp
	movl %ebx,%esi
	subl %ebp,%esi
	imull %edx,%esi
	movl %eax,%edx
	addl %esi,%edx
	movl %ecx,(%edx)
	movl $1,%ecx
	subl %ecx,%ebx
	jmp Lloop_start_39
Ljoin_l173:
	jmp Lloop_body_35
Lloop_body_35:
	movl $0,%ecx
	movl $4,%edx
	movl $1,%ebp
	movl %ebx,%esi
	subl %ebp,%esi
	imull %edx,%esi
	movl %eax,%edx
	addl %esi,%edx
	movl %ecx,(%edx)
	movl $1,%ecx
	subl %ecx,%ebx
	jmp Lloop_start_34
killer_C149:
	movl $0,%eax
	leal 84(%esp), %ecx
	movl $0,%edx
	leal 84(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 32(%esp),%ebp
	movl 28(%esp),%ebx
	movl 36(%esp),%esi
	movl 40(%esp),%edi
	leal 84(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l183:
.long 1
.long 0xffffffe8
.section .pcmap
.long Ljoin_l177
.long Lframe_l184
.section .pcmap_data
Lframe_l184:
.long 0xffffffac
.long 0x80000004
.long 0x80000000
.long Lstackdata_l183
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l172
.long Lframe_l185
.section .pcmap_data
Lframe_l185:
.long 0xffffffac
.long 0x80000004
.long 0x80000000
.long Lstackdata_l183
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l167
.long Lframe_l186
.section .pcmap_data
Lframe_l186:
.long 0xffffffac
.long 0x80000004
.long 0x80000000
.long Lstackdata_l183
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l162
.long Lframe_l187
.section .pcmap_data
Lframe_l187:
.long 0xffffffac
.long 0x80000004
.long 0x80000000
.long Lstackdata_l183
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l157
.long Lframe_l188
.section .pcmap_data
Lframe_l188:
.long 0xffffffac
.long 0x80000004
.long 0x80000000
.long Lstackdata_l183
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
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
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 6
.long 1
.long 0
.long 1
.long 1
.long 1
.long 1
.long 10
.long 1
.long 0
.long 0
.long 1
.long 0
.long 1
.long 0
.long 1
.long 0
.long 1

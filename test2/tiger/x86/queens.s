.globl tiger_main
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
initialize_continuations_l14:
proc_body_start_l13:
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
	jle if_true_l38
if_false_l39:
	movl $0,%eax
	jmp end_if_l40
if_true_l38:
	movl $1,%eax
	jmp end_if_l40
end_if_l40:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne join_l33
join_l34:
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
join_l19:
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
join_l33:
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
	jle if_true_l41
if_false_l42:
	movl $0,%eax
	jmp end_if_l43
if_true_l41:
	movl $1,%eax
	jmp end_if_l43
end_if_l43:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne join_l31
join_l32:
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
join_l22:
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
	jmp join_l48
join_l48:
	movl 52(%esp),%edi
	movl 48(%esp),%esi
	movl 44(%esp),%ebp
	jmp Lloop_start_65
join_l31:
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
join_l30:
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
	je if_true_l44
if_false_l45:
	movl $0,%eax
	jmp end_if_l46
if_true_l44:
	movl $1,%eax
	jmp end_if_l46
end_if_l46:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne join_l26
join_l27:
	jmp LifFalse_60
LifFalse_60:
	leal Lgbl_57,%eax
	jmp LifEnd_61
join_l26:
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
join_l25:
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
	jmp join_l47
join_l47:
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
stackdata_l51:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l30
.long frame_l52
.section .pcmap_data
frame_l52:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l51
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
.long join_l25
.long frame_l53
.section .pcmap_data
frame_l53:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l51
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
.long join_l22
.long frame_l54
.section .pcmap_data
frame_l54:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l51
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
.long join_l19
.long frame_l55
.section .pcmap_data
frame_l55:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l51
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
	leal -76(%esp), %esp
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l63:
proc_body_start_l62:
	movl %eax,32(%esp)
	movl $-12,%eax
	movl %ecx,36(%esp)
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-12,%ecx
	movl %edx,40(%esp)
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	movl %ebx,44(%esp)
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	je if_true_l115
if_false_l116:
	movl $0,%eax
	jmp end_if_l117
if_true_l115:
	movl $1,%eax
	jmp end_if_l117
end_if_l117:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l110
join_l111:
	jmp LifFalse_83
LifFalse_83:
	movl $0,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_80
Lloop_start_80:
	movl $8,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	movl $4,%ebx
	movl $-12,%edx
	movl %ebp,48(%esp)
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	subl %ecx,%ebx
	cmpl %ebx,%eax
	jle if_true_l118
if_false_l119:
	movl $0,%eax
	jmp end_if_l120
if_true_l118:
	movl $1,%eax
	jmp end_if_l120
end_if_l120:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne join_l105
join_l106:
	jmp Lloop_end_68
Lloop_end_68:
	movl 48(%esp),%ebp
	jmp LifEnd_84
join_l105:
	jmp Lloop_body_81
Lloop_body_81:
	movl $8,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-72,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl $25,%ecx
	movl $-68,%ebx
	leal 76(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	call tig_bounds_check
join_l104:
	movl $4,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $0,%eax
	cmpl %eax,%ebx
	je if_true_l121
if_false_l122:
	movl $0,%eax
	jmp end_if_l123
if_true_l121:
	movl $1,%eax
	jmp end_if_l123
end_if_l123:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne join_l100
join_l101:
	jmp LifFalse_71
LifFalse_71:
	movl $0,%eax
	jmp LifEnd_72
join_l100:
	jmp LifTrue_70
LifTrue_70:
	movl $16,%eax
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
	movl (%ebx),%ecx
	movl $8,%ebx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl $-72,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %ebx,(%ebp)
	movl $25,%ebx
	movl $-68,%ebp
	leal 76(%esp), %ecx
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
join_l99:
	movl $4,%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $8,%ebx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl $1,%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $16,%eax
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je if_true_l124
if_false_l125:
	movl $0,%eax
	jmp end_if_l126
if_true_l124:
	movl $1,%eax
	jmp end_if_l126
end_if_l126:
	jmp LifEnd_72
LifEnd_72:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l95
join_l96:
	jmp LifFalse_75
LifFalse_75:
	movl $0,%eax
	jmp LifEnd_76
join_l95:
	jmp LifTrue_74
LifTrue_74:
	movl $20,%eax
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
	movl (%ebx),%ecx
	movl $7,%ebx
	movl $8,%edx
	movl $-12,%ebp
	leal 76(%esp), %esi
	addl %ebp,%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ebx,%edx
	subl %ecx,%edx
	movl $-72,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $25,%edx
	movl $-68,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l94:
	movl $4,%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $7,%ebx
	movl $8,%edx
	movl $-12,%ebp
	leal 76(%esp), %esi
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
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je if_true_l127
if_false_l128:
	movl $0,%eax
	jmp end_if_l129
if_true_l127:
	movl $1,%eax
	jmp end_if_l129
end_if_l129:
	jmp LifEnd_76
LifEnd_76:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l90
join_l91:
	jmp LifFalse_78
LifFalse_78:
	jmp LifEnd_79
join_l90:
	jmp LifTrue_77
LifTrue_77:
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-72,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $26,%ecx
	movl $-68,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
join_l89:
	movl $1,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	movl $16,%eax
	movl $-12,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%ebp
	leal 76(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl $-12,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl $-72,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $26,%edx
	movl $-68,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l86:
	movl $1,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $8,%ebp
	movl $-12,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %edx,%ebp
	movl $1,%edx
	addl %ebp,%edx
	imull %ecx,%edx
	movl $16,%ecx
	movl $-12,%ebp
	leal 76(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $20,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $7,%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ebp,%edx
	subl %ecx,%edx
	movl $-72,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl $26,%edx
	movl $-68,%ebp
	leal 76(%esp), %ecx
	addl %ebp,%ecx
	movl %edx,(%ecx)
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l83:
	movl $1,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $7,%ebp
	movl $8,%ebx
	movl $-12,%esi
	leal 76(%esp), %edi
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
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
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
	movl $27,%ecx
	movl $-68,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
join_l80:
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $4,%eax
	movl $4,%ecx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $1,%ebp
	addl %ecx,%ebp
	imull %eax,%ebp
	movl $12,%eax
	movl $-12,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebp,%eax
	movl (%edx),%ebp
	movl %ebp,(%eax)
	leal -32(%esp), %esp
	movl $1,%eax
	movl $4,%ebp
	movl $-12,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl $-108,%eax
	leal 108(%esp), %ecx
	addl %eax,%ecx
	movl %ebp,(%ecx)
	movl $-12,%ecx
	leal 108(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %ecx,%eax
	call try_52
join_l77:
	leal 28(%esp), %esp
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl $-72,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%ebp),%ecx
	movl %ecx,(%edx)
	movl $29,%ecx
	movl $-68,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $-76,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	call tig_bounds_check
join_l74:
	movl $0,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	movl $16,%eax
	movl $-12,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%ebp
	leal 76(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl $-12,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl $-72,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $29,%edx
	movl $-68,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l71:
	movl $0,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $8,%ebp
	movl $-12,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %edx,%ebp
	movl $1,%edx
	addl %ebp,%edx
	imull %ecx,%edx
	movl $16,%ecx
	movl $-12,%ebp
	leal 76(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $20,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $7,%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ebp,%edx
	subl %ecx,%edx
	movl $-72,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl $29,%edx
	movl $-68,%ebp
	leal 76(%esp), %ecx
	addl %ebp,%ecx
	movl %edx,(%ecx)
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l68:
	movl $0,%eax
	movl $4,%ebx
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $7,%ebp
	movl $8,%edx
	movl $-12,%esi
	leal 76(%esp), %edi
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
	leal 76(%esp), %ebp
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
	jmp join_l130
join_l130:
	movl 56(%esp),%edi
	movl 52(%esp),%esi
	movl 48(%esp),%ebp
	jmp Lloop_start_80
killer_C60:
	movl $0,%eax
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 80(%esp), %esp
	ret
join_l110:
	jmp LifTrue_82
LifTrue_82:
	leal -28(%esp), %esp
	movl $-12,%ebx
	leal 104(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	call printboard_51
join_l109:
	leal 28(%esp), %esp
	jmp LifEnd_84
LifEnd_84:
	movl $0,%eax
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebx
	leal 80(%esp), %esp
	ret
.section .pcmap_data
stackdata_l132:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l109
.long frame_l133
.section .pcmap_data
frame_l133:
.long 0xffffff98
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l104
.long frame_l134
.section .pcmap_data
frame_l134:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l99
.long frame_l135
.section .pcmap_data
frame_l135:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l94
.long frame_l136
.section .pcmap_data
frame_l136:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l89
.long frame_l137
.section .pcmap_data
frame_l137:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l86
.long frame_l138
.section .pcmap_data
frame_l138:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l83
.long frame_l139
.section .pcmap_data
frame_l139:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l80
.long frame_l140
.section .pcmap_data
frame_l140:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l77
.long frame_l141
.section .pcmap_data
frame_l141:
.long 0xffffff98
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l74
.long frame_l142
.section .pcmap_data
frame_l142:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l71
.long frame_l143
.section .pcmap_data
frame_l143:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
.long join_l68
.long frame_l144
.section .pcmap_data
frame_l144:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l132
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
	leal -88(%esp), %esp
	movl $4,%eax
	leal 88(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l152:
proc_body_start_l151:
	movl $-24,%ecx
	leal 88(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $4,%edx
	movl $-24,%ecx
	movl %ebx,32(%esp)
	leal 88(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $4,%ebx
	movl $-24,%edx
	leal 88(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $-88,%eax
	leal 88(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
	call tig_alloc
join_l177:
	movl $4,%ecx
	movl $-24,%edx
	leal 88(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	jmp Lloop_start_34
Lloop_start_34:
	movl $0,%ecx
	cmpl %ecx,%ebx
	jne join_l173
join_l174:
	jmp Lloop_end_33
Lloop_end_33:
	movl $4,%ecx
	movl $-24,%edx
	leal 88(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %ecx,(%eax)
	movl $8,%ecx
	movl $-24,%ebp
	leal 88(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $4,%edx
	movl $-24,%ecx
	leal 88(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %eax,%ebp
	movl $-88,%eax
	leal 88(%esp), %edx
	addl %eax,%edx
	movl %ebp,(%edx)
	call tig_alloc
join_l172:
	movl $4,%ecx
	movl $-24,%edx
	leal 88(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	jmp Lloop_start_39
Lloop_start_39:
	movl $0,%ecx
	cmpl %ecx,%ebx
	jne join_l168
join_l169:
	jmp Lloop_end_38
Lloop_end_38:
	movl $4,%ecx
	movl $-24,%edx
	leal 88(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl %ecx,(%eax)
	movl $12,%ecx
	movl $-24,%ebp
	leal 88(%esp), %edx
	addl %ebp,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $1,%edx
	movl $4,%ecx
	movl $-24,%ebp
	leal 88(%esp), %esi
	addl %ebp,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	movl $4,%esi
	movl $-24,%ebp
	leal 88(%esp), %edi
	addl %ebp,%edi
	addl %esi,%edi
	movl (%edi),%esi
	addl %ecx,%esi
	subl %edx,%esi
	movl $1,%edx
	addl %esi,%edx
	imull %eax,%edx
	movl $-88,%eax
	leal 88(%esp), %esi
	addl %eax,%esi
	movl %edx,(%esi)
	call tig_alloc
join_l167:
	movl $1,%ecx
	movl $4,%edx
	movl $-24,%ebx
	leal 88(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $4,%ebp
	movl $-24,%ebx
	leal 88(%esp), %esi
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
	jne join_l163
join_l164:
	jmp Lloop_end_43
Lloop_end_43:
	movl $1,%ebp
	movl $4,%edx
	movl $-24,%esi
	leal 88(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $4,%ebx
	movl $-24,%esi
	leal 88(%esp), %edi
	addl %esi,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	addl %edx,%ebx
	subl %ebp,%ebx
	movl %ebx,(%eax)
	movl $16,%ebx
	movl $-24,%ebp
	leal 88(%esp), %edx
	addl %ebp,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $1,%edx
	movl $4,%ebx
	movl $-24,%ebp
	leal 88(%esp), %edi
	addl %ebp,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl $4,%edi
	movl $-24,%ebp
	leal 88(%esp), %esi
	addl %ebp,%esi
	addl %edi,%esi
	movl (%esi),%edi
	addl %ebx,%edi
	subl %edx,%edi
	movl $1,%edx
	addl %edi,%edx
	imull %eax,%edx
	movl $-88,%eax
	leal 88(%esp), %edi
	addl %eax,%edi
	movl %edx,(%edi)
	call tig_alloc
join_l162:
	movl $1,%edi
	movl $4,%esi
	movl $-24,%ebx
	leal 88(%esp), %ebp
	addl %ebx,%ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	movl $4,%ebp
	movl $-24,%ebx
	leal 88(%esp), %ecx
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
	jne join_l158
join_l159:
	jmp Lloop_end_48
Lloop_end_48:
	movl $1,%ebp
	movl $4,%esi
	movl $-24,%ecx
	leal 88(%esp), %ebx
	addl %ecx,%ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	movl $4,%ebx
	movl $-24,%ecx
	leal 88(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %esi,%ebx
	subl %ebp,%ebx
	movl %ebx,(%eax)
	movl $20,%ebx
	movl $-24,%ebp
	leal 88(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl %eax,(%esi)
	leal -32(%esp), %esp
	movl $-24,%eax
	leal 120(%esp), %esi
	addl %eax,%esi
	movl %esi,%eax
	movl $0,%esi
	movl $-120,%ebx
	leal 120(%esp), %ebp
	addl %ebx,%ebp
	movl %esi,(%ebp)
	call try_52
join_l157:
	leal 28(%esp), %esp
	leal 88(%esp), %ecx
	movl $0,%edx
	leal 88(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 88(%esp), %esp
	ret
join_l158:
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
join_l163:
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
join_l168:
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
join_l173:
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
	leal 88(%esp), %ecx
	movl $0,%edx
	leal 88(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 88(%esp), %esp
	ret
.section .pcmap_data
stackdata_l183:
.long 1
.long 0xffffffe8
.section .pcmap
.long join_l177
.long frame_l184
.section .pcmap_data
frame_l184:
.long 0xffffffa8
.long 0x80000004
.long 0x80000000
.long stackdata_l183
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
.long join_l172
.long frame_l185
.section .pcmap_data
frame_l185:
.long 0xffffffa8
.long 0x80000004
.long 0x80000000
.long stackdata_l183
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
.long join_l167
.long frame_l186
.section .pcmap_data
frame_l186:
.long 0xffffffa8
.long 0x80000004
.long 0x80000000
.long stackdata_l183
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
.long join_l162
.long frame_l187
.section .pcmap_data
frame_l187:
.long 0xffffffa8
.long 0x80000004
.long 0x80000000
.long stackdata_l183
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
.long join_l157
.long frame_l188
.section .pcmap_data
frame_l188:
.long 0xffffff8c
.long 0x80000004
.long 0x80000000
.long stackdata_l183
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

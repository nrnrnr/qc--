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
.long 6
Lgbl_95:
.long 1
.byte 45
.byte 0
.long 6
Lgbl_42:
.long 1
.byte 48
.byte 0
.long 6
Lgbl_51:
.long 1
.byte 10
.byte 0
.long 6
Lgbl_49:
.long 1
.byte 32
.byte 0
.long 6
Lgbl_41:
.long 1
.byte 57
.byte 0
.section .text
isdigit_39:
	leal -104(%esp), %esp
	movl $4,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 104(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l26:
proc_body_start_l25:
	movl %eax,32(%esp)
	movl $-8,%eax
	movl %ecx,36(%esp)
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,40(%esp)
	leal 104(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 104(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-104,%eax
	leal 104(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_ord
join_l42:
	leal Lgbl_42,%ecx
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,60(%esp)
	call tig_ord
join_l39:
	movl 60(%esp),%ecx
	cmpl %eax,%ecx
	jge if_true_l46
if_false_l47:
	movl $0,%eax
	jmp end_if_l48
if_true_l46:
	movl $1,%eax
	jmp end_if_l48
end_if_l48:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l35
join_l36:
	jmp LifFalse_45
LifFalse_45:
	movl $0,%eax
	jmp LifEnd_46
join_l35:
	jmp LifTrue_44
LifTrue_44:
	movl $4,%eax
	movl $-8,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-104,%eax
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_ord
join_l34:
	leal Lgbl_41,%ecx
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,64(%esp)
	call tig_ord
join_l31:
	movl 64(%esp),%ecx
	cmpl %eax,%ecx
	jle if_true_l49
if_false_l50:
	movl $0,%eax
	jmp end_if_l51
if_true_l49:
	movl $1,%eax
	jmp end_if_l51
end_if_l51:
	jmp LifEnd_46
LifEnd_46:
	movl $4,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 108(%esp), %esp
	ret
killer_C23:
	movl $0,%eax
	movl $4,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 108(%esp), %esp
	ret
.section .pcmap_data
stackdata_l54:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l42
.long frame_l55
.section .pcmap_data
frame_l55:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l54
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
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
.long isdigit_39_gc_data
.section .pcmap
.long join_l39
.long frame_l56
.section .pcmap_data
frame_l56:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l54
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
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
.long 0xffffffd4
.long 0
.long 0
.long isdigit_39_gc_data
.section .pcmap
.long join_l34
.long frame_l57
.section .pcmap_data
frame_l57:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l54
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
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
.long isdigit_39_gc_data
.section .pcmap
.long join_l31
.long frame_l58
.section .pcmap_data
frame_l58:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l54
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
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
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long isdigit_39_gc_data
.section .text
.section .data
isdigit_39_gc_data:
.long 2
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
.long 0
.long 0
.long 0
.section .text
skipto_40:
	leal -68(%esp), %esp
	leal 68(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l66:
proc_body_start_l65:
	movl $-4,%ecx
	movl %eax,32(%esp)
	leal 68(%esp), %eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	jmp Lloop_start_56
Lloop_start_56:
	movl $4,%eax
	movl $-4,%ecx
	movl %edx,36(%esp)
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal Lgbl_49,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	movl %ebp,44(%esp)
	movl %ebx,40(%esp)
	call tig_compare_str
join_l81:
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l88
if_false_l89:
	movl $0,%eax
	jmp end_if_l90
if_true_l88:
	movl $1,%eax
	jmp end_if_l90
end_if_l90:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l77
join_l78:
	jmp LifFalse_54
LifFalse_54:
	movl $4,%eax
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal Lgbl_51,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
join_l76:
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l85
if_false_l86:
	movl $0,%eax
	jmp end_if_l87
if_true_l85:
	movl $1,%eax
	jmp end_if_l87
end_if_l87:
	jmp LifEnd_55
join_l77:
	jmp LifTrue_53
LifTrue_53:
	movl $1,%eax
	jmp LifEnd_55
LifEnd_55:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l72
join_l73:
	jmp Lloop_end_48
Lloop_end_48:
	movl $0,%eax
	movl $0,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 68(%esp), %esp
	ret
join_l72:
	jmp Lloop_body_57
Lloop_body_57:
	call tig_getchar
join_l71:
	movl $4,%ecx
	movl $-4,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp join_l91
join_l91:
	movl 52(%esp),%edi
	movl 48(%esp),%esi
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 36(%esp),%edx
	jmp Lloop_start_56
killer_C63:
	movl $0,%eax
	movl $0,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
stackdata_l94:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l81
.long frame_l95
.section .pcmap_data
frame_l95:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l94
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long skipto_40_gc_data
.section .pcmap
.long join_l76
.long frame_l96
.section .pcmap_data
frame_l96:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l94
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long skipto_40_gc_data
.section .pcmap
.long join_l71
.long frame_l97
.section .pcmap_data
frame_l97:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l94
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long skipto_40_gc_data
.section .text
.section .data
skipto_40_gc_data:
.long 1
.long 1
.long 6
.long 1
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
readint_38:
	leal -108(%esp), %esp
	movl $4,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 108(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l105:
proc_body_start_l104:
	movl %eax,32(%esp)
	movl $-12,%eax
	movl %ecx,36(%esp)
	leal 108(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-12,%ecx
	movl %edx,40(%esp)
	leal 108(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	movl $-12,%ecx
	movl %ebx,44(%esp)
	leal 108(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	leal -28(%esp), %esp
	movl $-12,%eax
	leal 136(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call skipto_40
join_l127:
	leal 28(%esp), %esp
	leal -32(%esp), %esp
	movl $4,%eax
	movl $-12,%ecx
	leal 140(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-140,%eax
	leal 140(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $-12,%eax
	leal 140(%esp), %edx
	addl %eax,%edx
	movl %edx,%eax
	call isdigit_39
join_l124:
	leal 28(%esp), %esp
	movl $4,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_60
Lloop_start_60:
	leal -32(%esp), %esp
	movl $4,%eax
	movl $-12,%ecx
	leal 140(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl $-140,%eax
	leal 140(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $-12,%eax
	leal 140(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call isdigit_39
join_l121:
	leal 28(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l117
join_l118:
	jmp Lloop_end_59
Lloop_end_59:
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	leal 108(%esp), %ecx
	addl %ebx,%ecx
	movl 40(%esp),%ebx
	movl %ebx,(%ecx)
	movl 44(%esp),%ebx
	leal 112(%esp), %esp
	ret
join_l117:
	jmp Lloop_body_61
Lloop_body_61:
	movl $10,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	imull %eax,%ecx
	movl $4,%eax
	movl $-12,%ebx
	leal 108(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $-108,%eax
	leal 108(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ecx,60(%esp)
	call tig_ord
join_l116:
	movl 60(%esp),%ecx
	addl %eax,%ecx
	leal Lgbl_42,%eax
	movl $-108,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,64(%esp)
	call tig_ord
join_l113:
	movl 64(%esp),%ecx
	subl %eax,%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	call tig_getchar
join_l110:
	movl $4,%ecx
	movl $-12,%ebx
	leal 108(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp join_l131
join_l131:
	movl 56(%esp),%edi
	movl 52(%esp),%esi
	movl 48(%esp),%ebp
	jmp Lloop_start_60
killer_C102:
	movl $0,%eax
	movl $4,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 112(%esp), %esp
	ret
.section .pcmap_data
stackdata_l133:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l127
.long frame_l134
.section .pcmap_data
frame_l134:
.long 0xffffff78
.long 0x80000008
.long 0xffffffbc
.long stackdata_l133
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc0
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
.long readint_38_gc_data
.section .pcmap
.long join_l124
.long frame_l135
.section .pcmap_data
frame_l135:
.long 0xffffff78
.long 0x80000008
.long 0xffffffbc
.long stackdata_l133
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc0
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
.long readint_38_gc_data
.section .pcmap
.long join_l121
.long frame_l136
.section .pcmap_data
frame_l136:
.long 0xffffff78
.long 0x80000008
.long 0xffffffbc
.long stackdata_l133
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc0
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
.long readint_38_gc_data
.section .pcmap
.long join_l116
.long frame_l137
.section .pcmap_data
frame_l137:
.long 0xffffff94
.long 0x80000008
.long 0xffffffbc
.long stackdata_l133
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc0
.long 0x40000009
.long 0xffffffc4
.long 0x4000000a
.long 0xffffffc8
.long 0x4000000b
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd0
.long 0
.long 0
.long 0
.long readint_38_gc_data
.section .pcmap
.long join_l113
.long frame_l138
.section .pcmap_data
frame_l138:
.long 0xffffff94
.long 0x80000008
.long 0xffffffbc
.long stackdata_l133
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc0
.long 0x40000009
.long 0xffffffc4
.long 0x4000000a
.long 0xffffffc8
.long 0x4000000b
.long 0xffffffcc
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
.long readint_38_gc_data
.section .pcmap
.long join_l110
.long frame_l139
.section .pcmap_data
frame_l139:
.long 0xffffff94
.long 0x80000008
.long 0xffffffbc
.long stackdata_l133
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc0
.long 0x40000009
.long 0xffffffc4
.long 0x4000000a
.long 0xffffffc8
.long 0x4000000b
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
.long readint_38_gc_data
.section .text
.section .data
readint_38_gc_data:
.long 3
.long 1
.long 1
.long 0
.long 10
.long 1
.long 1
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
readlist_63:
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l147:
proc_body_start_l146:
	movl $-12,%ecx
	movl %eax,32(%esp)
	leal 76(%esp), %eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $-76,%ecx
	movl %edx,36(%esp)
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	movl %ebp,44(%esp)
	movl %ebx,40(%esp)
	call tig_alloc
join_l163:
	movl $0,%ecx
	movl %ecx,(%eax)
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal -32(%esp), %esp
	movl $4,%eax
	movl $-12,%ebx
	leal 108(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl $-108,%eax
	leal 108(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $-12,%eax
	leal 108(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	call readint_38
join_l160:
	leal 28(%esp), %esp
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne join_l156
join_l157:
	jmp LifFalse_72
LifFalse_72:
	movl $0,%eax
	movl %eax,%edx
	jmp LifEnd_73
join_l156:
	jmp LifTrue_71
LifTrue_71:
	movl $8,%eax
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_alloc
join_l155:
	movl $8,%edi
	movl $-12,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl %edi,(%eax)
	leal -28(%esp), %esp
	movl $-12,%edi
	leal 104(%esp), %ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl %eax,84(%esp)
	movl %edi,%eax
	call readlist_63
join_l152:
	leal 28(%esp), %esp
	movl $4,%ecx
	movl 56(%esp),%edx
	movl %edx,%edi
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp LifEnd_73
LifEnd_73:
	movl %edx,%eax
	movl $0,%edx
	leal 76(%esp), %edi
	addl %edx,%edi
	movl 36(%esp),%edx
	movl %edx,(%edi)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 76(%esp), %esp
	ret
killer_C144:
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
stackdata_l168:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l163
.long frame_l169
.section .pcmap_data
frame_l169:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l168
.long 0x80000008
.long 0x80000007
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
.long 0
.long 0
.long 0
.long 0
.long readlist_63_gc_data
.section .pcmap
.long join_l160
.long frame_l170
.section .pcmap_data
frame_l170:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l168
.long 0x80000008
.long 0x80000007
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
.long 0
.long 0
.long 0
.long 0
.long readlist_63_gc_data
.section .pcmap
.long join_l155
.long frame_l171
.section .pcmap_data
frame_l171:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l168
.long 0x80000008
.long 0x80000007
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
.long 0
.long 0
.long 0
.long 0
.long readlist_63_gc_data
.section .pcmap
.long join_l152
.long frame_l172
.section .pcmap_data
frame_l172:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l168
.long 0x80000008
.long 0x80000007
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
.long 0xffffffec
.long 0
.long 0
.long 0
.long readlist_63_gc_data
.section .text
.section .data
readlist_63_gc_data:
.long 3
.long 1
.long 1
.long 0
.long 7
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.long 1
.section .text
merge_64:
	leal -108(%esp), %esp
	movl $4,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,32(%esp)
	leal 108(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 108(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l180:
proc_body_start_l179:
	movl %ecx,36(%esp)
	movl $-12,%ecx
	movl %edx,40(%esp)
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,44(%esp)
	leal 108(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 40(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l204
if_false_l205:
	movl $0,%eax
	jmp end_if_l206
if_true_l204:
	movl $1,%eax
	jmp end_if_l206
end_if_l206:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l199
join_l200:
	jmp LifFalse_87
LifFalse_87:
	movl $8,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	je if_true_l207
if_false_l208:
	movl $0,%eax
	jmp end_if_l209
if_true_l207:
	movl $1,%eax
	jmp end_if_l209
end_if_l209:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l197
join_l198:
	jmp LifFalse_83
LifFalse_83:
	movl $4,%eax
	movl $-12,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-12,%edx
	movl %ebx,48(%esp)
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl (%eax),%ebx
	cmpl %ebx,%ecx
	jl if_true_l210
if_false_l211:
	movl $0,%ecx
	jmp end_if_l212
if_true_l210:
	movl $1,%ecx
	jmp end_if_l212
end_if_l212:
	movl $0,%ebx
	cmpl %ebx,%ecx
	jne join_l195
join_l196:
	jmp LifFalse_79
LifFalse_79:
	movl $8,%ecx
	movl $-108,%ebx
	leal 108(%esp), %eax
	addl %ebx,%eax
	movl %ecx,(%eax)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	call tig_alloc
join_l188:
	movl $8,%edi
	movl $-12,%esi
	leal 108(%esp), %ebx
	addl %esi,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl (%edi),%ebx
	movl %ebx,(%eax)
	leal -32(%esp), %esp
	movl $-12,%ebx
	leal 140(%esp), %edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl $4,%edi
	movl $-12,%esi
	leal 140(%esp), %ebp
	addl %esi,%ebp
	addl %edi,%ebp
	movl (%ebp),%edi
	movl $4,%ebp
	movl $8,%esi
	movl $-12,%ecx
	leal 140(%esp), %edx
	addl %ecx,%edx
	addl %esi,%edx
	movl (%edx),%esi
	addl %ebp,%esi
	movl $-136,%ebp
	leal 140(%esp), %edx
	addl %ebp,%edx
	movl (%esi),%ebp
	movl %ebp,(%edx)
	movl $-140,%edx
	leal 140(%esp), %ebp
	addl %edx,%ebp
	movl %edi,(%ebp)
	movl %eax,96(%esp)
	movl %ebx,%eax
	call merge_64
join_l185:
	leal 24(%esp), %esp
	movl $4,%ecx
	movl 64(%esp),%edx
	movl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp LifEnd_80
join_l195:
	jmp LifTrue_78
LifTrue_78:
	movl $8,%eax
	movl $-108,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	call tig_alloc
join_l194:
	movl $4,%ebx
	movl $-12,%ebp
	leal 108(%esp), %edi
	addl %ebp,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	movl (%ebx),%edi
	movl %edi,(%eax)
	leal -32(%esp), %esp
	movl $-12,%edi
	leal 140(%esp), %ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl $4,%ebx
	movl $4,%ebp
	movl $-12,%esi
	leal 140(%esp), %ecx
	addl %esi,%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl $8,%ebp
	movl $-12,%ecx
	leal 140(%esp), %esi
	addl %ecx,%esi
	addl %ebp,%esi
	movl $-136,%ebp
	leal 140(%esp), %ecx
	addl %ebp,%ecx
	movl (%esi),%ebp
	movl %ebp,(%ecx)
	movl $-140,%ecx
	leal 140(%esp), %ebp
	addl %ecx,%ebp
	movl %ebx,(%ebp)
	movl %eax,100(%esp)
	movl %edi,%eax
	call merge_64
join_l191:
	leal 24(%esp), %esp
	movl $4,%ecx
	movl 68(%esp),%edx
	movl %edx,%edi
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp LifEnd_80
LifEnd_80:
	movl 60(%esp),%edi
	movl 56(%esp),%esi
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	jmp LifEnd_84
killer_C177:
	movl $0,%eax
	movl $8,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 116(%esp), %esp
	ret
join_l197:
	jmp LifTrue_82
LifTrue_82:
	movl $4,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%edx
	jmp LifEnd_84
LifEnd_84:
	jmp LifEnd_88
join_l199:
	jmp LifTrue_86
LifTrue_86:
	movl $8,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%edx
	jmp LifEnd_88
LifEnd_88:
	movl %edx,%eax
	movl $8,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 116(%esp), %esp
	ret
.section .pcmap_data
stackdata_l214:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l194
.long frame_l215
.section .pcmap_data
frame_l215:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l214
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
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
.long merge_64_gc_data
.section .pcmap
.long join_l191
.long frame_l216
.section .pcmap_data
frame_l216:
.long 0xffffff7c
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l214
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
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
.long 0xffffffd8
.long 0
.long 0
.long 0
.long merge_64_gc_data
.section .pcmap
.long join_l188
.long frame_l217
.section .pcmap_data
frame_l217:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l214
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
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
.long merge_64_gc_data
.section .pcmap
.long join_l185
.long frame_l218
.section .pcmap_data
frame_l218:
.long 0xffffff7c
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l214
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000000
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
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long merge_64_gc_data
.section .text
.section .data
merge_64_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 11
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
f_90:
	leal -104(%esp), %esp
	movl $4,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 104(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l226:
proc_body_start_l225:
	movl %eax,32(%esp)
	movl $-8,%eax
	movl %ecx,36(%esp)
	leal 104(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,40(%esp)
	leal 104(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 104(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jg if_true_l246
if_false_l247:
	movl $0,%eax
	jmp end_if_l248
if_true_l246:
	movl $1,%eax
	jmp end_if_l248
end_if_l248:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l241
join_l242:
	jmp LifFalse_92
LifFalse_92:
	movl %edi,64(%esp)
	movl %esi,60(%esp)
	movl %ebp,52(%esp)
	movl %ebx,44(%esp)
	jmp LifEnd_93
join_l241:
	jmp LifTrue_91
LifTrue_91:
	leal -32(%esp), %esp
	movl $10,%eax
	movl $4,%ecx
	movl $-8,%edx
	movl %ebx,76(%esp)
	leal 136(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl %eax,80(%esp)
	movl %ecx,%eax
	movl %eax,%ecx
	sarl $31, %ecx
	movl %ecx,%edx
	movl 80(%esp),%ecx
	idivl %ecx, %eax
	movl $-136,%ecx
	leal 136(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8,%eax
	leal 136(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	call f_90
join_l240:
	leal 28(%esp), %esp
	movl $10,%eax
	movl $10,%ecx
	movl $4,%edx
	movl $-8,%ebx
	movl %ebp,52(%esp)
	leal 104(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl %eax,56(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl 56(%esp),%ecx
	imull %ecx,%eax
	movl $4,%ecx
	movl $-8,%edx
	leal 104(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	subl %eax,%ecx
	leal Lgbl_42,%eax
	movl $-104,%ebp
	leal 104(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl %edi,64(%esp)
	movl %esi,60(%esp)
	movl %ecx,68(%esp)
	call tig_ord
join_l237:
	movl 68(%esp),%ecx
	addl %eax,%ecx
	movl $-104,%eax
	leal 104(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_chr
join_l234:
	movl $-104,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l231:
	jmp LifEnd_93
LifEnd_93:
	movl $0,%ecx
	movl %ecx,%eax
	movl $4,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 44(%esp),%ebx
	movl 60(%esp),%esi
	movl 64(%esp),%edi
	leal 108(%esp), %esp
	ret
killer_C223:
	movl $0,%eax
	movl $4,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 44(%esp),%ebx
	movl 60(%esp),%esi
	movl 64(%esp),%edi
	leal 108(%esp), %esp
	ret
.section .pcmap_data
stackdata_l250:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l240
.long frame_l251
.section .pcmap_data
frame_l251:
.long 0xffffff7c
.long 0x80000008
.long 0xffffffc0
.long stackdata_l250
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
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
.long f_90_gc_data
.section .pcmap
.long join_l237
.long frame_l252
.section .pcmap_data
frame_l252:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l250
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0
.long f_90_gc_data
.section .pcmap
.long join_l234
.long frame_l253
.section .pcmap_data
frame_l253:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l250
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long f_90_gc_data
.section .pcmap
.long join_l231
.long frame_l254
.section .pcmap_data
frame_l254:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l250
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffcc
.long 0x4000000a
.long 0xffffffd4
.long 0x4000000b
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long f_90_gc_data
.section .text
.section .data
f_90_gc_data:
.long 2
.long 1
.long 0
.long 6
.long 1
.long 0
.long 0
.long 1
.long 0
.long 0
.section .text
printint_65:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 72(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l262:
proc_body_start_l261:
	movl %eax,32(%esp)
	movl $-8,%eax
	movl %ecx,36(%esp)
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,40(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jl if_true_l284
if_false_l285:
	movl $0,%eax
	jmp end_if_l286
if_true_l284:
	movl $1,%eax
	jmp end_if_l286
end_if_l286:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l279
join_l280:
	jmp LifFalse_100
LifFalse_100:
	movl $4,%eax
	movl $-8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jg if_true_l287
if_false_l288:
	movl $0,%eax
	jmp end_if_l289
if_true_l287:
	movl $1,%eax
	jmp end_if_l289
end_if_l289:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l271
join_l272:
	jmp LifFalse_97
LifFalse_97:
	leal Lgbl_42,%eax
	movl $-72,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_print
join_l267:
	movl 56(%esp),%edi
	movl 52(%esp),%esi
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	jmp LifEnd_98
join_l271:
	jmp LifTrue_96
LifTrue_96:
	leal -32(%esp), %esp
	movl $4,%ecx
	movl $-8,%edx
	leal 104(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl $-104,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl $-8,%ecx
	leal 104(%esp), %eax
	addl %ecx,%eax
	call f_90
join_l270:
	leal 28(%esp), %esp
	jmp LifEnd_98
LifEnd_98:
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	jmp LifEnd_101
join_l279:
	jmp LifTrue_99
LifTrue_99:
	leal Lgbl_95,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_print
join_l278:
	leal -32(%esp), %esp
	movl $4,%edi
	movl $-8,%esi
	leal 104(%esp), %ebx
	addl %esi,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl $0,%ebx
	subl %edi,%ebx
	movl $-104,%edi
	leal 104(%esp), %esi
	addl %edi,%esi
	movl %ebx,(%esi)
	movl $-8,%ebx
	leal 104(%esp), %eax
	addl %ebx,%eax
	call f_90
join_l275:
	leal 28(%esp), %esp
	jmp LifEnd_101
LifEnd_101:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
killer_C259:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
stackdata_l291:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l278
.long frame_l292
.section .pcmap_data
frame_l292:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l291
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long printint_65_gc_data
.section .pcmap
.long join_l275
.long frame_l293
.section .pcmap_data
frame_l293:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l291
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long printint_65_gc_data
.section .pcmap
.long join_l270
.long frame_l294
.section .pcmap_data
frame_l294:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l291
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
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
.long printint_65_gc_data
.section .pcmap
.long join_l267
.long frame_l295
.section .pcmap_data
frame_l295:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l291
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long printint_65_gc_data
.section .text
.section .data
printint_65_gc_data:
.long 2
.long 1
.long 0
.long 3
.long 1
.long 0
.long 0
.section .text
printlist_66:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 72(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l303:
proc_body_start_l302:
	movl %eax,32(%esp)
	movl $-8,%eax
	movl %ecx,36(%esp)
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,40(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l323
if_false_l324:
	movl $0,%eax
	jmp end_if_l325
if_true_l323:
	movl $1,%eax
	jmp end_if_l325
end_if_l325:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l318
join_l319:
	jmp LifFalse_104
LifFalse_104:
	leal -32(%esp), %esp
	movl $4,%eax
	movl $-8,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $-104,%edx
	leal 104(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	movl $-8,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,%eax
	call printint_65
join_l314:
	leal 28(%esp), %esp
	leal Lgbl_49,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_print
join_l311:
	leal -32(%esp), %esp
	movl $4,%edi
	movl $4,%esi
	movl $-8,%ebx
	leal 104(%esp), %ebp
	addl %ebx,%ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	addl %edi,%esi
	movl $-104,%edi
	leal 104(%esp), %ebp
	addl %edi,%ebp
	movl (%esi),%edi
	movl %edi,(%ebp)
	movl $-8,%ebp
	leal 104(%esp), %edi
	addl %ebp,%edi
	movl (%edi),%eax
	call printlist_66
join_l308:
	leal 28(%esp), %esp
	jmp LifEnd_105
join_l318:
	jmp LifTrue_103
LifTrue_103:
	leal Lgbl_51,%eax
	movl $-72,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_print
join_l317:
	jmp LifEnd_105
LifEnd_105:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
killer_C300:
	movl $0,%eax
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
stackdata_l327:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l317
.long frame_l328
.section .pcmap_data
frame_l328:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l327
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long printlist_66_gc_data
.section .pcmap
.long join_l314
.long frame_l329
.section .pcmap_data
frame_l329:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l327
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
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
.long printlist_66_gc_data
.section .pcmap
.long join_l311
.long frame_l330
.section .pcmap_data
frame_l330:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l327
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long printlist_66_gc_data
.section .pcmap
.long join_l308
.long frame_l331
.section .pcmap_data
frame_l331:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l327
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long printlist_66_gc_data
.section .text
.section .data
printlist_66_gc_data:
.long 2
.long 1
.long 1
.long 3
.long 1
.long 1
.long 0
.section .text
tiger_main:
	leal -48(%esp), %esp
	movl $4,%eax
	leal 48(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l339:
proc_body_start_l338:
	movl $-16,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
	movl %ebp,4(%esp)
	movl %ebx,(%esp)
	call tig_getchar
join_l359:
	movl $4,%ecx
	movl $-16,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal -24(%esp), %esp
	movl $-16,%eax
	leal 72(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call readlist_63
join_l356:
	leal 24(%esp), %esp
	movl $8,%ecx
	movl $-16,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
join_l353:
	movl $4,%edi
	movl $-16,%esi
	leal 48(%esp), %ebx
	addl %esi,%ebx
	addl %edi,%ebx
	movl %eax,(%ebx)
	leal -24(%esp), %esp
	movl $-16,%eax
	leal 72(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call readlist_63
join_l350:
	leal 24(%esp), %esp
	movl $12,%ecx
	movl $-16,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal -32(%esp), %esp
	movl $-16,%eax
	leal 80(%esp), %ebx
	addl %eax,%ebx
	movl $8,%eax
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	movl $-16,%ecx
	leal 80(%esp), %edi
	addl %ecx,%edi
	addl %edx,%edi
	movl $-76,%edx
	leal 80(%esp), %ecx
	addl %edx,%ecx
	movl (%edi),%edx
	movl %edx,(%ecx)
	movl $-80,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %ebx,%eax
	call merge_64
join_l347:
	leal 24(%esp), %esp
	leal -28(%esp), %esp
	movl $-16,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,44(%esp)
	movl %edx,%eax
	movl $-76,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	call printlist_66
join_l344:
	leal 24(%esp), %esp
	leal 48(%esp), %ecx
	movl $0,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 4(%esp),%ebp
	movl (%esp),%ebx
	movl 8(%esp),%esi
	movl 12(%esp),%edi
	leal 48(%esp), %esp
	ret
killer_C336:
	movl $0,%eax
	leal 48(%esp), %ecx
	movl $0,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 4(%esp),%ebp
	movl (%esp),%ebx
	movl 8(%esp),%esi
	movl 12(%esp),%edi
	leal 48(%esp), %esp
	ret
.section .pcmap_data
stackdata_l365:
.long 1
.long 0xfffffff0
.section .pcmap
.long join_l359
.long frame_l366
.section .pcmap_data
frame_l366:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long stackdata_l365
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
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
.long tiger_main_gc_data
.section .pcmap
.long join_l356
.long frame_l367
.section .pcmap_data
frame_l367:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l365
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
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
.long tiger_main_gc_data
.section .pcmap
.long join_l353
.long frame_l368
.section .pcmap_data
frame_l368:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long stackdata_l365
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
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
.long tiger_main_gc_data
.section .pcmap
.long join_l350
.long frame_l369
.section .pcmap_data
frame_l369:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l365
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
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
.long tiger_main_gc_data
.section .pcmap
.long join_l347
.long frame_l370
.section .pcmap_data
frame_l370:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l365
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
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
.long tiger_main_gc_data
.section .pcmap
.long join_l344
.long frame_l371
.section .pcmap_data
frame_l371:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l365
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd0
.long 0x40000009
.long 0xffffffd4
.long 0x4000000a
.long 0xffffffd8
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
.long 0
.long 1
.long 1
.long 1
.long 1
.long 1

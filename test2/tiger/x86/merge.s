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
initialize_continuations_l18:
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
join_l34:
	leal Lgbl_42,%ecx
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,60(%esp)
	call tig_ord
join_l31:
	movl 60(%esp),%ecx
	cmpl %eax,%ecx
	jge if_true_l38
if_false_l39:
	movl $0,%eax
	jmp end_if_l40
if_true_l38:
	movl $1,%eax
	jmp end_if_l40
end_if_l40:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l27
join_l28:
	jmp LifFalse_45
LifFalse_45:
	movl $0,%eax
	jmp LifEnd_46
join_l27:
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
join_l26:
	leal Lgbl_41,%ecx
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,64(%esp)
	call tig_ord
join_l23:
	movl 64(%esp),%ecx
	cmpl %eax,%ecx
	jle if_true_l41
if_false_l42:
	movl $0,%eax
	jmp end_if_l43
if_true_l41:
	movl $1,%eax
	jmp end_if_l43
end_if_l43:
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
killer_C16:
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
stackdata_l46:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l34
.long frame_l47
.section .pcmap_data
frame_l47:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l46
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
.long frame_l48
.section .pcmap_data
frame_l48:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l46
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
.long join_l26
.long frame_l49
.section .pcmap_data
frame_l49:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l46
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
.long join_l23
.long frame_l50
.section .pcmap_data
frame_l50:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l46
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
initialize_continuations_l59:
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
join_l74:
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l81
if_false_l82:
	movl $0,%eax
	jmp end_if_l83
if_true_l81:
	movl $1,%eax
	jmp end_if_l83
end_if_l83:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l70
join_l71:
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
join_l69:
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l78
if_false_l79:
	movl $0,%eax
	jmp end_if_l80
if_true_l78:
	movl $1,%eax
	jmp end_if_l80
end_if_l80:
	jmp LifEnd_55
join_l70:
	jmp LifTrue_53
LifTrue_53:
	movl $1,%eax
	jmp LifEnd_55
LifEnd_55:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l65
join_l66:
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
join_l65:
	jmp Lloop_body_57
Lloop_body_57:
	call tig_getchar
join_l64:
	movl $4,%ecx
	movl $-4,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp join_l84
join_l84:
	movl 52(%esp),%edi
	movl 48(%esp),%esi
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 36(%esp),%edx
	jmp Lloop_start_56
killer_C57:
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
stackdata_l87:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l74
.long frame_l88
.section .pcmap_data
frame_l88:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l69
.long frame_l89
.section .pcmap_data
frame_l89:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l64
.long frame_l90
.section .pcmap_data
frame_l90:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
initialize_continuations_l99:
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
	leal -32(%esp), %esp
	movl $-12,%eax
	leal 140(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call skipto_40
join_l121:
	leal 32(%esp), %esp
	leal -36(%esp), %esp
	movl $4,%eax
	movl $-12,%ecx
	leal 144(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-144,%eax
	leal 144(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $-12,%eax
	leal 144(%esp), %edx
	addl %eax,%edx
	movl %edx,%eax
	call isdigit_39
join_l118:
	leal 32(%esp), %esp
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
join_l115:
	leal 28(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l111
join_l112:
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
join_l111:
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
join_l110:
	movl 60(%esp),%ecx
	addl %eax,%ecx
	leal Lgbl_42,%eax
	movl $-108,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,64(%esp)
	call tig_ord
join_l107:
	movl 64(%esp),%ecx
	subl %eax,%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	call tig_getchar
join_l104:
	movl $4,%ecx
	movl $-12,%ebx
	leal 108(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp join_l125
join_l125:
	movl 56(%esp),%edi
	movl 52(%esp),%esi
	movl 48(%esp),%ebp
	jmp Lloop_start_60
killer_C97:
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
stackdata_l127:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l121
.long frame_l128
.section .pcmap_data
frame_l128:
.long 0xffffff74
.long 0x80000008
.long 0xffffffbc
.long stackdata_l127
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
.long join_l118
.long frame_l129
.section .pcmap_data
frame_l129:
.long 0xffffff74
.long 0x80000008
.long 0xffffffbc
.long stackdata_l127
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
.long join_l115
.long frame_l130
.section .pcmap_data
frame_l130:
.long 0xffffff78
.long 0x80000008
.long 0xffffffbc
.long stackdata_l127
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
.long join_l110
.long frame_l131
.section .pcmap_data
frame_l131:
.long 0xffffff94
.long 0x80000008
.long 0xffffffbc
.long stackdata_l127
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
.long join_l107
.long frame_l132
.section .pcmap_data
frame_l132:
.long 0xffffff94
.long 0x80000008
.long 0xffffffbc
.long stackdata_l127
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
.long join_l104
.long frame_l133
.section .pcmap_data
frame_l133:
.long 0xffffff94
.long 0x80000008
.long 0xffffffbc
.long stackdata_l127
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
initialize_continuations_l142:
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
join_l158:
	movl $0,%ecx
	movl %ecx,(%eax)
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal -36(%esp), %esp
	movl $4,%eax
	movl $-12,%ebx
	leal 112(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl $-112,%eax
	leal 112(%esp), %ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	movl $-12,%eax
	leal 112(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	call readint_38
join_l155:
	leal 32(%esp), %esp
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
	jne join_l151
join_l152:
	jmp LifFalse_72
LifFalse_72:
	movl $0,%eax
	movl %eax,%edx
	jmp LifEnd_73
join_l151:
	jmp LifTrue_71
LifTrue_71:
	movl $8,%eax
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_alloc
join_l150:
	movl $8,%edi
	movl $-12,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl %edi,(%eax)
	leal -32(%esp), %esp
	movl $-12,%edi
	leal 108(%esp), %ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl %eax,88(%esp)
	movl %edi,%eax
	call readlist_63
join_l147:
	leal 32(%esp), %esp
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
killer_C140:
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
stackdata_l163:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l158
.long frame_l164
.section .pcmap_data
frame_l164:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l163
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
.long frame_l165
.section .pcmap_data
frame_l165:
.long 0xffffff94
.long 0x80000004
.long 0xffffffd8
.long stackdata_l163
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
.long join_l150
.long frame_l166
.section .pcmap_data
frame_l166:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l163
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
.long join_l147
.long frame_l167
.section .pcmap_data
frame_l167:
.long 0xffffff94
.long 0x80000004
.long 0xffffffd8
.long stackdata_l163
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
initialize_continuations_l176:
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
	je if_true_l200
if_false_l201:
	movl $0,%eax
	jmp end_if_l202
if_true_l200:
	movl $1,%eax
	jmp end_if_l202
end_if_l202:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l195
join_l196:
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
	je if_true_l203
if_false_l204:
	movl $0,%eax
	jmp end_if_l205
if_true_l203:
	movl $1,%eax
	jmp end_if_l205
end_if_l205:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l193
join_l194:
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
	jl if_true_l206
if_false_l207:
	movl $0,%ecx
	jmp end_if_l208
if_true_l206:
	movl $1,%ecx
	jmp end_if_l208
end_if_l208:
	movl $0,%ebx
	cmpl %ebx,%ecx
	jne join_l191
join_l192:
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
join_l184:
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
join_l181:
	leal 24(%esp), %esp
	movl $4,%ecx
	movl 64(%esp),%edx
	movl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp LifEnd_80
join_l191:
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
join_l190:
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
join_l187:
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
killer_C174:
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
join_l193:
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
join_l195:
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
stackdata_l210:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l190
.long frame_l211
.section .pcmap_data
frame_l211:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l210
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
.long join_l187
.long frame_l212
.section .pcmap_data
frame_l212:
.long 0xffffff7c
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l210
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
.long join_l184
.long frame_l213
.section .pcmap_data
frame_l213:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l210
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
.long join_l181
.long frame_l214
.section .pcmap_data
frame_l214:
.long 0xffffff7c
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l210
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
initialize_continuations_l223:
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
	jg if_true_l243
if_false_l244:
	movl $0,%eax
	jmp end_if_l245
if_true_l243:
	movl $1,%eax
	jmp end_if_l245
end_if_l245:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l238
join_l239:
	jmp LifFalse_92
LifFalse_92:
	movl %edi,64(%esp)
	movl %esi,60(%esp)
	movl %ebp,52(%esp)
	movl %ebx,44(%esp)
	jmp LifEnd_93
join_l238:
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
join_l237:
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
join_l234:
	movl 68(%esp),%ecx
	addl %eax,%ecx
	movl $-104,%eax
	leal 104(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_chr
join_l231:
	movl $-104,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l228:
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
killer_C221:
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
stackdata_l247:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l237
.long frame_l248
.section .pcmap_data
frame_l248:
.long 0xffffff7c
.long 0x80000008
.long 0xffffffc0
.long stackdata_l247
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
.long join_l234
.long frame_l249
.section .pcmap_data
frame_l249:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l247
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
.long join_l231
.long frame_l250
.section .pcmap_data
frame_l250:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l247
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
.long join_l228
.long frame_l251
.section .pcmap_data
frame_l251:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l247
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
initialize_continuations_l260:
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
	jl if_true_l282
if_false_l283:
	movl $0,%eax
	jmp end_if_l284
if_true_l282:
	movl $1,%eax
	jmp end_if_l284
end_if_l284:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l277
join_l278:
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
	jg if_true_l285
if_false_l286:
	movl $0,%eax
	jmp end_if_l287
if_true_l285:
	movl $1,%eax
	jmp end_if_l287
end_if_l287:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l269
join_l270:
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
join_l265:
	movl 56(%esp),%edi
	movl 52(%esp),%esi
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	jmp LifEnd_98
join_l269:
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
join_l268:
	leal 28(%esp), %esp
	jmp LifEnd_98
LifEnd_98:
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	jmp LifEnd_101
join_l277:
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
join_l276:
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
join_l273:
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
killer_C258:
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
stackdata_l289:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l276
.long frame_l290
.section .pcmap_data
frame_l290:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l289
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
.long join_l273
.long frame_l291
.section .pcmap_data
frame_l291:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l289
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
.long join_l268
.long frame_l292
.section .pcmap_data
frame_l292:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l289
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
.long join_l265
.long frame_l293
.section .pcmap_data
frame_l293:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l289
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
initialize_continuations_l302:
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
	je if_true_l322
if_false_l323:
	movl $0,%eax
	jmp end_if_l324
if_true_l322:
	movl $1,%eax
	jmp end_if_l324
end_if_l324:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l317
join_l318:
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
join_l313:
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
join_l310:
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
join_l307:
	leal 28(%esp), %esp
	jmp LifEnd_105
join_l317:
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
join_l316:
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
stackdata_l326:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l316
.long frame_l327
.section .pcmap_data
frame_l327:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l326
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
.long join_l313
.long frame_l328
.section .pcmap_data
frame_l328:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l326
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
.long join_l310
.long frame_l329
.section .pcmap_data
frame_l329:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l326
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
.long join_l307
.long frame_l330
.section .pcmap_data
frame_l330:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l326
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
	leal -36(%esp), %esp
	movl $-16,%eax
	leal 84(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call readlist_63
join_l356:
	leal 36(%esp), %esp
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
	leal -36(%esp), %esp
	movl $-16,%eax
	leal 84(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call readlist_63
join_l350:
	leal 36(%esp), %esp
	movl $12,%ecx
	movl $-16,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal -44(%esp), %esp
	movl $-16,%eax
	leal 92(%esp), %ebx
	addl %eax,%ebx
	movl $8,%eax
	movl $-16,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	movl $-16,%ecx
	leal 92(%esp), %edi
	addl %ecx,%edi
	addl %edx,%edi
	movl $-88,%edx
	leal 92(%esp), %ecx
	addl %edx,%ecx
	movl (%edi),%edx
	movl %edx,(%ecx)
	movl $-92,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %ebx,%eax
	call merge_64
join_l347:
	leal 36(%esp), %esp
	leal -32(%esp), %esp
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl %eax,48(%esp)
	movl %edx,%eax
	movl $-80,%edx
	leal 80(%esp), %ecx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	call printlist_66
join_l344:
	leal 28(%esp), %esp
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
killer_C337:
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
.long 0xffffffac
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
.long 0xffffffac
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
.long 0xffffffac
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
.long 0xffffffb4
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

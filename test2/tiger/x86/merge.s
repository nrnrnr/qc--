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
initialize_continuations_l19:
proc_body_start_l18:
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
join_l35:
	leal Lgbl_42,%ecx
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,60(%esp)
	call tig_ord
join_l32:
	movl 60(%esp),%ecx
	cmpl %eax,%ecx
	jge if_true_l39
if_false_l40:
	movl $0,%eax
	jmp end_if_l41
if_true_l39:
	movl $1,%eax
	jmp end_if_l41
end_if_l41:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l28
join_l29:
	jmp LifFalse_45
LifFalse_45:
	movl $0,%eax
	jmp LifEnd_46
join_l28:
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
join_l27:
	leal Lgbl_41,%ecx
	movl $-104,%edx
	leal 104(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,64(%esp)
	call tig_ord
join_l24:
	movl 64(%esp),%ecx
	cmpl %eax,%ecx
	jle if_true_l42
if_false_l43:
	movl $0,%eax
	jmp end_if_l44
if_true_l42:
	movl $1,%eax
	jmp end_if_l44
end_if_l44:
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
stackdata_l47:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l35
.long frame_l48
.section .pcmap_data
frame_l48:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l47
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
.long join_l32
.long frame_l49
.section .pcmap_data
frame_l49:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l47
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
.long join_l27
.long frame_l50
.section .pcmap_data
frame_l50:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l47
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
.long join_l24
.long frame_l51
.section .pcmap_data
frame_l51:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l47
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
initialize_continuations_l61:
proc_body_start_l60:
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
join_l76:
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l83
if_false_l84:
	movl $0,%eax
	jmp end_if_l85
if_true_l83:
	movl $1,%eax
	jmp end_if_l85
end_if_l85:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l72
join_l73:
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
join_l71:
	movl $0,%ecx
	cmpl %ecx,%eax
	je if_true_l80
if_false_l81:
	movl $0,%eax
	jmp end_if_l82
if_true_l80:
	movl $1,%eax
	jmp end_if_l82
end_if_l82:
	jmp LifEnd_55
join_l72:
	jmp LifTrue_53
LifTrue_53:
	movl $1,%eax
	jmp LifEnd_55
LifEnd_55:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l67
join_l68:
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
join_l67:
	jmp Lloop_body_57
Lloop_body_57:
	call tig_getchar
join_l66:
	movl $4,%ecx
	movl $-4,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp join_l86
join_l86:
	movl 52(%esp),%edi
	movl 48(%esp),%esi
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 36(%esp),%edx
	jmp Lloop_start_56
killer_C58:
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
stackdata_l89:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l76
.long frame_l90
.section .pcmap_data
frame_l90:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l89
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
.long frame_l91
.section .pcmap_data
frame_l91:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l89
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
.long join_l66
.long frame_l92
.section .pcmap_data
frame_l92:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l89
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
initialize_continuations_l102:
proc_body_start_l101:
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
join_l124:
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
join_l121:
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
join_l118:
	leal 28(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l114
join_l115:
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
join_l114:
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
join_l113:
	movl 60(%esp),%ecx
	addl %eax,%ecx
	leal Lgbl_42,%eax
	movl $-108,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,64(%esp)
	call tig_ord
join_l110:
	movl 64(%esp),%ecx
	subl %eax,%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	call tig_getchar
join_l107:
	movl $4,%ecx
	movl $-12,%ebx
	leal 108(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp join_l128
join_l128:
	movl 56(%esp),%edi
	movl 52(%esp),%esi
	movl 48(%esp),%ebp
	jmp Lloop_start_60
killer_C99:
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
stackdata_l130:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l124
.long frame_l131
.section .pcmap_data
frame_l131:
.long 0xffffff78
.long 0x80000008
.long 0xffffffbc
.long stackdata_l130
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
.long frame_l132
.section .pcmap_data
frame_l132:
.long 0xffffff78
.long 0x80000008
.long 0xffffffbc
.long stackdata_l130
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
.long frame_l133
.section .pcmap_data
frame_l133:
.long 0xffffff78
.long 0x80000008
.long 0xffffffbc
.long stackdata_l130
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
.long join_l113
.long frame_l134
.section .pcmap_data
frame_l134:
.long 0xffffff94
.long 0x80000008
.long 0xffffffbc
.long stackdata_l130
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
.long join_l110
.long frame_l135
.section .pcmap_data
frame_l135:
.long 0xffffff94
.long 0x80000008
.long 0xffffffbc
.long stackdata_l130
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
.long join_l107
.long frame_l136
.section .pcmap_data
frame_l136:
.long 0xffffff94
.long 0x80000008
.long 0xffffffbc
.long stackdata_l130
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
initialize_continuations_l146:
proc_body_start_l145:
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
join_l162:
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
join_l159:
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
	jne join_l155
join_l156:
	jmp LifFalse_72
LifFalse_72:
	movl $0,%eax
	movl %eax,%edx
	jmp LifEnd_73
join_l155:
	jmp LifTrue_71
LifTrue_71:
	movl $8,%eax
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_alloc
join_l154:
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
join_l151:
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
killer_C143:
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
stackdata_l167:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l162
.long frame_l168
.section .pcmap_data
frame_l168:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l167
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
.long join_l159
.long frame_l169
.section .pcmap_data
frame_l169:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l167
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
.long join_l154
.long frame_l170
.section .pcmap_data
frame_l170:
.long 0xffffffb4
.long 0x80000004
.long 0xffffffd8
.long stackdata_l167
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
.long join_l151
.long frame_l171
.section .pcmap_data
frame_l171:
.long 0xffffff98
.long 0x80000004
.long 0xffffffd8
.long stackdata_l167
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
initialize_continuations_l181:
proc_body_start_l180:
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
	je if_true_l205
if_false_l206:
	movl $0,%eax
	jmp end_if_l207
if_true_l205:
	movl $1,%eax
	jmp end_if_l207
end_if_l207:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l200
join_l201:
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
	je if_true_l208
if_false_l209:
	movl $0,%eax
	jmp end_if_l210
if_true_l208:
	movl $1,%eax
	jmp end_if_l210
end_if_l210:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l198
join_l199:
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
	jl if_true_l211
if_false_l212:
	movl $0,%ecx
	jmp end_if_l213
if_true_l211:
	movl $1,%ecx
	jmp end_if_l213
end_if_l213:
	movl $0,%ebx
	cmpl %ebx,%ecx
	jne join_l196
join_l197:
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
join_l189:
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
join_l186:
	leal 24(%esp), %esp
	movl $4,%ecx
	movl 64(%esp),%edx
	movl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp LifEnd_80
join_l196:
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
join_l195:
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
join_l192:
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
killer_C178:
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
join_l198:
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
join_l200:
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
stackdata_l215:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l195
.long frame_l216
.section .pcmap_data
frame_l216:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l215
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
.long join_l192
.long frame_l217
.section .pcmap_data
frame_l217:
.long 0xffffff7c
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l215
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
.long join_l189
.long frame_l218
.section .pcmap_data
frame_l218:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l215
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
.long join_l186
.long frame_l219
.section .pcmap_data
frame_l219:
.long 0xffffff7c
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l215
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
initialize_continuations_l229:
proc_body_start_l228:
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
	jg if_true_l249
if_false_l250:
	movl $0,%eax
	jmp end_if_l251
if_true_l249:
	movl $1,%eax
	jmp end_if_l251
end_if_l251:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l244
join_l245:
	jmp LifFalse_92
LifFalse_92:
	movl %edi,64(%esp)
	movl %esi,60(%esp)
	movl %ebp,52(%esp)
	movl %ebx,44(%esp)
	jmp LifEnd_93
join_l244:
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
join_l243:
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
join_l240:
	movl 68(%esp),%ecx
	addl %eax,%ecx
	movl $-104,%eax
	leal 104(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_chr
join_l237:
	movl $-104,%ecx
	leal 104(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l234:
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
killer_C226:
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
stackdata_l253:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l243
.long frame_l254
.section .pcmap_data
frame_l254:
.long 0xffffff7c
.long 0x80000008
.long 0xffffffc0
.long stackdata_l253
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
.long join_l240
.long frame_l255
.section .pcmap_data
frame_l255:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l253
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
.long join_l237
.long frame_l256
.section .pcmap_data
frame_l256:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l253
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
.long join_l234
.long frame_l257
.section .pcmap_data
frame_l257:
.long 0xffffff98
.long 0x80000008
.long 0xffffffc0
.long stackdata_l253
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
initialize_continuations_l267:
proc_body_start_l266:
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
	jl if_true_l289
if_false_l290:
	movl $0,%eax
	jmp end_if_l291
if_true_l289:
	movl $1,%eax
	jmp end_if_l291
end_if_l291:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l284
join_l285:
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
	jg if_true_l292
if_false_l293:
	movl $0,%eax
	jmp end_if_l294
if_true_l292:
	movl $1,%eax
	jmp end_if_l294
end_if_l294:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l276
join_l277:
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
join_l272:
	movl 56(%esp),%edi
	movl 52(%esp),%esi
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	jmp LifEnd_98
join_l276:
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
join_l275:
	leal 28(%esp), %esp
	jmp LifEnd_98
LifEnd_98:
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	jmp LifEnd_101
join_l284:
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
join_l283:
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
join_l280:
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
killer_C264:
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
stackdata_l296:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l283
.long frame_l297
.section .pcmap_data
frame_l297:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l296
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
.long join_l280
.long frame_l298
.section .pcmap_data
frame_l298:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l296
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
.long frame_l299
.section .pcmap_data
frame_l299:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l296
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
.long join_l272
.long frame_l300
.section .pcmap_data
frame_l300:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l296
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
initialize_continuations_l310:
proc_body_start_l309:
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
	je if_true_l330
if_false_l331:
	movl $0,%eax
	jmp end_if_l332
if_true_l330:
	movl $1,%eax
	jmp end_if_l332
end_if_l332:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l325
join_l326:
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
join_l321:
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
join_l318:
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
join_l315:
	leal 28(%esp), %esp
	jmp LifEnd_105
join_l325:
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
join_l324:
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
killer_C307:
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
stackdata_l334:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l324
.long frame_l335
.section .pcmap_data
frame_l335:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l334
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
.long join_l321
.long frame_l336
.section .pcmap_data
frame_l336:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l334
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
.long join_l318
.long frame_l337
.section .pcmap_data
frame_l337:
.long 0xffffffb8
.long 0x80000008
.long 0xffffffe0
.long stackdata_l334
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
.long join_l315
.long frame_l338
.section .pcmap_data
frame_l338:
.long 0xffffff9c
.long 0x80000008
.long 0xffffffe0
.long stackdata_l334
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
initialize_continuations_l348:
proc_body_start_l347:
	movl $-16,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
	movl %ebp,4(%esp)
	movl %ebx,(%esp)
	call tig_getchar
join_l368:
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
join_l365:
	leal 24(%esp), %esp
	movl $8,%ecx
	movl $-16,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
join_l362:
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
join_l359:
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
join_l356:
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
join_l353:
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
killer_C345:
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
stackdata_l374:
.long 1
.long 0xfffffff0
.section .pcmap
.long join_l368
.long frame_l375
.section .pcmap_data
frame_l375:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long stackdata_l374
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
.long join_l365
.long frame_l376
.section .pcmap_data
frame_l376:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l374
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
.long join_l362
.long frame_l377
.section .pcmap_data
frame_l377:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long stackdata_l374
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
.long join_l359
.long frame_l378
.section .pcmap_data
frame_l378:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l374
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
.long frame_l379
.section .pcmap_data
frame_l379:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l374
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
.long frame_l380
.section .pcmap_data
frame_l380:
.long 0xffffffb8
.long 0x80000004
.long 0x80000000
.long stackdata_l374
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

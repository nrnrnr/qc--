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
	leal -48(%esp), %esp
	movl $4,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l12:
Lproc_body_start_l11:
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %ecx,8(%esp)
	leal 48(%esp), %ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,12(%esp)
	leal 48(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	movl $-8,%ecx
	movl %ebx,16(%esp)
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl $-48,%eax
	leal 48(%esp), %ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	movl %edx,20(%esp)
	call tig_ord
Ljoin_l27:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal Lgbl_45,%ecx
	movl $-48,%ebx
	movl %ebp,24(%esp)
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %eax,28(%esp)
	movl %edx,32(%esp)
	call tig_ord
Ljoin_l24:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	jge Ljoin_l20
Ljoin_l21:
	jmp LifFalse_55
LifFalse_55:
	movl $0,%eax
	jmp LifEnd_56
Ljoin_l20:
	jmp LifTrue_54
LifTrue_54:
	leal Cmm.global_area,%ebp
	movl (%ebp),%ebx
	movl $4,%ebp
	movl $-8,%eax
	leal 48(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	addl %ebp,%ecx
	movl $-48,%ebp
	leal 48(%esp), %eax
	addl %ebp,%eax
	movl (%ecx),%ebp
	movl %ebp,(%eax)
	call tig_ord
Ljoin_l19:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebx
	leal Lgbl_50,%ecx
	movl $-48,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl %eax,36(%esp)
	call tig_ord
Ljoin_l16:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	movl 36(%esp),%ecx
	cmpl %eax,%ecx
	jle Ljoin_l32
Ljoin_l33:
	movl $0,%eax
	jmp Ljoin_l31
Ljoin_l32:
	movl $1,%eax
	jmp Ljoin_l31
Ljoin_l31:
	jmp LifEnd_56
LifEnd_56:
	movl $4,%ecx
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	movl 12(%esp),%ecx
	movl %ecx,(%ebx)
	movl 16(%esp),%ebx
	movl 24(%esp),%ebp
	leal 52(%esp), %esp
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
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l36
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0
.long 0
.long 0x80000000
.long 0
.long isdigit_41_gc_data
.section .pcmap
.long Ljoin_l24
.long Lframe_l38
.section .pcmap_data
Lframe_l38:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l36
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0x80000000
.long 0
.long isdigit_41_gc_data
.section .pcmap
.long Ljoin_l19
.long Lframe_l39
.section .pcmap_data
Lframe_l39:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l36
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long isdigit_41_gc_data
.section .pcmap
.long Ljoin_l16
.long Lframe_l40
.section .pcmap_data
Lframe_l40:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l36
.long 0x80000008
.long 0x8000000e
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0xfffffff4
.long 0x80000000
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l43:
Lproc_body_start_l42:
	movl $-4,%ecx
	movl %eax,8(%esp)
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	jmp Lloop_start_70
Lloop_start_70:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl %edx,12(%esp)
	movl $-4,%edx
	movl %ebx,16(%esp)
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $-32,%eax
	leal 32(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	leal Lgbl_59,%eax
	movl $-28,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,20(%esp)
	call tig_compare_str
Ljoin_l57:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l53
Ljoin_l54:
	jmp LifFalse_68
LifFalse_68:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	movl $-4,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $-32,%eax
	leal 32(%esp), %edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	leal Lgbl_63,%eax
	movl $-28,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,24(%esp)
	call tig_compare_str
Ljoin_l52:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l62
Ljoin_l63:
	movl $0,%eax
	jmp Ljoin_l61
Ljoin_l62:
	movl $1,%eax
	jmp Ljoin_l61
Ljoin_l61:
	jmp LifEnd_69
Ljoin_l53:
	jmp LifTrue_67
LifTrue_67:
	movl $1,%eax
	jmp LifEnd_69
LifEnd_69:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l48
Ljoin_l49:
	jmp Lloop_end_58
Lloop_end_58:
	movl $0,%eax
	movl $0,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	leal 32(%esp), %esp
	ret
Ljoin_l48:
	jmp Lloop_body_71
Lloop_body_71:
	call tig_getchar
Ljoin_l47:
	movl $4,%ecx
	movl $-4,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Ljoin_l64
Ljoin_l64:
	movl 16(%esp),%ebx
	movl 12(%esp),%edx
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
.long 0xffffffe0
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l66
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
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
.long 0xfffffff4
.long 0
.long 0x80000000
.long 0
.long skipto_42_gc_data
.section .pcmap
.long Ljoin_l52
.long Lframe_l68
.section .pcmap_data
Lframe_l68:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l66
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
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
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long skipto_42_gc_data
.section .pcmap
.long Ljoin_l47
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l66
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
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
.long 0x80000000
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
	leal -52(%esp), %esp
	movl $4,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 52(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l72:
Lproc_body_start_l71:
	movl %eax,4(%esp)
	movl $-12,%eax
	movl %ecx,8(%esp)
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-12,%ecx
	movl %edx,12(%esp)
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	movl $-12,%ecx
	movl %ebx,16(%esp)
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $-12,%eax
	leal 52(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call skipto_42
Ljoin_l93:
	leal -4(%esp), %esp
	movl $-12,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl $-56,%ecx
	leal 56(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	call isdigit_41
Ljoin_l90:
	movl $4,%ecx
	movl $-12,%edx
	leal 52(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_78
Lloop_start_78:
	leal -4(%esp), %esp
	movl $-12,%eax
	leal 56(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $4,%ecx
	movl $-12,%ebx
	leal 56(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl $-56,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	call isdigit_41
Ljoin_l87:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l83
Ljoin_l84:
	jmp Lloop_end_73
Lloop_end_73:
	movl $8,%eax
	movl $-12,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 56(%esp), %esp
	ret
Ljoin_l83:
	jmp Lloop_body_79
Lloop_body_79:
	movl $10,%ebx
	movl $8,%eax
	movl $-12,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	imull %ebx,%eax
	leal Cmm.global_area,%ebx
	movl (%ebx),%edx
	movl $4,%ebx
	movl $-12,%ecx
	movl %ebp,20(%esp)
	leal 52(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %ebx,%ecx
	movl $-52,%ebx
	leal 52(%esp), %ebp
	addl %ebx,%ebp
	movl (%ecx),%ebx
	movl %ebx,(%ebp)
	movl %eax,24(%esp)
	movl %edx,28(%esp)
	call tig_ord
Ljoin_l82:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Lgbl_45,%eax
	movl $-52,%ebx
	leal 52(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl %ecx,32(%esp)
	movl %edx,36(%esp)
	call tig_ord
Ljoin_l79:
	leal Cmm.global_area,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl 32(%esp),%ecx
	subl %eax,%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 52(%esp), %ebp
	addl %edx,%ebp
	addl %eax,%ebp
	movl %ecx,(%ebp)
	call tig_getchar
Ljoin_l76:
	movl $4,%ecx
	movl $-12,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Ljoin_l97
Ljoin_l97:
	movl 20(%esp),%ebp
	jmp Lloop_start_78
.section .pcmap_data
Lstackdata_l99:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l93
.long Lframe_l100
.section .pcmap_data
Lframe_l100:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffd8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
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
.long 0x80000000
.long 0
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l90
.long Lframe_l101
.section .pcmap_data
Lframe_l101:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffd8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
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
.long 0x80000000
.long 0
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l87
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffd8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
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
.long 0x80000000
.long 0
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l82
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffd8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0
.long 0x80000000
.long 0
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l79
.long Lframe_l104
.section .pcmap_data
Lframe_l104:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffd8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0x80000000
.long 0
.long readint_40_gc_data
.section .pcmap
.long Ljoin_l76
.long Lframe_l105
.section .pcmap_data
Lframe_l105:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffd8
.long Lstackdata_l99
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0x80000000
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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l108:
Lproc_body_start_l107:
	movl $-12,%ecx
	movl %eax,(%esp)
	leal 28(%esp), %eax
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	addl %eax,%ecx
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jg Ljoin_l126
Ljoin_l127:
	jmp Lalc_88
Ljoin_l126:
	jmp Lalc_gc_87
Lalc_gc_87:
	movl %edx,4(%esp)
	call tig_call_gc
Ljoin_l125:
	movl 4(%esp),%edx
	jmp Lalc_88
Lalc_88:
	movl $8,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	addl %eax,%ecx
	movl $8,%eax
	movl %edx,4(%esp)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edx,(%eax)
	movl $0,%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-12,%edx
	movl %ebx,8(%esp)
	leal 28(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	leal -4(%esp), %esp
	movl $-12,%ecx
	leal 32(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl %ecx,%eax
	movl $4,%ecx
	movl $-12,%ebx
	leal 32(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl $-32,%ecx
	leal 32(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	call readint_40
Ljoin_l122:
	movl $8,%ecx
	movl $-12,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-12,%ebx
	leal 28(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l118
Ljoin_l119:
	jmp LifFalse_96
LifFalse_96:
	movl $0,%eax
	movl %eax,%edx
	jmp LifEnd_97
Ljoin_l118:
	jmp LifTrue_95
LifTrue_95:
	movl $12,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	addl %ebx,%ecx
	leal space_end,%ebx
	movl (%ebx),%eax
	cmpl %eax,%ecx
	jg Ljoin_l116
Ljoin_l117:
	jmp Lalc_93
Ljoin_l116:
	jmp Lalc_gc_92
Lalc_gc_92:
	call tig_call_gc
Ljoin_l115:
	jmp Lalc_93
Lalc_93:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	movl $4,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $12,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $8,%eax
	movl $-12,%ebx
	leal 28(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $-12,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %ecx,12(%esp)
	call readlist_81
Ljoin_l112:
	movl $4,%ecx
	movl 12(%esp),%edx
	movl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp LifEnd_97
LifEnd_97:
	movl %edx,%eax
	movl $0,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	movl 4(%esp),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l132:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l125
.long Lframe_l133
.section .pcmap_data
Lframe_l133:
.long 0xffffffe4
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l132
.long 0x80000008
.long 0x80000009
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
.long 0x80000000
.long 0
.long readlist_81_gc_data
.section .pcmap
.long Ljoin_l122
.long Lframe_l134
.section .pcmap_data
Lframe_l134:
.long 0xffffffe4
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l132
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0x80000000
.long 0
.long readlist_81_gc_data
.section .pcmap
.long Ljoin_l115
.long Lframe_l135
.section .pcmap_data
Lframe_l135:
.long 0xffffffe4
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l132
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0x80000000
.long 0
.long readlist_81_gc_data
.section .pcmap
.long Ljoin_l112
.long Lframe_l136
.section .pcmap_data
Lframe_l136:
.long 0xffffffe4
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l132
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long readlist_81_gc_data
.section .text
.section .data
readlist_81_gc_data:
.long 3
.long 1
.long 0
.long 1
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
	leal -52(%esp), %esp
	movl $4,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 52(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 52(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l139:
Lproc_body_start_l138:
	movl %ecx,4(%esp)
	movl $-12,%ecx
	movl %edx,8(%esp)
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,12(%esp)
	leal 52(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l161
Ljoin_l162:
	jmp LifFalse_117
LifFalse_117:
	movl $8,%eax
	movl $-12,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l159
Ljoin_l160:
	jmp LifFalse_113
LifFalse_113:
	movl $4,%eax
	movl $-12,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-12,%edx
	movl %ebx,16(%esp)
	leal 52(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl (%eax),%ebx
	cmpl %ebx,%ecx
	jl Ljoin_l157
Ljoin_l158:
	jmp LifFalse_109
LifFalse_109:
	movl $12,%ecx
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ebx
	cmpl %ebx,%eax
	jg Ljoin_l147
Ljoin_l148:
	jmp Lalc_106
Ljoin_l147:
	jmp Lalc_gc_105
Lalc_gc_105:
	call tig_call_gc
Ljoin_l146:
	jmp Lalc_106
Lalc_106:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	movl $4,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $12,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $8,%eax
	movl $-12,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal -8(%esp), %esp
	movl $-12,%edx
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl %edx,%eax
	movl $4,%edx
	movl $-12,%ebx
	movl %ebp,28(%esp)
	leal 60(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $4,%ebp
	movl $8,%ebx
	movl %esi,32(%esp)
	movl $-12,%esi
	movl %edi,36(%esp)
	leal 60(%esp), %edi
	addl %esi,%edi
	addl %ebx,%edi
	movl (%edi),%ebx
	addl %ebp,%ebx
	movl $-56,%ebp
	leal 60(%esp), %edi
	addl %ebp,%edi
	movl (%ebx),%ebp
	movl %ebp,(%edi)
	movl $-60,%ebp
	leal 60(%esp), %edi
	addl %ebp,%edi
	movl %edx,(%edi)
	movl %ecx,40(%esp)
	call merge_82
Ljoin_l143:
	movl $4,%ecx
	movl 32(%esp),%edx
	movl %edx,%edi
	addl %ecx,%edi
	movl %eax,(%edi)
	movl 24(%esp),%esi
	jmp LifEnd_110
Ljoin_l157:
	jmp LifTrue_108
LifTrue_108:
	movl $12,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	addl %ebx,%ecx
	leal space_end,%ebx
	movl (%ebx),%eax
	cmpl %eax,%ecx
	jg Ljoin_l155
Ljoin_l156:
	jmp Lalc_102
Ljoin_l155:
	jmp Lalc_gc_101
Lalc_gc_101:
	call tig_call_gc
Ljoin_l154:
	jmp Lalc_102
Lalc_102:
	movl $12,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	movl $4,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $12,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	movl $4,%eax
	movl $-12,%ebx
	leal 52(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal -8(%esp), %esp
	movl $-12,%edx
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl %edx,%eax
	movl $4,%edx
	movl $4,%ebx
	movl %edi,36(%esp)
	movl $-12,%edi
	movl %ebp,28(%esp)
	leal 60(%esp), %ebp
	addl %edi,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $8,%ebx
	movl $-12,%ebp
	leal 60(%esp), %edi
	addl %ebp,%edi
	addl %ebx,%edi
	movl $-56,%ebx
	leal 60(%esp), %ebp
	addl %ebx,%ebp
	movl (%edi),%ebx
	movl %ebx,(%ebp)
	movl $-60,%ebx
	leal 60(%esp), %ebp
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl %ecx,44(%esp)
	call merge_82
Ljoin_l151:
	movl $4,%ecx
	movl 36(%esp),%edx
	movl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp LifEnd_110
LifEnd_110:
	movl 28(%esp),%edi
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	jmp LifEnd_114
Ljoin_l159:
	jmp LifTrue_112
LifTrue_112:
	movl $4,%eax
	movl $-12,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%edx
	jmp LifEnd_114
LifEnd_114:
	jmp LifEnd_118
Ljoin_l161:
	jmp LifTrue_116
LifTrue_116:
	movl $8,%eax
	movl $-12,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%edx
	jmp LifEnd_118
LifEnd_118:
	movl %edx,%eax
	movl $8,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l167:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l146
.long Lframe_l168
.section .pcmap_data
Lframe_l168:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l167
.long 0x80000008
.long 0x8000000d
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
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
.long 0x80000000
.long 0
.long merge_82_gc_data
.section .pcmap
.long Ljoin_l143
.long Lframe_l169
.section .pcmap_data
Lframe_l169:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l167
.long 0x80000008
.long 0x8000000d
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0x80000000
.long 0
.long merge_82_gc_data
.section .pcmap
.long Ljoin_l154
.long Lframe_l170
.section .pcmap_data
Lframe_l170:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l167
.long 0x80000008
.long 0x8000000d
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
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
.long 0x80000000
.long 0
.long merge_82_gc_data
.section .pcmap
.long Ljoin_l151
.long Lframe_l171
.section .pcmap_data
Lframe_l171:
.long 0xffffffcc
.long 0x8000000c
.long 0xffffffd8
.long Lstackdata_l167
.long 0x80000008
.long 0x8000000d
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe8
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
.long 0x80000000
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
	leal -56(%esp), %esp
	movl $4,%edx
	leal 56(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l174:
Lproc_body_start_l173:
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %edx,8(%esp)
	leal 56(%esp), %edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	movl %ecx,12(%esp)
	leal 56(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jg Ljoin_l188
Ljoin_l189:
	jmp LifFalse_127
LifFalse_127:
	movl $0,%eax
	movl %esi,28(%esp)
	movl %ebp,24(%esp)
	movl %ebx,16(%esp)
	jmp LifEnd_128
Ljoin_l188:
	jmp LifTrue_126
LifTrue_126:
	leal -4(%esp), %esp
	movl $-8,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%eax
	movl $10,%eax
	movl $4,%edx
	movl $-8,%ecx
	movl %ebx,20(%esp)
	leal 60(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %eax,24(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 24(%esp),%ebx
	idivl %ebx, %eax
	movl %eax,%edx
	movl $-60,%ebx
	leal 60(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call f_120
Ljoin_l187:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $10,%eax
	movl $10,%edx
	movl $4,%ebx
	movl %ebp,24(%esp)
	movl $-8,%ebp
	movl %esi,28(%esp)
	leal 56(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl (%esi),%ebx
	movl %eax,32(%esp)
	movl %ebx,%eax
	movl %eax,%ebx
	sarl $31, %ebx
	movl %edx,36(%esp)
	movl %ebx,%edx
	movl 36(%esp),%ebx
	idivl %ebx, %eax
	movl 32(%esp),%edx
	imull %edx,%eax
	movl $4,%edx
	movl $-8,%ebx
	leal 56(%esp), %esi
	addl %ebx,%esi
	addl %edx,%esi
	movl (%esi),%edx
	subl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal Lgbl_45,%eax
	movl $-56,%ebx
	leal 56(%esp), %ebp
	addl %ebx,%ebp
	movl %eax,(%ebp)
	movl %ecx,40(%esp)
	movl %edx,44(%esp)
	call tig_ord
Ljoin_l184:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl 44(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	call tig_chr
Ljoin_l181:
	movl $-56,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l178:
	leal Cmm.global_area,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_128
LifEnd_128:
	movl $4,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	movl 24(%esp),%ebp
	movl 28(%esp),%esi
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l194:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l187
.long Lframe_l195
.section .pcmap_data
Lframe_l195:
.long 0xffffffc8
.long 0x80000008
.long 0xffffffd4
.long Lstackdata_l194
.long 0x80000008
.long 0x8000000a
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long f_120_gc_data
.section .pcmap
.long Ljoin_l184
.long Lframe_l196
.section .pcmap_data
Lframe_l196:
.long 0xffffffc8
.long 0x80000008
.long 0xffffffd4
.long Lstackdata_l194
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0x4000000a
.long 0x80000000
.long 0
.long f_120_gc_data
.section .pcmap
.long Ljoin_l181
.long Lframe_l197
.section .pcmap_data
Lframe_l197:
.long 0xffffffc8
.long 0x80000008
.long 0xffffffd4
.long Lstackdata_l194
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long f_120_gc_data
.section .pcmap
.long Ljoin_l178
.long Lframe_l198
.section .pcmap_data
Lframe_l198:
.long 0xffffffc8
.long 0x80000008
.long 0xffffffd4
.long Lstackdata_l194
.long 0x80000008
.long 0x8000000a
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
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
	leal -36(%esp), %esp
	movl $4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 36(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l201:
Lproc_body_start_l200:
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %ecx,8(%esp)
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,12(%esp)
	leal 36(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l217
Ljoin_l218:
	jmp LifFalse_141
LifFalse_141:
	movl $4,%eax
	movl $-8,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jg Ljoin_l209
Ljoin_l210:
	jmp LifFalse_137
LifFalse_137:
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Lgbl_45,%eax
	movl $-36,%ecx
	movl %ebx,16(%esp)
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,20(%esp)
	call tig_print
Ljoin_l205:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_138
Ljoin_l209:
	jmp LifTrue_136
LifTrue_136:
	leal -4(%esp), %esp
	movl $-8,%ecx
	leal 40(%esp), %eax
	addl %ecx,%eax
	movl $4,%ecx
	movl $-8,%edx
	movl %ebx,20(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-40,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	call f_120
Ljoin_l208:
	jmp LifEnd_138
LifEnd_138:
	jmp LifEnd_142
Ljoin_l217:
	jmp LifTrue_140
LifTrue_140:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_130,%eax
	movl $-36,%edx
	movl %ebx,16(%esp)
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,24(%esp)
	call tig_print
Ljoin_l216:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	movl $-8,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $4,%ecx
	movl $-8,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $0,%ebx
	subl %ecx,%ebx
	movl $-40,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	call f_120
Ljoin_l213:
	jmp LifEnd_142
LifEnd_142:
	movl $4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	leal 40(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l223:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l205
.long Lframe_l224
.section .pcmap_data
Lframe_l224:
.long 0xffffffdc
.long 0x80000008
.long 0xffffffe8
.long Lstackdata_l223
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0xfffffff0
.long 0
.long 0
.long 0x80000000
.long 0
.long printint_83_gc_data
.section .pcmap
.long Ljoin_l208
.long Lframe_l225
.section .pcmap_data
Lframe_l225:
.long 0xffffffdc
.long 0x80000008
.long 0xffffffe8
.long Lstackdata_l223
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0x80000000
.long 0
.long printint_83_gc_data
.section .pcmap
.long Ljoin_l216
.long Lframe_l226
.section .pcmap_data
Lframe_l226:
.long 0xffffffdc
.long 0x80000008
.long 0xffffffe8
.long Lstackdata_l223
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0xfffffff4
.long 0x80000000
.long 0
.long printint_83_gc_data
.section .pcmap
.long Ljoin_l213
.long Lframe_l227
.section .pcmap_data
Lframe_l227:
.long 0xffffffdc
.long 0x80000008
.long 0xffffffe8
.long Lstackdata_l223
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0x80000000
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
	leal -40(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l230:
Lproc_body_start_l229:
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %ecx,8(%esp)
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,12(%esp)
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-8,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l244
Ljoin_l245:
	jmp LifFalse_150
LifFalse_150:
	leal -4(%esp), %esp
	movl $-8,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-8,%edx
	movl %ebx,20(%esp)
	leal 44(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $-44,%ebx
	leal 44(%esp), %edx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	call printint_83
Ljoin_l240:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_59,%eax
	movl $-40,%edx
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,20(%esp)
	call tig_print
Ljoin_l237:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	movl $-8,%eax
	leal 44(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $4,%edx
	movl $-8,%ebx
	movl %ebp,28(%esp)
	leal 44(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl $-44,%ecx
	leal 44(%esp), %ebp
	addl %ecx,%ebp
	movl (%edx),%ecx
	movl %ecx,(%ebp)
	call printlist_84
Ljoin_l234:
	movl 16(%esp),%ebx
	jmp LifEnd_151
Ljoin_l244:
	jmp LifTrue_149
LifTrue_149:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_63,%eax
	movl $-40,%edx
	movl %ebp,24(%esp)
	leal 40(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl %ecx,28(%esp)
	call tig_print
Ljoin_l243:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_151
LifEnd_151:
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%ebp
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l250:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l240
.long Lframe_l251
.section .pcmap_data
Lframe_l251:
.long 0xffffffd8
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l250
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
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
.long 0x80000000
.long 0
.long printlist_84_gc_data
.section .pcmap
.long Ljoin_l237
.long Lframe_l252
.section .pcmap_data
Lframe_l252:
.long 0xffffffd8
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l250
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
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
.long 0xffffffec
.long 0
.long 0
.long 0x80000000
.long 0
.long printlist_84_gc_data
.section .pcmap
.long Ljoin_l234
.long Lframe_l253
.section .pcmap_data
Lframe_l253:
.long 0xffffffd8
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l250
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xfffffff0
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
.long 0x80000000
.long 0
.long printlist_84_gc_data
.section .pcmap
.long Ljoin_l243
.long Lframe_l254
.section .pcmap_data
Lframe_l254:
.long 0xffffffd8
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l250
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0xfffffff0
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
.long 0xfffffff4
.long 0x80000000
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l257:
Lproc_body_start_l256:
	movl $-16,%ecx
	movl %eax,(%esp)
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,4(%esp)
	call tig_getchar
Ljoin_l276:
	movl $4,%ecx
	movl $-16,%edx
	movl %ebx,8(%esp)
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $-16,%eax
	leal 36(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call readlist_81
Ljoin_l273:
	movl $8,%ecx
	movl $-16,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_getchar
Ljoin_l270:
	movl $4,%ecx
	movl $-16,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $-16,%eax
	leal 36(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	call readlist_81
Ljoin_l267:
	movl $12,%ecx
	movl $-16,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal -8(%esp), %esp
	movl $-16,%eax
	leal 44(%esp), %ebx
	addl %eax,%ebx
	movl %ebx,%eax
	movl $8,%ebx
	movl $-16,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $12,%edx
	movl $-16,%ecx
	movl %ebp,20(%esp)
	leal 44(%esp), %ebp
	addl %ecx,%ebp
	addl %edx,%ebp
	movl $-40,%edx
	leal 44(%esp), %ecx
	addl %edx,%ecx
	movl (%ebp),%edx
	movl %edx,(%ecx)
	movl $-44,%ecx
	leal 44(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	call merge_82
Ljoin_l264:
	leal -4(%esp), %esp
	movl $-16,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %eax,20(%esp)
	movl %edx,%eax
	movl $-40,%edx
	leal 40(%esp), %ecx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	call printlist_84
Ljoin_l261:
	movl $0,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l281:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l276
.long Lframe_l282
.section .pcmap_data
Lframe_l282:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l281
.long 0x80000008
.long 0x80000007
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l273
.long Lframe_l283
.section .pcmap_data
Lframe_l283:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l281
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l270
.long Lframe_l284
.section .pcmap_data
Lframe_l284:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l281
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l267
.long Lframe_l285
.section .pcmap_data
Lframe_l285:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l281
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe4
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l264
.long Lframe_l286
.section .pcmap_data
Lframe_l286:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l281
.long 0x80000008
.long 0x80000007
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
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l261
.long Lframe_l287
.section .pcmap_data
Lframe_l287:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l281
.long 0x80000008
.long 0x80000007
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
.long 0
.long 0
.long 0x80000000
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

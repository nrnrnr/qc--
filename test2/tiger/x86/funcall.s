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
.long 11
Lgbl_33:
.long 6
.byte 32
.byte 115
.byte 116
.byte 114
.byte 50
.byte 32
.byte 0
.long 11
Lgbl_35:
.long 6
.byte 32
.byte 115
.byte 116
.byte 114
.byte 49
.byte 32
.byte 0
.long 6
Lgbl_36:
.long 1
.byte 10
.byte 0
.section .text
a_a_27:
	leal -72(%esp), %esp
	movl $4,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,28(%esp)
	leal 72(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 72(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l16:
Lproc_body_start_l15:
	movl %ecx,32(%esp)
	movl $-12,%ecx
	movl %edx,36(%esp)
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,40(%esp)
	leal 72(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-12,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-72,%eax
	leal 72(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_print
Ljoin_l24:
	leal -4(%esp), %esp
	movl $-12,%edi
	leal 76(%esp), %esi
	addl %edi,%esi
	movl (%esi),%edi
	movl (%edi),%eax
	movl $4,%edi
	movl $-12,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	addl %edi,%ebx
	movl $-76,%edi
	leal 76(%esp), %esi
	addl %edi,%esi
	movl (%ebx),%edi
	movl %edi,(%esi)
	call fb_26
Ljoin_l21:
	movl $8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 80(%esp), %esp
	ret
killer_C13:
	movl $0,%eax
	movl $8,%ecx
	leal 72(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 80(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l24
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffe0
.long Lstackdata_l29
.long 0x80000008
.long 0x80000004
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
.long a_a_27_gc_data
.section .pcmap
.long Ljoin_l21
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffe0
.long Lstackdata_l29
.long 0x80000008
.long 0x80000004
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
.long a_a_27_gc_data
.section .text
.section .data
a_a_27_gc_data:
.long 3
.long 1
.long 0
.long 1
.long 4
.long 1
.long 0
.long 1
.long 0
.section .text
fa_25:
	leal -68(%esp), %esp
	movl $4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,24(%esp)
	leal 68(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 68(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l39:
Lproc_body_start_l38:
	movl %edx,28(%esp)
	movl $-12,%edx
	movl %ecx,32(%esp)
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,36(%esp)
	leal 68(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 32(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $5,%ecx
	cmpl %ecx,%eax
	jl Lif_true_l50
Lif_false_l51:
	movl $0,%eax
	jmp Lend_if_l52
Lif_true_l50:
	movl $1,%eax
	jmp Lend_if_l52
Lend_if_l52:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l45
Ljoin_l46:
	jmp LifFalse_30
LifFalse_30:
	movl %ebp,44(%esp)
	movl %ebx,40(%esp)
	jmp LifEnd_31
Ljoin_l45:
	jmp LifTrue_29
LifTrue_29:
	leal -8(%esp), %esp
	movl $-12,%ecx
	leal 76(%esp), %eax
	addl %ecx,%eax
	movl $1,%ecx
	movl $4,%edx
	movl %ebx,48(%esp)
	movl $-12,%ebx
	movl %ebp,52(%esp)
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ecx,%edx
	movl $8,%ecx
	movl $-12,%ebp
	leal 76(%esp), %ebx
	addl %ebp,%ebx
	addl %ecx,%ebx
	movl $-72,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	movl $-76,%ecx
	leal 76(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	call a_a_27
Ljoin_l44:
	jmp LifEnd_31
LifEnd_31:
	movl $0,%eax
	movl $8,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	leal 76(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l54:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l44
.long Lframe_l55
.section .pcmap_data
Lframe_l55:
.long 0xffffffbc
.long 0x8000000c
.long 0xffffffe0
.long Lstackdata_l54
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
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
.long fa_25_gc_data
.section .text
.section .data
fa_25_gc_data:
.long 3
.long 1
.long 0
.long 1
.long 4
.long 1
.long 0
.long 1
.long 0
.section .text
fb_26:
	leal -64(%esp), %esp
	movl $4,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 64(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l63:
Lproc_body_start_l62:
	movl %eax,24(%esp)
	movl $-8,%eax
	movl %ecx,28(%esp)
	leal 64(%esp), %ecx
	addl %eax,%ecx
	movl 24(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,32(%esp)
	leal 64(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	leal -8(%esp), %esp
	movl $4,%eax
	movl $-8,%edx
	leal 72(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-72,%eax
	leal 72(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $-8,%eax
	leal 72(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	leal Lgbl_33,%edx
	movl $-68,%ecx
	movl %ebx,44(%esp)
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	call fa_25
Ljoin_l68:
	movl $4,%ecx
	leal 64(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 36(%esp),%ebx
	leal 68(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l73:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l68
.long Lframe_l74
.section .pcmap_data
Lframe_l74:
.long 0xffffffc0
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l73
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
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
.long fb_26_gc_data
.section .text
.section .data
fb_26_gc_data:
.long 2
.long 1
.long 0
.long 3
.long 1
.long 0
.long 0
.section .text
tiger_main:
	leal -60(%esp), %esp
	movl $4,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l82:
Lproc_body_start_l81:
	movl $-4,%edx
	leal 60(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	movl $-4,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $4,%ecx
	movl $-68,%edx
	movl %ebx,32(%esp)
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal Lgbl_35,%ecx
	movl $-64,%ebx
	leal 68(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call fa_25
Ljoin_l93:
	leal -4(%esp), %esp
	movl $-4,%eax
	leal 64(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $1,%ecx
	movl $-64,%edx
	leal 64(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call fb_26
Ljoin_l90:
	leal Lgbl_36,%eax
	movl $-60,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,36(%esp)
	movl %esi,32(%esp)
	movl %ebp,28(%esp)
	call tig_print
Ljoin_l87:
	leal 60(%esp), %edx
	movl $0,%ecx
	leal 60(%esp), %edi
	addl %ecx,%edi
	movl (%edx),%ecx
	movl %ecx,(%edi)
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 60(%esp), %esp
	ret
killer_C79:
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $0,%edx
	leal 60(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
	movl 32(%esp),%esi
	movl 36(%esp),%edi
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l99:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l93
.long Lframe_l100
.section .pcmap_data
Lframe_l100:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l99
.long 0x80000008
.long 0x80000002
.long 0x80000002
.long 0x80000000
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l90
.long Lframe_l101
.section .pcmap_data
Lframe_l101:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l99
.long 0x80000008
.long 0x80000002
.long 0x80000002
.long 0x80000000
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
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l87
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l99
.long 0x80000008
.long 0x80000002
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
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 1
.long 1
.long 2
.long 1
.long 0

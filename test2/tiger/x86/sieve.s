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
Lgbl_59:
.long 1
.byte 10
.byte 0
.section .text
mod_36:
	leal -36(%esp), %esp
	movl $4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 36(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 36(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l7:
Lproc_body_start_l6:
	movl %ecx,4(%esp)
	movl $-12,%ecx
	movl %edx,8(%esp)
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-12,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	movl %ebx,16(%esp)
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 20(%esp),%ecx
	idivl %ecx, %eax
	movl $8,%ecx
	movl $-12,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	imull %eax,%ecx
	movl $4,%eax
	movl $-12,%ebx
	leal 36(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	subl %ecx,%eax
	movl $8,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	leal 44(%esp), %esp
	ret
.section .text
.section .data
mod_36_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 4
.long 1
.long 0
.long 0
.long 0
.section .text
mark_multiples_37:
	leal -56(%esp), %esp
	movl $4,%edx
	leal 56(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l18:
Lproc_body_start_l17:
	movl %eax,12(%esp)
	movl $-12,%eax
	movl %edx,16(%esp)
	leal 56(%esp), %edx
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	movl %ecx,20(%esp)
	leal 56(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-12,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $8,%eax
	movl $-12,%ecx
	movl %ebx,24(%esp)
	leal 56(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	jmp Lloop_start_50
Lloop_start_50:
	movl $8,%eax
	movl $-12,%ebx
	leal 56(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ebx
	leal 56(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	cmpl %edx,%eax
	jl Ljoin_l31
Ljoin_l32:
	jmp Lloop_end_40
Lloop_end_40:
	movl $0,%eax
	movl $4,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	movl 20(%esp),%edx
	movl %edx,(%ebx)
	movl 24(%esp),%ebx
	leal 60(%esp), %esp
	ret
Ljoin_l31:
	jmp Lloop_body_51
Lloop_body_51:
	leal Cmm.global_area,%ebx
	movl (%ebx),%ecx
	leal -8(%esp), %esp
	movl $-12,%ebx
	leal 64(%esp), %edx
	addl %ebx,%edx
	movl (%edx),%eax
	movl $8,%edx
	movl $-12,%ebx
	movl %ebp,36(%esp)
	leal 64(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $4,%ebp
	movl $-12,%ebx
	movl %esi,40(%esp)
	leal 64(%esp), %esi
	addl %ebx,%esi
	addl %ebp,%esi
	movl $-60,%ebp
	leal 64(%esp), %ebx
	addl %ebp,%ebx
	movl (%esi),%ebp
	movl %ebp,(%ebx)
	movl $-64,%ebx
	leal 64(%esp), %ebp
	addl %ebx,%ebp
	movl %edx,(%ebp)
	movl %ecx,44(%esp)
	call mod_36
Ljoin_l30:
	movl $-56,%ecx
	leal 56(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_not
Ljoin_l27:
	leal Cmm.global_area,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l23
Ljoin_l24:
	jmp LifFalse_48
LifFalse_48:
	movl $0,%eax
	jmp LifEnd_49
Ljoin_l23:
	jmp LifTrue_47
LifTrue_47:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 56(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	movl $-12,%ebp
	leal 56(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl $-52,%edx
	leal 56(%esp), %ebp
	addl %edx,%ebp
	movl (%ebx),%edx
	movl %edx,(%ebp)
	movl $18,%edx
	movl $-48,%ebp
	leal 56(%esp), %ebx
	addl %ebp,%ebx
	movl %edx,(%ebx)
	movl $-56,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,40(%esp)
	call tig_bounds_check
Ljoin_l22:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ebx
	movl %ebx,(%eax)
	movl $1,%eax
	movl $4,%ebx
	movl $1,%edx
	movl $8,%ecx
	movl $-12,%ebp
	leal 56(%esp), %esi
	addl %ebp,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	addl %edx,%ecx
	imull %ebx,%ecx
	movl $8,%ebx
	movl $-12,%edx
	leal 56(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	jmp LifEnd_49
LifEnd_49:
	movl $4,%eax
	movl $-12,%ebx
	leal 56(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-12,%ebx
	leal 56(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $8,%eax
	movl $-12,%edx
	leal 56(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	jmp Ljoin_l36
Ljoin_l36:
	movl 32(%esp),%esi
	movl 28(%esp),%ebp
	jmp Lloop_start_50
.section .pcmap_data
Lstackdata_l38:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l30
.long Lframe_l39
.section .pcmap_data
Lframe_l39:
.long 0xffffffc8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l38
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0xffffffec
.long 0x80000000
.long 0
.long mark_multiples_37_gc_data
.section .pcmap
.long Ljoin_l27
.long Lframe_l40
.section .pcmap_data
Lframe_l40:
.long 0xffffffc8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l38
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0xffffffec
.long 0x80000000
.long 0
.long mark_multiples_37_gc_data
.section .pcmap
.long Ljoin_l22
.long Lframe_l41
.section .pcmap_data
Lframe_l41:
.long 0xffffffc8
.long 0x80000008
.long 0xffffffdc
.long Lstackdata_l38
.long 0x80000008
.long 0x80000009
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0xfffffff0
.long 0
.long 0
.long 0x80000000
.long 0
.long mark_multiples_37_gc_data
.section .text
.section .data
mark_multiples_37_gc_data:
.long 3
.long 1
.long 0
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
step_38:
	leal -52(%esp), %esp
	movl $4,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 52(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l44:
Lproc_body_start_l43:
	movl %eax,12(%esp)
	movl $-8,%eax
	movl %ecx,16(%esp)
	leal 52(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,20(%esp)
	leal 52(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $8,%eax
	movl %ebx,24(%esp)
	movl $-8,%ebx
	movl %ebp,28(%esp)
	leal 52(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-8,%ebp
	movl %esi,32(%esp)
	leal 52(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl $-48,%ebx
	leal 52(%esp), %ebp
	addl %ebx,%ebp
	movl (%esi),%ebx
	movl %ebx,(%ebp)
	movl $24,%ebx
	movl $-44,%ebp
	leal 52(%esp), %esi
	addl %ebp,%esi
	movl %ebx,(%esi)
	movl $-52,%ebx
	leal 52(%esp), %esi
	addl %ebx,%esi
	movl %eax,(%esi)
	movl %edx,36(%esp)
	movl %ecx,40(%esp)
	call tig_bounds_check
Ljoin_l62:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl $4,%eax
	movl $1,%ecx
	movl $4,%edx
	movl $-8,%esi
	leal 52(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	imull %eax,%edx
	movl $8,%eax
	movl $-8,%ecx
	leal 52(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %edx,%eax
	movl $-52,%edx
	leal 52(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call tig_not
Ljoin_l59:
	leal Cmm.global_area,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l55
Ljoin_l56:
	jmp LifFalse_64
LifFalse_64:
	movl $0,%eax
	jmp LifEnd_65
Ljoin_l55:
	jmp LifTrue_63
LifTrue_63:
	leal Cmm.global_area,%ebx
	movl (%ebx),%esi
	movl $4,%ebx
	movl $-8,%ebp
	leal 52(%esp), %eax
	addl %ebp,%eax
	addl %ebx,%eax
	movl $-52,%ebx
	leal 52(%esp), %ebp
	addl %ebx,%ebp
	movl (%eax),%ebx
	movl %ebx,(%ebp)
	call tig_printi
Ljoin_l54:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal Lgbl_59,%eax
	movl $-52,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l51:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal -4(%esp), %esp
	movl $4,%eax
	movl $-8,%esi
	leal 56(%esp), %ecx
	addl %esi,%ecx
	addl %eax,%ecx
	movl $-56,%eax
	leal 56(%esp), %esi
	addl %eax,%esi
	movl (%ecx),%eax
	movl %eax,(%esi)
	movl $-8,%eax
	leal 56(%esp), %esi
	addl %eax,%esi
	movl (%esi),%eax
	call mark_multiples_37
Ljoin_l48:
	jmp LifEnd_65
LifEnd_65:
	movl $4,%ecx
	leal 52(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
	movl 32(%esp),%esi
	leal 56(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l67:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l62
.long Lframe_l68
.section .pcmap_data
Lframe_l68:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l67
.long 0x80000008
.long 0x8000000c
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
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0xfffffff4
.long 0x80000000
.long 0
.long step_38_gc_data
.section .pcmap
.long Ljoin_l59
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l67
.long 0x80000008
.long 0x8000000c
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
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0x80000000
.long 0
.long step_38_gc_data
.section .pcmap
.long Ljoin_l54
.long Lframe_l70
.section .pcmap_data
Lframe_l70:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l67
.long 0x80000008
.long 0x8000000c
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long step_38_gc_data
.section .pcmap
.long Ljoin_l51
.long Lframe_l71
.section .pcmap_data
Lframe_l71:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l67
.long 0x80000008
.long 0x8000000c
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
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long step_38_gc_data
.section .pcmap
.long Ljoin_l48
.long Lframe_l72
.section .pcmap_data
Lframe_l72:
.long 0xffffffcc
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l67
.long 0x80000008
.long 0x8000000c
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long step_38_gc_data
.section .text
.section .data
step_38_gc_data:
.long 2
.long 1
.long 0
.long 12
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
.section .text
tiger_main:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l75:
Lproc_body_start_l74:
	movl $-16,%ecx
	movl %eax,(%esp)
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	movl $1000,%eax
	movl $4,%ecx
	movl %edx,4(%esp)
	movl $-16,%edx
	movl %ebx,8(%esp)
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $2,%ebx
	movl $4,%ecx
	movl $-16,%edx
	movl %ebp,12(%esp)
	leal 36(%esp), %ebp
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
	jg Ljoin_l87
Ljoin_l88:
	jmp Lalc_34
Ljoin_l87:
	jmp Lalc_gc_33
Lalc_gc_33:
	call tig_call_gc
Ljoin_l86:
	jmp Lalc_34
Lalc_34:
	movl $4,%eax
	movl $2,%ecx
	movl $4,%edx
	movl $-16,%ebx
	leal 36(%esp), %ebp
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
	movl $-16,%ebx
	movl %esi,16(%esp)
	leal 36(%esp), %esi
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
	movl $-16,%ebp
	leal 36(%esp), %ecx
	addl %ebp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $1,%edx
	jmp Linit_start_30
Linit_start_30:
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
	movl $-16,%esi
	leal 36(%esp), %ebx
	addl %esi,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	addl %ecx,%ebp
	cmpl %ebp,%edx
	jle Ljoin_l82
Ljoin_l83:
	jmp Linit_end_31
Linit_end_31:
	movl $8,%ebp
	movl $-16,%ecx
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl $2,%eax
	movl $12,%ebx
	movl $-16,%ebp
	leal 36(%esp), %ecx
	addl %ebp,%ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_68
Lloop_start_68:
	movl $12,%eax
	movl $-16,%ecx
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $1,%ebx
	movl $4,%ecx
	movl $-16,%ebp
	leal 36(%esp), %esi
	addl %ebp,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	subl %ebx,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l80
Ljoin_l81:
	jmp Lloop_end_67
Lloop_end_67:
	movl $0,%eax
	movl $0,%ecx
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	movl 4(%esp),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	movl 16(%esp),%esi
	leal 36(%esp), %esp
	ret
Ljoin_l80:
	jmp Lloop_body_69
Lloop_body_69:
	leal -4(%esp), %esp
	movl $12,%ebx
	movl $-16,%ebp
	leal 40(%esp), %esi
	addl %ebp,%esi
	addl %ebx,%esi
	movl $-40,%ebx
	leal 40(%esp), %ebp
	addl %ebx,%ebp
	movl (%esi),%ebx
	movl %ebx,(%ebp)
	movl $-16,%ebx
	leal 40(%esp), %eax
	addl %ebx,%eax
	call step_38
Ljoin_l79:
	movl $1,%eax
	movl $12,%ecx
	movl $-16,%ebx
	leal 36(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%ebp
	leal 36(%esp), %ebx
	addl %ebp,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	jmp Lloop_start_68
Ljoin_l82:
	jmp Linit_start_30
.section .pcmap_data
Lstackdata_l93:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l86
.long Lframe_l94
.section .pcmap_data
Lframe_l94:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l93
.long 0x80000008
.long 0x80000005
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l79
.long Lframe_l95
.section .pcmap_data
Lframe_l95:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe0
.long Lstackdata_l93
.long 0x80000008
.long 0x80000005
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 4
.long 1
.long 0
.long 1
.long 0
.long 5
.long 1
.long 0
.long 1
.long 0
.long 1

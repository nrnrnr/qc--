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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l7:
Lproc_body_start_l6:
	movl %edx,4(%esp)
	leal 40(%esp), %edx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 40(%esp), %edx
	movl %ecx,12(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl %ebx,16(%esp)
	movl $-12,%ebx
	addl %ebx,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 40(%esp), %edx
	movl %ebp,20(%esp)
	movl $-12,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	movl %eax,24(%esp)
	movl %ebx,%eax
	movl %eax,%edx
	sarl $31, %edx
	idivl %ebp, %eax
	imull %eax,%ecx
	movl 24(%esp),%eax
	subl %ecx,%eax
	leal 40(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	leal 48(%esp), %esp
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
	leal 56(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 56(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l18:
Lproc_body_start_l17:
	movl %eax,12(%esp)
	leal 56(%esp), %eax
	movl %ecx,16(%esp)
	movl $-12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 56(%esp), %ecx
	movl %edx,20(%esp)
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	jmp Lloop_start_50
Lloop_start_50:
	leal 56(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	cmpl %ecx,%edx
	jl Ljoin_l31
Ljoin_l32:
	jmp Lloop_end_40
Lloop_end_40:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
Ljoin_l31:
	jmp Lloop_body_51
Lloop_body_51:
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal -8(%esp), %esp
	leal 64(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 64(%esp), %ecx
	movl %ebx,32(%esp)
	movl $-12,%ebx
	addl %ebx,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	leal 64(%esp), %ecx
	movl %ebp,36(%esp)
	movl $-12,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	addl %ebp,%ecx
	leal 64(%esp), %ebp
	movl %esi,40(%esp)
	movl $-60,%esi
	addl %esi,%ebp
	movl (%ecx),%esi
	movl %esi,(%ebp)
	leal 64(%esp), %ebp
	movl $-64,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl %edx,44(%esp)
	call mod_36
Ljoin_l30:
	leal 56(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
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
	movl $0,%ecx
	jmp LifEnd_49
Ljoin_l23:
	jmp LifTrue_47
LifTrue_47:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 56(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 56(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	leal 56(%esp), %ebx
	movl $-52,%ebp
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	movl $18,%ebx
	leal 56(%esp), %ebp
	movl $-48,%edx
	addl %edx,%ebp
	movl %ebx,(%ebp)
	leal 56(%esp), %ebx
	movl $-56,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %ecx,40(%esp)
	call tig_bounds_check
Ljoin_l22:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	leal 56(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 56(%esp), %edx
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
	movl $0,%eax
	jmp LifEnd_49
LifEnd_49:
	leal 56(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %eax
	movl $-12,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	addl %ebx,%ecx
	leal 56(%esp), %ebx
	movl $-12,%eax
	addl %eax,%ebx
	movl $8,%eax
	addl %eax,%ebx
	movl %ecx,(%ebx)
	jmp Ljoin_l36
Ljoin_l36:
	movl 32(%esp),%esi
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
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
	leal 52(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 52(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l44:
Lproc_body_start_l43:
	movl %eax,12(%esp)
	leal 52(%esp), %eax
	movl %edx,16(%esp)
	movl $-8,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %ecx,20(%esp)
	leal 52(%esp), %ecx
	movl %ebx,24(%esp)
	movl $-8,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $8,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	leal 52(%esp), %ebx
	movl %ebp,28(%esp)
	movl $-8,%ebp
	addl %ebp,%ebx
	movl $4,%ebp
	addl %ebp,%ebx
	leal 52(%esp), %ebp
	movl %esi,32(%esp)
	movl $-48,%esi
	addl %esi,%ebp
	movl (%ebx),%esi
	movl %esi,(%ebp)
	movl $24,%ebp
	leal 52(%esp), %esi
	movl $-44,%ebx
	addl %ebx,%esi
	movl %ebp,(%esi)
	leal 52(%esp), %ebp
	movl $-52,%esi
	addl %esi,%ebp
	movl %ecx,(%ebp)
	movl %edx,36(%esp)
	movl %eax,40(%esp)
	call tig_bounds_check
Ljoin_l62:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 52(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%eax
	leal 52(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
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
	leal Cmm.global_area,%ebp
	movl (%ebp),%esi
	leal 52(%esp), %ebp
	movl $-8,%ebx
	addl %ebx,%ebp
	movl $4,%ebx
	addl %ebx,%ebp
	leal 52(%esp), %ebx
	movl $-52,%eax
	addl %eax,%ebx
	movl (%ebp),%eax
	movl %eax,(%ebx)
	call tig_printi
Ljoin_l54:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal Lgbl_59,%eax
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l51:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal -4(%esp), %esp
	leal 56(%esp), %eax
	movl $-8,%esi
	addl %esi,%eax
	movl (%eax),%eax
	leal 56(%esp), %esi
	movl $-8,%ecx
	addl %ecx,%esi
	movl $4,%ecx
	addl %ecx,%esi
	leal 56(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%esi),%edx
	movl %edx,(%ecx)
	call mark_multiples_37
Ljoin_l48:
	jmp LifEnd_65
LifEnd_65:
	leal 52(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%ebx
	movl 28(%esp),%ebp
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l75:
Lproc_body_start_l74:
	leal 32(%esp), %ecx
	movl %eax,(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $1000,%eax
	leal 32(%esp), %ecx
	movl %edx,4(%esp)
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 32(%esp), %eax
	movl $-16,%edx
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
	leal 32(%esp), %eax
	movl $-16,%ecx
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
	leal 32(%esp), %ecx
	movl %ebx,8(%esp)
	movl $-16,%ebx
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
	leal 32(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl $1,%ebx
	jmp Linit_start_30
Linit_start_30:
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
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	cmpl %ecx,%ebx
	jle Ljoin_l82
Ljoin_l83:
	jmp Linit_end_31
Linit_end_31:
	leal 32(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $2,%ecx
	leal 32(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	jmp Lloop_start_68
Lloop_start_68:
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 32(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	subl %ecx,%eax
	cmpl %eax,%edx
	jle Ljoin_l80
Ljoin_l81:
	jmp Lloop_end_67
Lloop_end_67:
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ebx
	movl 12(%esp),%ebp
	leal 32(%esp), %esp
	ret
Ljoin_l80:
	jmp Lloop_body_69
Lloop_body_69:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	leal 36(%esp), %ebx
	movl $-16,%ebp
	addl %ebp,%ebx
	movl $12,%ebp
	addl %ebp,%ebx
	leal 36(%esp), %ebp
	movl $-36,%ecx
	addl %ecx,%ebp
	movl (%ebx),%ecx
	movl %ecx,(%ebp)
	call step_38
Ljoin_l79:
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal 32(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	jmp Lloop_start_68
Ljoin_l82:
	jmp Ljoin_l92
Ljoin_l92:
	movl 12(%esp),%ebp
	jmp Linit_start_30
.section .pcmap_data
Lstackdata_l94:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l86
.long Lframe_l95
.section .pcmap_data
Lframe_l95:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l94
.long 0x80000008
.long 0x80000005
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
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l79
.long Lframe_l96
.section .pcmap_data
Lframe_l96:
.long 0xffffffe0
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l94
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
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

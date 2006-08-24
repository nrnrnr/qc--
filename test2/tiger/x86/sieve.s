.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ:
Cmm.global_area:
.skip 4
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.align 4
Lgbl_59:
.long 1
.byte 10
.byte 0
.section .text
mod_36:
	leal -52(%esp), %esp
	leal 52(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 52(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	movl %eax,4(%esp)
	leal 52(%esp), %eax
	movl %eax,8(%esp)
	movl $-12,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl %eax,20(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 52(%esp), %ecx
	movl %eax,24(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 52(%esp), %ecx
	movl %eax,28(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %edx,36(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl 32(%esp),%ecx
	idivl %ecx, %eax
	movl 24(%esp),%ecx
	imull %eax,%ecx
	movl 20(%esp),%eax
	subl %ecx,%eax
	leal 52(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
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
	leal -108(%esp), %esp
	leal 108(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 108(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l16:
.Lproc_body_start_l15:
	movl %eax,12(%esp)
	leal 108(%esp), %eax
	movl %eax,16(%esp)
	movl $-12,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 108(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 108(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 108(%esp), %ecx
	movl %eax,28(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
Lloop_start_50:
.Lbranch_target_l28:
.Lbranch_target_l33:
	leal 108(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl %eax,32(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 32(%esp),%ecx
	cmpl %eax,%ecx
	jl Lloop_body_51
Lloop_end_40:
	movl $0,%eax
	leal 108(%esp), %ecx
	movl %ecx,88(%esp)
	movl $4,%ecx
	movl %ecx,92(%esp)
	movl 88(%esp),%ecx
	movl %edx,48(%esp)
	movl 92(%esp),%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 112(%esp), %esp
	ret
Lloop_body_51:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal -8(%esp), %esp
	leal 116(%esp), %ecx
	movl %eax,44(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 116(%esp), %ecx
	movl %ecx,48(%esp)
	movl $-12,%ecx
	movl %ecx,52(%esp)
	movl 48(%esp),%ecx
	movl %edx,56(%esp)
	movl 52(%esp),%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 116(%esp), %edx
	movl %ecx,60(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 116(%esp), %ecx
	movl %ecx,64(%esp)
	movl $-112,%ecx
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	movl %edx,72(%esp)
	movl 68(%esp),%edx
	addl %edx,%ecx
	movl 72(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 116(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	call mod_36
.Lcall_successor_l27:
	leal 108(%esp), %ecx
	movl $-108,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_not
.Lcall_successor_l24:
	leal Cmm.global_area,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l21:
.Lbranch_target_l32:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_47
LifFalse_48:
	movl $0,%eax
	jmp LifEnd_49
LifTrue_47:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 108(%esp), %edx
	movl %eax,68(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 108(%esp), %eax
	movl %eax,72(%esp)
	movl $-104,%eax
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $18,%eax
	leal 108(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 108(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl 80(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l20:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	leal 108(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 108(%esp), %edx
	movl %eax,84(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	movl 84(%esp),%eax
	movl %eax,(%ecx)
	movl $0,%eax
LifEnd_49:
	leal 108(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	leal 108(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.LLloop_start_50_l34:
	movl 48(%esp),%edx
	jmp Lloop_start_50
.section .pcmap_data
.Lstackdata_l36:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l27
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc4
.long .Lstackdata_l36
.long 0
.long 9
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffb8
.long 0
.long 0
.long mark_multiples_37_gc_data
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l38
.section .pcmap_data
.Lframe_l38:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc4
.long .Lstackdata_l36
.long 0
.long 9
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffb8
.long 0
.long 0
.long mark_multiples_37_gc_data
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l39
.section .pcmap_data
.Lframe_l39:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc4
.long .Lstackdata_l36
.long 0
.long 9
.long 2
.long 1
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
	leal -88(%esp), %esp
	leal 88(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 88(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l41:
.Lproc_body_start_l40:
	movl %eax,12(%esp)
	leal 88(%esp), %eax
	movl %eax,16(%esp)
	movl $-8,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 88(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,28(%esp)
	leal 88(%esp), %eax
	movl %eax,32(%esp)
	movl $-8,%eax
	movl %eax,36(%esp)
	movl 32(%esp),%eax
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 88(%esp), %ecx
	movl %eax,44(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 88(%esp), %eax
	movl %eax,48(%esp)
	movl $-84,%eax
	movl %eax,52(%esp)
	movl 48(%esp),%eax
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $24,%eax
	leal 88(%esp), %ecx
	movl %eax,60(%esp)
	movl $-80,%eax
	addl %eax,%ecx
	movl 60(%esp),%eax
	movl %eax,(%ecx)
	leal 88(%esp), %eax
	movl $-88,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,64(%esp)
	call tig_bounds_check
.Lcall_successor_l58:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal 88(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 88(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	leal 88(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_not
.Lcall_successor_l55:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l52:
.Lbranch_target_l62:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_63
LifFalse_64:
	movl $0,%eax
	jmp LifEnd_65
LifTrue_63:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 88(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 88(%esp), %edx
	movl %eax,68(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_printi
.Lcall_successor_l51:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_59,%ecx
	leal 88(%esp), %edx
	movl %eax,72(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l48:
	leal Cmm.global_area,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 92(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 92(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 92(%esp), %edx
	movl %ecx,80(%esp)
	movl $-92,%ecx
	addl %ecx,%edx
	movl 80(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call mark_multiples_37
.Lcall_successor_l45:
LifEnd_65:
	leal 88(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	leal 92(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l64:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l58
.long .Lframe_l65
.section .pcmap_data
.Lframe_l65:
.long 0x80000008
.long 0xffffffa8
.long 0xffffffe8
.long .Lstackdata_l64
.long 0
.long 12
.long 2
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
.long 0xffffffc4
.long 0
.long 0xffffffd0
.long 0
.long 0
.long step_38_gc_data
.section .pcmap
.long .Lcall_successor_l55
.long .Lframe_l66
.section .pcmap_data
.Lframe_l66:
.long 0x80000008
.long 0xffffffa8
.long 0xffffffe8
.long .Lstackdata_l64
.long 0
.long 12
.long 2
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
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long step_38_gc_data
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l67
.section .pcmap_data
.Lframe_l67:
.long 0x80000008
.long 0xffffffa8
.long 0xffffffe8
.long .Lstackdata_l64
.long 0
.long 12
.long 2
.long 1
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
.long step_38_gc_data
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l68
.section .pcmap_data
.Lframe_l68:
.long 0x80000008
.long 0xffffffa8
.long 0xffffffe8
.long .Lstackdata_l64
.long 0
.long 12
.long 2
.long 1
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
.long step_38_gc_data
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l69
.section .pcmap_data
.Lframe_l69:
.long 0x80000008
.long 0xffffffa8
.long 0xffffffe8
.long .Lstackdata_l64
.long 0
.long 12
.long 2
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
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l71:
.Lproc_body_start_l70:
	leal 56(%esp), %edx
	movl %eax,(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	movl $1000,%eax
	leal 56(%esp), %edx
	movl %eax,4(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
.Lbranch_target_l81:
.Lbranch_target_l87:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 56(%esp), %edx
	movl %eax,8(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $2,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	movl 8(%esp),%edx
	addl %eax,%edx
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jg Lalc_gc_33
Lalc_gc_33:
	movl %ecx,12(%esp)
	call tig_call_gc
.Lcall_successor_l80:
Lalc_34:
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $2,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	imull %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %edx
	movl %eax,16(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $2,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	movl 16(%esp),%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
Linit_start_30:
	movl $0,%edx
	movl %eax,20(%esp)
	movl $4,%eax
	movl %eax,24(%esp)
	movl %ecx,%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	imull %ecx,%eax
	movl %eax,32(%esp)
	movl 20(%esp),%ecx
	movl %ecx,%eax
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $1,%eax
	movl 28(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l77:
.Lbranch_target_l86:
	leal 56(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	cmpl %eax,%ecx
.Lbranch_target_l89:
	jle .LLinit_start_30_l88
Linit_end_31:
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl $2,%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_68:
.Lbranch_target_l76:
.Lbranch_target_l85:
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	subl %edx,%ecx
	cmpl %ecx,%eax
	jle Lloop_body_69
Lloop_end_67:
	movl $0,%eax
	leal 56(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %esp
	ret
Lloop_body_69:
	leal -4(%esp), %esp
	leal 60(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 60(%esp), %edx
	movl %ecx,40(%esp)
	movl $-60,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call step_38
.Lcall_successor_l75:
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 56(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_68
.LLinit_start_30_l88:
	movl 20(%esp),%eax
	jmp Linit_start_30
.section .pcmap_data
.Lstackdata_l91:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l80
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffd4
.long .Lstackdata_l91
.long 0
.long 5
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l75
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffd4
.long .Lstackdata_l91
.long 0
.long 5
.long 2
.long 1
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
.long 0
.long 1
.long 0
.long 5
.long 1
.long 0
.long 1
.long 0
.long 1

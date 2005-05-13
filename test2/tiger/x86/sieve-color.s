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
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,(%esp)
	leal 28(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	leal 28(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%edi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl %esi,%ecx
	imull %eax,%ecx
	movl %edi,%eax
	subl %ecx,%eax
	leal 28(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 36(%esp), %esp
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
	leal -40(%esp), %esp
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
	movl %edx,24(%esp)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
.Linitialize_continuations_l16:
.Lproc_body_start_l15:
	leal 40(%esp), %edx
	movl $-12,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
Lloop_start_50:
.Lbranch_target_l31:
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jl Lloop_body_51
Lloop_end_40:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	leal 44(%esp), %esp
	ret
Lloop_body_51:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 48(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $4,%esi
	addl %esi,%ecx
	leal 48(%esp), %edi
	movl $-44,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 48(%esp), %ecx
	movl $-48,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call mod_36
.Lcall_successor_l26:
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_not
.Lcall_successor_l23:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
.Lbranch_target_l30:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_47
LifFalse_48:
	movl $0,%eax
	jmp LifEnd_49
LifTrue_47:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 40(%esp), %eax
	movl $-36,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $18,%edx
	leal 40(%esp), %eax
	movl $-32,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l20:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	movl $1,%edx
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-12,%ebp
	addl %ebp,%ecx
	movl $8,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ecx
	movl $1,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	imull %ebp,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $0,%eax
LifEnd_49:
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_50
.section .pcmap_data
.Lstackdata_l33:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l26
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l33
.long 3
.long 9
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long mark_multiples_37_gc_data
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l33
.long 3
.long 9
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long mark_multiples_37_gc_data
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l33
.long 3
.long 9
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
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
	leal -36(%esp), %esp
	leal 36(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 36(%esp), %edx
	movl (%edx),%edx
	movl %edx,24(%esp)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
.Linitialize_continuations_l38:
.Lproc_body_start_l37:
	leal 36(%esp), %edx
	movl $-8,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $24,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l54:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_not
.Lcall_successor_l51:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
.Lbranch_target_l58:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_63
LifFalse_64:
	movl $0,%eax
	jmp LifEnd_65
LifTrue_63:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 36(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_printi
.Lcall_successor_l48:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_59,%ecx
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l45:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 40(%esp), %ecx
	movl $-40,%ebp
	addl %ebp,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	call mark_multiples_37
.Lcall_successor_l42:
LifEnd_65:
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l60:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l60
.long 3
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
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
.long 0x40000009
.long 0
.long 0x4000000a
.long 0
.long 0
.long step_38_gc_data
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l60
.long 3
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
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
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long step_38_gc_data
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l63
.section .pcmap_data
.Lframe_l63:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l60
.long 3
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long step_38_gc_data
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l60
.long 3
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000009
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
.long .Lcall_successor_l42
.long .Lframe_l65
.section .pcmap_data
.Lframe_l65:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l60
.long 3
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 9
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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l67:
.Lproc_body_start_l66:
	leal 28(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1000,%edx
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
.Lbranch_target_l78:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $2,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_33
Lalc_gc_33:
	call tig_call_gc
.Lcall_successor_l74:
Lalc_34:
	leal 28(%esp), %eax
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
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 28(%esp), %edx
	movl $-16,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	movl $2,%esi
	addl %esi,%edx
	movl $4,%esi
	imull %esi,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $1,%eax
Linit_start_30:
	movl $0,%edi
	movl $4,%edx
	movl %eax,%esi
	imull %edx,%esi
	movl %ecx,%edx
	addl %esi,%edx
	movl %edi,(%edx)
	movl $1,%edx
	addl %edx,%eax
.Lbranch_target_l79:
	leal 28(%esp), %edx
	movl $-16,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	movl $1,%esi
	addl %esi,%edx
	cmpl %edx,%eax
	jle Linit_start_30
Linit_end_31:
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $2,%edx
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
Lloop_start_68:
.Lbranch_target_l80:
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%ecx
	jle Lloop_body_69
Lloop_end_67:
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 28(%esp), %esp
	ret
Lloop_body_69:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 32(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	leal 32(%esp), %ecx
	movl $-32,%esi
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	call step_38
.Lcall_successor_l71:
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_68
.section .pcmap_data
.Lstackdata_l82:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l74
.long .Lframe_l83
.section .pcmap_data
.Lframe_l83:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l82
.long 2
.long 5
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l71
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x80000004
.long 0xffffffe4
.long 0xffffffec
.long .Lstackdata_l82
.long 2
.long 5
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
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

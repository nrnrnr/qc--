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
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l7:
Lproc_body_start_l6:
	movl %ecx,4(%esp)
	leal 48(%esp), %ecx
	movl %ecx,8(%esp)
	movl $-12,%ecx
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	addl %edi,%ecx
	movl %eax,(%ecx)
	leal 48(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%esp),%edi
	movl %edi,(%ecx)
	leal 48(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl 4(%esp),%edi
	movl %edi,(%ecx)
	leal 48(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%ecx),%eax
	leal 48(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $8,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %edi
	movl %ecx,20(%esp)
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%ecx
	leal 48(%esp), %edi
	movl %ecx,24(%esp)
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%ecx
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %edx,32(%esp)
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl 20(%esp),%edx
	imull %eax,%edx
	movl 28(%esp),%eax
	subl %edx,%eax
	leal 48(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%edi
	leal 56(%esp), %esp
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
	leal -64(%esp), %esp
	leal 64(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 64(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l18:
Lproc_body_start_l17:
	movl %edx,12(%esp)
	leal 64(%esp), %edx
	movl %edx,16(%esp)
	movl $-12,%edx
	movl %edx,20(%esp)
	movl 16(%esp),%edx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 64(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 64(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 64(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	jmp Lloop_start_50
Lloop_start_50:
	leal 64(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 64(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jl Ljoin_l31
Ljoin_l32:
	jmp Lloop_end_40
Lloop_end_40:
	movl $0,%eax
	leal 64(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal 68(%esp), %esp
	ret
Ljoin_l31:
	jmp Lloop_body_51
Lloop_body_51:
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal -8(%esp), %esp
	leal 72(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 72(%esp), %edx
	movl %edi,36(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edi
	leal 72(%esp), %edx
	movl %edi,40(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl $4,%edi
	addl %edi,%edx
	leal 72(%esp), %edi
	movl %edi,44(%esp)
	movl $-68,%edi
	movl %edi,48(%esp)
	movl 44(%esp),%edi
	movl %esi,52(%esp)
	movl 48(%esp),%esi
	addl %esi,%edi
	movl (%edx),%esi
	movl %esi,(%edi)
	leal 72(%esp), %edi
	movl $-72,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	movl %ecx,56(%esp)
	call mod_36
Ljoin_l30:
	leal 64(%esp), %edi
	movl $-64,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call tig_not
Ljoin_l27:
	leal Cmm.global_area,%edi
	movl 48(%esp),%esi
	movl %esi,(%edi)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l23
Ljoin_l24:
	jmp LifFalse_48
LifFalse_48:
	movl $0,%edi
	jmp LifEnd_49
Ljoin_l23:
	jmp LifTrue_47
LifTrue_47:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 64(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $8,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $18,%eax
	leal 64(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 64(%esp), %eax
	movl $-64,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_bounds_check
Ljoin_l22:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $1,%edi
	leal 64(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl (%esi),%esi
	movl $8,%edx
	addl %edx,%esi
	movl (%esi),%esi
	leal 64(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	movl $0,%edi
	jmp LifEnd_49
LifEnd_49:
	leal 64(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 64(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%esi
	addl %esi,%edi
	leal 64(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl $8,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	jmp Ljoin_l36
Ljoin_l36:
	movl 28(%esp),%edi
	movl 44(%esp),%esi
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
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd8
.long Lstackdata_l38
.long 8
.long 9
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
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
.long 0xfffffff0
.long 0
.long 0
.long mark_multiples_37_gc_data
.section .pcmap
.long Ljoin_l27
.long Lframe_l40
.section .pcmap_data
Lframe_l40:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd8
.long Lstackdata_l38
.long 8
.long 9
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
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
.long 0xfffffff0
.long 0
.long 0
.long mark_multiples_37_gc_data
.section .pcmap
.long Ljoin_l22
.long Lframe_l41
.section .pcmap_data
Lframe_l41:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffd8
.long Lstackdata_l38
.long 8
.long 9
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
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
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l44:
Lproc_body_start_l43:
	movl %edi,12(%esp)
	leal 56(%esp), %edi
	movl %edi,16(%esp)
	movl $-8,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 56(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 56(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %ecx
	movl %edi,28(%esp)
	movl $-8,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	leal 56(%esp), %edi
	movl %edi,32(%esp)
	movl $-52,%edi
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	movl %esi,40(%esp)
	movl 36(%esp),%esi
	addl %esi,%edi
	movl (%ecx),%esi
	movl %esi,(%edi)
	movl $24,%edi
	leal 56(%esp), %esi
	movl $-48,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 56(%esp), %edi
	movl $-56,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,44(%esp)
	call tig_bounds_check
Ljoin_l62:
	leal Cmm.global_area,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	leal 56(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	movl $1,%eax
	addl %eax,%esi
	movl $4,%eax
	imull %eax,%esi
	addl %esi,%edi
	leal 56(%esp), %esi
	movl $-56,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call tig_not
Ljoin_l59:
	leal Cmm.global_area,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l55
Ljoin_l56:
	jmp LifFalse_64
LifFalse_64:
	movl $0,%eax
	jmp LifEnd_65
Ljoin_l55:
	jmp LifTrue_63
LifTrue_63:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 56(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_printi
Ljoin_l54:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_59,%esi
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l51:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal -4(%esp), %esp
	leal 60(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 60(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-60,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call mark_multiples_37
Ljoin_l48:
	jmp LifEnd_65
LifEnd_65:
	leal 56(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%esi
	movl 12(%esp),%edi
	leal 60(%esp), %esp
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
.long 0x80000008
.long 0xffffffc8
.long 0xfffffff4
.long Lstackdata_l67
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
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
.long 0xffffffe4
.long 0
.long 0xfffffff0
.long 0
.long 0
.long step_38_gc_data
.section .pcmap
.long Ljoin_l59
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0x80000008
.long 0xffffffc8
.long 0xfffffff4
.long Lstackdata_l67
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
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
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long step_38_gc_data
.section .pcmap
.long Ljoin_l54
.long Lframe_l70
.section .pcmap_data
Lframe_l70:
.long 0x80000008
.long 0xffffffc8
.long 0xfffffff4
.long Lstackdata_l67
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long step_38_gc_data
.section .pcmap
.long Ljoin_l51
.long Lframe_l71
.section .pcmap_data
Lframe_l71:
.long 0x80000008
.long 0xffffffc8
.long 0xfffffff4
.long Lstackdata_l67
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
.long 0x4000000b
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
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
.long Ljoin_l48
.long Lframe_l72
.section .pcmap_data
Lframe_l72:
.long 0x80000008
.long 0xffffffc8
.long 0xfffffff4
.long Lstackdata_l67
.long 8
.long 12
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe0
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l75:
Lproc_body_start_l74:
	leal 36(%esp), %edx
	movl %edi,(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl $1000,%edi
	leal 36(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 36(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $2,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%edi
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jg Ljoin_l87
Ljoin_l88:
	jmp Lalc_gc_33
Ljoin_l87:
	jmp Lalc_gc_33
Lalc_gc_33:
	movl %ecx,4(%esp)
	call tig_call_gc
Ljoin_l86:
Lalc_34:
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $2,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	imull %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	movl $4,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $2,%eax
	addl %eax,%edi
	movl $4,%eax
	imull %eax,%edi
	addl %edi,%ecx
	leal Cmm.global_area,%edi
	movl %ecx,(%edi)
	leal 36(%esp), %ecx
	movl $-16,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	movl $1,%ecx
	jmp Linit_start_30
Linit_start_30:
	movl $0,%edi
	movl $4,%eax
	movl %edx,8(%esp)
	movl %ecx,%edx
	imull %eax,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%eax
	movl %eax,%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl %edi,(%edx)
	movl $1,%edx
	movl 16(%esp),%ecx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl $-16,%edi
	addl %edi,%edx
	movl $4,%edi
	addl %edi,%edx
	movl (%edx),%edx
	movl $1,%edi
	addl %edi,%edx
	cmpl %edx,%ecx
	jle Ljoin_l82
Ljoin_l83:
	jmp Linit_end_31
Linit_end_31:
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $2,%edx
	leal 36(%esp), %ecx
	movl $-16,%edi
	addl %edi,%ecx
	movl $12,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	jmp Lloop_start_68
Lloop_start_68:
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 36(%esp), %ecx
	movl $-16,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $1,%edi
	subl %edi,%ecx
	cmpl %ecx,%edx
	jle Ljoin_l80
Ljoin_l81:
	jmp Lloop_end_67
Lloop_end_67:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 36(%esp), %esp
	ret
Ljoin_l80:
	jmp Lloop_body_69
Lloop_body_69:
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%edi
	addl %edi,%eax
	leal 40(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl $12,%ecx
	addl %ecx,%edi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call step_38
Ljoin_l79:
	leal 36(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl $12,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl $1,%edx
	addl %edx,%edi
	leal 36(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl %edi,(%edx)
	jmp Lloop_start_68
Ljoin_l82:
	jmp Ljoin_l92
Ljoin_l92:
	movl %eax,%edx
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
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe0
.long Lstackdata_l94
.long 8
.long 5
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l79
.long Lframe_l96
.section .pcmap_data
Lframe_l96:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe0
.long Lstackdata_l94
.long 8
.long 5
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffdc
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

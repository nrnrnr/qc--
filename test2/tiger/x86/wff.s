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
Lgbl_142:
.long 0
.byte 0
Lgbl_124:
.long 1
.byte 122
.byte 0
Lgbl_105:
.long 1
.byte 65
.byte 0
Lgbl_93:
.long 1
.byte 9
.byte 0
Lgbl_44:
.long 2
.byte 63
.byte 32
.byte 0
Lgbl_108:
.long 1
.byte 90
.byte 0
Lgbl_49:
.long 1
.byte 10
.byte 0
Lgbl_117:
.long 1
.byte 97
.byte 0
.section .text
err_37:
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l10:
.Lproc_body_start_l9:
	movl %eax,4(%esp)
	leal 60(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_44,%ecx
	movl %eax,20(%esp)
	leal 60(%esp), %eax
	movl %eax,24(%esp)
	movl $-60,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,36(%esp)
	call tig_print
.Lcall_successor_l23:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 60(%esp), %edx
	movl %eax,40(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l20:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_49,%ecx
	leal 60(%esp), %edx
	movl %eax,44(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l17:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $1,%ecx
	leal 60(%esp), %edx
	movl %eax,48(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_exit
.Lcall_successor_l14:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l29:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l29
.long 0
.long 11
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
.long 0xffffffd8
.long 0
.long 0
.long err_37_gc_data
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l29
.long 0
.long 11
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
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long err_37_gc_data
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l29
.long 0
.long 11
.long 2
.long 1
.long 0
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
.long err_37_gc_data
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l29
.long 0
.long 11
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long err_37_gc_data
.section .text
.section .data
err_37_gc_data:
.long 2
.long 1
.long 1
.long 11
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
.section .text
insert_38:
	leal -132(%esp), %esp
	leal 132(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl %eax,8(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 132(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l35:
.Lproc_body_start_l34:
	movl %eax,12(%esp)
	leal 132(%esp), %eax
	movl %eax,16(%esp)
	movl $-12,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l66:
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_86
LifFalse_87:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl %eax,44(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 132(%esp), %ecx
	movl %eax,48(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 132(%esp), %ecx
	movl %eax,52(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 52(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 132(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,28(%esp)
	call tig_compare_str
.Lcall_successor_l57:
	leal Cmm.global_area,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l64:
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_82
LifFalse_83:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl %eax,68(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	leal 132(%esp), %edx
	movl %eax,72(%esp)
	movl $-128,%eax
	addl %eax,%edx
	movl 72(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 132(%esp), %eax
	movl $-132,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l51:
	leal Cmm.global_area,%ecx
	movl 68(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l65:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl LifTrue_78
LifFalse_79:
.Lbranch_target_l70:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_75
Lalc_gc_75:
	call tig_call_gc
.Lcall_successor_l42:
Lalc_76:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 132(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,100(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 140(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 140(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 140(%esp), %edx
	movl %ecx,112(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 140(%esp), %edx
	movl %ecx,116(%esp)
	movl $-136,%ecx
	addl %ecx,%edx
	movl 116(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 140(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl 112(%esp),%edx
	movl %edx,(%ecx)
	call insert_38
.Lcall_successor_l39:
	movl $8,%ecx
	movl %eax,112(%esp)
	movl 100(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 112(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,116(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 116(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_80
LifTrue_78:
.Lbranch_target_l69:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_71
Lalc_gc_71:
	call tig_call_gc
.Lcall_successor_l48:
Lalc_72:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 132(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 140(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,84(%esp)
	movl %ecx,%eax
	leal 140(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 140(%esp), %edx
	movl %ecx,88(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 140(%esp), %edx
	movl %ecx,92(%esp)
	movl $-136,%ecx
	addl %ecx,%edx
	movl 92(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 140(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
	call insert_38
.Lcall_successor_l45:
	movl $4,%ecx
	movl %eax,88(%esp)
	movl 76(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,92(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 92(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,96(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 96(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
LifEnd_80:
	jmp LifEnd_84
LifTrue_82:
.Lbranch_target_l68:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_65
Lalc_gc_65:
	call tig_call_gc
.Lcall_successor_l54:
Lalc_66:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 132(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,56(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,60(%esp)
	movl 56(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,64(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
LifEnd_84:
	jmp LifEnd_88
LifTrue_86:
.Lbranch_target_l67:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_57
Lalc_gc_57:
	movl %edx,28(%esp)
	call tig_call_gc
.Lcall_successor_l60:
Lalc_58:
	movl $20,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl $1,%ecx
	movl %ecx,(%eax)
	movl $0,%ecx
	movl $4,%edx
	movl %eax,32(%esp)
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%eax
	movl $8,%ecx
	movl %eax,36(%esp)
	movl 32(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,40(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
LifEnd_88:
	movl %edx,%eax
	leal 132(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 140(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l72:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l57
.long .Lframe_l73
.section .pcmap_data
.Lframe_l73:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffff98
.long .Lstackdata_l72
.long 0
.long 21
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
.long 0
.long 0
.long 0xffffffa8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l74
.section .pcmap_data
.Lframe_l74:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffff98
.long .Lstackdata_l72
.long 0
.long 21
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
.long 0xffffffc0
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
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l42
.long .Lframe_l75
.section .pcmap_data
.Lframe_l75:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffff98
.long .Lstackdata_l72
.long 0
.long 21
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l39
.long .Lframe_l76
.section .pcmap_data
.Lframe_l76:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffff98
.long .Lstackdata_l72
.long 0
.long 21
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
.long 0xffffffe0
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
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l77
.section .pcmap_data
.Lframe_l77:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffff98
.long .Lstackdata_l72
.long 0
.long 21
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l45
.long .Lframe_l78
.section .pcmap_data
.Lframe_l78:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffff98
.long .Lstackdata_l72
.long 0
.long 21
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
.long 0xffffffc8
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
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffff98
.long .Lstackdata_l72
.long 0
.long 21
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Lcall_successor_l60
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffff98
.long .Lstackdata_l72
.long 0
.long 21
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .text
.section .data
insert_38_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 21
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
.long 0
.long 0
.long 1
.long 1
.long 0
.long 0
.long 1
.long 1
.long 1
.long 1
.section .text
add_word_39:
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l82:
.Lproc_body_start_l81:
	movl %eax,(%esp)
	leal 44(%esp), %eax
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl %ecx,24(%esp)
	movl $-8,%ecx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl %ecx,36(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,40(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	call insert_38
.Lcall_successor_l86:
	leal 44(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l91:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l86
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000008
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l91
.long 0
.long 4
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long add_word_39_gc_data
.section .text
.section .data
add_word_39_gc_data:
.long 2
.long 1
.long 1
.long 4
.long 1
.long 1
.long 0
.long 1
.section .text
tprint_40:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l94:
.Lproc_body_start_l93:
	movl %eax,4(%esp)
	leal 64(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l117:
	leal 64(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_101
LifFalse_102:
	movl $0,%eax
.LLifEnd_103_l118:
	movl %edx,28(%esp)
	jmp LifEnd_103
LifTrue_101:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl %ecx,24(%esp)
	movl $-8,%ecx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,36(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_40
.Lcall_successor_l113:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl %eax,36(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_printi
.Lcall_successor_l110:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_93,%ecx
	leal 64(%esp), %edx
	movl %eax,40(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l107:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,44(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l104:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_49,%ecx
	leal 64(%esp), %edx
	movl %eax,48(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l101:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,56(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_40
.Lcall_successor_l98:
LifEnd_103:
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l120:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l113
.long .Lframe_l121
.section .pcmap_data
.Lframe_l121:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l120
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
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l110
.long .Lframe_l122
.section .pcmap_data
.Lframe_l122:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l120
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
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l107
.long .Lframe_l123
.section .pcmap_data
.Lframe_l123:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l120
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l104
.long .Lframe_l124
.section .pcmap_data
.Lframe_l124:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l120
.long 0
.long 12
.long 2
.long 1
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
.long 0
.long 0
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l101
.long .Lframe_l125
.section .pcmap_data
.Lframe_l125:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l120
.long 0
.long 12
.long 2
.long 1
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
.long 0
.long tprint_40_gc_data
.section .pcmap
.long .Lcall_successor_l98
.long .Lframe_l126
.section .pcmap_data
.Lframe_l126:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l120
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
.long tprint_40_gc_data
.section .text
.section .data
tprint_40_gc_data:
.long 2
.long 1
.long 1
.long 12
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
.section .text
isletter_41:
	leal -108(%esp), %esp
	leal 108(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 108(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l128:
.Lproc_body_start_l127:
	movl %eax,8(%esp)
	leal 108(%esp), %eax
	movl %eax,12(%esp)
	movl $-8,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 108(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl %eax,24(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 108(%esp), %eax
	movl %eax,28(%esp)
	movl $-108,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_105,%eax
	leal 108(%esp), %ecx
	movl %eax,40(%esp)
	movl $-104,%eax
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,44(%esp)
	call tig_compare_str
.Lcall_successor_l153:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l157:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_112
LifFalse_113:
	movl $0,%eax
	jmp LifEnd_114
LifTrue_112:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,48(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_108,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l150:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l161:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l160
.Lbranch_target_l159:
	movl $0,%eax
	jmp .Lbranch_target_l158
.Lbranch_target_l160:
	movl $-1,%eax
.Lbranch_target_l158:
LifEnd_114:
.Lbranch_target_l167:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_138
LifFalse_139:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,88(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_117,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l138:
	leal Cmm.global_area,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l162:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_128
LifFalse_129:
	movl $0,%eax
	jmp LifEnd_130
LifTrue_128:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,92(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_124,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l135:
	leal Cmm.global_area,%ecx
	movl 92(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l166:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l165
.Lbranch_target_l164:
	movl $0,%eax
	jmp .Lbranch_target_l163
.Lbranch_target_l165:
	movl $-1,%eax
.Lbranch_target_l163:
LifEnd_130:
.Lbranch_target_l168:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_134
LifFalse_135:
	movl $0,%eax
	jmp LifEnd_136
LifTrue_134:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,96(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l132:
	leal Cmm.global_area,%ecx
	movl 96(%esp),%edx
	movl %edx,(%ecx)
LifEnd_136:
.LLifEnd_140_l169:
	movl %eax,%ecx
	jmp LifEnd_140
LifTrue_138:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,52(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l147:
	leal Cmm.global_area,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal Lgbl_117,%edx
	movl %eax,56(%esp)
	leal 108(%esp), %eax
	movl %eax,60(%esp)
	movl $-108,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l144:
	leal Cmm.global_area,%ecx
	movl 68(%esp),%edx
	movl %edx,(%ecx)
	movl 56(%esp),%ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_105,%edx
	movl %eax,72(%esp)
	leal 108(%esp), %eax
	movl %eax,76(%esp)
	movl $-108,%eax
	movl %eax,80(%esp)
	movl 76(%esp),%eax
	movl %ecx,84(%esp)
	movl 80(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l141:
	leal Cmm.global_area,%ecx
	movl 72(%esp),%edx
	movl %edx,(%ecx)
	movl 84(%esp),%ecx
	subl %eax,%ecx
LifEnd_140:
	movl %ecx,%eax
	leal 108(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 112(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l172:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l153
.long .Lframe_l173
.section .pcmap_data
.Lframe_l173:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l172
.long 0
.long 25
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
.long 0xffffffac
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l150
.long .Lframe_l174
.section .pcmap_data
.Lframe_l174:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l172
.long 0
.long 25
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
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l138
.long .Lframe_l175
.section .pcmap_data
.Lframe_l175:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l172
.long 0
.long 25
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
.long 0xffffffec
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
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l135
.long .Lframe_l176
.section .pcmap_data
.Lframe_l176:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l172
.long 0
.long 25
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l132
.long .Lframe_l177
.section .pcmap_data
.Lframe_l177:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l172
.long 0
.long 25
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
.long 0xfffffff4
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
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l147
.long .Lframe_l178
.section .pcmap_data
.Lframe_l178:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l172
.long 0
.long 25
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l144
.long .Lframe_l179
.section .pcmap_data
.Lframe_l179:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l172
.long 0
.long 25
.long 2
.long 1
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Lcall_successor_l141
.long .Lframe_l180
.section .pcmap_data
.Lframe_l180:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l172
.long 0
.long 25
.long 2
.long 1
.long 0
.long 0
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
.long 0xffffffdc
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
.long isletter_41_gc_data
.section .text
.section .data
isletter_41_gc_data:
.long 2
.long 1
.long 1
.long 25
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
getword_42:
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l182:
.Lproc_body_start_l181:
	leal 64(%esp), %edx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_142,%eax
	leal 64(%esp), %edx
	movl %eax,12(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_142,%eax
	leal 64(%esp), %edx
	movl %eax,16(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,20(%esp)
	call tig_getchar
.Lcall_successor_l213:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_150:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,24(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_142,%eax
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l210:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l217:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_147
LifFalse_148:
	movl $0,%eax
	jmp LifEnd_149
LifTrue_147:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,32(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isletter_41
.Lcall_successor_l207:
.Lbranch_target_l221:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l220
.Lbranch_target_l219:
	movl $0,%eax
	jmp .Lbranch_target_l218
.Lbranch_target_l220:
	movl $-1,%eax
.Lbranch_target_l218:
LifEnd_149:
.Lbranch_target_l223:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_151
Lloop_end_143:
Lloop_start_159:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,32(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_142,%eax
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l201:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l222:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_156
LifFalse_157:
	movl $0,%eax
	jmp LifEnd_158
LifTrue_156:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,40(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isletter_41
.Lcall_successor_l198:
LifEnd_158:
.Lbranch_target_l224:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_160
Lloop_end_152:
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %esp
	ret
Lloop_body_160:
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,44(%esp)
	movl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,48(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isletter_41
.Lcall_successor_l195:
	call tig_chr
.Lcall_successor_l192:
	leal -4(%esp), %esp
	movl %eax,52(%esp)
	movl 44(%esp),%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	call tig_concat
.Lcall_successor_l189:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l186:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_159
Lloop_body_151:
	call tig_getchar
.Lcall_successor_l204:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_150
.section .pcmap_data
.Lstackdata_l226:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l213
.long .Lframe_l227
.section .pcmap_data
.Lframe_l227:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l210
.long .Lframe_l228
.section .pcmap_data
.Lframe_l228:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
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
.long 0
.long 0xffffffd8
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l207
.long .Lframe_l229
.section .pcmap_data
.Lframe_l229:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l201
.long .Lframe_l230
.section .pcmap_data
.Lframe_l230:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
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
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l198
.long .Lframe_l231
.section .pcmap_data
.Lframe_l231:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l195
.long .Lframe_l232
.section .pcmap_data
.Lframe_l232:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
.long 2
.long 1
.long 0
.long 0
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
.long 0
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l192
.long .Lframe_l233
.section .pcmap_data
.Lframe_l233:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
.long 2
.long 1
.long 0
.long 0
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
.long 0
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l189
.long .Lframe_l234
.section .pcmap_data
.Lframe_l234:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l186
.long .Lframe_l235
.section .pcmap_data
.Lframe_l235:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .pcmap
.long .Lcall_successor_l204
.long .Lframe_l236
.section .pcmap_data
.Lframe_l236:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l226
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long getword_42_gc_data
.section .text
.section .data
getword_42_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 16
.long 1
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
main_43:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l238:
.Lproc_body_start_l237:
	leal 36(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_142,%eax
	leal 36(%esp), %edx
	movl %eax,8(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,12(%esp)
	call getword_42
.Lcall_successor_l254:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_165:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl %eax,16(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_size
.Lcall_successor_l251:
	leal Cmm.global_area,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l258:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Lloop_body_166
Lloop_end_162:
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,28(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_40
.Lcall_successor_l242:
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
Lloop_body_166:
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,24(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call add_word_39
.Lcall_successor_l248:
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_42
.Lcall_successor_l245:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_165
.section .pcmap_data
.Lstackdata_l260:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l254
.long .Lframe_l261
.section .pcmap_data
.Lframe_l261:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l260
.long 0
.long 6
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
.long main_43_gc_data
.section .pcmap
.long .Lcall_successor_l251
.long .Lframe_l262
.section .pcmap_data
.Lframe_l262:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l260
.long 0
.long 6
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long main_43_gc_data
.section .pcmap
.long .Lcall_successor_l242
.long .Lframe_l263
.section .pcmap_data
.Lframe_l263:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l260
.long 0
.long 6
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
.long main_43_gc_data
.section .pcmap
.long .Lcall_successor_l248
.long .Lframe_l264
.section .pcmap_data
.Lframe_l264:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l260
.long 0
.long 6
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
.long main_43_gc_data
.section .pcmap
.long .Lcall_successor_l245
.long .Lframe_l265
.section .pcmap_data
.Lframe_l265:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l260
.long 0
.long 6
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
.long main_43_gc_data
.section .text
.section .data
main_43_gc_data:
.long 2
.long 1
.long 1
.long 6
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.section .text
tiger_main:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l267:
.Lproc_body_start_l266:
	leal 20(%esp), %edx
	movl %eax,(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 20(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,8(%esp)
	call main_43
.Lcall_successor_l271:
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l276:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l271
.long .Lframe_l277
.section .pcmap_data
.Lframe_l277:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l276
.long 0
.long 2
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 2
.long 1
.long 1
.long 2
.long 1
.long 0

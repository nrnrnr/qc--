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
.Linitialize_continuations_l11:
.Lproc_body_start_l10:
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
.Ljoin_l24:
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
.Ljoin_l21:
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
.Ljoin_l18:
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
.Ljoin_l15:
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
.Lstackdata_l30:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l24
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l30
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
.long .Ljoin_l21
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l30
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
.long .Ljoin_l18
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l30
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
.long .Ljoin_l15
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l30
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
.Linitialize_continuations_l37:
.Lproc_body_start_l36:
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
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l75
.Ljoin_l76:
	jmp LifFalse_87
LifFalse_87:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl %eax,28(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 132(%esp), %ecx
	movl %eax,32(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 132(%esp), %ecx
	movl %eax,36(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 132(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,40(%esp)
	call tig_compare_str
.Ljoin_l69:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l65
.Ljoin_l66:
	jmp LifFalse_83
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
	movl %eax,44(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	leal 132(%esp), %edx
	movl %eax,48(%esp)
	movl $-128,%eax
	addl %eax,%edx
	movl 48(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 132(%esp), %eax
	movl $-132,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Ljoin_l59:
	leal Cmm.global_area,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jl .Ljoin_l55
.Ljoin_l56:
	jmp LifFalse_79
LifFalse_79:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l45
.Ljoin_l46:
	jmp Lalc_gc_75
.Ljoin_l45:
	jmp Lalc_gc_75
Lalc_gc_75:
	call tig_call_gc
.Ljoin_l44:
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
	movl %eax,52(%esp)
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
	movl %ecx,64(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 140(%esp), %edx
	movl %ecx,68(%esp)
	movl $-136,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 140(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	call insert_38
.Ljoin_l41:
	movl $8,%ecx
	movl %eax,64(%esp)
	movl 52(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 64(%esp),%ecx
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
	movl %eax,68(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_80
.Ljoin_l55:
	jmp LifTrue_78
LifTrue_78:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l53
.Ljoin_l54:
	jmp Lalc_gc_71
.Ljoin_l53:
	jmp Lalc_gc_71
Lalc_gc_71:
	call tig_call_gc
.Ljoin_l52:
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
	movl %eax,80(%esp)
	movl %ecx,%eax
	leal 140(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 140(%esp), %edx
	movl %ecx,84(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 140(%esp), %edx
	movl %ecx,88(%esp)
	movl $-136,%ecx
	addl %ecx,%edx
	movl 88(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 140(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	movl 84(%esp),%edx
	movl %edx,(%ecx)
	call insert_38
.Ljoin_l49:
	movl $4,%ecx
	movl %eax,84(%esp)
	movl 72(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 84(%esp),%ecx
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
	movl %eax,88(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 88(%esp),%ecx
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
	movl %eax,92(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 92(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_80
LifEnd_80:
	jmp LifEnd_84
.Ljoin_l65:
	jmp LifTrue_82
LifTrue_82:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l63
.Ljoin_l64:
	jmp Lalc_gc_65
.Ljoin_l63:
	jmp Lalc_gc_65
Lalc_gc_65:
	call tig_call_gc
.Ljoin_l62:
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
	movl %eax,96(%esp)
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
	movl %eax,100(%esp)
	movl 96(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 100(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,104(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 104(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_84
LifEnd_84:
	jmp LifEnd_88
.Ljoin_l75:
	jmp LifTrue_86
LifTrue_86:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l73
.Ljoin_l74:
	jmp Lalc_gc_57
.Ljoin_l73:
	jmp Lalc_gc_57
Lalc_gc_57:
	movl %edx,40(%esp)
	call tig_call_gc
.Ljoin_l72:
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
	movl %eax,108(%esp)
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%eax
	movl $8,%ecx
	movl %eax,112(%esp)
	movl 108(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 112(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,116(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 116(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_88
LifEnd_88:
	movl %edx,%eax
	leal 132(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 140(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l81:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Ljoin_l69
.long .Lframe_l82
.section .pcmap_data
.Lframe_l82:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffa4
.long .Lstackdata_l81
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
.long 0xffffff98
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_38_gc_data
.section .pcmap
.long .Ljoin_l59
.long .Lframe_l83
.section .pcmap_data
.Lframe_l83:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffa4
.long .Lstackdata_l81
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
.long 0xffffffa8
.long 0
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
.long .Ljoin_l44
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffa4
.long .Lstackdata_l81
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
.long .Ljoin_l41
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffa4
.long .Lstackdata_l81
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
.long 0xffffffb0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l52
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffa4
.long .Lstackdata_l81
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
.long .Ljoin_l49
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffa4
.long .Lstackdata_l81
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
.long 0xffffffc4
.long 0
.long 0
.long 0
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
.long .Ljoin_l62
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffa4
.long .Lstackdata_l81
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
.long .Ljoin_l72
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x8000000c
.long 0xffffff7c
.long 0xffffffa4
.long .Lstackdata_l81
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
.Linitialize_continuations_l92:
.Lproc_body_start_l91:
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
.Ljoin_l96:
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
.Lstackdata_l101:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l96
.long .Lframe_l102
.section .pcmap_data
.Lframe_l102:
.long 0x80000008
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l101
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
.Linitialize_continuations_l105:
.Lproc_body_start_l104:
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
	leal 64(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l125
.Ljoin_l126:
	jmp LifFalse_102
LifFalse_102:
	movl $0,%eax
	movl %edx,28(%esp)
	jmp LifEnd_103
.Ljoin_l125:
	jmp LifTrue_101
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
.Ljoin_l124:
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
.Ljoin_l121:
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
.Ljoin_l118:
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
.Ljoin_l115:
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
.Ljoin_l112:
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
.Ljoin_l109:
	jmp LifEnd_103
LifEnd_103:
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l131:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l124
.long .Lframe_l132
.section .pcmap_data
.Lframe_l132:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l131
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
.long .Ljoin_l121
.long .Lframe_l133
.section .pcmap_data
.Lframe_l133:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l131
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
.long .Ljoin_l118
.long .Lframe_l134
.section .pcmap_data
.Lframe_l134:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l131
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
.long .Ljoin_l115
.long .Lframe_l135
.section .pcmap_data
.Lframe_l135:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l131
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
.long .Ljoin_l112
.long .Lframe_l136
.section .pcmap_data
.Lframe_l136:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l131
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
.long .Ljoin_l109
.long .Lframe_l137
.section .pcmap_data
.Lframe_l137:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l131
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
.Linitialize_continuations_l140:
.Lproc_body_start_l139:
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
.Ljoin_l173:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jge .Ljoin_l169
.Ljoin_l170:
	jmp LifFalse_113
LifFalse_113:
	movl $0,%eax
	jmp LifEnd_114
.Ljoin_l169:
	jmp LifTrue_112
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
.Ljoin_l168:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Ljoin_l178
.Ljoin_l179:
	movl $0,%eax
	jmp .Ljoin_l177
.Ljoin_l178:
	movl $-1,%eax
	jmp .Ljoin_l177
.Ljoin_l177:
	jmp LifEnd_114
LifEnd_114:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l164
.Ljoin_l165:
	jmp LifFalse_139
LifFalse_139:
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
	leal Lgbl_117,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Ljoin_l154:
	leal Cmm.global_area,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jge .Ljoin_l150
.Ljoin_l151:
	jmp LifFalse_129
LifFalse_129:
	movl $0,%eax
	jmp LifEnd_130
.Ljoin_l150:
	jmp LifTrue_128
LifTrue_128:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,56(%esp)
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
.Ljoin_l149:
	leal Cmm.global_area,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Ljoin_l181
.Ljoin_l182:
	movl $0,%eax
	jmp .Ljoin_l180
.Ljoin_l181:
	movl $-1,%eax
	jmp .Ljoin_l180
.Ljoin_l180:
	jmp LifEnd_130
LifEnd_130:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l145
.Ljoin_l146:
	jmp LifFalse_135
LifFalse_135:
	movl $0,%eax
	jmp LifEnd_136
.Ljoin_l145:
	jmp LifTrue_134
LifTrue_134:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,60(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Ljoin_l144:
	leal Cmm.global_area,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_136
LifEnd_136:
	movl %eax,%ecx
	jmp LifEnd_140
.Ljoin_l164:
	jmp LifTrue_138
LifTrue_138:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,64(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Ljoin_l163:
	leal Cmm.global_area,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal Lgbl_117,%edx
	movl %eax,68(%esp)
	leal 108(%esp), %eax
	movl %eax,72(%esp)
	movl $-108,%eax
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Ljoin_l160:
	leal Cmm.global_area,%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	movl 68(%esp),%ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_105,%edx
	movl %eax,84(%esp)
	leal 108(%esp), %eax
	movl %eax,88(%esp)
	movl $-108,%eax
	movl %eax,92(%esp)
	movl 88(%esp),%eax
	movl %ecx,96(%esp)
	movl 92(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Ljoin_l157:
	leal Cmm.global_area,%ecx
	movl 84(%esp),%edx
	movl %edx,(%ecx)
	movl 96(%esp),%ecx
	subl %eax,%ecx
	jmp LifEnd_140
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
.Lstackdata_l185:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l173
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l185
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
.long .Ljoin_l168
.long .Lframe_l187
.section .pcmap_data
.Lframe_l187:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l185
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
.long .Ljoin_l154
.long .Lframe_l188
.section .pcmap_data
.Lframe_l188:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l185
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
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Ljoin_l149
.long .Lframe_l189
.section .pcmap_data
.Lframe_l189:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l185
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
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Ljoin_l144
.long .Lframe_l190
.section .pcmap_data
.Lframe_l190:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l185
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Ljoin_l163
.long .Lframe_l191
.section .pcmap_data
.Lframe_l191:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l185
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
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_41_gc_data
.section .pcmap
.long .Ljoin_l160
.long .Lframe_l192
.section .pcmap_data
.Lframe_l192:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l185
.long 0
.long 25
.long 2
.long 1
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
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
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
.long .Ljoin_l157
.long .Lframe_l193
.section .pcmap_data
.Lframe_l193:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l185
.long 0
.long 25
.long 2
.long 1
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
.Linitialize_continuations_l196:
.Lproc_body_start_l195:
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
.Ljoin_l235:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_150
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
.Ljoin_l232:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l228
.Ljoin_l229:
	jmp LifFalse_148
LifFalse_148:
	movl $0,%eax
	jmp LifEnd_149
.Ljoin_l228:
	jmp LifTrue_147
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
.Ljoin_l227:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l240
.Ljoin_l241:
	movl $0,%eax
	jmp .Ljoin_l239
.Ljoin_l240:
	movl $-1,%eax
	jmp .Ljoin_l239
.Ljoin_l239:
	jmp LifEnd_149
LifEnd_149:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l223
.Ljoin_l224:
	jmp Lloop_end_143
Lloop_end_143:
	jmp Lloop_start_159
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
.Ljoin_l219:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l215
.Ljoin_l216:
	jmp LifFalse_157
LifFalse_157:
	movl $0,%eax
	jmp LifEnd_158
.Ljoin_l215:
	jmp LifTrue_156
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
.Ljoin_l214:
	jmp LifEnd_158
LifEnd_158:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l210
.Ljoin_l211:
	jmp Lloop_end_152
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
.Ljoin_l210:
	jmp Lloop_body_160
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
.Ljoin_l209:
	call tig_chr
.Ljoin_l206:
	leal -4(%esp), %esp
	movl %eax,52(%esp)
	movl 44(%esp),%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	call tig_concat
.Ljoin_l203:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Ljoin_l200:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_159
.Ljoin_l223:
	jmp Lloop_body_151
Lloop_body_151:
	call tig_getchar
.Ljoin_l222:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_150
.section .pcmap_data
.Lstackdata_l243:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Ljoin_l235
.long .Lframe_l244
.section .pcmap_data
.Lframe_l244:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.long .Ljoin_l232
.long .Lframe_l245
.section .pcmap_data
.Lframe_l245:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.long .Ljoin_l227
.long .Lframe_l246
.section .pcmap_data
.Lframe_l246:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.long .Ljoin_l219
.long .Lframe_l247
.section .pcmap_data
.Lframe_l247:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.long .Ljoin_l214
.long .Lframe_l248
.section .pcmap_data
.Lframe_l248:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.long .Ljoin_l209
.long .Lframe_l249
.section .pcmap_data
.Lframe_l249:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.long .Ljoin_l206
.long .Lframe_l250
.section .pcmap_data
.Lframe_l250:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.long .Ljoin_l203
.long .Lframe_l251
.section .pcmap_data
.Lframe_l251:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.long .Ljoin_l200
.long .Lframe_l252
.section .pcmap_data
.Lframe_l252:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.long .Ljoin_l222
.long .Lframe_l253
.section .pcmap_data
.Lframe_l253:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l243
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
.Linitialize_continuations_l256:
.Lproc_body_start_l255:
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
.Ljoin_l274:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_165
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
.Ljoin_l271:
	leal Cmm.global_area,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l267
.Ljoin_l268:
	jmp Lloop_end_162
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
	movl %ecx,24(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_40
.Ljoin_l260:
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.Ljoin_l267:
	jmp Lloop_body_166
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
	movl %ecx,28(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call add_word_39
.Ljoin_l266:
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_42
.Ljoin_l263:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_165
.section .pcmap_data
.Lstackdata_l279:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l274
.long .Lframe_l280
.section .pcmap_data
.Lframe_l280:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l279
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
.long .Ljoin_l271
.long .Lframe_l281
.section .pcmap_data
.Lframe_l281:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l279
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
.long .Ljoin_l260
.long .Lframe_l282
.section .pcmap_data
.Lframe_l282:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l279
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
.long .Ljoin_l266
.long .Lframe_l283
.section .pcmap_data
.Lframe_l283:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l279
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
.long .Ljoin_l263
.long .Lframe_l284
.section .pcmap_data
.Lframe_l284:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l279
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
.Linitialize_continuations_l287:
.Lproc_body_start_l286:
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
.Ljoin_l291:
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l296:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l291
.long .Lframe_l297
.section .pcmap_data
.Lframe_l297:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l296
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

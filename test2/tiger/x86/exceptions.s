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
Lgbl_39:
.long 4
.byte 98
.byte 121
.byte 101
.byte 10
.byte 0
Lgbl_76:
.long 18
.byte 111
.byte 117
.byte 116
.byte 32
.byte 111
.byte 102
.byte 32
.byte 101
.byte 120
.byte 32
.byte 98
.byte 108
.byte 111
.byte 99
.byte 107
.byte 32
.byte 50
.byte 10
.byte 0
Lgbl_56:
.long 18
.byte 111
.byte 117
.byte 116
.byte 32
.byte 111
.byte 102
.byte 32
.byte 101
.byte 120
.byte 32
.byte 98
.byte 108
.byte 111
.byte 99
.byte 107
.byte 32
.byte 49
.byte 10
.byte 0
Lgbl_60:
.long 12
.byte 101
.byte 120
.byte 99
.byte 101
.byte 112
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 51
.byte 10
.byte 0
Lgbl_36:
.long 6
.byte 104
.byte 101
.byte 108
.byte 108
.byte 111
.byte 10
.byte 0
Lgbl_42:
.long 12
.byte 101
.byte 120
.byte 99
.byte 101
.byte 112
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 50
.byte 10
.byte 0
Lgbl_45:
.long 12
.byte 101
.byte 120
.byte 99
.byte 101
.byte 112
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 49
.byte 10
.byte 0
.section .text
throws_int_25:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l7:
.Lproc_body_start_l6:
	movl %eax,(%esp)
	leal 28(%esp), %eax
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l15:
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jg LifTrue_30
LifFalse_31:
	movl $0,%eax
.LLifEnd_32_l16:
	movl %edx,16(%esp)
	jmp LifEnd_32
LifTrue_30:
	movl $20,%eax
	movl %edx,16(%esp)
	call tig_unwind
.Lcall_successor_l11:
LifEnd_32:
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l18:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l18
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
.long throws_int_25_gc_data
.section .text
.section .data
throws_int_25_gc_data:
.long 2
.long 1
.long 0
.long 4
.long 1
.long 0
.long 0
.long 0
.section .text
f_26:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l21:
.Lproc_body_start_l20:
	movl %eax,(%esp)
	leal 40(%esp), %eax
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 44(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl %ecx,20(%esp)
	movl $-8,%ecx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 44(%esp), %edx
	movl %ecx,32(%esp)
	movl $-44,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call throws_int_25
.Lcall_successor_l25:
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l30:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l30
.long 0
.long 3
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long f_26_gc_data
.section .text
.section .data
f_26_gc_data:
.long 2
.long 1
.long 0
.long 3
.long 1
.long 0
.long 0
.section .text
tiger_main:
	leal -88(%esp), %esp
	movl %eax,4(%esp)
	leal 88(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l45:
.Lproc_body_start_l44:
	movl %eax,8(%esp)
	leal 88(%esp), %eax
	movl %eax,12(%esp)
	movl $-4,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_36,%ecx
	movl %eax,24(%esp)
	leal 88(%esp), %eax
	movl %eax,28(%esp)
	movl $-88,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,40(%esp)
	call tig_print
.Lcall_successor_l79:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 92(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $-1,%ecx
	leal 92(%esp), %edx
	movl %ecx,48(%esp)
	movl $-92,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	call f_26
.Lcall_successor_l76:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_39,%ecx
	leal 88(%esp), %edx
	movl %eax,48(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l73:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	jmp Ltry_end_48
.Lunwind_entry_l37:
.Lstart_of_continuation_code_l35:
.Lbranch_target_l86:
	movl $21,%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	je Lhandle_52
Lskip_53:
.Lbranch_target_l85:
	movl $20,%eax
	cmpl %eax,%ecx
	je Lhandle_54
Lskip_55:
	jmp Ltry_end_48
Lhandle_54:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_45,%ecx
	leal 88(%esp), %edx
	movl %eax,56(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l67:
	leal Cmm.global_area,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	jmp Ltry_end_48
Lhandle_52:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_42,%ecx
	leal 88(%esp), %edx
	movl %eax,52(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l70:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
Ltry_end_48:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_56,%ecx
	leal 88(%esp), %edx
	movl %eax,60(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l64:
	leal Cmm.global_area,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 92(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 92(%esp), %edx
	movl %ecx,68(%esp)
	movl $-92,%ecx
	addl %ecx,%edx
	movl 68(%esp),%ecx
	movl %ecx,(%edx)
	call f_26
.Lcall_successor_l61:
	jmp Ltry_end_67
.Lunwind_entry_l43:
.Lstart_of_continuation_code_l41:
.Lbranch_target_l87:
	movl $22,%eax
	movl 40(%esp),%ecx
	cmpl %eax,%ecx
	je Lhandle_70
Lskip_71:
.Lbranch_target_l84:
	movl $21,%eax
	cmpl %eax,%ecx
	je Lhandle_72
Lskip_73:
.Lbranch_target_l83:
	movl $20,%eax
	cmpl %eax,%ecx
	je Lhandle_74
Lskip_75:
	jmp Ltry_end_67
Lhandle_74:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_45,%ecx
	leal 88(%esp), %edx
	movl %eax,76(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l52:
	leal Cmm.global_area,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	jmp Ltry_end_67
Lhandle_72:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_42,%ecx
	leal 88(%esp), %edx
	movl %eax,72(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l55:
	leal Cmm.global_area,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	jmp Ltry_end_67
Lhandle_70:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_60,%ecx
	leal 88(%esp), %edx
	movl %eax,68(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l58:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
Ltry_end_67:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_76,%ecx
	leal 88(%esp), %edx
	movl %eax,80(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l49:
	leal Cmm.global_area,%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l89:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l79
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
.long 3
.long 7
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
.long 0xffffffbc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffc0
.long 1
.long 2
.long 1
.long .Lunwind_entry_l37
.long 0xffffffa8
.long 13
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Lcall_successor_l76
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
.long 3
.long 7
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
.long 0xffffffbc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 1
.long 2
.long 1
.long .Lunwind_entry_l37
.long 0xffffffa8
.long 13
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Lcall_successor_l73
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
.long 3
.long 7
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
.long 0xffffffbc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd8
.long 0
.long 0
.long 1
.long 2
.long 1
.long .Lunwind_entry_l37
.long 0xffffffa8
.long 13
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Lcall_successor_l67
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
.long 2
.long 1
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
.long 0xffffffe0
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
.long .Lcall_successor_l70
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
.long 2
.long 1
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
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l64
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
.long 2
.long 1
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
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l61
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
.long 3
.long 7
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
.long 1
.long 2
.long 1
.long .Lunwind_entry_l43
.long 0xffffffa8
.long 4
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Lcall_successor_l52
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
.long 2
.long 1
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l55
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l58
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l49
.long .Lframe_l100
.section .pcmap_data
.Lframe_l100:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l89
.long 0
.long 22
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 1
.long 1
.long 22
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

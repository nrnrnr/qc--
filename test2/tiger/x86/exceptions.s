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
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
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
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l13
.Ljoin_l14:
	jmp LifFalse_31
LifFalse_31:
	movl $0,%eax
	movl %edx,16(%esp)
	jmp LifEnd_32
.Ljoin_l13:
	jmp LifTrue_30
LifTrue_30:
	movl $20,%eax
	movl %edx,16(%esp)
	call tig_unwind
.Ljoin_l12:
	jmp LifEnd_32
LifEnd_32:
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l19:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l12
.long .Lframe_l20
.section .pcmap_data
.Lframe_l20:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l19
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
.Linitialize_continuations_l23:
.Lproc_body_start_l22:
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
.Ljoin_l27:
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l32:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l27
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000008
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l32
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
.Linitialize_continuations_l46:
.Lproc_body_start_l45:
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
.Ljoin_l90:
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
.Ljoin_l87:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_39,%ecx
	leal 88(%esp), %edx
	movl %eax,48(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Ljoin_l84:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	jmp Ltry_end_48
Lexn_35_U39:
	movl $21,%eax
	movl 40(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l80
.Ljoin_l81:
	jmp Lskip_53
Lskip_53:
	movl $20,%eax
	cmpl %eax,%ecx
	je .Ljoin_l75
.Ljoin_l76:
	jmp Lskip_55
Lskip_55:
	jmp Ltry_end_48
.Ljoin_l75:
	jmp Lhandle_54
Lhandle_54:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_45,%ecx
	leal 88(%esp), %edx
	movl %eax,52(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Ljoin_l74:
	leal Cmm.global_area,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	jmp Ltry_end_48
.Ljoin_l80:
	jmp Lhandle_52
Lhandle_52:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_42,%ecx
	leal 88(%esp), %edx
	movl %eax,56(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Ljoin_l79:
	leal Cmm.global_area,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	jmp Ltry_end_48
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
.Ljoin_l71:
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
.Ljoin_l68:
	jmp Ltry_end_67
Lexn_59_U44:
	movl $22,%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l64
.Ljoin_l65:
	jmp Lskip_71
Lskip_71:
	movl $21,%eax
	cmpl %eax,%ecx
	je .Ljoin_l59
.Ljoin_l60:
	jmp Lskip_73
Lskip_73:
	movl $20,%eax
	cmpl %eax,%ecx
	je .Ljoin_l54
.Ljoin_l55:
	jmp Lskip_75
Lskip_75:
	jmp Ltry_end_67
.Ljoin_l54:
	jmp Lhandle_74
Lhandle_74:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_45,%ecx
	leal 88(%esp), %edx
	movl %eax,68(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Ljoin_l53:
	leal Cmm.global_area,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	jmp Ltry_end_67
.Ljoin_l59:
	jmp Lhandle_72
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
.Ljoin_l58:
	leal Cmm.global_area,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	jmp Ltry_end_67
.Ljoin_l64:
	jmp Lhandle_70
Lhandle_70:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_60,%ecx
	leal 88(%esp), %edx
	movl %eax,76(%esp)
	movl $-88,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Ljoin_l63:
	leal Cmm.global_area,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	jmp Ltry_end_67
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
.Ljoin_l50:
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
.Lstackdata_l95:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Ljoin_l90
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
.long 0
.long 22
.long 3
.long 7
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
.long 0xffffffd0
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
.long Lexn_35_U39
.long 0xffffffa8
.long 13
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Ljoin_l87
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
.long 0
.long 22
.long 3
.long 7
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
.long 0xffffffd0
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
.long Lexn_35_U39
.long 0xffffffa8
.long 13
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Ljoin_l84
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
.long 0
.long 22
.long 3
.long 7
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
.long 0xffffffd0
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
.long Lexn_35_U39
.long 0xffffffa8
.long 13
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Ljoin_l74
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
.long 0
.long 22
.long 2
.long 1
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
.long tiger_main_gc_data
.section .pcmap
.long .Ljoin_l79
.long .Lframe_l100
.section .pcmap_data
.Lframe_l100:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
.long 0
.long 22
.long 2
.long 1
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
.long tiger_main_gc_data
.section .pcmap
.long .Ljoin_l71
.long .Lframe_l101
.section .pcmap_data
.Lframe_l101:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
.long 0
.long 22
.long 2
.long 1
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
.long .Ljoin_l68
.long .Lframe_l102
.section .pcmap_data
.Lframe_l102:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
.long 0
.long 22
.long 3
.long 7
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
.long Lexn_59_U44
.long 0xffffffa8
.long 4
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Ljoin_l53
.long .Lframe_l103
.section .pcmap_data
.Lframe_l103:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
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
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Ljoin_l58
.long .Lframe_l104
.section .pcmap_data
.Lframe_l104:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
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
.long .Ljoin_l63
.long .Lframe_l105
.section .pcmap_data
.Lframe_l105:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
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
.long tiger_main_gc_data
.section .pcmap
.long .Ljoin_l50
.long .Lframe_l106
.section .pcmap_data
.Lframe_l106:
.long 0x80000004
.long 0xffffffa8
.long 0xffffffb0
.long .Lstackdata_l95
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

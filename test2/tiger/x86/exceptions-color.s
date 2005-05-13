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
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l7:
.Lproc_body_start_l6:
	leal 16(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l15:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jg LifTrue_30
LifFalse_31:
	movl $0,%eax
	jmp LifEnd_32
LifTrue_30:
	movl $20,%eax
	call tig_unwind
.Lcall_successor_l11:
LifEnd_32:
	leal 16(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l17:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l18
.section .pcmap_data
.Lframe_l18:
.long 0x80000008
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l17
.long 1
.long 4
.long 2
.long 1
.long 11
.long 0xfffffff0
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
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl (%edx),%edx
	movl %edx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
	leal 16(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 20(%esp), %edi
	movl $-20,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call throws_int_25
.Lcall_successor_l24:
	leal 16(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l29:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l24
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000008
.long 0xfffffff0
.long 0xfffffff4
.long .Lstackdata_l29
.long 1
.long 3
.long 2
.long 1
.long 11
.long 0xfffffff0
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
	movl %ebp,4(%esp)
.Linitialize_continuations_l44:
.Lproc_body_start_l43:
	leal 32(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_36,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l78:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $-1,%edx
	leal 36(%esp), %ecx
	movl $-36,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call f_26
.Lcall_successor_l75:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_39,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l72:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
	movl %eax,20(%esp)
	jmp Ltry_end_48
.Lunwind_entry_l36:
.Lstart_of_continuation_code_l34:
.Lbranch_target_l83:
	movl $21,%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	je Lhandle_52
Lskip_53:
.Lbranch_target_l84:
	movl $20,%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	je Lhandle_54
Lskip_55:
	jmp Ltry_end_48
Lhandle_54:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_45,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l66:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	jmp Ltry_end_48
Lhandle_52:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_42,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l69:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
Ltry_end_48:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_56,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l63:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%edx
	leal 36(%esp), %ecx
	movl $-36,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call f_26
.Lcall_successor_l60:
	movl %eax,24(%esp)
	jmp Ltry_end_67
.Lunwind_entry_l42:
.Lstart_of_continuation_code_l40:
.Lbranch_target_l82:
	movl $22,%ecx
	movl 24(%esp),%eax
	cmpl %ecx,%eax
	je Lhandle_70
Lskip_71:
.Lbranch_target_l85:
	movl $21,%ecx
	movl 24(%esp),%eax
	cmpl %ecx,%eax
	je Lhandle_72
Lskip_73:
.Lbranch_target_l86:
	movl $20,%ecx
	movl 24(%esp),%eax
	cmpl %ecx,%eax
	je Lhandle_74
Lskip_75:
	jmp Ltry_end_67
Lhandle_74:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_45,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l51:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	jmp Ltry_end_67
Lhandle_72:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_42,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l54:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	jmp Ltry_end_67
Lhandle_70:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_60,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l57:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
Ltry_end_67:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_76,%ecx
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l48:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	movl 4(%esp),%ebp
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l88:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l78
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
.long 3
.long 7
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
.long 0xfffffff8
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
.long 0x40000009
.long 1
.long 2
.long 1
.long .Lunwind_entry_l36
.long 0xffffffe0
.long 13
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Lcall_successor_l75
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
.long 3
.long 7
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
.long 0xfffffff8
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
.long 1
.long 2
.long 1
.long .Lunwind_entry_l36
.long 0xffffffe0
.long 13
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Lcall_successor_l72
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
.long 3
.long 7
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
.long 0xfffffff8
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
.long 0x40000009
.long 0
.long 0
.long 1
.long 2
.long 1
.long .Lunwind_entry_l36
.long 0xffffffe0
.long 13
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Lcall_successor_l66
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
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
.long 0x40000009
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
.long .Lcall_successor_l69
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
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
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l63
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
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
.long 0xfffffff8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l60
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
.long 3
.long 7
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
.long 1
.long 2
.long 1
.long .Lunwind_entry_l42
.long 0xffffffe0
.long 4
.long 3
.long 0
.long tiger_main_gc_data
.long 1
.section .pcmap
.long .Lcall_successor_l51
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
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
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l54
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
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
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l57
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l48
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l88
.long 3
.long 22
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
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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

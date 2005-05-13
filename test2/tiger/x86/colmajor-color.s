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
Lgbl_70:
.long 0
.byte 0
Lgbl_117:
.long 15
.byte 116
.byte 111
.byte 111
.byte 32
.byte 109
.byte 97
.byte 110
.byte 121
.byte 32
.byte 105
.byte 116
.byte 101
.byte 109
.byte 115
.byte 10
.byte 0
Lgbl_84:
.long 1
.byte 10
.byte 0
Lgbl_102:
.long 1
.byte 32
.byte 0
.section .text
mod_48:
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
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
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
mod_48_gc_data:
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
cmfirst_49:
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
.Linitialize_continuations_l18:
.Lproc_body_start_l17:
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
	leal 28(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 28(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $20,%esi
	addl %esi,%ecx
	leal 36(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 36(%esp), %ecx
	movl $-36,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call mod_48
.Lcall_successor_l22:
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%ecx
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l27:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x8000000c
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l27
.long 2
.long 5
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long cmfirst_49_gc_data
.section .text
.section .data
cmfirst_49_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 5
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
cmnext_50:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,4(%esp)
	movl %edi,(%esp)
.Linitialize_continuations_l30:
.Lproc_body_start_l29:
	leal 16(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l35:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge LifTrue_54
LifFalse_55:
	movl $0,%eax
	jmp LifEnd_56
LifTrue_54:
	movl $0,%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%eax
LifEnd_56:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 16(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl $16,%edx
	addl %edx,%edi
	movl (%edi),%edx
	imull %edx,%eax
	addl %eax,%ecx
.Lbranch_target_l36:
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 16(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl $24,%edx
	addl %edx,%edi
	movl (%edi),%edx
	cmpl %edx,%eax
	jg LifTrue_58
LifFalse_59:
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	jmp LifEnd_60
LifTrue_58:
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	movl (%eax),%eax
LifEnd_60:
	addl %eax,%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l37:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge LifTrue_62
LifFalse_63:
	movl $0,%eax
	jmp LifEnd_64
LifTrue_62:
.Lbranch_target_l41:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jge .Lbranch_target_l40
.Lbranch_target_l39:
	movl $0,%eax
	jmp .Lbranch_target_l38
.Lbranch_target_l40:
	movl $-1,%eax
.Lbranch_target_l38:
LifEnd_64:
.Lbranch_target_l42:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_66
LifFalse_67:
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp LifEnd_68
LifTrue_66:
	movl $-1,%eax
LifEnd_68:
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
	leal 16(%esp), %esp
	ret
.section .text
.section .data
cmnext_50_gc_data:
.long 2
.long 1
.long 0
.long 7
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
getline_79:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l48:
.Lproc_body_start_l47:
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l64:
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_70,%ecx
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
Lloop_start_91:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal Lgbl_70,%eax
	leal 28(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l61:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l68:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_88
LifFalse_89:
	movl $0,%eax
	jmp LifEnd_90
LifTrue_88:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal Lgbl_84,%eax
	leal 28(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l58:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l72:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l71
.Lbranch_target_l70:
	movl $0,%eax
	jmp .Lbranch_target_l69
.Lbranch_target_l71:
	movl $-1,%eax
.Lbranch_target_l69:
LifEnd_90:
.Lbranch_target_l73:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_92
Lloop_end_80:
	leal 28(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 28(%esp), %esp
	ret
Lloop_body_92:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 32(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call tig_concat
.Lcall_successor_l55:
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l52:
	leal 28(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_91
.section .pcmap_data
.Lstackdata_l75:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l64
.long .Lframe_l76
.section .pcmap_data
.Lframe_l76:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l75
.long 1
.long 10
.long 2
.long 1
.long 11
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
.long getline_79_gc_data
.section .pcmap
.long .Lcall_successor_l61
.long .Lframe_l77
.section .pcmap_data
.Lframe_l77:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l75
.long 1
.long 10
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long getline_79_gc_data
.section .pcmap
.long .Lcall_successor_l58
.long .Lframe_l78
.section .pcmap_data
.Lframe_l78:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l75
.long 1
.long 10
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long getline_79_gc_data
.section .pcmap
.long .Lcall_successor_l55
.long .Lframe_l79
.section .pcmap_data
.Lframe_l79:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l75
.long 1
.long 10
.long 2
.long 1
.long 11
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
.long getline_79_gc_data
.section .pcmap
.long .Lcall_successor_l52
.long .Lframe_l80
.section .pcmap_data
.Lframe_l80:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffff0
.long .Lstackdata_l75
.long 1
.long 10
.long 2
.long 1
.long 11
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
.long getline_79_gc_data
.section .text
.section .data
getline_79_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 10
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 1
.long 1
.long 1
.section .text
print_width_94:
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,4(%esp)
	leal 32(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %esi,8(%esp)
.Linitialize_continuations_l82:
.Lproc_body_start_l81:
	leal 32(%esp), %esi
	movl $-16,%edx
	addl %edx,%esi
	movl %eax,(%esi)
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 32(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l92:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 32(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_size
.Lcall_successor_l89:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_105:
.Lbranch_target_l96:
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	jle Lloop_body_106
Lloop_end_101:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%esi
	leal 40(%esp), %esp
	ret
Lloop_body_106:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal Lgbl_102,%eax
	leal 32(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l86:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 32(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_105
.section .pcmap_data
.Lstackdata_l99:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l92
.long .Lframe_l100
.section .pcmap_data
.Lframe_l100:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l99
.long 1
.long 10
.long 2
.long 1
.long 10
.long 0xffffffe8
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
.long print_width_94_gc_data
.section .pcmap
.long .Lcall_successor_l89
.long .Lframe_l101
.section .pcmap_data
.Lframe_l101:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l99
.long 1
.long 10
.long 2
.long 1
.long 10
.long 0xffffffe8
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
.long 0
.long 0
.long print_width_94_gc_data
.section .pcmap
.long .Lcall_successor_l86
.long .Lframe_l102
.section .pcmap_data
.Lframe_l102:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l99
.long 1
.long 10
.long 2
.long 1
.long 10
.long 0xffffffe8
.long 0
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
.long print_width_94_gc_data
.section .text
.section .data
print_width_94_gc_data:
.long 4
.long 1
.long 0
.long 1
.long 0
.long 10
.long 1
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
tiger_main:
	leal -100(%esp), %esp
	leal 100(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,24(%esp)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
.Linitialize_continuations_l104:
.Lproc_body_start_l103:
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $1024,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l154:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $28,%edx
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
	jg Lalc_gc_76
Lalc_gc_76:
	call tig_call_gc
.Lcall_successor_l147:
Lalc_77:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $28,%ecx
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
	leal 100(%esp), %edx
	movl $-72,%ebp
	addl %ebp,%edx
	movl $28,%ebp
	addl %ebp,%edx
	movl (%edx),%edx
	movl $2,%ebp
	addl %ebp,%edx
	movl $4,%ebp
	imull %ebp,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $28,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $1,%eax
Linit_start_73:
	leal Lgbl_70,%esi
	movl $4,%edx
	movl %eax,%ebp
	imull %edx,%ebp
	movl %ecx,%edx
	addl %ebp,%edx
	movl %esi,(%edx)
	movl $1,%edx
	addl %edx,%eax
.Lbranch_target_l155:
	leal 100(%esp), %edx
	movl $-72,%ebp
	addl %ebp,%edx
	movl $28,%ebp
	addl %ebp,%edx
	movl (%edx),%edx
	movl $1,%ebp
	addl %ebp,%edx
	cmpl %edx,%eax
	jle Linit_start_73
Linit_end_74:
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $32,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $80,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Lgbl_70,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $44,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $48,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	call getline_79
.Lcall_successor_l144:
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_129:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 100(%esp), %ecx
	movl $-72,%eax
	addl %eax,%ecx
	movl $44,%eax
	addl %eax,%ecx
	leal 100(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_size
.Lcall_successor_l141:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
.Lbranch_target_l151:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Lloop_body_130
Lloop_end_108:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $40,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $48,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $2,%edx
	addl %edx,%ecx
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 100(%esp), %ecx
	movl $-72,%eax
	addl %eax,%ecx
	movl $56,%eax
	addl %eax,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $60,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $48,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $2,%eax
	addl %eax,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 108(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	leal 108(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 108(%esp), %ebp
	movl $-72,%ecx
	addl %ecx,%ebp
	movl $60,%ecx
	addl %ecx,%ebp
	leal 108(%esp), %ecx
	movl $-104,%esi
	addl %esi,%ecx
	movl (%ebp),%ebp
	movl %ebp,(%ecx)
	leal 108(%esp), %ecx
	movl $-108,%ebp
	addl %ebp,%ecx
	movl %edx,(%ecx)
	call cmfirst_49
.Lcall_successor_l123:
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_140:
.Lbranch_target_l157:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $68,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jge Lloop_body_141
Lloop_end_131:
.Lbranch_target_l158:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $60,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jne LifTrue_145
LifFalse_146:
	movl $0,%eax
	jmp LifEnd_147
LifTrue_145:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_84,%ecx
	leal 100(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l108:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
LifEnd_147:
	leal 100(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	leal 100(%esp), %esp
	ret
Lloop_body_141:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $64,%ecx
	addl %ecx,%eax
	movl (%eax),%esi
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $32,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $68,%edx
	addl %edx,%eax
	leal 100(%esp), %edi
	movl $-96,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $93,%eax
	leal 100(%esp), %edi
	movl $-92,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 100(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l120:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal -8(%esp), %esp
	leal 108(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	leal 108(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $32,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 108(%esp), %ecx
	movl $-72,%ebp
	addl %ebp,%ecx
	movl $68,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ecx
	movl $1,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	imull %ebp,%ecx
	addl %ecx,%edx
	leal 108(%esp), %ecx
	movl $-104,%ebp
	addl %ebp,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 108(%esp), %ecx
	movl $-108,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	call print_width_94
.Lcall_successor_l117:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	subl %eax,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $56,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l153:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je LifTrue_137
LifFalse_138:
	movl $0,%eax
	jmp LifEnd_139
LifTrue_137:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_84,%ecx
	leal 100(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l114:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 100(%esp), %ecx
	movl $-72,%eax
	addl %eax,%ecx
	movl $60,%eax
	addl %eax,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $56,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
LifEnd_139:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	call cmnext_50
.Lcall_successor_l111:
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_140
Lloop_body_130:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 100(%esp), %ecx
	movl $-72,%eax
	addl %eax,%ecx
	movl $44,%eax
	addl %eax,%ecx
	leal 100(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_size
.Lcall_successor_l138:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l152:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $48,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $52,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jl LifTrue_114
LifFalse_115:
	movl $0,%eax
	jmp LifEnd_116
LifTrue_114:
	leal 100(%esp), %ecx
	movl $-72,%eax
	addl %eax,%ecx
	movl $52,%eax
	addl %eax,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $48,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
LifEnd_116:
.Lbranch_target_l156:
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $36,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $28,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jge LifTrue_123
LifFalse_124:
	movl $0,%eax
	jmp LifEnd_125
LifTrue_123:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_117,%ecx
	leal 100(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l135:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $1,%ecx
	leal 100(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_exit
.Lcall_successor_l132:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
LifEnd_125:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $32,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 100(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl $36,%eax
	addl %eax,%edx
	leal 100(%esp), %eax
	movl $-96,%esi
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $83,%edx
	leal 100(%esp), %eax
	movl $-92,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 100(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l129:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 100(%esp), %edx
	movl $-72,%eax
	addl %eax,%edx
	movl $44,%eax
	addl %eax,%edx
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $32,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 100(%esp), %ecx
	movl $-72,%ebp
	addl %ebp,%ecx
	movl $36,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ecx
	movl $1,%ebp
	addl %ebp,%ecx
	movl $4,%ebp
	imull %ebp,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $36,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 100(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 100(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	call getline_79
.Lcall_successor_l126:
	leal 100(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_129
.section .pcmap_data
.Lstackdata_l160:
.long 1
.long 0xffffffb8
.section .pcmap
.long .Lcall_successor_l147
.long .Lframe_l161
.section .pcmap_data
.Lframe_l161:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l144
.long .Lframe_l162
.section .pcmap_data
.Lframe_l162:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l141
.long .Lframe_l163
.section .pcmap_data
.Lframe_l163:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l123
.long .Lframe_l164
.section .pcmap_data
.Lframe_l164:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l108
.long .Lframe_l165
.section .pcmap_data
.Lframe_l165:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l120
.long .Lframe_l166
.section .pcmap_data
.Lframe_l166:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
.long 0xffffffa8
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l117
.long .Lframe_l167
.section .pcmap_data
.Lframe_l167:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l114
.long .Lframe_l168
.section .pcmap_data
.Lframe_l168:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l111
.long .Lframe_l169
.section .pcmap_data
.Lframe_l169:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l138
.long .Lframe_l170
.section .pcmap_data
.Lframe_l170:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l135
.long .Lframe_l171
.section .pcmap_data
.Lframe_l171:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l132
.long .Lframe_l172
.section .pcmap_data
.Lframe_l172:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l129
.long .Lframe_l173
.section .pcmap_data
.Lframe_l173:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l126
.long .Lframe_l174
.section .pcmap_data
.Lframe_l174:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l160
.long 3
.long 30
.long 2
.long 1
.long 11
.long 0xffffffb0
.long 10
.long 0xffffffac
.long 9
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 18
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 1
.long 0
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 30
.long 1
.long 1
.long 0
.long 1
.long 0
.long 0
.long 0
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

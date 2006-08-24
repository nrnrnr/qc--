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
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
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
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 60(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l18:
.Lproc_body_start_l17:
	movl %eax,4(%esp)
	leal 60(%esp), %eax
	movl %eax,8(%esp)
	movl $-12,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl %eax,20(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 60(%esp), %ecx
	movl %eax,24(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl %eax,28(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %edx,36(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl 32(%esp),%ecx
	idivl %ecx, %eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 68(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 68(%esp), %edx
	movl %ecx,48(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,52(%esp)
	movl $-64,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	call mod_48
.Lcall_successor_l22:
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 60(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
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
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l27
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
	leal -56(%esp), %esp
	leal 56(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l30:
.Lproc_body_start_l29:
	leal 56(%esp), %edx
	movl %eax,(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	leal 56(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	leal 56(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
.Lbranch_target_l35:
.Lbranch_target_l46:
	leal 56(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 56(%esp), %edx
	movl %eax,8(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl 8(%esp),%edx
	cmpl %eax,%edx
	jge LifTrue_54
LifFalse_55:
	movl $0,%eax
	jmp LifEnd_56
LifTrue_54:
	movl $0,%eax
	leal 56(%esp), %edx
	movl %eax,12(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	leal 56(%esp), %edx
	movl %eax,16(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	movl $0,%eax
LifEnd_56:
	leal 56(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 56(%esp), %edx
	movl %eax,20(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 56(%esp), %edx
	movl %eax,24(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl 24(%esp),%edx
	imull %eax,%edx
	movl 20(%esp),%eax
	addl %edx,%eax
.Lbranch_target_l34:
.Lbranch_target_l45:
	leal 56(%esp), %edx
	movl %eax,28(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 56(%esp), %edx
	movl %eax,32(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl 32(%esp),%edx
	cmpl %eax,%edx
	jg LifTrue_58
LifFalse_59:
	leal 56(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	jmp LifEnd_60
LifTrue_58:
	leal 56(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	movl (%eax),%eax
LifEnd_60:
	movl 28(%esp),%edx
	addl %eax,%edx
	leal 56(%esp), %eax
	movl %eax,36(%esp)
	movl $-8,%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
.Lbranch_target_l33:
.Lbranch_target_l44:
	leal 56(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jge LifTrue_62
LifFalse_63:
	movl $0,%eax
	jmp LifEnd_64
LifTrue_62:
.Lbranch_target_l42:
	leal 56(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 56(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jge .Lbranch_target_l41
.Lbranch_target_l40:
	movl $0,%eax
	jmp .Lbranch_target_l39
.Lbranch_target_l41:
	movl $-1,%eax
.Lbranch_target_l39:
LifEnd_64:
.Lbranch_target_l32:
.Lbranch_target_l43:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_66
LifFalse_67:
	leal 56(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp LifEnd_68
LifTrue_66:
	movl $-1,%eax
LifEnd_68:
	leal 56(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 56(%esp), %esp
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l52:
.Lproc_body_start_l51:
	leal 40(%esp), %edx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,12(%esp)
	call tig_getchar
.Lcall_successor_l70:
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_70,%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_91:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %eax,16(%esp)
	movl $-40,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_70,%eax
	leal 40(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l67:
	leal Cmm.global_area,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l64:
.Lbranch_target_l79:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_88
LifFalse_89:
	movl $0,%eax
	jmp LifEnd_90
LifTrue_88:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %eax,20(%esp)
	movl $-40,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_84,%eax
	leal 40(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l63:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l78:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l77
.Lbranch_target_l76:
	movl $0,%eax
	jmp .Lbranch_target_l75
.Lbranch_target_l77:
	movl $-1,%eax
.Lbranch_target_l75:
LifEnd_90:
.Lbranch_target_l60:
.Lbranch_target_l74:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_92
Lloop_end_80:
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
	ret
Lloop_body_92:
	leal -4(%esp), %esp
	leal 44(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 44(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 44(%esp), %edx
	movl %ecx,28(%esp)
	movl $-44,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tig_concat
.Lcall_successor_l59:
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l56:
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_91
.section .pcmap_data
.Lstackdata_l81:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l70
.long .Lframe_l82
.section .pcmap_data
.Lframe_l82:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l81
.long 0
.long 10
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
.long getline_79_gc_data
.section .pcmap
.long .Lcall_successor_l67
.long .Lframe_l83
.section .pcmap_data
.Lframe_l83:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l81
.long 0
.long 10
.long 2
.long 1
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
.long getline_79_gc_data
.section .pcmap
.long .Lcall_successor_l63
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l81
.long 0
.long 10
.long 2
.long 1
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
.long getline_79_gc_data
.section .pcmap
.long .Lcall_successor_l59
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l81
.long 0
.long 10
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
.long getline_79_gc_data
.section .pcmap
.long .Lcall_successor_l56
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l81
.long 0
.long 10
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
	leal -68(%esp), %esp
	leal 68(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 68(%esp), %edx
	movl %eax,4(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 68(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l88:
.Lproc_body_start_l87:
	movl %eax,8(%esp)
	leal 68(%esp), %eax
	movl %eax,12(%esp)
	movl $-16,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl %eax,24(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	leal 68(%esp), %eax
	movl %eax,28(%esp)
	movl $-68,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %edx,40(%esp)
	call tig_print
.Lcall_successor_l99:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %eax,44(%esp)
	movl $-68,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_size
.Lcall_successor_l96:
	leal Cmm.global_area,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_105:
.Lbranch_target_l93:
.Lbranch_target_l103:
	leal 68(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jle Lloop_body_106
Lloop_end_101:
	movl $0,%eax
	leal 68(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 76(%esp), %esp
	ret
Lloop_body_106:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_102,%ecx
	leal 68(%esp), %edx
	movl %eax,48(%esp)
	movl $-68,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l92:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 68(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_105
.section .pcmap_data
.Lstackdata_l106:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l99
.long .Lframe_l107
.section .pcmap_data
.Lframe_l107:
.long 0x8000000c
.long 0xffffffbc
.long 0xffffffe4
.long .Lstackdata_l106
.long 0
.long 10
.long 2
.long 1
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
.long print_width_94_gc_data
.section .pcmap
.long .Lcall_successor_l96
.long .Lframe_l108
.section .pcmap_data
.Lframe_l108:
.long 0x8000000c
.long 0xffffffbc
.long 0xffffffe4
.long .Lstackdata_l106
.long 0
.long 10
.long 2
.long 1
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
.long print_width_94_gc_data
.section .pcmap
.long .Lcall_successor_l92
.long .Lframe_l109
.section .pcmap_data
.Lframe_l109:
.long 0x8000000c
.long 0xffffffbc
.long 0xffffffe4
.long .Lstackdata_l106
.long 0
.long 10
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
	leal -240(%esp), %esp
	leal 240(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l111:
.Lproc_body_start_l110:
	leal 240(%esp), %edx
	movl %eax,12(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 240(%esp), %edx
	movl %eax,16(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 240(%esp), %edx
	movl %eax,20(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl 20(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 240(%esp), %edx
	movl %eax,24(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl 24(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 240(%esp), %edx
	movl %eax,28(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $16,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 240(%esp), %edx
	movl %eax,32(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $20,%eax
	addl %eax,%edx
	movl 32(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 240(%esp), %edx
	movl %eax,36(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $24,%eax
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $1024,%eax
	leal 240(%esp), %edx
	movl %eax,40(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $28,%eax
	addl %eax,%edx
	movl 40(%esp),%eax
	movl %eax,(%edx)
.Lbranch_target_l162:
.Lbranch_target_l173:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 240(%esp), %edx
	movl %eax,44(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $28,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $2,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	movl 44(%esp),%edx
	addl %eax,%edx
	leal space_end,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	jg Lalc_gc_76
Lalc_gc_76:
	movl %ecx,48(%esp)
	call tig_call_gc
.Lcall_successor_l161:
Lalc_77:
	leal 240(%esp), %eax
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 240(%esp), %edx
	movl %eax,52(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $28,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $2,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	movl 52(%esp),%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
Linit_start_73:
	leal Lgbl_70,%edx
	movl %eax,56(%esp)
	movl $4,%eax
	movl %eax,60(%esp)
	movl %ecx,%eax
	movl %ecx,64(%esp)
	movl 60(%esp),%ecx
	imull %ecx,%eax
	movl %eax,68(%esp)
	movl 56(%esp),%ecx
	movl %ecx,%eax
	movl 68(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $1,%eax
	movl 64(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l158:
.Lbranch_target_l172:
	leal 240(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl $28,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	cmpl %eax,%ecx
.Lbranch_target_l175:
	jle .LLinit_start_73_l174
Linit_end_74:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $32,%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $80,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_70,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	call getline_79
.Lcall_successor_l157:
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_129:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $44,%edx
	addl %edx,%ecx
	leal 240(%esp), %edx
	movl %eax,72(%esp)
	movl $-240,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_size
.Lcall_successor_l154:
	leal Cmm.global_area,%ecx
	movl 72(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l151:
.Lbranch_target_l171:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Lloop_body_130
Lloop_end_108:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $40,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 240(%esp), %ecx
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
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $60,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $48,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $2,%ecx
	addl %ecx,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $64,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal -8(%esp), %esp
	leal 248(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	leal 248(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 248(%esp), %edx
	movl %ecx,116(%esp)
	movl $-72,%ecx
	addl %ecx,%edx
	movl $60,%ecx
	addl %ecx,%edx
	leal 248(%esp), %ecx
	movl %ecx,120(%esp)
	movl $-244,%ecx
	movl %ecx,124(%esp)
	movl 120(%esp),%ecx
	movl %edx,128(%esp)
	movl 124(%esp),%edx
	addl %edx,%ecx
	movl 128(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 248(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl 116(%esp),%edx
	movl %edx,(%ecx)
	call cmfirst_49
.Lcall_successor_l133:
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_140:
.Lbranch_target_l130:
.Lbranch_target_l168:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $68,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Lloop_body_141
Lloop_end_131:
.Lbranch_target_l116:
.Lbranch_target_l166:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $60,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jne LifTrue_145
LifFalse_146:
	movl $0,%eax
	jmp LifEnd_147
LifTrue_145:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_84,%ecx
	leal 240(%esp), %edx
	movl %eax,164(%esp)
	movl $-240,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l115:
	leal Cmm.global_area,%ecx
	movl 164(%esp),%edx
	movl %edx,(%ecx)
LifEnd_147:
	leal 240(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %esp
	ret
Lloop_body_141:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $64,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal 240(%esp), %edx
	movl %eax,124(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $32,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 240(%esp), %edx
	movl %eax,128(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $68,%eax
	addl %eax,%edx
	leal 240(%esp), %eax
	movl %eax,132(%esp)
	movl $-236,%eax
	movl %eax,136(%esp)
	movl 132(%esp),%eax
	movl %ecx,140(%esp)
	movl 136(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $93,%eax
	leal 240(%esp), %ecx
	movl $-232,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 240(%esp), %eax
	movl $-240,%ecx
	addl %ecx,%eax
	movl 128(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l129:
	leal Cmm.global_area,%eax
	movl 140(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 248(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	leal 248(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $32,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 248(%esp), %edx
	movl %ecx,152(%esp)
	movl $-72,%ecx
	addl %ecx,%edx
	movl $68,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	movl 152(%esp),%edx
	addl %ecx,%edx
	leal 248(%esp), %ecx
	movl %ecx,156(%esp)
	movl $-244,%ecx
	movl %ecx,160(%esp)
	movl 156(%esp),%ecx
	movl %edx,164(%esp)
	movl 160(%esp),%edx
	addl %edx,%ecx
	movl 164(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 248(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl 132(%esp),%edx
	movl %edx,(%ecx)
	call print_width_94
.Lcall_successor_l126:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	subl %ecx,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l123:
.Lbranch_target_l167:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $56,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_137
LifFalse_138:
	movl $0,%eax
	jmp LifEnd_139
LifTrue_137:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_84,%ecx
	leal 240(%esp), %edx
	movl %eax,160(%esp)
	movl $-240,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l122:
	leal Cmm.global_area,%eax
	movl 160(%esp),%ecx
	movl %ecx,(%eax)
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $60,%ecx
	addl %ecx,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $56,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $0,%eax
LifEnd_139:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	call cmnext_50
.Lcall_successor_l119:
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_140
Lloop_body_130:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $44,%edx
	addl %edx,%ecx
	leal 240(%esp), %edx
	movl %eax,76(%esp)
	movl $-240,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_size
.Lcall_successor_l150:
	leal Cmm.global_area,%ecx
	movl 76(%esp),%edx
	movl %edx,(%ecx)
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l147:
.Lbranch_target_l170:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $48,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $52,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jl LifTrue_114
LifFalse_115:
	movl $0,%eax
	jmp LifEnd_116
LifTrue_114:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $52,%ecx
	addl %ecx,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $48,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $0,%eax
LifEnd_116:
.Lbranch_target_l146:
.Lbranch_target_l169:
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $36,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jge LifTrue_123
LifFalse_124:
	movl $0,%eax
	jmp LifEnd_125
LifTrue_123:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_117,%ecx
	leal 240(%esp), %edx
	movl %eax,80(%esp)
	movl $-240,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l145:
	leal Cmm.global_area,%eax
	movl 80(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $1,%ecx
	leal 240(%esp), %edx
	movl %eax,84(%esp)
	movl $-240,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_exit
.Lcall_successor_l142:
	leal Cmm.global_area,%ecx
	movl 84(%esp),%edx
	movl %edx,(%ecx)
LifEnd_125:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $32,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 240(%esp), %edx
	movl %eax,88(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $36,%eax
	addl %eax,%edx
	leal 240(%esp), %eax
	movl %eax,92(%esp)
	movl $-236,%eax
	movl %eax,96(%esp)
	movl 92(%esp),%eax
	movl %ecx,100(%esp)
	movl 96(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	movl $83,%eax
	leal 240(%esp), %ecx
	movl $-232,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 240(%esp), %eax
	movl $-240,%ecx
	addl %ecx,%eax
	movl 100(%esp),%ecx
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l139:
	leal Cmm.global_area,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $44,%ecx
	addl %ecx,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $32,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 240(%esp), %edx
	movl %eax,104(%esp)
	movl $-72,%eax
	addl %eax,%edx
	movl $36,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	addl %edx,%eax
	movl $4,%edx
	imull %edx,%eax
	addl %eax,%ecx
	movl 104(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	movl $36,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 240(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	call getline_79
.Lcall_successor_l136:
	leal 240(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl $44,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_129
.LLinit_start_73_l174:
	movl 56(%esp),%eax
	jmp Linit_start_73
.section .pcmap_data
.Lstackdata_l177:
.long 1
.long 0xffffffb8
.section .pcmap
.long .Lcall_successor_l161
.long .Lframe_l178
.section .pcmap_data
.Lframe_l178:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long .Lcall_successor_l157
.long .Lframe_l179
.section .pcmap_data
.Lframe_l179:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long .Lcall_successor_l154
.long .Lframe_l180
.section .pcmap_data
.Lframe_l180:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff58
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l133
.long .Lframe_l181
.section .pcmap_data
.Lframe_l181:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long .Lcall_successor_l115
.long .Lframe_l182
.section .pcmap_data
.Lframe_l182:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long 0xffffffb4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l183
.section .pcmap_data
.Lframe_l183:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff8c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff9c
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l184
.section .pcmap_data
.Lframe_l184:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long .Lcall_successor_l122
.long .Lframe_l185
.section .pcmap_data
.Lframe_l185:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l119
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long .Lcall_successor_l150
.long .Lframe_l187
.section .pcmap_data
.Lframe_l187:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long 0
.long 0
.long 0
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l145
.long .Lframe_l188
.section .pcmap_data
.Lframe_l188:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long 0xffffff60
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l142
.long .Lframe_l189
.section .pcmap_data
.Lframe_l189:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long 0xffffff64
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
.long .Lcall_successor_l139
.long .Lframe_l190
.section .pcmap_data
.Lframe_l190:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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
.long 0xffffff68
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l136
.long .Lframe_l191
.section .pcmap_data
.Lframe_l191:
.long 0x80000004
.long 0xffffff10
.long 0xffffff40
.long .Lstackdata_l177
.long 0
.long 30
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

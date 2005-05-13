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
Lgbl_68:
.long 2
.byte 32
.byte 79
.byte 0
Lgbl_78:
.long 1
.byte 10
.byte 0
Lgbl_69:
.long 2
.byte 32
.byte 46
.byte 0
.section .text
printboard_61:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,24(%esp)
	movl %edi,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
Lloop_start_81:
.Lbranch_target_l23:
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%ecx
	jle Lloop_body_82
Lloop_end_63:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_78,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l9:
	leal Cmm.global_area,%ecx
	movl %ebp,(%ecx)
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	leal 40(%esp), %esp
	ret
Lloop_body_82:
	movl $0,%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
Lloop_start_76:
.Lbranch_target_l24:
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%ecx
	jle Lloop_body_77
Lloop_end_64:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Lgbl_78,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l12:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_81
Lloop_body_77:
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 40(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $16,%eax
	leal 40(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l18:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
.Lbranch_target_l22:
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	cmpl %eax,%edx
	je LifTrue_71
LifFalse_72:
	leal Lgbl_69,%ecx
	jmp LifEnd_73
LifTrue_71:
	leal Lgbl_68,%ecx
LifEnd_73:
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l15:
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 40(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_76
.section .pcmap_data
.Lstackdata_l27:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l28
.section .pcmap_data
.Lframe_l28:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l27
.long 3
.long 11
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
.long printboard_61_gc_data
.section .pcmap
.long .Lcall_successor_l12
.long .Lframe_l29
.section .pcmap_data
.Lframe_l29:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l27
.long 3
.long 11
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
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long printboard_61_gc_data
.section .pcmap
.long .Lcall_successor_l18
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l27
.long 3
.long 11
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
.long 0x40000009
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long printboard_61_gc_data
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffff0
.long .Lstackdata_l27
.long 3
.long 11
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
.long 0x40000009
.long 0
.long 0
.long 0
.long 0
.long 0
.long printboard_61_gc_data
.section .text
.section .data
printboard_61_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 11
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
.section .text
tryy_62:
	leal -36(%esp), %esp
	leal 36(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 36(%esp), %edx
	movl (%edx),%edx
	movl %edx,20(%esp)
	movl %edi,16(%esp)
	movl %esi,12(%esp)
.Linitialize_continuations_l33:
.Lproc_body_start_l32:
	leal 36(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l83:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je LifTrue_122
LifFalse_123:
	movl $0,%edx
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
Lloop_start_119:
.Lbranch_target_l84:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	subl %edx,%eax
	cmpl %eax,%ecx
	jle Lloop_body_120
Lloop_end_86:
	movl $0,%eax
	jmp LifEnd_124
Lloop_body_120:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $25,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l67:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
.Lbranch_target_l74:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je LifTrue_92
LifFalse_93:
	movl $0,%eax
	jmp LifEnd_94
LifTrue_92:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %eax,%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl $25,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l64:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
.Lbranch_target_l78:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	addl %edx,%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l77
.Lbranch_target_l76:
	movl $0,%eax
	jmp .Lbranch_target_l75
.Lbranch_target_l77:
	movl $-1,%eax
.Lbranch_target_l75:
LifEnd_94:
.Lbranch_target_l85:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_98
LifFalse_99:
	movl $0,%eax
	jmp LifEnd_100
LifTrue_98:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %eax,%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $7,%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edx
	subl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl $25,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l61:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
.Lbranch_target_l82:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $7,%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl $-12,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	subl %edx,%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l81
.Lbranch_target_l80:
	movl $0,%eax
	jmp .Lbranch_target_l79
.Lbranch_target_l81:
	movl $-1,%eax
.Lbranch_target_l79:
LifEnd_100:
.Lbranch_target_l86:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_116
LifFalse_117:
	movl $0,%eax
	jmp LifEnd_118
LifTrue_116:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $26,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l58:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $1,%edx
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $1,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %eax,%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl $26,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l55:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $1,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%esi
	addl %esi,%ecx
	movl $1,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %eax,%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $7,%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edx
	subl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl $26,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l52:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $1,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $7,%esi
	addl %esi,%ecx
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%esi
	subl %esi,%ecx
	movl $1,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $27,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l49:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	leal 36(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $4,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $1,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call tryy_62
.Lcall_successor_l46:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	movl $29,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l43:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $0,%edx
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $1,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %eax,%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl $29,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l40:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%esi
	addl %esi,%ecx
	movl $1,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %eax,%esi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $7,%edx
	addl %edx,%eax
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edx
	subl %edx,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl $29,%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_bounds_check
.Lcall_successor_l37:
	leal Cmm.global_area,%eax
	movl %esi,(%eax)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $7,%esi
	addl %esi,%ecx
	leal 36(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%esi
	subl %esi,%ecx
	movl $1,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
LifEnd_118:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_119
LifTrue_122:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call printboard_61
.Lcall_successor_l70:
LifEnd_124:
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l88:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l67
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l64
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l61
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l58
.long .Lframe_l92
.section .pcmap_data
.Lframe_l92:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l55
.long .Lframe_l93
.section .pcmap_data
.Lframe_l93:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l52
.long .Lframe_l94
.section .pcmap_data
.Lframe_l94:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l49
.long .Lframe_l95
.section .pcmap_data
.Lframe_l95:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l46
.long .Lframe_l96
.section .pcmap_data
.Lframe_l96:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l43
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l40
.long .Lframe_l98
.section .pcmap_data
.Lframe_l98:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l37
.long .Lframe_l99
.section .pcmap_data
.Lframe_l99:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .pcmap
.long .Lcall_successor_l70
.long .Lframe_l100
.section .pcmap_data
.Lframe_l100:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff0
.long .Lstackdata_l88
.long 2
.long 27
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tryy_62_gc_data
.section .text
.section .data
tryy_62_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 27
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
.section .text
tiger_main:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l102:
.Lproc_body_start_l101:
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $8,%edx
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
.Lbranch_target_l122:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-24,%edx
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
	jg Lalc_gc_37
Lalc_gc_37:
	call tig_call_gc
.Lcall_successor_l118:
Lalc_38:
	leal 36(%esp), %eax
	movl $-24,%ecx
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
	leal 36(%esp), %edx
	movl $-24,%esi
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
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $1,%eax
Linit_start_34:
	movl $0,%edi
	movl $4,%edx
	movl %eax,%esi
	imull %edx,%esi
	movl %ecx,%edx
	addl %esi,%edx
	movl %edi,(%edx)
	movl $1,%edx
	addl %edx,%eax
.Lbranch_target_l123:
	leal 36(%esp), %edx
	movl $-24,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	movl $1,%esi
	addl %esi,%edx
	cmpl %edx,%eax
	jle Linit_start_34
Linit_end_35:
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l124:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-24,%edx
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
	jg Lalc_gc_45
Lalc_gc_45:
	call tig_call_gc
.Lcall_successor_l115:
Lalc_46:
	leal 36(%esp), %eax
	movl $-24,%ecx
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
	leal 36(%esp), %edx
	movl $-24,%esi
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
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl $1,%eax
Linit_start_42:
	movl $0,%edi
	movl $4,%edx
	movl %eax,%esi
	imull %edx,%esi
	movl %ecx,%edx
	addl %esi,%edx
	movl %edi,(%edx)
	movl $1,%edx
	addl %edx,%eax
.Lbranch_target_l125:
	leal 36(%esp), %edx
	movl $-24,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	movl $1,%esi
	addl %esi,%edx
	cmpl %edx,%eax
	jle Linit_start_42
Linit_end_43:
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l126:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl $-24,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	addl %edx,%ecx
	movl $1,%edx
	subl %edx,%ecx
	movl $2,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_52
Lalc_gc_52:
	call tig_call_gc
.Lcall_successor_l112:
Lalc_53:
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	subl %ecx,%eax
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
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl $-24,%esi
	addl %esi,%ecx
	movl $4,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%esi
	addl %esi,%ecx
	movl $1,%esi
	subl %esi,%ecx
	movl $2,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	movl %eax,%ecx
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 36(%esp), %edx
	movl $-24,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	addl %edx,%eax
	movl $1,%edx
	subl %edx,%eax
	movl %eax,(%ecx)
	movl $1,%eax
	movl %eax,%edx
Linit_start_49:
	movl $0,%edi
	movl $4,%eax
	movl %edx,%esi
	imull %eax,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl %edi,(%eax)
	movl $1,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl %eax,%edx
.Lbranch_target_l127:
	leal 36(%esp), %eax
	movl $-24,%esi
	addl %esi,%eax
	movl $4,%esi
	addl %esi,%eax
	movl (%eax),%eax
	leal 36(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%esi
	addl %esi,%eax
	movl $1,%esi
	subl %esi,%eax
	movl $1,%esi
	addl %esi,%eax
	cmpl %eax,%edx
	jle Linit_start_49
Linit_end_50:
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l128:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl $-24,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	addl %edx,%ecx
	movl $1,%edx
	subl %edx,%ecx
	movl $2,%edx
	addl %edx,%ecx
	movl $4,%edx
	imull %edx,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_59
Lalc_gc_59:
	call tig_call_gc
.Lcall_successor_l109:
Lalc_60:
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	addl %ecx,%eax
	movl $1,%ecx
	subl %ecx,%eax
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
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl $-24,%esi
	addl %esi,%ecx
	movl $4,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%esi
	addl %esi,%ecx
	movl $1,%esi
	subl %esi,%ecx
	movl $2,%esi
	addl %esi,%ecx
	movl $4,%esi
	imull %esi,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	movl %eax,%ecx
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 36(%esp), %edx
	movl $-24,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl (%edx),%edx
	addl %edx,%eax
	movl $1,%edx
	subl %edx,%eax
	movl %eax,(%ecx)
	movl $1,%eax
	movl %eax,%edx
Linit_start_56:
	movl $0,%edi
	movl $4,%eax
	movl %edx,%esi
	imull %eax,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl %edi,(%eax)
	movl $1,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl %eax,%edx
.Lbranch_target_l129:
	leal 36(%esp), %eax
	movl $-24,%esi
	addl %esi,%eax
	movl $4,%esi
	addl %esi,%eax
	movl (%eax),%eax
	leal 36(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%esi
	addl %esi,%eax
	movl $1,%esi
	subl %esi,%eax
	movl $1,%esi
	addl %esi,%eax
	cmpl %eax,%edx
	jle Linit_start_56
Linit_end_57:
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $0,%edx
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call tryy_62
.Lcall_successor_l106:
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l131:
.long 1
.long 0xffffffe8
.section .pcmap
.long .Lcall_successor_l118
.long .Lframe_l132
.section .pcmap_data
.Lframe_l132:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long .Lstackdata_l131
.long 2
.long 14
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 10
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l115
.long .Lframe_l133
.section .pcmap_data
.Lframe_l133:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long .Lstackdata_l131
.long 2
.long 14
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 10
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l112
.long .Lframe_l134
.section .pcmap_data
.Lframe_l134:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long .Lstackdata_l131
.long 2
.long 14
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 10
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l109
.long .Lframe_l135
.section .pcmap_data
.Lframe_l135:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long .Lstackdata_l131
.long 2
.long 14
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 10
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l106
.long .Lframe_l136
.section .pcmap_data
.Lframe_l136:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe4
.long .Lstackdata_l131
.long 2
.long 14
.long 2
.long 1
.long 11
.long 0xffffffe0
.long 10
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 6
.long 1
.long 0
.long 1
.long 1
.long 1
.long 1
.long 14
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 1
.long 0

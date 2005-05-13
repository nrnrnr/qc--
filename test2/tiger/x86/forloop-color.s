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
Lgbl_27:
.long 1
.byte 10
.byte 0
.section .text
tiger_main:
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal 24(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%ecx
	leal 24(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal 24(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
Lloop_start_25:
.Lbranch_target_l17:
	leal 24(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $25,%eax
	cmpl %eax,%ecx
	jle Lloop_body_26
Lloop_end_22:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_27,%eax
	leal 24(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l7:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
Lloop_body_26:
	leal 24(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 24(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 24(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $64,%ecx
	addl %ecx,%eax
	call tig_chr
.Lcall_successor_l13:
	leal 24(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l10:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal 24(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	addl %eax,%ecx
	leal 24(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	jmp Lloop_start_25
.section .pcmap_data
.Lstackdata_l19:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l20
.section .pcmap_data
.Lframe_l20:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff0
.long .Lstackdata_l19
.long 1
.long 7
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l21
.section .pcmap_data
.Lframe_l21:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff0
.long .Lstackdata_l19
.long 1
.long 7
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
.long tiger_main_gc_data
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l22
.section .pcmap_data
.Lframe_l22:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffff0
.long .Lstackdata_l19
.long 1
.long 7
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
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 7
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0

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
	leal -52(%esp), %esp
	leal 52(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	leal 52(%esp), %edx
	movl %eax,4(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 52(%esp), %edx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 52(%esp), %edx
	movl %eax,12(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	jmp Lloop_start_25
Lloop_start_25:
	leal 52(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $25,%edx
	cmpl %edx,%eax
	jle .Ljoin_l15
.Ljoin_l16:
	jmp Lloop_end_22
Lloop_end_22:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_27,%edx
	movl %eax,16(%esp)
	leal 52(%esp), %eax
	movl %eax,20(%esp)
	movl $-52,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_print
.Ljoin_l8:
	leal Cmm.global_area,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
.Ljoin_l15:
	jmp Lloop_body_26
Lloop_body_26:
	leal 52(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $1,%edx
	addl %edx,%eax
	leal 52(%esp), %edx
	movl %eax,32(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 32(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 52(%esp), %edx
	movl %eax,36(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $64,%edx
	addl %edx,%eax
	movl %ecx,28(%esp)
	call tig_chr
.Ljoin_l14:
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
.Ljoin_l11:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	addl %ecx,%eax
	leal 52(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp .Ljoin_l20
.Ljoin_l20:
	movl 28(%esp),%ecx
	jmp Lloop_start_25
.section .pcmap_data
.Lstackdata_l22:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Ljoin_l8
.long .Lframe_l23
.section .pcmap_data
.Lframe_l23:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe8
.long .Lstackdata_l22
.long 0
.long 7
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long .Ljoin_l14
.long .Lframe_l24
.section .pcmap_data
.Lframe_l24:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe8
.long .Lstackdata_l22
.long 0
.long 7
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
.long tiger_main_gc_data
.section .pcmap
.long .Ljoin_l11
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x80000004
.long 0xffffffcc
.long 0xffffffe8
.long .Lstackdata_l22
.long 0
.long 7
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

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
Lgbl_20:
.long 14
.byte 72
.byte 101
.byte 108
.byte 108
.byte 111
.byte 44
.byte 32
.byte 119
.byte 111
.byte 114
.byte 108
.byte 100
.byte 46
.byte 10
.byte 0
.section .text
tiger_main:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal 36(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_20,%eax
	leal 36(%esp), %edx
	movl %eax,8(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %edx
	movl %eax,12(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	leal 36(%esp), %eax
	movl %eax,16(%esp)
	movl $-36,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l7:
	leal Cmm.global_area,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l13:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l14
.section .pcmap_data
.Lframe_l14:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l13
.long 0
.long 4
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 2
.long 1
.long 1
.long 4
.long 1
.long 0
.long 0
.long 0

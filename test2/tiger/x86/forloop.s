.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ:
Cmm.global_area:
.skip 4
.section .data
.align 4
Lgbl_27:
.long 1
.byte 10
.byte 0
.section .text
tiger_main:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal 36(%esp), %ecx
	movl %eax,4(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl %edx,8(%esp)
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_25
Lloop_start_25:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $25,%eax
	cmpl %eax,%ecx
	jle Ljoin_l15
Ljoin_l16:
	jmp Lloop_end_22
Lloop_end_22:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_27,%eax
	leal 36(%esp), %edx
	movl %ebx,12(%esp)
	movl $-36,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,16(%esp)
	call tig_print
Ljoin_l8:
	leal Cmm.global_area,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 36(%esp), %esp
	ret
Ljoin_l15:
	jmp Lloop_body_26
Lloop_body_26:
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $64,%ecx
	addl %ecx,%eax
	movl %edx,20(%esp)
	call tig_chr
Ljoin_l14:
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l11:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
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
	jmp Lloop_start_25
.section .pcmap_data
Lstackdata_l21:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l8
.long Lframe_l22
.section .pcmap_data
Lframe_l22:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l21
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l14
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l21
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l11
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l21
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
.long 0x80000000
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

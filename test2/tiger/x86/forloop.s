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
	movl $-12,%ecx
	movl %eax,4(%esp)
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $4,%ecx
	movl %edx,8(%esp)
	movl $-12,%edx
	movl %ebx,12(%esp)
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $0,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl %eax,(%edx)
	jmp Lloop_start_25
Lloop_start_25:
	movl $8,%eax
	movl $-12,%edx
	leal 36(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $25,%ebx
	cmpl %ebx,%eax
	jle Ljoin_l15
Ljoin_l16:
	jmp Lloop_end_22
Lloop_end_22:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal Lgbl_27,%eax
	movl $-36,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l8:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	movl $0,%ecx
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	movl 8(%esp),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebx
	leal 36(%esp), %esp
	ret
Ljoin_l15:
	jmp Lloop_body_26
Lloop_body_26:
	movl $1,%ebx
	movl $4,%ecx
	movl $-12,%edx
	leal 36(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	addl %ebx,%ecx
	movl $4,%ebx
	movl $-12,%eax
	leal 36(%esp), %edx
	addl %eax,%edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $64,%ecx
	movl $4,%ebx
	movl $-12,%eax
	movl %ebp,16(%esp)
	leal 36(%esp), %ebp
	addl %eax,%ebp
	addl %ebx,%ebp
	movl (%ebp),%eax
	addl %ecx,%eax
	movl %edx,20(%esp)
	call tig_chr
Ljoin_l14:
	movl $-36,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
Ljoin_l11:
	leal Cmm.global_area,%eax
	movl 20(%esp),%edx
	movl %edx,(%eax)
	movl $1,%eax
	movl $8,%edx
	movl $-12,%ebx
	leal 36(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $8,%eax
	movl $-12,%ecx
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	addl %eax,%ebx
	movl %edx,(%ebx)
	jmp Ljoin_l20
Ljoin_l20:
	movl 16(%esp),%ebp
	jmp Lloop_start_25
.section .pcmap_data
Lstackdata_l22:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l8
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l22
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
.long 0x40000007
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l14
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l22
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
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
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe4
.long Lstackdata_l22
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
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

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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $-8,%ecx
	movl %eax,4(%esp)
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal Lgbl_20,%eax
	movl $4,%ecx
	movl %edx,8(%esp)
	movl $-8,%edx
	movl %ebx,12(%esp)
	leal 24(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl $-24,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call tig_print
Ljoin_l8:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	movl $0,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl 8(%esp),%ecx
	movl %ecx,(%ebx)
	movl 12(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l14:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l8
.long Lframe_l15
.section .pcmap_data
Lframe_l15:
.long 0xffffffe8
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l14
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x40000007
.long 0x80000000
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

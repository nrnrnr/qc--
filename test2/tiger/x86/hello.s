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
	movl (%ecx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal 24(%esp), %edx
	movl %edi,4(%esp)
	movl $-8,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Lgbl_20,%edi
	leal 24(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 24(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 24(%esp), %edx
	movl %edi,8(%esp)
	movl $-24,%edi
	addl %edi,%edx
	movl (%eax),%edi
	movl %edi,(%edx)
	movl %ecx,12(%esp)
	call tig_print
Ljoin_l8:
	leal Cmm.global_area,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
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
.long 0xfffffff4
.long Lstackdata_l14
.long 8
.long 4
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
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
.long 2
.long 1
.long 1
.long 4
.long 1
.long 0
.long 0
.long 0

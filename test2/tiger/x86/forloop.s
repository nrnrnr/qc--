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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal 28(%esp), %edx
	movl %edi,4(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl $0,%edi
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl $0,%edi
	leal 28(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	jmp Lloop_start_25
Lloop_start_25:
	leal 28(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $25,%eax
	cmpl %eax,%edi
	jle Ljoin_l15
Ljoin_l16:
	jmp Lloop_end_22
Lloop_end_22:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_27,%eax
	leal 28(%esp), %edx
	movl %edi,8(%esp)
	movl $-28,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl %ecx,12(%esp)
	call tig_print
Ljoin_l8:
	leal Cmm.global_area,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 28(%esp), %esp
	ret
Ljoin_l15:
	jmp Lloop_body_26
Lloop_body_26:
	leal 28(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl $1,%edx
	addl %edx,%edi
	leal 28(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 28(%esp), %edx
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $64,%edx
	addl %edx,%eax
	movl %ecx,12(%esp)
	call tig_chr
Ljoin_l14:
	leal 28(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l11:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	leal 28(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $8,%edx
	addl %edx,%edi
	movl (%edi),%edi
	movl $1,%edx
	addl %edx,%edi
	leal 28(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl %edi,(%edx)
	jmp Ljoin_l20
Ljoin_l20:
	movl 12(%esp),%ecx
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
.long 0xffffffe4
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l22
.long 8
.long 7
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long Ljoin_l14
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xffffffe4
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l22
.long 8
.long 7
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe8
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
.long Ljoin_l11
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0xffffffe4
.long 0x80000004
.long 0xfffffff0
.long Lstackdata_l22
.long 8
.long 7
.long 2
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffe8
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

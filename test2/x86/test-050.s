.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffffffffffff
.section .text
main:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal fmt,%edx
	movl %edi,8(%esp)
	leal 32(%esp), %edi
	movl %edi,12(%esp)
	movl $-32,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 32(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %ecx,28(%esp)
	movl %eax,24(%esp)
	call printf
Ljoin_l14:
	leal fmt,%edi
	leal 32(%esp), %esi
	movl $-32,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal 32(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	call printf
Ljoin_l11:
	leal fmt,%edi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 32(%esp), %edi
	movl $-28,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l21:
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l22
.section .pcmap_data
Lframe_l22:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long Lstackdata_l21
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff4
.long 11
.long 0xffffffe8
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long Lstackdata_l21
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff4
.long 11
.long 0xffffffe8
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long Lstackdata_l21
.long 2
.long 2
.long 0
.long 1
.long 10
.long 0xfffffff4
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 97
.byte 114
.byte 103
.byte 99
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

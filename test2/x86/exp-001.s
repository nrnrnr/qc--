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
.long 0xffffffff
.section .text
p:
	leal -4(%esp), %esp
	leal 4(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $1,%eax
	movl $2,%ecx
	movl %edx,(%esp)
	movl $3,%edx
	addl %ecx,%eax
	addl %edx,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l16:
.Lproc_body_start_l15:
	movl %eax,8(%esp)
	call p
.Ljoin_l23:
	leal fmt,%ecx
	leal 16(%esp), %edx
	movl %edi,12(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
.Ljoin_l20:
	movl $0,%eax
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l29:
.long 0
.section .pcmap
.long .Ljoin_l23
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l29
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l20
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l29
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 116
.byte 111
.byte 116
.byte 97
.byte 108
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

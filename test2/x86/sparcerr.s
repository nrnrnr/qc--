.globl main
.globl my_data
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
.section .data
my_data:
.byte 104
.byte 101
.byte 108
.byte 108
.byte 111
.byte 10
.byte 0
.section .text
foo:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	leal my_data,%edx
	movl %edi,4(%esp)
	leal 28(%esp), %edi
	movl %edi,8(%esp)
	movl $-28,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %ecx,24(%esp)
	movl %eax,20(%esp)
	call *%eax
Ljoin_l9:
	movl 20(%esp),%eax
	leal 28(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l16:
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l17
.section .pcmap_data
Lframe_l17:
.long 0x80000004
.long 0xffffffe4
.long 0xfffffffc
.long Lstackdata_l16
.long 2
.long 1
.long 0
.long 1
.long 10
.long 0xfffffff4
.long 11
.long 0xffffffe8
.long 0xfffffff8
.long 0
.section .text
.section .text
main:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 12(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 12(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l20:
Lproc_body_start_l19:
	leal printf,%ecx
	leal 12(%esp), %edx
	movl %edi,4(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl %eax,8(%esp)
	call foo
Ljoin_l24:
	movl $0,%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l31:
.long 0
.section .pcmap
.long Ljoin_l24
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long Lstackdata_l31
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.section .text

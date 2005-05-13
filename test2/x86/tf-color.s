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
.section .data
truth:
.byte 116
.byte 114
.byte 117
.byte 116
.byte 104
.byte 0
falsehood:
.byte 102
.byte 97
.byte 108
.byte 115
.byte 101
.byte 104
.byte 111
.byte 111
.byte 100
.byte 0
fmt:
.byte 37
.byte 37
.byte 116
.byte 114
.byte 117
.byte 101
.byte 32
.byte 103
.byte 105
.byte 118
.byte 101
.byte 115
.byte 32
.byte 37
.byte 115
.byte 32
.byte 97
.byte 110
.byte 100
.byte 32
.byte 37
.byte 37
.byte 102
.byte 97
.byte 108
.byte 115
.byte 101
.byte 32
.byte 103
.byte 105
.byte 118
.byte 101
.byte 115
.byte 32
.byte 37
.byte 115
.byte 10
.byte 0
.section .text
main:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl %edi,16(%esp)
	movl %esi,12(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
.Lbranch_target_l13:
	leal truth,%edx
.Lbranch_target_l11:
.Lbranch_target_l9:
	leal falsehood,%ecx
.Lbranch_target_l8:
	leal fmt,%eax
	leal 24(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 24(%esp), %eax
	movl $-20,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 24(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	movl 12(%esp),%esi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l20:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l21
.section .pcmap_data
.Lframe_l21:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l20
.long 2
.long 4
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text

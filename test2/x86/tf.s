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
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
Ljoin_l13:
	leal truth,%ecx
Ljoin_l12:
Ljoin_l11:
	leal falsehood,%edx
Ljoin_l9:
	movl %edi,12(%esp)
	leal fmt,%edi
	movl %edi,16(%esp)
	leal 36(%esp), %edi
	movl %edi,20(%esp)
	movl $-36,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl 16(%esp),%esi
	movl %esi,(%edi)
	leal 36(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 36(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl %eax,32(%esp)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 12(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l21:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l22
.section .pcmap_data
Lframe_l22:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long Lstackdata_l21
.long 2
.long 4
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text

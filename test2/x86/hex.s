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
notzero:
.byte 10
.byte 0
.section .text
main:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal notzero,%ecx
	leal 20(%esp), %edx
	movl %edi,12(%esp)
	movl $-20,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl %eax,16(%esp)
	call strlen
Ljoin_l11:
	leal answer,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 20(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal notzero,%edi
	movzbl (%edi),%edi
	leal 20(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l18:
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l19
.section .pcmap_data
Lframe_l19:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l18
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
.section .pcmap
.long Ljoin_l8
.long Lframe_l20
.section .pcmap_data
Lframe_l20:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l18
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
.section .data
answer:
.byte 108
.byte 101
.byte 110
.byte 103
.byte 116
.byte 104
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 119
.byte 97
.byte 110
.byte 116
.byte 115
.byte 32
.byte 49
.byte 41
.byte 32
.byte 97
.byte 110
.byte 100
.byte 32
.byte 102
.byte 105
.byte 114
.byte 115
.byte 116
.byte 32
.byte 99
.byte 104
.byte 97
.byte 114
.byte 97
.byte 99
.byte 116
.byte 101
.byte 114
.byte 32
.byte 105
.byte 115
.byte 32
.byte 116
.byte 104
.byte 101
.byte 32
.byte 102
.byte 105
.byte 110
.byte 97
.byte 108
.byte 32
.byte 110
.byte 101
.byte 119
.byte 108
.byte 105
.byte 110
.byte 101
.byte 46
.byte 37
.byte 99
.byte 0

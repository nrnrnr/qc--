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
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	leal notzero,%ecx
	leal 20(%esp), %edx
	movl %eax,12(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call strlen
.Lcall_successor_l10:
	leal answer,%ecx
	leal 20(%esp), %edx
	movl %eax,16(%esp)
	movl $-20,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 20(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal notzero,%eax
	movzbl (%eax),%eax
	leal 20(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l17:
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l18
.section .pcmap_data
.Lframe_l18:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l17
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l19
.section .pcmap_data
.Lframe_l19:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l17
.long 0
.long 3
.long 0
.long 1
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

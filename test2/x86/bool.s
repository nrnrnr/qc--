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
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 4(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 4(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $3,%eax
	movl %ecx,(%esp)
	call tryout
Ljoin_l12:
	movl $4,%eax
	call tryout
Ljoin_l9:
	movl $0,%eax
	leal 4(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l18:
.long 0
.section .pcmap
.long Ljoin_l12
.long Lframe_l19
.section .pcmap_data
Lframe_l19:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long Lstackdata_l18
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l20
.section .pcmap_data
Lframe_l20:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long Lstackdata_l18
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text
.section .text
tryout:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l23:
Lproc_body_start_l22:
	movl $1,%edx
	movl %edi,8(%esp)
	movl %eax,%edi
	andl %edx,%edi
	movl $0,%edx
	cmpl %edx,%edi
	jne Ljoin_l29
Ljoin_l30:
	leal z,%edi
	jmp Ljoin_l28
Ljoin_l29:
	leal nz,%edi
	jmp Ljoin_l28
Ljoin_l28:
	leal 20(%esp), %edx
	movl %edi,12(%esp)
	movl $-20,%edi
	addl %edi,%edx
	movl 12(%esp),%edi
	movl %edi,(%edx)
	leal 20(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	movl %ecx,16(%esp)
	call printf
Ljoin_l27:
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l36:
.long 0
.section .pcmap
.long Ljoin_l27
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0x80000004
.long 0xffffffec
.long 0xfffffffc
.long Lstackdata_l36
.long 1
.long 2
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.section .text
.section .data
nz:
.byte 37
.byte 100
.byte 32
.byte 108
.byte 111
.byte 119
.byte 32
.byte 98
.byte 105
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 110
.byte 111
.byte 110
.byte 122
.byte 101
.byte 114
.byte 111
.byte 10
.byte 0
z:
.byte 37
.byte 100
.byte 32
.byte 108
.byte 111
.byte 119
.byte 32
.byte 98
.byte 105
.byte 116
.byte 32
.byte 105
.byte 115
.byte 32
.byte 122
.byte 101
.byte 114
.byte 111
.byte 10
.byte 0

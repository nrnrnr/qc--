.globl f
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
f:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	negl %eax
	movl $-99,%edx
	movl %ecx,(%esp)
	leal 16(%esp), %ecx
	movl %ecx,4(%esp)
	movl $0,%ecx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	addl %edi,%ecx
	movl (%esp),%edi
	movl %edi,(%ecx)
	movl 12(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .text
.section .text
main:
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l16:
Lproc_body_start_l15:
	movl $-33,%eax
	movl %ecx,12(%esp)
	call f
Ljoin_l23:
	leal fmt,%ecx
	movl %edi,16(%esp)
	leal 32(%esp), %edi
	movl %edi,20(%esp)
	movl $-32,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 32(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 32(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	call printf
Ljoin_l20:
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffec
.long Lstackdata_l29
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l20
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffec
.long Lstackdata_l29
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffffc
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
fmt:
.byte 100
.byte 117
.byte 97
.byte 108
.byte 45
.byte 114
.byte 101
.byte 115
.byte 117
.byte 108
.byte 116
.byte 32
.byte 99
.byte 97
.byte 108
.byte 108
.byte 32
.byte 116
.byte 111
.byte 32
.byte 102
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 115
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 37
.byte 100
.byte 32
.byte 40
.byte 101
.byte 120
.byte 112
.byte 101
.byte 99
.byte 116
.byte 101
.byte 100
.byte 32
.byte 51
.byte 51
.byte 44
.byte 32
.byte 45
.byte 57
.byte 57
.byte 41
.byte 10
.byte 0

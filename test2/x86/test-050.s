.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal fmt,%ecx
	leal 16(%esp), %edx
	movl %edi,8(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	movl %eax,12(%esp)
	call printf
Ljoin_l14:
	leal fmt,%edi
	leal 16(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 16(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl 12(%esp),%eax
	movl %eax,(%edi)
	call printf
Ljoin_l11:
	leal fmt,%edi
	leal 16(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 16(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	movl 12(%esp),%eax
	movl %eax,(%edi)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 16(%esp), %edx
	leal 16(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l21:
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l22
.section .pcmap_data
Lframe_l22:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
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

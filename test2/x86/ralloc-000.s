.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
p:
	leal -12(%esp), %esp
	leal 12(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	movl $1,%eax
	movl $2,%ecx
	movl %edx,(%esp)
	movl $0,%edx
	movl %edx,4(%esp)
	movl $0,%edx
	movl %edx,8(%esp)
	movl $2,%edx
	cmpl %edx,%ecx
	jae Ljoin_l7
Ljoin_l15:
	jmp Ljoin_l8
Ljoin_l7:
	movl $3,%edx
	movl %edx,4(%esp)
	movl $4,%edx
	movl %edx,8(%esp)
	jmp Ljoin_l8
Ljoin_l8:
	addl %ecx,%eax
	movl 4(%esp),%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	addl %edx,%eax
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
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
Linitialize_continuations_l19:
Lproc_body_start_l18:
	call p
Ljoin_l26:
	leal fmt,%ecx
	leal 12(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal 12(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l23:
	movl $0,%eax
	leal 12(%esp), %edx
	leal 12(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l32:
.long 0
.section .pcmap
.long Ljoin_l26
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l32
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
.section .pcmap
.long Ljoin_l23
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l32
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0x80000000
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

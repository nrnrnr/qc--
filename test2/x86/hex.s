.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
notzero:
.byte 10
.byte 0
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal notzero,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call strlen
Ljoin_l11:
	leal answer,%ecx
	leal 16(%esp), %edx
	movl %ebx,12(%esp)
	movl $-16,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal notzero,%eax
	movzbl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 16(%esp), %ecx
	leal 16(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 12(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l18:
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l19
.section .pcmap_data
Lframe_l19:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l18
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
.long Ljoin_l8
.long Lframe_l20
.section .pcmap_data
Lframe_l20:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l18
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
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

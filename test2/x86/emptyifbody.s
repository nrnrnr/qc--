.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
main:
	leal -8(%esp), %esp
	leal 8(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 8(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%eax
	movl $-1067450368,%eax
	leal 8(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 8(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 8(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 8(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $1,%eax
	cmpl %eax,%ecx
	je Ljoin_l9
Ljoin_l16:
	jmp Ljoin_l9
Ljoin_l9:
	leal fmt,%eax
	leal 8(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l8:
	leal 8(%esp), %eax
	leal 8(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l17:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l18
.section .pcmap_data
Lframe_l18:
.long 0xfffffff8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l17
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
.section .text
.section .data
fmt:
.byte 68
.byte 105
.byte 115
.byte 106
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 44
.byte 32
.byte 99
.byte 111
.byte 110
.byte 118
.byte 101
.byte 114
.byte 115
.byte 105
.byte 111
.byte 110
.byte 44
.byte 32
.byte 101
.byte 109
.byte 112
.byte 116
.byte 121
.byte 32
.byte 105
.byte 102
.byte 45
.byte 98
.byte 111
.byte 100
.byte 121
.byte 58
.byte 32
.byte 119
.byte 111
.byte 114
.byte 107
.byte 115
.byte 46
.byte 10
.byte 0

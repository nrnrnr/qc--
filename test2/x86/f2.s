.globl main
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
main:
	leal -28(%esp), %esp
	movl $4,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%eax
	movl $-1067450368,%edx
	movl $-12,%ecx
	movl %ebx,20(%esp)
	leal 28(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $-12,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	flds (%ebx)
	movl $-16,%ebx
	leal 28(%esp), %edx
	addl %ebx,%edx
	fistpl (%edx)
	leal fmt,%edx
	movl $-28,%ebx
	leal 28(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $24,%ecx
	movl $24,%edx
	movl %ecx,24(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	movl 24(%esp),%ecx
	shrl %cl, %eax
	movl $-24,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-16,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	movl $-20,%eax
	leal 28(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	call printf
Ljoin_l8:
	movl $0,%eax
	movl 20(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l15:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l16
.section .pcmap_data
Lframe_l16:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l15
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
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
.long 0xfffffff0
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
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 97
.byte 110
.byte 100
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
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

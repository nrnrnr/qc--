.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
main:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 24(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 24(%esp), %eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%edx
	movl $-1067450368,%eax
	leal 24(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-8,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 24(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal fmt,%eax
	leal 24(%esp), %ecx
	movl $-24,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $24,%ecx
	shll %cl, %edx
	movl $24,%ecx
	shrl %cl, %edx
	leal 24(%esp), %ecx
	movl $-20,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 24(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	leal 24(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 24(%esp), %ecx
	leal 24(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 20(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l15:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l16
.section .pcmap_data
Lframe_l16:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l15
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0xfffffff4
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

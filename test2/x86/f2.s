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
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%eax
	movl $-1067450368,%edx
	leal 24(%esp), %ecx
	movl %edi,20(%esp)
	movl $-8,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	leal 24(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	flds (%edi)
	leal 24(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	fistpl (%edi)
	leal fmt,%edi
	leal 24(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %edi,(%edx)
	movl $24,%ecx
	shll %cl, %eax
	movl $24,%ecx
	shrl %cl, %eax
	leal 24(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 24(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	leal 24(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 24(%esp), %edx
	leal 24(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
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
.long 8
.long 5
.long 0
.long 1
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
.long 0
.long 0xfffffff4
.long 0
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

.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
main:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 40(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 40(%esp), %eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 40(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1,%edx
	movl $-1067450368,%ecx
	movl %edi,20(%esp)
	leal 40(%esp), %edi
	movl %edi,24(%esp)
	movl $-24,%edi
	movl %edi,28(%esp)
	movl 24(%esp),%edi
	movl %esi,32(%esp)
	movl 28(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 40(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	flds (%edi)
	leal 40(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	fistpl (%edi)
	leal fmt,%edi
	leal 40(%esp), %esi
	movl $-40,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $24,%ecx
	shll %cl, %edx
	movl $24,%ecx
	shrl %cl, %edx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 40(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	leal 40(%esp), %esi
	movl $-32,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %eax,36(%esp)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 40(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 32(%esp),%esi
	movl 20(%esp),%edi
	leal 40(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l15:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l16
.section .pcmap_data
Lframe_l16:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffffc
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
.long 0xfffffff8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
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

.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .text
main:
	leal -44(%esp), %esp
	leal 44(%esp), %eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 44(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	fnstcw 16(%esp)
	movzwl 16(%esp),%edx
	andl $-3073,%edx
	movl $0,%ecx
	shll $10, %ecx
	orl %ecx,%edx
	movw %dx,16(%esp)
	fldcw 16(%esp)
	movl $1,%edx
	movl $-1067450368,%ecx
	movl %edi,24(%esp)
	leal 44(%esp), %edi
	movl %edi,28(%esp)
	movl $-24,%edi
	movl %edi,32(%esp)
	movl 28(%esp),%edi
	movl %esi,36(%esp)
	movl 32(%esp),%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 44(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	flds (%edi)
	leal 44(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	fistpl (%edi)
	leal fmt,%edi
	leal 44(%esp), %esi
	movl $-44,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $24,%ecx
	shll %cl, %edx
	movl $24,%ecx
	shrl %cl, %edx
	leal 44(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 44(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	leal 44(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %eax,40(%esp)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 44(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 36(%esp),%esi
	movl 24(%esp),%edi
	leal 44(%esp), %esp
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
.long 0xffffffd4
.long 0xfffffffc
.long Lstackdata_l15
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe0
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

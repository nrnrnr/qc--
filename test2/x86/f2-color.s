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
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	movl %edi,24(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	fnstcw 16(%esp)
	movzwl 16(%esp),%ecx
	andl $-3073,%ecx
	movl $0,%eax
	shll $10, %eax
	orl %eax,%ecx
	movw %cx,16(%esp)
	fldcw 16(%esp)
	movl $1,%edx
	movl $-1067450368,%eax
	leal 32(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 32(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal fmt,%eax
	leal 32(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	movl $24,%ecx
	shll %cl, %edx
	movl $24,%ecx
	shrl %cl, %edx
	leal 32(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 32(%esp), %ecx
	movl $-20,%eax
	addl %eax,%ecx
	leal 32(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l7:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl 24(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l14:
.long 0
.section .pcmap
.long .Lcall_successor_l7
.long .Lframe_l15
.section .pcmap_data
.Lframe_l15:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
.long .Lstackdata_l14
.long 1
.long 5
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
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

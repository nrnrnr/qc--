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
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $1084227584,%ecx
	leal 24(%esp), %edx
	movl %edi,16(%esp)
	movl $-24,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl %eax,20(%esp)
	call doubleme
Ljoin_l11:
	leal 24(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	fstps (%edi)
	leal str,%edi
	leal 24(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 24(%esp), %edi
	movl $-12,%eax
	addl %eax,%edi
	flds (%edi)
	leal 24(%esp), %edi
	movl $-20,%eax
	addl %eax,%edi
	fstpl (%edi)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l18:
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l19
.section .pcmap_data
Lframe_l19:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long Lstackdata_l18
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
.long 0xfffffff4
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l20
.section .pcmap_data
Lframe_l20:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long Lstackdata_l18
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
.long 0xfffffff4
.long 0
.section .text
.section .data
str:
.byte 84
.byte 104
.byte 101
.byte 32
.byte 118
.byte 97
.byte 108
.byte 117
.byte 101
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 119
.byte 97
.byte 115
.byte 32
.byte 37
.byte 102
.byte 32
.byte 40
.byte 115
.byte 104
.byte 111
.byte 117
.byte 108
.byte 100
.byte 32
.byte 98
.byte 101
.byte 32
.byte 49
.byte 48
.byte 46
.byte 48
.byte 41
.byte 10
.byte 0

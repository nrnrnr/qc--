.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec:
Cmm.global_area:
.skip 4
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $99,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal nvalue,%ecx
	leal 16(%esp), %edx
	movl %edi,8(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal Cmm.global_area,%edi
	leal 16(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	movl %eax,12(%esp)
	call printf
Ljoin_l17:
	leal callincn,%edi
	leal 16(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l14:
	call incn
Ljoin_l11:
	leal nvalue,%edi
	leal 16(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l23:
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long Lstackdata_l23
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long Lstackdata_l23
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l26
.section .pcmap_data
Lframe_l26:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long Lstackdata_l23
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l27
.section .pcmap_data
Lframe_l27:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long Lstackdata_l23
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.section .text
.section .data
nvalue:
.byte 103
.byte 108
.byte 111
.byte 98
.byte 97
.byte 108
.byte 32
.byte 118
.byte 97
.byte 114
.byte 105
.byte 97
.byte 98
.byte 108
.byte 101
.byte 32
.byte 110
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
callincn:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 101
.byte 120
.byte 116
.byte 101
.byte 114
.byte 110
.byte 97
.byte 108
.byte 32
.byte 102
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 105
.byte 110
.byte 99
.byte 110
.byte 46
.byte 46
.byte 46
.byte 10
.byte 0

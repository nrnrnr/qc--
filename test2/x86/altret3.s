.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
read_:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 36(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l8:
Lproc_body_start_l7:
	movl %edi,16(%esp)
	leal 36(%esp), %edi
	movl %edi,20(%esp)
	movl $-36,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal 36(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 36(%esp), %edi
	movl $-28,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %edx,32(%esp)
	call read
Ljoin_l18:
	movl $0,%edx
	cmpl %edx,%eax
	jg Ljoin_l14
Ljoin_l15:
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l11
Ljoin_l12:
	movl $5,%edx
	movl 32(%esp),%ecx
	addl %edx,%ecx
	leal errno,%edx
	movl (%edx),%eax
	leal 36(%esp), %edx
	movl $8,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 44(%esp), %esp
	ret
Ljoin_l11:
	leal 36(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 44(%esp), %esp
	ret
Ljoin_l14:
	movl $10,%edx
	movl 32(%esp),%ecx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl $8,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l24:
.long 0
.section .pcmap
.long Ljoin_l18
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0xffffffdc
.long 0x8000000c
.long 0xfffffffc
.long Lstackdata_l24
.long 8
.long 4
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
.long 0
.section .text
.section .text
open_:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l28:
Lproc_body_start_l27:
	movl %edi,8(%esp)
	leal 28(%esp), %edi
	movl %edi,12(%esp)
	movl $-28,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 28(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %edx,24(%esp)
	call open
Ljoin_l35:
	movl $0,%edx
	cmpl %edx,%eax
	jge Ljoin_l31
Ljoin_l32:
	leal errno,%edx
	movl (%edx),%eax
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 32(%esp), %esp
	ret
Ljoin_l31:
	movl $5,%edx
	movl 24(%esp),%ecx
	addl %edx,%ecx
	leal 28(%esp), %edx
	movl $4,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l41:
.long 0
.section .pcmap
.long Ljoin_l35
.long Lframe_l42
.section .pcmap_data
Lframe_l42:
.long 0xffffffe4
.long 0x80000008
.long 0xfffffffc
.long Lstackdata_l41
.long 8
.long 3
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
.section .text
.section .text
main:
	leal -100(%esp), %esp
	leal 100(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 100(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l55:
Lproc_body_start_l54:
	movl $0,%eax
	jmp L
L:
	movl %edx,12(%esp)
	movl $1,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	cmpl %edx,%eax
	je Ljoin_l75
Ljoin_l76:
	leal -4(%esp), %esp
	movl %edi,24(%esp)
	movl $4,%edi
	imull %eax,%edi
	movl %edi,28(%esp)
	movl %ecx,%edi
	movl %esi,32(%esp)
	movl 28(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl %eax,36(%esp)
	movl %edi,%eax
	movl $0,%edi
	leal 104(%esp), %esi
	movl %edi,40(%esp)
	movl $-104,%edi
	addl %edi,%esi
	movl 40(%esp),%edi
	movl %edi,(%esi)
	movl %ecx,44(%esp)
	call open_
	.byte 0xe9
	.long C___R72-.-4
Ljoin_l73:
	jmp loop
loop:
	leal -8(%esp), %esp
	movl %eax,52(%esp)
	leal 108(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	leal 108(%esp), %esi
	movl $-108,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $50,%edi
	leal 108(%esp), %esi
	movl $-104,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call read_
	.byte 0xe9
	.long C___R67-.-4
	.byte 0xe9
	.long C___R68-.-4
Ljoin_l69:
	movl $1,%edi
	leal 100(%esp), %esi
	movl $-100,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 100(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	leal 100(%esp), %esi
	movl $-96,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 100(%esp), %edi
	movl $-92,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call write
Ljoin_l64:
	jmp Ljoin_l83
Ljoin_l83:
	movl 44(%esp),%eax
	jmp loop
C___R67:
	jmp Ljoin_l82
Ljoin_l82:
	movl 20(%esp),%edi
	movl 28(%esp),%esi
	movl 12(%esp),%edx
	movl 40(%esp),%ecx
	movl 32(%esp),%eax
	jmp L
C___R68:
	jmp Ljoin_l77
C___R72:
	jmp Ljoin_l77
Ljoin_l77:
	leal errcode,%edi
	leal 100(%esp), %esi
	movl $-100,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 100(%esp), %edi
	movl $-96,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l61:
	leal aread,%edi
	leal 100(%esp), %esi
	movl $-100,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call perror
Ljoin_l58:
	jmp Ljoin_l81
Ljoin_l81:
	movl 20(%esp),%edi
	movl 28(%esp),%esi
	movl 12(%esp),%edx
	movl 40(%esp),%ecx
	movl 32(%esp),%eax
	jmp L
Ljoin_l75:
	movl $0,%eax
	leal 100(%esp), %edx
	leal 100(%esp), %ecx
	movl %edx,16(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 100(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l86:
.long 1
.long 0xffffffcc
.section .pcmap
.long C___R72
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0xffffff9c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb8
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffa8
.long 0xffffffc4
.long 0xffffffbc
.long 0
.long 0
.long 0
.section .pcmap
.long C___R68
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffff9c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb8
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffa8
.long 0xffffffc4
.long 0xffffffbc
.long 0xffffffc8
.long 0
.long 0
.section .pcmap
.long Ljoin_l64
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xffffff9c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb8
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffa8
.long 0xffffffc4
.long 0xffffffbc
.long 0xffffffc8
.long 0
.long 0
.section .pcmap
.long Ljoin_l61
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xffffff9c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb8
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffa8
.long 0xffffffc4
.long 0xffffffbc
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l58
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xffffff9c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffb8
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffa8
.long 0xffffffc4
.long 0xffffffbc
.long 0
.long 0
.long 0
.section .text
.section .data
errcode:
.byte 69
.byte 114
.byte 114
.byte 111
.byte 114
.byte 32
.byte 99
.byte 111
.byte 100
.byte 101
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
aread:
.byte 97
.byte 108
.byte 116
.byte 114
.byte 101
.byte 97
.byte 100
.byte 0

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
	movl $4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 36(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l8:
Lproc_body_start_l7:
	movl %ecx,16(%esp)
	movl $-36,%ecx
	movl %edx,20(%esp)
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $-32,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl $-28,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl %eax,24(%esp)
	call read
Ljoin_l18:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l14
Ljoin_l15:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l11
Ljoin_l12:
	movl $5,%eax
	movl 24(%esp),%ecx
	addl %eax,%ecx
	leal errno,%eax
	movl (%eax),%eax
	movl $8,%edx
	movl %ebx,28(%esp)
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl 28(%esp),%ebx
	leal 44(%esp), %esp
	ret
Ljoin_l11:
	movl $8,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl 24(%esp),%eax
	movl %eax,(%ecx)
	leal 44(%esp), %esp
	ret
Ljoin_l14:
	movl $10,%ecx
	movl 24(%esp),%edx
	addl %ecx,%edx
	movl $8,%ecx
	movl %edi,32(%esp)
	leal 36(%esp), %edi
	addl %ecx,%edi
	movl %edx,(%edi)
	movl 32(%esp),%edi
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
.long 0xfffffff4
.long Lstackdata_l24
.long 0x80000008
.long 0x80000004
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
.long 0
.long 0x80000000
.section .text
.section .text
open_:
	leal -24(%esp), %esp
	movl $4,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 24(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l28:
Lproc_body_start_l27:
	movl %eax,8(%esp)
	movl $-24,%eax
	movl %ecx,12(%esp)
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	movl $-20,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,16(%esp)
	call open
Ljoin_l35:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Ljoin_l31
Ljoin_l32:
	leal errno,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
Ljoin_l31:
	movl $5,%ecx
	movl 16(%esp),%edx
	addl %ecx,%edx
	movl $4,%ecx
	movl %edi,20(%esp)
	leal 24(%esp), %edi
	addl %ecx,%edi
	movl %edx,(%edi)
	movl 20(%esp),%edi
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l41:
.long 0
.section .pcmap
.long Ljoin_l35
.long Lframe_l42
.section .pcmap_data
Lframe_l42:
.long 0xffffffe8
.long 0x80000008
.long 0xfffffff8
.long Lstackdata_l41
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
.section .text
main:
	leal -92(%esp), %esp
	movl $4,%edx
	leal 92(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	leal 92(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
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
	movl %ebx,20(%esp)
	movl $4,%ebx
	imull %eax,%ebx
	movl %ebp,24(%esp)
	movl %ecx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl %eax,28(%esp)
	movl %ebx,%eax
	movl $0,%ebx
	movl $-96,%ebp
	movl %esi,32(%esp)
	leal 96(%esp), %esi
	addl %ebp,%esi
	movl %ebx,(%esi)
	movl %ecx,36(%esp)
	call open_
	.byte 0xe9
	.long C___R72-.-4
Ljoin_l73:
	jmp loop
loop:
	leal -8(%esp), %esp
	movl %eax,44(%esp)
	movl $-52,%ebx
	leal 100(%esp), %esi
	addl %ebx,%esi
	movl $-100,%ebx
	leal 100(%esp), %ebp
	addl %ebx,%ebp
	movl %esi,(%ebp)
	movl $50,%ebp
	movl $-96,%esi
	leal 100(%esp), %ebx
	addl %esi,%ebx
	movl %ebp,(%ebx)
	call read_
	.byte 0xe9
	.long C___R67-.-4
	.byte 0xe9
	.long C___R68-.-4
Ljoin_l69:
	movl $1,%ebx
	movl $-92,%esi
	leal 92(%esp), %ebp
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl $-52,%ebx
	leal 92(%esp), %ebp
	addl %ebx,%ebp
	movl $-88,%ebx
	leal 92(%esp), %esi
	addl %ebx,%esi
	movl %ebp,(%esi)
	movl $-84,%ebp
	leal 92(%esp), %esi
	addl %ebp,%esi
	movl %eax,(%esi)
	call write
Ljoin_l64:
	jmp Ljoin_l82
Ljoin_l82:
	movl 36(%esp),%eax
	jmp loop
C___R67:
	jmp Ljoin_l83
Ljoin_l83:
	movl 28(%esp),%esi
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	movl 12(%esp),%edx
	movl 32(%esp),%ecx
	movl 24(%esp),%eax
	jmp L
C___R68:
	jmp Ljoin_l77
C___R72:
	jmp Ljoin_l77
Ljoin_l77:
	leal errcode,%ecx
	movl $-92,%edx
	leal 92(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-88,%ecx
	leal 92(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l61:
	leal aread,%eax
	movl $-92,%ecx
	leal 92(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call perror
Ljoin_l58:
	jmp Ljoin_l81
Ljoin_l81:
	movl 28(%esp),%esi
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	movl 12(%esp),%edx
	movl 32(%esp),%ecx
	movl 24(%esp),%eax
	jmp L
Ljoin_l75:
	movl $0,%eax
	leal 92(%esp), %edx
	movl $0,%ecx
	movl %ebx,16(%esp)
	leal 92(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl 16(%esp),%ebx
	leal 92(%esp), %esp
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
.long 0xffffffa4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffb4
.long 0x40000009
.long 0xffffffb8
.long 0x4000000a
.long 0xffffffc0
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffc4
.long 0xffffffbc
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long C___R68
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xffffffa4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffb4
.long 0x40000009
.long 0xffffffb8
.long 0x4000000a
.long 0xffffffc0
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffc4
.long 0xffffffbc
.long 0xffffffc8
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l64
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xffffffa4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffb4
.long 0x40000009
.long 0xffffffb8
.long 0x4000000a
.long 0xffffffc0
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffc4
.long 0xffffffbc
.long 0xffffffc8
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l61
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xffffffa4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffb4
.long 0x40000009
.long 0xffffffb8
.long 0x4000000a
.long 0xffffffc0
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffc4
.long 0xffffffbc
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l58
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xffffffa4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffb4
.long 0x40000009
.long 0xffffffb8
.long 0x4000000a
.long 0xffffffc0
.long 0x4000000b
.long 0x4000000b
.long 0xffffffb0
.long 0xffffffc4
.long 0xffffffbc
.long 0
.long 0
.long 0x80000000
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

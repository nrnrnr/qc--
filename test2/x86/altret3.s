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
	movl (%ecx),%edx
	leal 36(%esp), %ecx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l8:
Lproc_body_start_l7:
	movl %edx,16(%esp)
	leal 36(%esp), %edx
	movl %eax,20(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal 36(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal 36(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl 20(%esp),%edx
	movl %edx,(%eax)
	movl %ecx,24(%esp)
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
	leal 36(%esp), %edx
	movl %ebx,28(%esp)
	movl $8,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl 28(%esp),%ebx
	leal 44(%esp), %esp
	ret
Ljoin_l11:
	leal 36(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %esp
	ret
Ljoin_l14:
	movl $10,%ecx
	movl 24(%esp),%edx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl %edi,32(%esp)
	movl $8,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
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
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l28:
Lproc_body_start_l27:
	movl %eax,8(%esp)
	leal 24(%esp), %eax
	movl %edx,12(%esp)
	movl $-24,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 24(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	movl %ecx,16(%esp)
	call open
Ljoin_l35:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Ljoin_l31
Ljoin_l32:
	leal errno,%ecx
	movl (%ecx),%eax
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 28(%esp), %esp
	ret
Ljoin_l31:
	movl $5,%ecx
	movl 16(%esp),%edx
	addl %ecx,%edx
	leal 24(%esp), %ecx
	movl %edi,20(%esp)
	movl $4,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
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
	leal 92(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 92(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
Linitialize_continuations_l55:
Lproc_body_start_l54:
	movl $0,%edx
	jmp L
L:
	movl %ecx,12(%esp)
	movl $1,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	cmpl %ecx,%edx
	je Ljoin_l75
Ljoin_l76:
	leal -4(%esp), %esp
	movl %ebx,20(%esp)
	movl $4,%ebx
	imull %edx,%ebx
	movl %ebp,24(%esp)
	movl %eax,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl %eax,28(%esp)
	movl %ebx,%eax
	movl $0,%ebx
	leal 96(%esp), %ebp
	movl %esi,32(%esp)
	movl $-96,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl %edx,36(%esp)
	call open_
	.byte 0xe9
	.long C___R72-.-4
Ljoin_l73:
	jmp loop
loop:
	leal -8(%esp), %esp
	movl %eax,44(%esp)
	leal 100(%esp), %ebx
	movl $-52,%ebp
	addl %ebp,%ebx
	leal 100(%esp), %ebp
	movl $-100,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	movl $50,%ebx
	leal 100(%esp), %ebp
	movl $-96,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	call read_
	.byte 0xe9
	.long C___R67-.-4
	.byte 0xe9
	.long C___R68-.-4
Ljoin_l69:
	movl $1,%ebx
	leal 92(%esp), %ebp
	movl $-92,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	leal 92(%esp), %ebx
	movl $-52,%ebp
	addl %ebp,%ebx
	leal 92(%esp), %ebp
	movl $-88,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	leal 92(%esp), %ebx
	movl $-84,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
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
	movl 12(%esp),%ecx
	movl 24(%esp),%eax
	movl 32(%esp),%edx
	jmp L
C___R68:
	jmp Ljoin_l77
C___R72:
	jmp Ljoin_l77
Ljoin_l77:
	leal errcode,%ecx
	leal 92(%esp), %edx
	movl $-92,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 92(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l61:
	leal aread,%eax
	leal 92(%esp), %ecx
	movl $-92,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call perror
Ljoin_l58:
	jmp Ljoin_l81
Ljoin_l81:
	movl 28(%esp),%esi
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	movl 12(%esp),%ecx
	movl 24(%esp),%eax
	movl 32(%esp),%edx
	jmp L
Ljoin_l75:
	movl $0,%eax
	leal 92(%esp), %ecx
	leal 92(%esp), %edx
	movl %ebx,16(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
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
.long 0xffffffbc
.long 0xffffffc4
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
.long 0xffffffbc
.long 0xffffffc4
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
.long 0xffffffbc
.long 0xffffffc4
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
.long 0xffffffbc
.long 0xffffffc4
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
.long 0xffffffbc
.long 0xffffffc4
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

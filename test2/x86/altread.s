.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
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
.long 0x8000000c
.long 0xffffffdc
.long 0xfffffffc
.long Lstackdata_l24
.long 2
.long 4
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
.long 0x80000008
.long 0xffffffe4
.long 0xfffffffc
.long Lstackdata_l41
.long 2
.long 3
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
.section .text
.section .text
main:
	leal -104(%esp), %esp
	leal 104(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 104(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 104(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l55:
Lproc_body_start_l54:
	movl %edx,12(%esp)
	movl $0,%edx
	jmp L
L:
	movl %edx,16(%esp)
	movl $1,%edx
	movl %edx,20(%esp)
	movl 16(%esp),%edx
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	cmpl %ecx,%edx
	je Ljoin_l72
Ljoin_l73:
	leal -4(%esp), %esp
	movl %edi,36(%esp)
	movl $4,%edi
	imull %edx,%edi
	movl %esi,44(%esp)
	movl %edi,40(%esp)
	movl 28(%esp),%edi
	movl %edi,%esi
	movl 40(%esp),%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl %eax,32(%esp)
	movl %edi,%eax
	movl $0,%edi
	leal 108(%esp), %esi
	movl %edi,48(%esp)
	movl $-108,%edi
	addl %edi,%esi
	movl 48(%esp),%edi
	movl %edi,(%esi)
	movl %edx,20(%esp)
	call open_
	.byte 0xe9
	.long C___R69-.-4
Ljoin_l70:
	jmp loop
loop:
	leal -8(%esp), %esp
	movl %eax,56(%esp)
	leal 112(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	leal 112(%esp), %esi
	movl $-112,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $50,%edi
	leal 112(%esp), %esi
	movl $-108,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call read_
	.byte 0xe9
	.long C___R64-.-4
	.byte 0xe9
	.long C___R65-.-4
Ljoin_l66:
	movl $1,%edi
	leal 104(%esp), %esi
	movl $-104,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 104(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	leal 104(%esp), %esi
	movl $-100,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 104(%esp), %edi
	movl $-96,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call write
Ljoin_l61:
	jmp Ljoin_l80
Ljoin_l80:
	movl 48(%esp),%eax
	jmp loop
C___R64:
	jmp Ljoin_l79
Ljoin_l79:
	movl 32(%esp),%edi
	movl 40(%esp),%esi
	movl 28(%esp),%eax
	movl 24(%esp),%ecx
	movl 16(%esp),%edx
	jmp L
C___R65:
	jmp Ljoin_l74
C___R69:
	jmp Ljoin_l74
Ljoin_l74:
	movl $4,%edi
	movl 16(%esp),%esi
	imull %esi,%edi
	movl 24(%esp),%eax
	movl %eax,%ecx
	addl %edi,%ecx
	leal 104(%esp), %edi
	movl $-104,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call perror
Ljoin_l58:
	jmp Ljoin_l78
Ljoin_l78:
	movl %esi,%edx
	movl 32(%esp),%edi
	movl 40(%esp),%esi
	movl 28(%esp),%eax
	movl 24(%esp),%ecx
	jmp L
Ljoin_l72:
	movl $0,%edx
	movl %eax,28(%esp)
	movl %edx,%eax
	leal 104(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	leal 104(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l83:
.long 1
.long 0xffffffcc
.section .pcmap
.long C___R69
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0x80000004
.long 0xffffff98
.long 0xffffffb4
.long Lstackdata_l83
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xffffffc0
.long 11
.long 0xffffffb8
.long 0xffffffa4
.long 0xffffffb0
.long 0xffffffa8
.long 0
.long 0
.long 0
.section .pcmap
.long C___R65
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0x80000004
.long 0xffffff98
.long 0xffffffb4
.long Lstackdata_l83
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xffffffc0
.long 11
.long 0xffffffb8
.long 0xffffffa4
.long 0xffffffb0
.long 0xffffffa8
.long 0xffffffc8
.long 0
.long 0
.section .pcmap
.long Ljoin_l61
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0x80000004
.long 0xffffff98
.long 0xffffffb4
.long Lstackdata_l83
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xffffffc0
.long 11
.long 0xffffffb8
.long 0xffffffa4
.long 0xffffffb0
.long 0xffffffa8
.long 0xffffffc8
.long 0
.long 0
.section .pcmap
.long Ljoin_l58
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0x80000004
.long 0xffffff98
.long 0xffffffb4
.long Lstackdata_l83
.long 2
.long 5
.long 0
.long 1
.long 10
.long 0xffffffc0
.long 11
.long 0xffffffb8
.long 0xffffffa4
.long 0xffffffb0
.long 0xffffffa8
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

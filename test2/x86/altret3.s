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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 44(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l8:
.Lproc_body_start_l7:
	movl %eax,16(%esp)
	leal 44(%esp), %eax
	movl %eax,20(%esp)
	movl $-44,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,32(%esp)
	call read
.Ljoin_l18:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l14
.Ljoin_l15:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l11
.Ljoin_l12:
	movl $5,%eax
	movl 32(%esp),%ecx
	addl %eax,%ecx
	leal errno,%eax
	movl (%eax),%eax
	leal 44(%esp), %edx
	movl %ecx,32(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %esp
	ret
.Ljoin_l11:
	leal 44(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %esp
	ret
.Ljoin_l14:
	movl $10,%ecx
	movl 32(%esp),%edx
	addl %ecx,%edx
	leal 44(%esp), %ecx
	movl %ecx,36(%esp)
	movl $8,%ecx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	movl %edx,32(%esp)
	movl 40(%esp),%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l24:
.long 0
.section .pcmap
.long .Ljoin_l18
.long .Lframe_l25
.section .pcmap_data
.Lframe_l25:
.long 0x8000000c
.long 0xffffffd4
.long 0xfffffff4
.long .Lstackdata_l24
.long 0
.long 4
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
open_:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l28:
.Lproc_body_start_l27:
	movl %eax,8(%esp)
	leal 36(%esp), %eax
	movl %eax,12(%esp)
	movl $-36,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 36(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,24(%esp)
	call open
.Ljoin_l35:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge .Ljoin_l31
.Ljoin_l32:
	leal errno,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
	ret
.Ljoin_l31:
	movl $5,%ecx
	movl 24(%esp),%edx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl %ecx,28(%esp)
	movl $4,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,24(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l41:
.long 0
.section .pcmap
.long .Ljoin_l35
.long .Lframe_l42
.section .pcmap_data
.Lframe_l42:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffff4
.long .Lstackdata_l41
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -132(%esp), %esp
	leal 132(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 132(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l55:
.Lproc_body_start_l54:
	movl %eax,12(%esp)
	movl $0,%eax
	jmp L
L:
	movl %eax,16(%esp)
	movl $1,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	cmpl %ecx,%eax
	je .Ljoin_l75
.Ljoin_l76:
	leal -4(%esp), %esp
	movl %eax,20(%esp)
	movl $4,%eax
	movl 20(%esp),%ecx
	imull %ecx,%eax
	movl %eax,44(%esp)
	movl 28(%esp),%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	movl %ecx,48(%esp)
	leal 136(%esp), %ecx
	movl %ecx,52(%esp)
	movl $-136,%ecx
	movl %ecx,56(%esp)
	movl 52(%esp),%ecx
	movl %edx,40(%esp)
	movl 56(%esp),%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	call open_
	.byte 0xe9
	.long C___R72-.-4
.Ljoin_l73:
	jmp loop
loop:
	leal -8(%esp), %esp
	movl %eax,64(%esp)
	movl %eax,%ecx
	movl %ecx,%eax
	leal 140(%esp), %edx
	movl $-52,%ecx
	addl %ecx,%edx
	leal 140(%esp), %ecx
	movl %ecx,68(%esp)
	movl $-140,%ecx
	movl %ecx,72(%esp)
	movl 68(%esp),%ecx
	movl %edx,76(%esp)
	movl 72(%esp),%edx
	addl %edx,%ecx
	movl 76(%esp),%edx
	movl %edx,(%ecx)
	movl $50,%ecx
	leal 140(%esp), %edx
	movl %ecx,80(%esp)
	movl $-136,%ecx
	addl %ecx,%edx
	movl 80(%esp),%ecx
	movl %ecx,(%edx)
	call read_
	.byte 0xe9
	.long C___R67-.-4
	.byte 0xe9
	.long C___R68-.-4
.Ljoin_l69:
	movl $1,%ecx
	leal 132(%esp), %edx
	movl %eax,76(%esp)
	movl $-132,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 132(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	leal 132(%esp), %ecx
	movl $-128,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 132(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	call write
.Ljoin_l64:
	jmp .Ljoin_l83
.Ljoin_l83:
	movl 56(%esp),%eax
	jmp loop
C___R67:
	jmp .Ljoin_l82
.Ljoin_l82:
	movl 36(%esp),%edx
	movl 24(%esp),%ecx
	movl 16(%esp),%eax
	jmp L
C___R68:
	jmp .Ljoin_l77
C___R72:
	jmp .Ljoin_l77
.Ljoin_l77:
	leal errcode,%ecx
	leal 132(%esp), %edx
	movl %eax,76(%esp)
	movl $-132,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 132(%esp), %eax
	movl $-128,%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	call printf
.Ljoin_l61:
	leal aread,%eax
	leal 132(%esp), %ecx
	movl $-132,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call perror
.Ljoin_l58:
	jmp .Ljoin_l81
.Ljoin_l81:
	movl 36(%esp),%edx
	movl 24(%esp),%ecx
	movl 16(%esp),%eax
	jmp L
.Ljoin_l75:
	movl $0,%eax
	leal 132(%esp), %ecx
	movl %ecx,28(%esp)
	movl $0,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 132(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l86:
.long 1
.long 0xffffffcc
.section .pcmap
.long C___R72
.long .Lframe_l87
.section .pcmap_data
.Lframe_l87:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l86
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
.long 0
.long 0
.long 0
.section .pcmap
.long C___R68
.long .Lframe_l88
.section .pcmap_data
.Lframe_l88:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l86
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
.long 0xffffffb4
.long 0
.long 0
.section .pcmap
.long .Ljoin_l64
.long .Lframe_l89
.section .pcmap_data
.Lframe_l89:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l86
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
.long 0xffffffb4
.long 0
.long 0
.section .pcmap
.long .Ljoin_l61
.long .Lframe_l90
.section .pcmap_data
.Lframe_l90:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l86
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l58
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xffffff7c
.long 0xffffffa0
.long .Lstackdata_l86
.long 0
.long 5
.long 0
.long 1
.long 0xffffff88
.long 0xffffff94
.long 0xffffff8c
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

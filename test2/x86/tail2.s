.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 28(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	leal -8(%esp), %esp
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 36(%esp), %edx
	movl %ebx,24(%esp)
	movl $-36,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $10,%ecx
	leal 36(%esp), %edx
	movl $-32,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call down
Ljoin_l15:
	leal -8(%esp), %esp
	leal 36(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,28(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 36(%esp), %edx
	movl $-36,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $100,%ecx
	leal 36(%esp), %edx
	movl $-32,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call down
Ljoin_l12:
	leal pcmp,%ecx
	leal 28(%esp), %edx
	movl $-28,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $100,%ecx
	leal 28(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl 20(%esp),%ecx
	subl %ecx,%eax
	leal 28(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $10,%eax
	leal 28(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l9:
	movl $0,%eax
	leal 28(%esp), %ecx
	leal 28(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 16(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l21:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l15
.long Lframe_l22
.section .pcmap_data
Lframe_l22:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
.section .pcmap
.long Ljoin_l12
.long Lframe_l23
.section .pcmap_data
Lframe_l23:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l9
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l21
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff4
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
down:
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
Linitialize_continuations_l27:
Lproc_body_start_l26:
	cmpl %eax,%edx
	jb Ljoin_l33
Ljoin_l34:
	leal pdown,%edx
	movl %eax,16(%esp)
	leal 36(%esp), %eax
	movl %ecx,20(%esp)
	movl $-36,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 36(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal 36(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,%ecx
	subl %eax,%ecx
	leal 36(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
Ljoin_l31:
	leal 36(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	subl %eax,%ecx
	movl %ecx,%eax
	leal 36(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %esp
	ret
Ljoin_l33:
	movl %ecx,20(%esp)
	leal down,%ecx
	movl %eax,16(%esp)
	movl %ecx,%eax
	leal 36(%esp), %ecx
	movl %edx,24(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	movl 24(%esp),%edx
	addl %ecx,%edx
	leal 36(%esp), %ecx
	movl %edi,28(%esp)
	movl $4,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	leal 36(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	leal 36(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	jmp call3
.section .pcmap_data
Lstackdata_l40:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l31
.long Lframe_l41
.section .pcmap_data
Lframe_l41:
.long 0xffffffdc
.long 0x8000000c
.long 0xfffffff0
.long Lstackdata_l40
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
.long 0xffffffe8
.long 0
.long 0
.long 0x80000000
.section .text
.section .data
pcmp:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 105
.byte 110
.byte 100
.byte 105
.byte 114
.byte 101
.byte 99
.byte 116
.byte 32
.byte 100
.byte 111
.byte 119
.byte 110
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 105
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 32
.byte 100
.byte 101
.byte 101
.byte 112
.byte 101
.byte 114
.byte 32
.byte 116
.byte 104
.byte 97
.byte 110
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 10
.byte 0
pdown:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 105
.byte 110
.byte 100
.byte 105
.byte 114
.byte 101
.byte 99
.byte 116
.byte 32
.byte 100
.byte 111
.byte 119
.byte 110
.byte 32
.byte 37
.byte 100
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 117
.byte 115
.byte 101
.byte 115
.byte 32
.byte 37
.byte 100
.byte 32
.byte 98
.byte 121
.byte 116
.byte 101
.byte 115
.byte 32
.byte 111
.byte 102
.byte 32
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 10
.byte 0

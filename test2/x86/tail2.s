.globl main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	leal -28(%esp), %esp
	movl $4,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
initialize_continuations_l4:
proc_body_start_l3:
	leal -8(%esp), %esp
	movl $-4,%ecx
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl $1,%ecx
	movl $-36,%edx
	movl %ebx,24(%esp)
	leal 36(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $10,%ecx
	movl $-32,%ebx
	leal 36(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call down
join_l14:
	leal -8(%esp), %esp
	movl $-4,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl %eax,28(%esp)
	movl %edx,%eax
	movl $1,%edx
	movl $-36,%ecx
	leal 36(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $100,%edx
	movl $-32,%ebx
	leal 36(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call down
join_l11:
	leal pcmp,%ecx
	movl $-28,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $100,%ecx
	movl $-24,%ebx
	leal 28(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl 20(%esp),%ecx
	subl %ecx,%eax
	movl $-20,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $10,%eax
	movl $-16,%edx
	leal 28(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
join_l8:
	movl $0,%eax
	movl 16(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
stackdata_l20:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l14
.long frame_l21
.section .pcmap_data
frame_l21:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l20
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l11
.long frame_l22
.section .pcmap_data
frame_l22:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l20
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l8
.long frame_l23
.section .pcmap_data
frame_l23:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l20
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
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
.section .text
.section .text
down:
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
initialize_continuations_l27:
proc_body_start_l26:
	cmpl %edx,%ecx
	jb join_l33
join_l34:
	leal pdown,%ecx
	movl %edx,16(%esp)
	movl $-36,%edx
	movl %eax,20(%esp)
	leal 36(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-32,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	movl $-4,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,%edx
	subl %ecx,%edx
	movl $-28,%ecx
	movl %eax,12(%esp)
	leal 36(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
join_l31:
	movl $-4,%eax
	leal 36(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	subl %ecx,%eax
	movl $8,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	leal 44(%esp), %esp
	ret
join_l33:
	movl %ecx,24(%esp)
	leal down,%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	movl $0,%ecx
	movl %edx,16(%esp)
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%ecx
	movl 24(%esp),%edx
	addl %ecx,%edx
	movl $4,%ecx
	movl %edi,28(%esp)
	leal 36(%esp), %edi
	addl %ecx,%edi
	movl %edx,(%edi)
	movl $8,%edx
	leal 36(%esp), %edi
	addl %edx,%edi
	movl 16(%esp),%edx
	movl %edx,(%edi)
	movl 28(%esp),%edi
	movl $-4,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	jmp call3
.section .pcmap_data
stackdata_l40:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l31
.long frame_l41
.section .pcmap_data
frame_l41:
.long 0xffffffdc
.long 0x8000000c
.long 0xfffffff0
.long stackdata_l40
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
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

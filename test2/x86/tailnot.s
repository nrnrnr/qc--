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
initialize_continuations_l5:
proc_body_start_l4:
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
join_l15:
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
join_l12:
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
join_l9:
	movl $0,%eax
	movl 16(%esp),%ebx
	leal 28(%esp), %esp
	ret
.section .pcmap_data
stackdata_l21:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l15
.long frame_l22
.section .pcmap_data
frame_l22:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l21
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
.long join_l12
.long frame_l23
.section .pcmap_data
frame_l23:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l21
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
.long join_l9
.long frame_l24
.section .pcmap_data
frame_l24:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l21
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
	jb join_l36
join_l37:
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
join_l36:
	leal -12(%esp), %esp
	movl %edi,36(%esp)
	leal down,%edi
	movl %eax,32(%esp)
	movl %edi,%eax
	movl $-48,%edi
	movl %esi,40(%esp)
	leal 48(%esp), %esi
	addl %edi,%esi
	movl 24(%esp),%edi
	movl %edi,(%esi)
	movl $1,%esi
	addl %esi,%ecx
	movl $-44,%esi
	leal 48(%esp), %edi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl $-40,%ecx
	leal 48(%esp), %edi
	addl %ecx,%edi
	movl %edx,(%edi)
	call call3
join_l35:
	movl $8,%ecx
	leal 36(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%esi
	movl 24(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
stackdata_l42:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l35
.long frame_l43
.section .pcmap_data
frame_l43:
.long 0xffffffdc
.long 0x8000000c
.long 0xfffffff0
.long stackdata_l42
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l31
.long frame_l44
.section .pcmap_data
frame_l44:
.long 0xffffffdc
.long 0x8000000c
.long 0xfffffff0
.long stackdata_l42
.long 0x80000008
.long 0x80000004
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

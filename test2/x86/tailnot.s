.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 44(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	leal -8(%esp), %esp
	leal 52(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 52(%esp), %edx
	movl %ebx,32(%esp)
	movl $-52,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $10,%ecx
	leal 52(%esp), %edx
	movl $-48,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call down
Ljoin_l24:
	leal -8(%esp), %esp
	leal 52(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,36(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 52(%esp), %edx
	movl $-52,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $47,%ecx
	leal 52(%esp), %edx
	movl $-48,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call down
Ljoin_l21:
	leal -8(%esp), %esp
	leal 52(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,40(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 52(%esp), %edx
	movl $-52,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $100,%ecx
	leal 52(%esp), %edx
	movl $-48,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call down
Ljoin_l18:
	movl %eax,%ecx
	movl 28(%esp),%edx
	subl %edx,%ecx
	movl $90,%ebx
	movl %eax,36(%esp)
	movl %ecx,%eax
	movl $0,%edx
	divl %ebx, %eax
	movl $10,%edx
	imull %eax,%edx
	movl 28(%esp),%ebx
	movl %ebx,%ecx
	subl %edx,%ecx
	movl $3,%edx
	cmpl %edx,%eax
	jae Ljoin_l28
Ljoin_l29:
	movl 32(%esp),%ecx
	jmp Ljoin_l15
Ljoin_l28:
	movl $47,%edx
	movl %eax,%ebx
	imull %edx,%ebx
	addl %ecx,%ebx
	movl 32(%esp),%ecx
	cmpl %ecx,%ebx
	je Ljoin_l14
Ljoin_l32:
	jmp Ljoin_l15
Ljoin_l15:
	leal badcmp,%ebx
	leal 44(%esp), %edx
	movl $-44,%ecx
	addl %ecx,%edx
	movl %ebx,(%edx)
	leal 44(%esp), %edx
	movl $-40,%ebx
	addl %ebx,%edx
	movl 28(%esp),%ebx
	movl %ebx,(%edx)
	leal 44(%esp), %edx
	movl $-36,%ebx
	addl %ebx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	leal 44(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $47,%ecx
	imull %ecx,%eax
	leal 44(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l9:
	jmp Ljoin_l12
Ljoin_l14:
	leal goodcmp,%ebx
	leal 44(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl %ebx,(%eax)
	call printf
Ljoin_l13:
	jmp Ljoin_l12
Ljoin_l12:
	movl $0,%eax
	leal 44(%esp), %ecx
	leal 44(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 24(%esp),%ebx
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l33:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l24
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l33
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l21
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l33
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l18
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l33
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l9
.long Lframe_l37
.section .pcmap_data
Lframe_l37:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l33
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l13
.long Lframe_l38
.section .pcmap_data
Lframe_l38:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l33
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
.section .text
down:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 24(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 24(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l41:
Lproc_body_start_l40:
	cmpl %eax,%ecx
	jb Ljoin_l47
Ljoin_l48:
	leal 24(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	subl %ecx,%eax
	leal 24(%esp), %ecx
	movl %edx,4(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
Ljoin_l47:
	leal -12(%esp), %esp
	movl %edi,20(%esp)
	leal down,%edi
	movl %eax,24(%esp)
	movl %edi,%eax
	leal 36(%esp), %edi
	movl %esi,28(%esp)
	movl $-36,%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	movl $1,%esi
	addl %esi,%ecx
	leal 36(%esp), %esi
	movl $-32,%edi
	addl %edi,%esi
	movl %ecx,(%esi)
	leal 36(%esp), %ecx
	movl $-28,%esi
	addl %esi,%ecx
	movl 24(%esp),%esi
	movl %esi,(%ecx)
	movl %edx,16(%esp)
	call call3
Ljoin_l46:
	leal 24(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%esi
	movl 8(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l53:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l46
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xffffffe8
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l53
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
.section .data
goodcmp:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 100
.byte 111
.byte 119
.byte 110
.byte 32
.byte 49
.byte 48
.byte 32
.byte 97
.byte 110
.byte 100
.byte 32
.byte 49
.byte 48
.byte 48
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 112
.byte 114
.byte 101
.byte 100
.byte 105
.byte 99
.byte 116
.byte 115
.byte 32
.byte 52
.byte 55
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 115
.byte 32
.byte 119
.byte 105
.byte 116
.byte 104
.byte 32
.byte 115
.byte 105
.byte 122
.byte 101
.byte 32
.byte 62
.byte 61
.byte 32
.byte 51
.byte 10
.byte 0
badcmp:
.byte 98
.byte 97
.byte 100
.byte 32
.byte 115
.byte 116
.byte 97
.byte 99
.byte 107
.byte 58
.byte 32
.byte 100
.byte 49
.byte 48
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 100
.byte 52
.byte 55
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 100
.byte 49
.byte 48
.byte 48
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 99
.byte 111
.byte 109
.byte 112
.byte 117
.byte 116
.byte 101
.byte 100
.byte 32
.byte 100
.byte 49
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 100
.byte 52
.byte 55
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
main:
	leal -32(%esp), %esp
	movl $4,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	leal -8(%esp), %esp
	movl $-4,%ecx
	leal 40(%esp), %eax
	addl %ecx,%eax
	movl $1,%ecx
	movl $-40,%edx
	movl %ebx,24(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $10,%ecx
	movl $-36,%ebx
	leal 40(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call down
Ljoin_l21:
	leal -8(%esp), %esp
	movl $-4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %eax,28(%esp)
	movl %edx,%eax
	movl $1,%edx
	movl $-40,%ecx
	leal 40(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $100,%edx
	movl $-36,%ebx
	leal 40(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call down
Ljoin_l18:
	leal pdownr,%ecx
	movl $-32,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $10,%ecx
	movl $-28,%ebx
	leal 32(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-24,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl %ecx,20(%esp)
	movl %eax,24(%esp)
	call printf
Ljoin_l15:
	leal pdownr,%eax
	movl $-32,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $100,%eax
	movl $-28,%edx
	leal 32(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-24,%eax
	leal 32(%esp), %ecx
	addl %eax,%ecx
	movl 24(%esp),%eax
	movl %eax,(%ecx)
	movl %eax,24(%esp)
	call printf
Ljoin_l12:
	leal pcmp,%eax
	movl $-32,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $100,%eax
	movl $-28,%edx
	leal 32(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl 24(%esp),%eax
	movl 20(%esp),%ecx
	subl %ecx,%eax
	movl $-24,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $10,%eax
	movl $-20,%edx
	leal 32(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l9:
	movl $0,%eax
	movl 16(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l27:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l21
.long Lframe_l28
.section .pcmap_data
Lframe_l28:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l27
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
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
.long Ljoin_l18
.long Lframe_l29
.section .pcmap_data
Lframe_l29:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l27
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff4
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l27
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.section .pcmap
.long Ljoin_l12
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l27
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0xfffffff4
.long 0xfffffff8
.section .pcmap
.long Ljoin_l9
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xffffffe0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l27
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff0
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
Linitialize_continuations_l35:
Lproc_body_start_l34:
	cmpl %edx,%ecx
	jb Ljoin_l41
Ljoin_l42:
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
Ljoin_l39:
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
Ljoin_l41:
	movl %eax,20(%esp)
	movl 12(%esp),%eax
	movl %ecx,24(%esp)
	movl $1,%ecx
	movl %edx,16(%esp)
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
	movl $0,%edx
	leal 36(%esp), %ecx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	jmp down
.section .pcmap_data
Lstackdata_l48:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l39
.long Lframe_l49
.section .pcmap_data
Lframe_l49:
.long 0xffffffdc
.long 0x8000000c
.long 0xfffffff0
.long Lstackdata_l48
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
pdownr:
.byte 118
.byte 97
.byte 108
.byte 117
.byte 101
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 97
.byte 102
.byte 116
.byte 101
.byte 114
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

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
	leal 32(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 32(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $1,%ecx
	leal 40(%esp), %edx
	movl %ebx,28(%esp)
	movl $-40,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $10,%ecx
	leal 40(%esp), %edx
	movl $-36,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call down
Ljoin_l21:
	leal -8(%esp), %esp
	leal 40(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,32(%esp)
	movl %ecx,%eax
	movl $1,%ecx
	leal 40(%esp), %edx
	movl $-40,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $100,%ecx
	leal 40(%esp), %edx
	movl $-36,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	call down
Ljoin_l18:
	movl 24(%esp),%ecx
	cmpl %eax,%ecx
	je Ljoin_l14
Ljoin_l15:
	leal pbad,%edx
	leal 32(%esp), %ebx
	movl $-32,%ecx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $10,%edx
	leal 32(%esp), %ebx
	movl $-28,%ecx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	leal 32(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl 24(%esp),%ebx
	movl %ebx,(%edx)
	movl $100,%edx
	leal 32(%esp), %ebx
	movl $-20,%ecx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	leal 32(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l9:
	jmp Ljoin_l12
Ljoin_l14:
	leal pgood,%ebx
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %ebx,(%eax)
	movl $10,%eax
	leal 32(%esp), %ebx
	movl $-28,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $100,%eax
	leal 32(%esp), %ebx
	movl $-24,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call printf
Ljoin_l13:
	jmp Ljoin_l12
Ljoin_l12:
	movl $0,%eax
	leal 32(%esp), %ecx
	leal 32(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 20(%esp),%ebx
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
.long Ljoin_l13
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
Linitialize_continuations_l34:
Lproc_body_start_l33:
	cmpl %eax,%ecx
	jb Ljoin_l37
Ljoin_l38:
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
Ljoin_l37:
	movl %ecx,8(%esp)
	leal down,%ecx
	movl %eax,12(%esp)
	movl %ecx,%eax
	leal 24(%esp), %ecx
	movl %edx,4(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	movl 8(%esp),%edx
	addl %ecx,%edx
	leal 24(%esp), %ecx
	movl %edi,16(%esp)
	movl $4,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	leal 24(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	leal 24(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	jmp call3
.section .text
.section .data
pgood:
.byte 116
.byte 97
.byte 105
.byte 108
.byte 45
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
.byte 115
.byte 97
.byte 109
.byte 101
.byte 32
.byte 115
.byte 112
.byte 97
.byte 99
.byte 101
.byte 32
.byte 97
.byte 115
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
pbad:
.byte 117
.byte 104
.byte 45
.byte 111
.byte 104
.byte 33
.byte 32
.byte 116
.byte 97
.byte 105
.byte 108
.byte 45
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
.byte 97
.byte 110
.byte 100
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

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
.long 0xffffffffffffffff
.section .text
main:
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 48(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l5:
Lproc_body_start_l4:
	leal -8(%esp), %esp
	leal 56(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	movl $1,%edx
	movl %edi,28(%esp)
	leal 56(%esp), %edi
	movl %edi,32(%esp)
	movl $-56,%edi
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	movl %esi,40(%esp)
	movl 36(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $10,%edi
	leal 56(%esp), %esi
	movl $-52,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	movl %ecx,44(%esp)
	call down
Ljoin_l21:
	leal -8(%esp), %esp
	leal 56(%esp), %edi
	movl $-4,%esi
	addl %esi,%edi
	movl %eax,48(%esp)
	movl %edi,%eax
	movl $1,%edi
	leal 56(%esp), %esi
	movl $-56,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $100,%edi
	leal 56(%esp), %esi
	movl $-52,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	call down
Ljoin_l18:
	movl 40(%esp),%edi
	cmpl %eax,%edi
	je Ljoin_l14
Ljoin_l15:
	leal pbad,%esi
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl $10,%esi
	leal 48(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	leal 48(%esp), %esi
	movl $-40,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl $100,%edi
	leal 48(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 48(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	call printf
Ljoin_l9:
	jmp Ljoin_l12
Ljoin_l14:
	leal pgood,%edi
	leal 48(%esp), %esi
	movl $-48,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	movl $10,%edi
	leal 48(%esp), %esi
	movl $-44,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	movl $100,%edi
	leal 48(%esp), %esi
	movl $-40,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l13:
	jmp Ljoin_l12
Ljoin_l12:
	movl $0,%eax
	leal 48(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 32(%esp),%esi
	movl 20(%esp),%edi
	leal 48(%esp), %esp
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
.long 0x80000004
.long 0xffffffd0
.long 0xfffffff4
.long Lstackdata_l27
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l18
.long Lframe_l29
.section .pcmap_data
Lframe_l29:
.long 0x80000004
.long 0xffffffd0
.long 0xfffffff4
.long Lstackdata_l27
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0x80000004
.long 0xffffffd0
.long 0xfffffff4
.long Lstackdata_l27
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l13
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000004
.long 0xffffffd0
.long 0xfffffff4
.long Lstackdata_l27
.long 8
.long 4
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
down:
	leal -40(%esp), %esp
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 40(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l34:
Lproc_body_start_l33:
	movl %ecx,4(%esp)
	movl (%esp),%ecx
	cmpl %edx,%ecx
	jb Ljoin_l37
Ljoin_l38:
	leal 40(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	subl %edx,%eax
	leal 40(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 48(%esp), %esp
	ret
Ljoin_l37:
	movl %edx,8(%esp)
	leal down,%edx
	movl %eax,12(%esp)
	movl %edx,%eax
	leal 40(%esp), %edx
	movl %edx,16(%esp)
	movl $0,%edx
	movl %edx,20(%esp)
	movl 16(%esp),%edx
	movl 20(%esp),%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%edx
	movl (%esp),%ecx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %edx,24(%esp)
	movl $4,%edx
	movl %edx,28(%esp)
	movl 24(%esp),%edx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	leal 40(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 40(%esp), %edx
	movl $-4,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 36(%esp), %esp
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

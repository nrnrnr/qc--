.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
numbers:
.long 1
.long 2
.long 3
.long 4
.long 5
.long 6
.long 7
.long 8
.long 9
.long 10
ok:
.byte 111
.byte 107
.byte 32
.byte 40
.byte 101
.byte 120
.byte 112
.byte 101
.byte 99
.byte 116
.byte 101
.byte 100
.byte 32
.byte 37
.byte 100
.byte 44
.byte 32
.byte 114
.byte 101
.byte 99
.byte 101
.byte 105
.byte 118
.byte 101
.byte 100
.byte 32
.byte 37
.byte 100
.byte 41
.byte 10
.section .text
f:
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 40(%esp), %ecx
	movl %edx,16(%esp)
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl %eax,20(%esp)
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 40(%esp), %ecx
	movl %edx,24(%esp)
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl %eax,28(%esp)
	leal numbers,%eax
	movl (%eax),%eax
	movl %edx,32(%esp)
	movl 12(%esp),%edx
	cmpl %eax,%edx
	je Ljoin_l36
Ljoin_l43:
	jmp Ljoin_l37
Ljoin_l36:
	leal ok,%eax
	leal 40(%esp), %edx
	movl %ecx,36(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal numbers,%eax
	leal 40(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l35:
	movl 36(%esp),%ecx
	jmp Ljoin_l37
Ljoin_l37:
	leal numbers,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl 16(%esp),%eax
	cmpl %edx,%eax
	je Ljoin_l31
Ljoin_l44:
	jmp Ljoin_l32
Ljoin_l31:
	leal ok,%edx
	leal 40(%esp), %eax
	movl %ecx,36(%esp)
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal numbers,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 40(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l30:
	movl 36(%esp),%ecx
	jmp Ljoin_l32
Ljoin_l32:
	leal numbers,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl 20(%esp),%eax
	cmpl %edx,%eax
	je Ljoin_l26
Ljoin_l45:
	jmp Ljoin_l27
Ljoin_l26:
	leal ok,%edx
	leal 40(%esp), %eax
	movl %ecx,36(%esp)
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl 20(%esp),%edx
	movl %edx,(%eax)
	leal numbers,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 40(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l25:
	movl 36(%esp),%ecx
	jmp Ljoin_l27
Ljoin_l27:
	leal numbers,%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl 24(%esp),%eax
	cmpl %edx,%eax
	je Ljoin_l21
Ljoin_l46:
	jmp Ljoin_l22
Ljoin_l21:
	leal ok,%edx
	leal 40(%esp), %eax
	movl %ecx,36(%esp)
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl 24(%esp),%edx
	movl %edx,(%eax)
	leal numbers,%eax
	movl $12,%edx
	addl %edx,%eax
	leal 40(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l20:
	movl 36(%esp),%ecx
	jmp Ljoin_l22
Ljoin_l22:
	leal numbers,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl 28(%esp),%eax
	cmpl %edx,%eax
	je Ljoin_l16
Ljoin_l47:
	jmp Ljoin_l17
Ljoin_l16:
	leal ok,%edx
	leal 40(%esp), %eax
	movl %ecx,36(%esp)
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	leal numbers,%eax
	movl $16,%edx
	addl %edx,%eax
	leal 40(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l15:
	movl 36(%esp),%ecx
	jmp Ljoin_l17
Ljoin_l17:
	leal numbers,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl 32(%esp),%eax
	cmpl %edx,%eax
	je Ljoin_l11
Ljoin_l48:
	jmp Ljoin_l12
Ljoin_l11:
	leal ok,%edx
	leal 40(%esp), %eax
	movl %ecx,36(%esp)
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl 32(%esp),%edx
	movl %edx,(%eax)
	leal numbers,%eax
	movl $20,%edx
	addl %edx,%eax
	leal 40(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l10:
	movl 36(%esp),%ecx
	jmp Ljoin_l12
Ljoin_l12:
	leal 40(%esp), %eax
	movl $20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l49:
.long 0
.section .pcmap
.long Ljoin_l35
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long Lstackdata_l49
.long 0x80000008
.long 0x80000006
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
.long 0xffffffe8
.long 0xffffffec
.long 0xfffffff0
.long 0xfffffff4
.long 0xfffffff8
.long 0x80000000
.section .pcmap
.long Ljoin_l30
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long Lstackdata_l49
.long 0x80000008
.long 0x80000006
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
.long 0xffffffec
.long 0xfffffff0
.long 0xfffffff4
.long 0xfffffff8
.long 0x80000000
.section .pcmap
.long Ljoin_l25
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long Lstackdata_l49
.long 0x80000008
.long 0x80000006
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
.long 0xfffffff0
.long 0xfffffff4
.long 0xfffffff8
.long 0x80000000
.section .pcmap
.long Ljoin_l20
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long Lstackdata_l49
.long 0x80000008
.long 0x80000006
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
.long 0xfffffff4
.long 0xfffffff8
.long 0x80000000
.section .pcmap
.long Ljoin_l15
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long Lstackdata_l49
.long 0x80000008
.long 0x80000006
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
.long 0
.long 0xfffffff8
.long 0x80000000
.section .pcmap
.long Ljoin_l10
.long Lframe_l55
.section .pcmap_data
Lframe_l55:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long Lstackdata_l49
.long 0x80000008
.long 0x80000006
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
.long 0
.long 0
.long 0x80000000
.section .text
.section .text
g:
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 28(%esp), %ecx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l58:
Lproc_body_start_l57:
	movl %edx,16(%esp)
	leal numbers,%edx
	movl %eax,20(%esp)
	movl $20,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl 12(%esp),%edx
	cmpl %eax,%edx
	je Ljoin_l73
Ljoin_l80:
	jmp Ljoin_l74
Ljoin_l73:
	leal ok,%eax
	leal 28(%esp), %edx
	movl %ecx,24(%esp)
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal numbers,%eax
	movl $20,%edx
	addl %edx,%eax
	leal 28(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l72:
	movl 24(%esp),%ecx
	jmp Ljoin_l74
Ljoin_l74:
	leal numbers,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl 16(%esp),%eax
	cmpl %edx,%eax
	je Ljoin_l68
Ljoin_l81:
	jmp Ljoin_l69
Ljoin_l68:
	leal ok,%edx
	leal 28(%esp), %eax
	movl %ecx,24(%esp)
	movl $-28,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal numbers,%eax
	movl $16,%edx
	addl %edx,%eax
	leal 28(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l67:
	movl 24(%esp),%ecx
	jmp Ljoin_l69
Ljoin_l69:
	leal numbers,%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl 20(%esp),%eax
	cmpl %edx,%eax
	je Ljoin_l63
Ljoin_l82:
	jmp Ljoin_l64
Ljoin_l63:
	leal ok,%edx
	leal 28(%esp), %eax
	movl %ecx,24(%esp)
	movl $-28,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl 20(%esp),%edx
	movl %edx,(%eax)
	leal numbers,%eax
	movl $12,%edx
	addl %edx,%eax
	leal 28(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l62:
	movl 24(%esp),%ecx
	jmp Ljoin_l64
Ljoin_l64:
	leal 28(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l83:
.long 0
.section .pcmap
.long Ljoin_l72
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0xffffffe4
.long 0x8000000c
.long 0xfffffffc
.long Lstackdata_l83
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
.long 0xfffffff4
.long 0xfffffff8
.long 0x80000000
.section .pcmap
.long Ljoin_l67
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0xffffffe4
.long 0x8000000c
.long 0xfffffffc
.long Lstackdata_l83
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
.long 0xfffffff8
.long 0x80000000
.section .pcmap
.long Ljoin_l62
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0xffffffe4
.long 0x8000000c
.long 0xfffffffc
.long Lstackdata_l83
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
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 4(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l89:
Lproc_body_start_l88:
	leal -20(%esp), %esp
	leal numbers,%ecx
	movl (%ecx),%eax
	leal numbers,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 24(%esp), %edx
	movl %ebx,20(%esp)
	movl $-24,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	leal numbers,%edx
	movl $8,%ebx
	addl %ebx,%edx
	leal 24(%esp), %ebx
	movl $-20,%ecx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	leal numbers,%ecx
	movl $12,%ebx
	addl %ebx,%ecx
	leal 24(%esp), %ebx
	movl $-16,%edx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	leal numbers,%edx
	movl $16,%ebx
	addl %ebx,%edx
	leal 24(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	leal numbers,%ecx
	movl $20,%ebx
	addl %ebx,%ecx
	leal 24(%esp), %ebx
	movl $-8,%edx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	call f
Ljoin_l96:
	leal -8(%esp), %esp
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal numbers,%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 12(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	leal numbers,%edx
	movl $12,%ebx
	addl %ebx,%edx
	leal 12(%esp), %ebx
	movl $-8,%ecx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	call g
Ljoin_l93:
	movl $0,%eax
	leal 4(%esp), %ecx
	leal 4(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l102:
.long 0
.section .pcmap
.long Ljoin_l96
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l102
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l93
.long Lframe_l104
.section .pcmap_data
Lframe_l104:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l102
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x80000000
.section .text

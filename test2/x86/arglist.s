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
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,12(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	movl %ecx,16(%esp)
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $16,%ecx
	movl %edx,20(%esp)
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $20,%edx
	movl %eax,24(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 40(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl %ecx,28(%esp)
	leal numbers,%ecx
	movl (%ecx),%ecx
	movl %edx,32(%esp)
	movl 12(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l36
Ljoin_l43:
	jmp Ljoin_l37
Ljoin_l36:
	leal ok,%ecx
	movl %edx,12(%esp)
	movl $-40,%edx
	movl %eax,36(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-36,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	leal numbers,%eax
	movl $-32,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l35:
	movl 36(%esp),%eax
	jmp Ljoin_l37
Ljoin_l37:
	movl $4,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 16(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l31
Ljoin_l44:
	jmp Ljoin_l32
Ljoin_l31:
	leal ok,%ecx
	movl %edx,16(%esp)
	movl $-40,%edx
	movl %eax,36(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-36,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	leal numbers,%ecx
	addl %eax,%ecx
	movl $-32,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l30:
	movl 36(%esp),%eax
	jmp Ljoin_l32
Ljoin_l32:
	movl $8,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 20(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l26
Ljoin_l45:
	jmp Ljoin_l27
Ljoin_l26:
	leal ok,%ecx
	movl %edx,20(%esp)
	movl $-40,%edx
	movl %eax,36(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-36,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 20(%esp),%eax
	movl %eax,(%ecx)
	movl $8,%eax
	leal numbers,%ecx
	addl %eax,%ecx
	movl $-32,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l25:
	movl 36(%esp),%eax
	jmp Ljoin_l27
Ljoin_l27:
	movl $12,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 24(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l21
Ljoin_l46:
	jmp Ljoin_l22
Ljoin_l21:
	leal ok,%ecx
	movl %edx,24(%esp)
	movl $-40,%edx
	movl %eax,36(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-36,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 24(%esp),%eax
	movl %eax,(%ecx)
	movl $12,%eax
	leal numbers,%ecx
	addl %eax,%ecx
	movl $-32,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l20:
	movl 36(%esp),%eax
	jmp Ljoin_l22
Ljoin_l22:
	movl $16,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 28(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l16
Ljoin_l47:
	jmp Ljoin_l17
Ljoin_l16:
	leal ok,%ecx
	movl %edx,28(%esp)
	movl $-40,%edx
	movl %eax,36(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-36,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl $16,%eax
	leal numbers,%ecx
	addl %eax,%ecx
	movl $-32,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l15:
	movl 36(%esp),%eax
	jmp Ljoin_l17
Ljoin_l17:
	movl $20,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 32(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l11
Ljoin_l48:
	jmp Ljoin_l12
Ljoin_l11:
	leal ok,%ecx
	movl %edx,32(%esp)
	movl $-40,%edx
	movl %eax,36(%esp)
	leal 40(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-36,%eax
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $20,%eax
	leal numbers,%ecx
	addl %eax,%ecx
	movl $-32,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l10:
	movl 36(%esp),%eax
	jmp Ljoin_l12
Ljoin_l12:
	movl $20,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.long 0x80000000
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
.long 0x80000000
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
.long 0x80000000
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
.long 0x80000000
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
.long 0x80000000
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
.long 0x80000000
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
.section .text
.section .text
g:
	leal -28(%esp), %esp
	movl $4,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,12(%esp)
	leal 28(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 28(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l58:
Lproc_body_start_l57:
	movl %ecx,16(%esp)
	movl $20,%ecx
	movl %edx,20(%esp)
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 12(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l73
Ljoin_l80:
	jmp Ljoin_l74
Ljoin_l73:
	leal ok,%ecx
	movl %edx,12(%esp)
	movl $-28,%edx
	movl %eax,24(%esp)
	leal 28(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-24,%eax
	leal 28(%esp), %ecx
	addl %eax,%ecx
	movl 12(%esp),%eax
	movl %eax,(%ecx)
	movl $20,%eax
	leal numbers,%ecx
	addl %eax,%ecx
	movl $-20,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l72:
	movl 24(%esp),%eax
	jmp Ljoin_l74
Ljoin_l74:
	movl $16,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 16(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l68
Ljoin_l81:
	jmp Ljoin_l69
Ljoin_l68:
	leal ok,%ecx
	movl %edx,16(%esp)
	movl $-28,%edx
	movl %eax,24(%esp)
	leal 28(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-24,%eax
	leal 28(%esp), %ecx
	addl %eax,%ecx
	movl 16(%esp),%eax
	movl %eax,(%ecx)
	movl $16,%eax
	leal numbers,%ecx
	addl %eax,%ecx
	movl $-20,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l67:
	movl 24(%esp),%eax
	jmp Ljoin_l69
Ljoin_l69:
	movl $12,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 20(%esp),%edx
	cmpl %ecx,%edx
	je Ljoin_l63
Ljoin_l82:
	jmp Ljoin_l64
Ljoin_l63:
	leal ok,%ecx
	movl %edx,20(%esp)
	movl $-28,%edx
	movl %eax,24(%esp)
	leal 28(%esp), %eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-24,%eax
	leal 28(%esp), %ecx
	addl %eax,%ecx
	movl 20(%esp),%eax
	movl %eax,(%ecx)
	movl $12,%eax
	leal numbers,%ecx
	addl %eax,%ecx
	movl $-20,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l62:
	movl 24(%esp),%eax
	jmp Ljoin_l64
Ljoin_l64:
	movl $8,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
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
.long 0x80000000
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
.long 0x80000000
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
.long 0x80000000
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
.section .text
.section .text
main:
	leal -4(%esp), %esp
	movl $4,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%ecx
	leal 4(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l89:
Lproc_body_start_l88:
	leal -20(%esp), %esp
	leal numbers,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl $-24,%ecx
	movl %ebx,20(%esp)
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl $8,%ecx
	leal numbers,%ebx
	addl %ecx,%ebx
	movl $-20,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $12,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl $-16,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl $16,%ecx
	leal numbers,%ebx
	addl %ecx,%ebx
	movl $-12,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $20,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl $-8,%ecx
	leal 24(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	call f
Ljoin_l96:
	leal -8(%esp), %esp
	movl $20,%eax
	leal numbers,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $16,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl $-12,%ecx
	leal 12(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl $12,%ecx
	leal numbers,%ebx
	addl %ecx,%ebx
	movl $-8,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	call g
Ljoin_l93:
	movl $0,%eax
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
.long 0x80000000
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
.long 0x80000000
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
.section .text

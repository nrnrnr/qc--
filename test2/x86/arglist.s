.globl main
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
initialize_continuations_l4:
proc_body_start_l3:
	movl %ecx,28(%esp)
	leal numbers,%ecx
	movl (%ecx),%ecx
	movl %edx,32(%esp)
	movl 12(%esp),%edx
	cmpl %ecx,%edx
	je join_l34
join_l41:
	jmp join_l35
join_l34:
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
join_l33:
	movl 36(%esp),%eax
	jmp join_l35
join_l35:
	movl $4,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 16(%esp),%edx
	cmpl %ecx,%edx
	je join_l29
join_l42:
	jmp join_l30
join_l29:
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
join_l28:
	movl 36(%esp),%eax
	jmp join_l30
join_l30:
	movl $8,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 20(%esp),%edx
	cmpl %ecx,%edx
	je join_l24
join_l43:
	jmp join_l25
join_l24:
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
join_l23:
	movl 36(%esp),%eax
	jmp join_l25
join_l25:
	movl $12,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 24(%esp),%edx
	cmpl %ecx,%edx
	je join_l19
join_l44:
	jmp join_l20
join_l19:
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
join_l18:
	movl 36(%esp),%eax
	jmp join_l20
join_l20:
	movl $16,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 28(%esp),%edx
	cmpl %ecx,%edx
	je join_l14
join_l45:
	jmp join_l15
join_l14:
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
join_l13:
	movl 36(%esp),%eax
	jmp join_l15
join_l15:
	movl $20,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 32(%esp),%edx
	cmpl %ecx,%edx
	je join_l9
join_l46:
	jmp join_l10
join_l9:
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
join_l8:
	movl 36(%esp),%eax
	jmp join_l10
join_l10:
	movl $20,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 60(%esp), %esp
	ret
.section .pcmap_data
stackdata_l47:
.long 0
.section .pcmap
.long join_l33
.long frame_l48
.section .pcmap_data
frame_l48:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long stackdata_l47
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
.long join_l28
.long frame_l49
.section .pcmap_data
frame_l49:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long stackdata_l47
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
.long join_l23
.long frame_l50
.section .pcmap_data
frame_l50:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long stackdata_l47
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
.long join_l18
.long frame_l51
.section .pcmap_data
frame_l51:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long stackdata_l47
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
.long join_l13
.long frame_l52
.section .pcmap_data
frame_l52:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long stackdata_l47
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
.long join_l8
.long frame_l53
.section .pcmap_data
frame_l53:
.long 0xffffffd8
.long 0x80000018
.long 0xfffffffc
.long stackdata_l47
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
initialize_continuations_l57:
proc_body_start_l56:
	movl %ecx,16(%esp)
	movl $20,%ecx
	movl %edx,20(%esp)
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 12(%esp),%edx
	cmpl %ecx,%edx
	je join_l72
join_l79:
	jmp join_l73
join_l72:
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
join_l71:
	movl 24(%esp),%eax
	jmp join_l73
join_l73:
	movl $16,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 16(%esp),%edx
	cmpl %ecx,%edx
	je join_l67
join_l80:
	jmp join_l68
join_l67:
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
join_l66:
	movl 24(%esp),%eax
	jmp join_l68
join_l68:
	movl $12,%ecx
	leal numbers,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl 20(%esp),%edx
	cmpl %ecx,%edx
	je join_l62
join_l81:
	jmp join_l63
join_l62:
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
join_l61:
	movl 24(%esp),%eax
	jmp join_l63
join_l63:
	movl $8,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
stackdata_l82:
.long 0
.section .pcmap
.long join_l71
.long frame_l83
.section .pcmap_data
frame_l83:
.long 0xffffffe4
.long 0x8000000c
.long 0xfffffffc
.long stackdata_l82
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
.long join_l66
.long frame_l84
.section .pcmap_data
frame_l84:
.long 0xffffffe4
.long 0x8000000c
.long 0xfffffffc
.long stackdata_l82
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
.long join_l61
.long frame_l85
.section .pcmap_data
frame_l85:
.long 0xffffffe4
.long 0x8000000c
.long 0xfffffffc
.long stackdata_l82
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
initialize_continuations_l89:
proc_body_start_l88:
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
join_l96:
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
join_l93:
	movl $0,%eax
	movl (%esp),%ebx
	leal 4(%esp), %esp
	ret
.section .pcmap_data
stackdata_l102:
.long 0
.section .pcmap
.long join_l96
.long frame_l103
.section .pcmap_data
frame_l103:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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
.long join_l93
.long frame_l104
.section .pcmap_data
frame_l104:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long stackdata_l102
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

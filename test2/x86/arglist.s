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
.long 0xffffffff
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
	leal -136(%esp), %esp
	leal 136(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 136(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 136(%esp), %edx
	movl %eax,16(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 136(%esp), %edx
	movl %eax,20(%esp)
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 136(%esp), %edx
	movl %eax,24(%esp)
	movl $20,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 136(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l6:
.Lproc_body_start_l5:
	movl %eax,28(%esp)
	leal numbers,%eax
	movl (%eax),%eax
	movl %ecx,32(%esp)
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l36
.Ljoin_l48:
	jmp .Ljoin_l37
.Ljoin_l36:
	leal ok,%eax
	movl %eax,36(%esp)
	leal 136(%esp), %eax
	movl %eax,40(%esp)
	movl $-136,%eax
	movl %eax,44(%esp)
	movl 40(%esp),%eax
	movl 44(%esp),%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 136(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	leal 136(%esp), %ecx
	movl %eax,48(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 48(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,52(%esp)
	call printf
.Ljoin_l35:
	movl 52(%esp),%edx
	jmp .Ljoin_l37
.Ljoin_l37:
	leal numbers,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 32(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l31
.Ljoin_l47:
	jmp .Ljoin_l32
.Ljoin_l31:
	leal ok,%eax
	movl %eax,56(%esp)
	leal 136(%esp), %eax
	movl %eax,60(%esp)
	movl $-136,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	leal 136(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 136(%esp), %ecx
	movl %eax,68(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 68(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,52(%esp)
	call printf
.Ljoin_l30:
	movl 52(%esp),%edx
	jmp .Ljoin_l32
.Ljoin_l32:
	leal numbers,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l26
.Ljoin_l46:
	jmp .Ljoin_l27
.Ljoin_l26:
	leal ok,%eax
	movl %eax,72(%esp)
	leal 136(%esp), %eax
	movl %eax,76(%esp)
	movl $-136,%eax
	movl %eax,80(%esp)
	movl 76(%esp),%eax
	movl 80(%esp),%ecx
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	leal 136(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 136(%esp), %ecx
	movl %eax,84(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 84(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,52(%esp)
	call printf
.Ljoin_l25:
	movl 52(%esp),%edx
	jmp .Ljoin_l27
.Ljoin_l27:
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 20(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l21
.Ljoin_l45:
	jmp .Ljoin_l22
.Ljoin_l21:
	leal ok,%eax
	movl %eax,88(%esp)
	leal 136(%esp), %eax
	movl %eax,92(%esp)
	movl $-136,%eax
	movl %eax,96(%esp)
	movl 92(%esp),%eax
	movl 96(%esp),%ecx
	addl %ecx,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal 136(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 136(%esp), %ecx
	movl %eax,100(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 100(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,52(%esp)
	call printf
.Ljoin_l20:
	movl 52(%esp),%edx
	jmp .Ljoin_l22
.Ljoin_l22:
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 24(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l16
.Ljoin_l44:
	jmp .Ljoin_l17
.Ljoin_l16:
	leal ok,%eax
	movl %eax,104(%esp)
	leal 136(%esp), %eax
	movl %eax,108(%esp)
	movl $-136,%eax
	movl %eax,112(%esp)
	movl 108(%esp),%eax
	movl 112(%esp),%ecx
	addl %ecx,%eax
	movl 104(%esp),%ecx
	movl %ecx,(%eax)
	leal 136(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	leal 136(%esp), %ecx
	movl %eax,116(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 116(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,52(%esp)
	call printf
.Ljoin_l15:
	movl 52(%esp),%edx
	jmp .Ljoin_l17
.Ljoin_l17:
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l11
.Ljoin_l43:
	jmp .Ljoin_l12
.Ljoin_l11:
	leal ok,%eax
	movl %eax,120(%esp)
	leal 136(%esp), %eax
	movl %eax,124(%esp)
	movl $-136,%eax
	movl %eax,128(%esp)
	movl 124(%esp),%eax
	movl 128(%esp),%ecx
	addl %ecx,%eax
	movl 120(%esp),%ecx
	movl %ecx,(%eax)
	leal 136(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal 136(%esp), %ecx
	movl %eax,132(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 132(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,52(%esp)
	call printf
.Ljoin_l10:
	movl 52(%esp),%edx
	jmp .Ljoin_l12
.Ljoin_l12:
	leal 136(%esp), %eax
	movl $20,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 156(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l49:
.long 0
.section .pcmap
.long .Ljoin_l35
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000018
.long 0xffffff78
.long 0xffffffac
.long .Lstackdata_l49
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0xffffff98
.long 0xffffff88
.long 0xffffff8c
.long 0xffffff90
.long 0xffffff94
.long 0
.section .pcmap
.long .Ljoin_l30
.long .Lframe_l51
.section .pcmap_data
.Lframe_l51:
.long 0x80000018
.long 0xffffff78
.long 0xffffffac
.long .Lstackdata_l49
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0xffffff88
.long 0xffffff8c
.long 0xffffff90
.long 0xffffff94
.long 0
.section .pcmap
.long .Ljoin_l25
.long .Lframe_l52
.section .pcmap_data
.Lframe_l52:
.long 0x80000018
.long 0xffffff78
.long 0xffffffac
.long .Lstackdata_l49
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffff8c
.long 0xffffff90
.long 0xffffff94
.long 0
.section .pcmap
.long .Ljoin_l20
.long .Lframe_l53
.section .pcmap_data
.Lframe_l53:
.long 0x80000018
.long 0xffffff78
.long 0xffffffac
.long .Lstackdata_l49
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xffffff90
.long 0xffffff94
.long 0
.section .pcmap
.long .Ljoin_l15
.long .Lframe_l54
.section .pcmap_data
.Lframe_l54:
.long 0x80000018
.long 0xffffff78
.long 0xffffffac
.long .Lstackdata_l49
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff94
.long 0
.section .pcmap
.long .Ljoin_l10
.long .Lframe_l55
.section .pcmap_data
.Lframe_l55:
.long 0x80000018
.long 0xffffff78
.long 0xffffffac
.long .Lstackdata_l49
.long 0
.long 6
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
g:
	leal -84(%esp), %esp
	leal 84(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 84(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 84(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l58:
.Lproc_body_start_l57:
	movl %eax,16(%esp)
	leal numbers,%eax
	movl %eax,20(%esp)
	movl $20,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 12(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l73
.Ljoin_l82:
	jmp .Ljoin_l74
.Ljoin_l73:
	leal ok,%eax
	movl %eax,32(%esp)
	leal 84(%esp), %eax
	movl %eax,36(%esp)
	movl $-84,%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	leal 84(%esp), %ecx
	movl %eax,44(%esp)
	movl $-76,%eax
	addl %eax,%ecx
	movl 44(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,48(%esp)
	call printf
.Ljoin_l72:
	movl 48(%esp),%edx
	jmp .Ljoin_l74
.Ljoin_l74:
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l68
.Ljoin_l81:
	jmp .Ljoin_l69
.Ljoin_l68:
	leal ok,%eax
	movl %eax,52(%esp)
	leal 84(%esp), %eax
	movl %eax,56(%esp)
	movl $-84,%eax
	movl %eax,60(%esp)
	movl 56(%esp),%eax
	movl 60(%esp),%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $16,%ecx
	addl %ecx,%eax
	leal 84(%esp), %ecx
	movl %eax,64(%esp)
	movl $-76,%eax
	addl %eax,%ecx
	movl 64(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,48(%esp)
	call printf
.Ljoin_l67:
	movl 48(%esp),%edx
	jmp .Ljoin_l69
.Ljoin_l69:
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 16(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l63
.Ljoin_l80:
	jmp .Ljoin_l64
.Ljoin_l63:
	leal ok,%eax
	movl %eax,68(%esp)
	leal 84(%esp), %eax
	movl %eax,72(%esp)
	movl $-84,%eax
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl 76(%esp),%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 84(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal numbers,%eax
	movl $12,%ecx
	addl %ecx,%eax
	leal 84(%esp), %ecx
	movl %eax,80(%esp)
	movl $-76,%eax
	addl %eax,%ecx
	movl 80(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	movl %edx,48(%esp)
	call printf
.Ljoin_l62:
	movl 48(%esp),%edx
	jmp .Ljoin_l64
.Ljoin_l64:
	leal 84(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 92(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l83:
.long 0
.section .pcmap
.long .Ljoin_l72
.long .Lframe_l84
.section .pcmap_data
.Lframe_l84:
.long 0x8000000c
.long 0xffffffac
.long 0xffffffdc
.long .Lstackdata_l83
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0xffffffc8
.long 0xffffffbc
.long 0
.section .pcmap
.long .Ljoin_l67
.long .Lframe_l85
.section .pcmap_data
.Lframe_l85:
.long 0x8000000c
.long 0xffffffac
.long 0xffffffdc
.long .Lstackdata_l83
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0xffffffbc
.long 0
.section .pcmap
.long .Ljoin_l62
.long .Lframe_l86
.section .pcmap_data
.Lframe_l86:
.long 0x8000000c
.long 0xffffffac
.long 0xffffffdc
.long .Lstackdata_l83
.long 0
.long 3
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l89:
.Lproc_body_start_l88:
	leal -20(%esp), %esp
	leal numbers,%ecx
	movl (%ecx),%ecx
	movl %eax,20(%esp)
	movl %ecx,%eax
	leal numbers,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,24(%esp)
	movl $-52,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,28(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,32(%esp)
	movl $-44,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,36(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $20,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,40(%esp)
	movl $-36,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call f
.Ljoin_l96:
	leal -8(%esp), %esp
	leal numbers,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal numbers,%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,32(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal numbers,%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,36(%esp)
	movl $-36,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call g
.Ljoin_l93:
	movl $0,%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l102:
.long 0
.section .pcmap
.long .Ljoin_l96
.long .Lframe_l103
.section .pcmap_data
.Lframe_l103:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe0
.long .Lstackdata_l102
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .pcmap
.long .Ljoin_l93
.long .Lframe_l104
.section .pcmap_data
.Lframe_l104:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffe0
.long .Lstackdata_l102
.long 0
.long 2
.long 0
.long 1
.long 0
.long 0
.long 0
.section .text

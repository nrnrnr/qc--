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
	leal -80(%esp), %esp
	leal 80(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 80(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 80(%esp), %edx
	movl %eax,16(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 80(%esp), %edx
	movl %eax,20(%esp)
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 80(%esp), %edx
	movl %eax,24(%esp)
	movl $20,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 80(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl %edi,28(%esp)
	leal numbers,%edi
	movl (%edi),%edi
	movl %esi,32(%esp)
	movl 12(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l36
Ljoin_l43:
	jmp Ljoin_l37
Ljoin_l36:
	leal ok,%edi
	movl %edi,36(%esp)
	leal 80(%esp), %edi
	movl %edi,40(%esp)
	movl $-80,%edi
	movl %edi,44(%esp)
	movl 40(%esp),%edi
	movl 44(%esp),%esi
	addl %esi,%edi
	movl 36(%esp),%esi
	movl %esi,(%edi)
	leal 80(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal numbers,%edi
	leal 80(%esp), %esi
	movl %edi,48(%esp)
	movl $-72,%edi
	addl %edi,%esi
	movl 48(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,60(%esp)
	movl %ecx,56(%esp)
	movl %eax,52(%esp)
	call printf
Ljoin_l35:
	movl 60(%esp),%edx
	movl 56(%esp),%ecx
	movl 52(%esp),%eax
	jmp Ljoin_l37
Ljoin_l37:
	leal numbers,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	cmpl %edi,%ecx
	je Ljoin_l31
Ljoin_l44:
	jmp Ljoin_l32
Ljoin_l31:
	leal ok,%edi
	leal 80(%esp), %esi
	movl %edi,64(%esp)
	movl $-80,%edi
	addl %edi,%esi
	movl 64(%esp),%edi
	movl %edi,(%esi)
	leal 80(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal numbers,%edi
	movl $4,%esi
	addl %esi,%edi
	leal 80(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,60(%esp)
	movl %eax,52(%esp)
	call printf
Ljoin_l30:
	movl 60(%esp),%edx
	movl 52(%esp),%eax
	jmp Ljoin_l32
Ljoin_l32:
	leal numbers,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl 16(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l26
Ljoin_l45:
	jmp Ljoin_l27
Ljoin_l26:
	leal ok,%edi
	leal 80(%esp), %ecx
	movl %edi,68(%esp)
	movl $-80,%edi
	addl %edi,%ecx
	movl 68(%esp),%edi
	movl %edi,(%ecx)
	leal 80(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal numbers,%edi
	movl $8,%esi
	addl %esi,%edi
	leal 80(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,60(%esp)
	movl %eax,52(%esp)
	call printf
Ljoin_l25:
	movl 60(%esp),%edx
	movl 52(%esp),%eax
	jmp Ljoin_l27
Ljoin_l27:
	leal numbers,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl 20(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l21
Ljoin_l46:
	jmp Ljoin_l22
Ljoin_l21:
	leal ok,%edi
	leal 80(%esp), %ecx
	movl %edi,72(%esp)
	movl $-80,%edi
	addl %edi,%ecx
	movl 72(%esp),%edi
	movl %edi,(%ecx)
	leal 80(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal numbers,%edi
	movl $12,%esi
	addl %esi,%edi
	leal 80(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,60(%esp)
	movl %eax,52(%esp)
	call printf
Ljoin_l20:
	movl 60(%esp),%edx
	movl 52(%esp),%eax
	jmp Ljoin_l22
Ljoin_l22:
	leal numbers,%edi
	movl $16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl 24(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l16
Ljoin_l47:
	jmp Ljoin_l17
Ljoin_l16:
	leal ok,%edi
	leal 80(%esp), %ecx
	movl %edi,76(%esp)
	movl $-80,%edi
	addl %edi,%ecx
	movl 76(%esp),%edi
	movl %edi,(%ecx)
	leal 80(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal numbers,%edi
	movl $16,%esi
	addl %esi,%edi
	leal 80(%esp), %esi
	movl $-72,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,60(%esp)
	movl %eax,52(%esp)
	call printf
Ljoin_l15:
	movl 60(%esp),%edx
	movl 52(%esp),%eax
	jmp Ljoin_l17
Ljoin_l17:
	leal numbers,%edi
	movl $20,%esi
	addl %esi,%edi
	movl (%edi),%edi
	cmpl %edi,%eax
	je Ljoin_l11
Ljoin_l48:
	jmp Ljoin_l12
Ljoin_l11:
	leal ok,%edi
	leal 80(%esp), %esi
	movl $-80,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 80(%esp), %edi
	movl $-76,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal numbers,%edi
	movl $20,%esi
	addl %esi,%edi
	leal 80(%esp), %esi
	movl $-72,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,60(%esp)
	call printf
Ljoin_l10:
	movl 60(%esp),%edx
	jmp Ljoin_l12
Ljoin_l12:
	leal 80(%esp), %ecx
	movl $20,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl 32(%esp),%esi
	movl 28(%esp),%edi
	leal 100(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l49:
.long 0
.section .pcmap
.long Ljoin_l35
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xffffffb0
.long 0x80000018
.long 0xffffffec
.long Lstackdata_l49
.long 8
.long 6
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffd0
.long 0x4000000b
.long 0xffffffcc
.long 0
.long 0xffffffe8
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffe4
.long 0
.section .pcmap
.long Ljoin_l30
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0xffffffb0
.long 0x80000018
.long 0xffffffec
.long Lstackdata_l49
.long 8
.long 6
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffd0
.long 0x4000000b
.long 0xffffffcc
.long 0
.long 0
.long 0xffffffc0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffe4
.long 0
.section .pcmap
.long Ljoin_l25
.long Lframe_l52
.section .pcmap_data
Lframe_l52:
.long 0xffffffb0
.long 0x80000018
.long 0xffffffec
.long Lstackdata_l49
.long 8
.long 6
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffd0
.long 0x4000000b
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0xffffffc4
.long 0xffffffc8
.long 0xffffffe4
.long 0
.section .pcmap
.long Ljoin_l20
.long Lframe_l53
.section .pcmap_data
Lframe_l53:
.long 0xffffffb0
.long 0x80000018
.long 0xffffffec
.long Lstackdata_l49
.long 8
.long 6
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffd0
.long 0x4000000b
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
.long 0xffffffc8
.long 0xffffffe4
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xffffffb0
.long 0x80000018
.long 0xffffffec
.long Lstackdata_l49
.long 8
.long 6
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffd0
.long 0x4000000b
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0
.section .pcmap
.long Ljoin_l10
.long Lframe_l55
.section .pcmap_data
Lframe_l55:
.long 0xffffffb0
.long 0x80000018
.long 0xffffffec
.long Lstackdata_l49
.long 8
.long 6
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffd0
.long 0x4000000b
.long 0xffffffcc
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
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl %eax,12(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 64(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l58:
Lproc_body_start_l57:
	movl %edi,16(%esp)
	leal numbers,%edi
	movl %edi,20(%esp)
	movl $20,%edi
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	movl %esi,28(%esp)
	movl 24(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl 12(%esp),%esi
	cmpl %edi,%esi
	je Ljoin_l73
Ljoin_l80:
	jmp Ljoin_l74
Ljoin_l73:
	leal ok,%edi
	movl %edi,32(%esp)
	leal 64(%esp), %edi
	movl %edi,36(%esp)
	movl $-64,%edi
	movl %edi,40(%esp)
	movl 36(%esp),%edi
	movl 40(%esp),%esi
	addl %esi,%edi
	movl 32(%esp),%esi
	movl %esi,(%edi)
	leal 64(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl 12(%esp),%esi
	movl %esi,(%edi)
	leal numbers,%edi
	movl $20,%esi
	addl %esi,%edi
	leal 64(%esp), %esi
	movl %edi,44(%esp)
	movl $-56,%edi
	addl %edi,%esi
	movl 44(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,56(%esp)
	movl %ecx,52(%esp)
	movl %eax,48(%esp)
	call printf
Ljoin_l72:
	movl 56(%esp),%edx
	movl 52(%esp),%ecx
	movl 48(%esp),%eax
	jmp Ljoin_l74
Ljoin_l74:
	leal numbers,%edi
	movl $16,%esi
	addl %esi,%edi
	movl (%edi),%edi
	cmpl %edi,%ecx
	je Ljoin_l68
Ljoin_l81:
	jmp Ljoin_l69
Ljoin_l68:
	leal ok,%edi
	leal 64(%esp), %esi
	movl %edi,60(%esp)
	movl $-64,%edi
	addl %edi,%esi
	movl 60(%esp),%edi
	movl %edi,(%esi)
	leal 64(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal numbers,%edi
	movl $16,%esi
	addl %esi,%edi
	leal 64(%esp), %esi
	movl $-56,%ecx
	addl %ecx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,56(%esp)
	movl %eax,48(%esp)
	call printf
Ljoin_l67:
	movl 56(%esp),%edx
	movl 48(%esp),%eax
	jmp Ljoin_l69
Ljoin_l69:
	leal numbers,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	cmpl %edi,%eax
	je Ljoin_l63
Ljoin_l82:
	jmp Ljoin_l64
Ljoin_l63:
	leal ok,%edi
	leal 64(%esp), %esi
	movl $-64,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal 64(%esp), %edi
	movl $-60,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal numbers,%edi
	movl $12,%esi
	addl %esi,%edi
	leal 64(%esp), %esi
	movl $-56,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	movl %edx,56(%esp)
	call printf
Ljoin_l62:
	movl 56(%esp),%edx
	jmp Ljoin_l64
Ljoin_l64:
	leal 64(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl 28(%esp),%esi
	movl 16(%esp),%edi
	leal 72(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l83:
.long 0
.section .pcmap
.long Ljoin_l72
.long Lframe_l84
.section .pcmap_data
Lframe_l84:
.long 0xffffffc0
.long 0x8000000c
.long 0xfffffff8
.long Lstackdata_l83
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0xfffffff4
.long 0xfffffff0
.long 0
.section .pcmap
.long Ljoin_l67
.long Lframe_l85
.section .pcmap_data
Lframe_l85:
.long 0xffffffc0
.long 0x8000000c
.long 0xfffffff8
.long Lstackdata_l83
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0xfffffff0
.long 0
.section .pcmap
.long Ljoin_l62
.long Lframe_l86
.section .pcmap_data
Lframe_l86:
.long 0xffffffc0
.long 0x8000000c
.long 0xfffffff8
.long Lstackdata_l83
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
main:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 4(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l89:
Lproc_body_start_l88:
	leal -20(%esp), %esp
	leal numbers,%ecx
	movl (%ecx),%eax
	leal numbers,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 24(%esp), %edx
	movl %edi,20(%esp)
	movl $-24,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	leal numbers,%edi
	movl $8,%ecx
	addl %ecx,%edi
	leal 24(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal numbers,%edi
	movl $12,%ecx
	addl %ecx,%edi
	leal 24(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal numbers,%edi
	movl $16,%ecx
	addl %ecx,%edi
	leal 24(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal numbers,%edi
	movl $20,%ecx
	addl %ecx,%edi
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call f
Ljoin_l96:
	leal -8(%esp), %esp
	leal numbers,%edi
	movl $20,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal numbers,%edi
	movl $16,%ecx
	addl %ecx,%edi
	leal 12(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal numbers,%edi
	movl $12,%ecx
	addl %ecx,%edi
	leal 12(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call g
Ljoin_l93:
	movl $0,%eax
	leal 4(%esp), %edx
	leal 4(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl (%esp),%edi
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
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
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
.long 8
.long 2
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffffc
.long 0
.long 0
.long 0
.section .text

.globl addpoint
.globl canonrect
.globl makepoint
.globl makerect
.globl ptinrect
.globl y
.globl odd
.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
addpoint:
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 16(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 16(%esp), %eax
	movl %edx,(%esp)
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l10:
Lproc_body_start_l9:
	movl (%ecx),%eax
	movl %ecx,4(%esp)
	movl (%edx),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	movl %edx,8(%esp)
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%ecx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	addl %eax,%edx
	movl (%edx),%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %ecx,(%edx)
	movl 4(%esp),%edx
	movl (%edx),%ecx
	movl $4,%eax
	addl %eax,%edx
	movl (%edx),%edx
	movl (%esp),%eax
	movl %ecx,(%eax)
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
L.1:
	leal 16(%esp), %edx
	leal 16(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .text
canonrect:
	leal -64(%esp), %esp
	leal 64(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 64(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l22:
Lproc_body_start_l21:
	movl (%ecx),%eax
	movl %edx,(%esp)
	movl $8,%edx
	movl %edx,4(%esp)
	movl %ecx,%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	cmpl %edx,%eax
	jge Ljoin_l30
Ljoin_l31:
	movl 8(%esp),%ecx
	movl (%ecx),%edx
	jmp L.12
Ljoin_l30:
	jmp L.11
L.11:
	movl $8,%edx
	movl 8(%esp),%ecx
	movl %ecx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	jmp L.12
L.12:
	leal 64(%esp), %eax
	movl %edx,12(%esp)
	movl $-16,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	movl $4,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	movl %edx,16(%esp)
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl 16(%esp),%eax
	cmpl %edx,%eax
	jge Ljoin_l28
Ljoin_l29:
	movl $4,%eax
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%edx
	jmp L.16
Ljoin_l28:
	jmp L.15
L.15:
	movl $12,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	jmp L.16
L.16:
	leal 64(%esp), %eax
	movl %edx,20(%esp)
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 20(%esp),%edx
	movl %edx,(%eax)
	movl (%ecx),%edx
	movl $8,%eax
	movl %edx,24(%esp)
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl 24(%esp),%eax
	cmpl %edx,%eax
	jle Ljoin_l26
Ljoin_l27:
	movl (%ecx),%edx
	jmp L.20
Ljoin_l26:
	jmp L.19
L.19:
	movl $8,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	jmp L.20
L.20:
	leal 64(%esp), %eax
	movl %edx,28(%esp)
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 28(%esp),%edx
	movl %edx,(%eax)
	movl $4,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	movl %edx,32(%esp)
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%edx
	movl 32(%esp),%eax
	cmpl %edx,%eax
	jle Ljoin_l24
Ljoin_l25:
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%edx
	jmp L.25
Ljoin_l24:
	jmp L.24
L.24:
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	jmp L.25
L.25:
	leal 64(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal 64(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 64(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%esp),%eax
	movl %edx,(%eax)
	movl $4,%edx
	movl %edx,36(%esp)
	movl %eax,%edx
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	leal 64(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 64(%esp), %ecx
	movl %edx,44(%esp)
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %edx,40(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl $12,%edx
	addl %edx,%eax
	movl 40(%esp),%edx
	movl %edx,(%eax)
L.8:
	leal 64(%esp), %edx
	leal 64(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %esp
	ret
.section .text
makepoint:
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 16(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	leal 16(%esp), %eax
	movl %edx,(%esp)
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
Linitialize_continuations_l42:
Lproc_body_start_l41:
	leal 16(%esp), %eax
	movl %edx,4(%esp)
	movl $-8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 16(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 16(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%esp),%eax
	movl %edx,(%eax)
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
L.37:
	leal 16(%esp), %edx
	leal 16(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 16(%esp), %esp
	ret
.section .text
makerect:
	leal -52(%esp), %esp
	leal 52(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl %eax,8(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
Linitialize_continuations_l54:
Lproc_body_start_l53:
	movl (%ecx),%edx
	movl %edi,12(%esp)
	movl $4,%edi
	addl %edi,%ecx
	movl (%ecx),%edi
	leal 52(%esp), %ecx
	movl %edi,16(%esp)
	movl $-32,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	leal 52(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl 16(%esp),%ecx
	movl %ecx,(%edi)
	movl (%eax),%edi
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 52(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	movl $12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 52(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	movl (%edi),%edi
	leal 52(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 52(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 52(%esp), %edi
	movl $-32,%eax
	addl %eax,%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	leal 52(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 52(%esp), %edi
	movl $-16,%ecx
	addl %ecx,%edi
	movl $12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 52(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	movl 8(%esp),%eax
	movl %eax,(%edi)
	leal 52(%esp), %edi
	movl $-16,%eax
	addl %eax,%edi
	leal 52(%esp), %eax
	movl $-48,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call canonrect
Ljoin_l58:
L.43:
	leal 52(%esp), %edx
	leal 52(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	leal 52(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l65:
.long 2
.long 0xffffffe0
.long 0xfffffff0
.section .pcmap
.long Ljoin_l58
.long Lframe_l66
.section .pcmap_data
Lframe_l66:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l65
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffd8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
ptinrect:
	leal -24(%esp), %esp
	leal 24(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 24(%esp), %ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l69:
Lproc_body_start_l68:
	movl (%edx),%eax
	movl %edx,(%esp)
	movl (%ecx),%edx
	cmpl %edx,%eax
	jl Ljoin_l78
Ljoin_l79:
	movl $8,%edx
	movl %edx,4(%esp)
	movl %ecx,%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	cmpl %edx,%eax
	jge Ljoin_l76
Ljoin_l77:
	movl $4,%edx
	movl (%esp),%ecx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %edx,12(%esp)
	movl 8(%esp),%eax
	movl %eax,%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 16(%esp),%ecx
	cmpl %edx,%ecx
	jl Ljoin_l74
Ljoin_l75:
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jge Ljoin_l72
Ljoin_l73:
	movl $1,%eax
	jmp L.53
Ljoin_l72:
	jmp L.52
Ljoin_l74:
	jmp L.52
Ljoin_l76:
	jmp L.52
Ljoin_l78:
	jmp L.52
L.52:
	movl $0,%eax
	jmp L.53
L.53:
	leal 24(%esp), %edx
	leal 24(%esp), %ecx
	movl %edx,20(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
.section .text
.section .data
y:
.byte 97
.byte 98
.byte 0
.section .text
odd:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l90:
Lproc_body_start_l89:
	movsbl (%ecx),%eax
	leal 16(%esp), %edx
	movl %edi,8(%esp)
	movl $-4,%edi
	addl %edi,%edx
	movb %al,(%edx)
	movl $1,%edi
	movl %ecx,%edx
	addl %edi,%edx
	movsbl (%edx),%eax
	movl $2,%edi
	addl %edi,%ecx
	movsbl (%ecx),%edi
	leal 16(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl $1,%edx
	addl %edx,%ecx
	movb %al,(%ecx)
	leal 16(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl $2,%edx
	addl %edx,%ecx
	movl %edi,%eax
	movb %al,(%ecx)
	leal i_61,%edi
	leal 16(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 16(%esp), %edi
	movl $-4,%eax
	addl %eax,%edi
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l95:
	movl $0,%eax
	leal 16(%esp), %edx
	leal 16(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l102:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l95
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l102
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
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
.section .data
.align 4
i_66:
.long 0
.long 0
.align 4
i_67:
.long 0x140
.long 0x140
.align 4
i_68:
.long 0xffffffff
.long 0xffffffff
.long 1
.long 1
.long 20
.long 0x12c
.long 0x1f4
.long 0x190
.section .text
main:
	leal -208(%esp), %esp
Linitialize_continuations_l106:
Lproc_body_start_l105:
	leal i_66,%ecx
	movl (%ecx),%eax
	leal i_66,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 208(%esp), %edx
	movl %edi,20(%esp)
	movl $-92,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal 208(%esp), %edi
	movl $-92,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	leal i_67,%edi
	movl (%edi),%eax
	leal i_67,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 208(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 208(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal i_68,%edi
	movl (%edi),%eax
	leal i_68,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 208(%esp), %ecx
	movl $-148,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 208(%esp), %ecx
	movl $-148,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal i_68,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal i_68,%edi
	movl $12,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 208(%esp), %ecx
	movl $-148,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 208(%esp), %ecx
	movl $-148,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal i_68,%edi
	movl $16,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal i_68,%edi
	movl $20,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 208(%esp), %ecx
	movl $-148,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 208(%esp), %ecx
	movl $-148,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal i_68,%edi
	movl $24,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal i_68,%edi
	movl $28,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 208(%esp), %ecx
	movl $-148,%edx
	addl %edx,%ecx
	movl $24,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 208(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl $28,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	movl $-10,%edi
	leal 208(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	leal 208(%esp), %ecx
	movl $-208,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 208(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %eax
	movl $-200,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call makepoint
Ljoin_l148:
	leal 208(%esp), %edi
	movl $-84,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 208(%esp), %edi
	movl $-84,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 208(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 208(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %edi
	movl $-68,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-208,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %edi
	movl $-60,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %edi
	movl $-76,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-200,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call addpoint
Ljoin_l145:
	movl $10,%edi
	leal 208(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	leal 208(%esp), %ecx
	movl $-208,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 208(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %eax
	movl $-200,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call makepoint
Ljoin_l142:
	leal 208(%esp), %edi
	movl $-92,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 208(%esp), %edi
	movl $-92,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	leal 208(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 208(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %edi
	movl $-44,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-208,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %edi
	movl $-36,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-200,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call addpoint
Ljoin_l139:
	leal 208(%esp), %edi
	movl $-116,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-208,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %edi
	movl $-68,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %edi
	movl $-44,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-200,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call makerect
Ljoin_l136:
	movl $0,%edi
	jmp L.72
L.72:
	movl $4,%ecx
	cmpl %ecx,%edi
	jb Ljoin_l115
Ljoin_l116:
	leal y,%edi
	movsbl (%edi),%eax
	leal 208(%esp), %edi
	movl $-4,%ecx
	addl %ecx,%edi
	movb %al,(%edi)
	leal y,%edi
	movl $1,%ecx
	addl %ecx,%edi
	movsbl (%edi),%eax
	leal y,%edi
	movl $2,%ecx
	addl %ecx,%edi
	movsbl (%edi),%edi
	leal 208(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl $1,%edx
	addl %edx,%ecx
	movb %al,(%ecx)
	leal 208(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl $2,%edx
	addl %edx,%ecx
	movl %edi,%eax
	movb %al,(%ecx)
	leal 208(%esp), %edi
	movl $-4,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-208,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call odd
Ljoin_l114:
	movl $0,%edi
	leal 208(%esp), %eax
	movl $-208,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call exit
Ljoin_l111:
	movl $0,%eax
	leal 208(%esp), %edx
	leal 208(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%edi
	leal 208(%esp), %esp
	ret
Ljoin_l115:
	jmp L.69
L.69:
	movl $3,%ecx
	movl %edi,%eax
	shll %cl, %eax
	leal 208(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	leal 208(%esp), %edx
	movl %edi,24(%esp)
	movl $-148,%edi
	addl %edi,%edx
	movl %eax,%edi
	addl %edx,%edi
	movl (%edi),%edi
	leal 208(%esp), %edx
	movl %edi,28(%esp)
	movl $-148,%edi
	addl %edi,%edx
	movl $4,%edi
	addl %edi,%edx
	addl %edx,%eax
	leal 208(%esp), %edi
	movl $-200,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	leal 208(%esp), %edi
	movl $-204,%eax
	addl %eax,%edi
	movl 28(%esp),%eax
	movl %eax,(%edi)
	leal 208(%esp), %edi
	movl $-208,%eax
	addl %eax,%edi
	movl %ecx,(%edi)
	call makepoint
Ljoin_l133:
	leal i_73,%edi
	movl $3,%ecx
	movl 24(%esp),%eax
	movl %eax,%edx
	shll %cl, %edx
	leal 208(%esp), %ecx
	movl %edi,32(%esp)
	movl $-148,%edi
	addl %edi,%ecx
	addl %ecx,%edx
	movl (%edx),%edi
	leal 208(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 208(%esp), %edx
	movl %edi,36(%esp)
	movl $-200,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	leal 208(%esp), %edi
	movl $-204,%ecx
	addl %ecx,%edi
	movl 36(%esp),%ecx
	movl %ecx,(%edi)
	leal 208(%esp), %edi
	movl $-208,%ecx
	addl %ecx,%edi
	movl 32(%esp),%ecx
	movl %ecx,(%edi)
	call printf
Ljoin_l130:
	leal 208(%esp), %edi
	movl $-100,%eax
	addl %eax,%edi
	movl (%edi),%edi
	leal 208(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 208(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 208(%esp), %edi
	movl $-28,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 208(%esp), %edi
	movl $-116,%eax
	addl %eax,%edi
	movl (%edi),%edi
	leal 208(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 208(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 208(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 208(%esp), %edi
	movl $-116,%eax
	addl %eax,%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	leal 208(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 208(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 208(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl $12,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 208(%esp), %edi
	movl $-28,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-208,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 208(%esp), %edi
	movl $-20,%eax
	addl %eax,%edi
	leal 208(%esp), %eax
	movl $-204,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call ptinrect
Ljoin_l127:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l123
Ljoin_l124:
	leal i_78,%edi
	leal 208(%esp), %eax
	movl $-208,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l122:
	jmp L.76
Ljoin_l123:
	jmp L.76
L.76:
	leal i_79,%edi
	leal 208(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 208(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 208(%esp), %edx
	movl %edi,40(%esp)
	movl $-116,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edi
	leal 208(%esp), %edx
	movl %edi,44(%esp)
	movl $-116,%edi
	addl %edi,%edx
	movl $12,%edi
	addl %edi,%edx
	leal 208(%esp), %edi
	movl %edi,48(%esp)
	movl $-192,%edi
	movl %edi,52(%esp)
	movl 48(%esp),%edi
	movl %esi,56(%esp)
	movl 52(%esp),%esi
	addl %esi,%edi
	movl (%edx),%esi
	movl %esi,(%edi)
	leal 208(%esp), %edi
	movl $-196,%esi
	addl %esi,%edi
	movl 44(%esp),%esi
	movl %esi,(%edi)
	leal 208(%esp), %edi
	movl $-200,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 208(%esp), %edi
	movl $-204,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 208(%esp), %edi
	movl $-208,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	call printf
Ljoin_l119:
L.70:
	movl $1,%edi
	movl 24(%esp),%esi
	addl %edi,%esi
	movl %esi,%edi
	movl 56(%esp),%esi
	jmp L.72
.section .pcmap_data
Lstackdata_l155:
.long 14
.long 0xffffff6c
.long 0xffffff8c
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffd4
.long 0xffffffdc
.long 0xffffffe4
.long 0xffffffec
.long 0xfffffffc
.section .pcmap
.long Ljoin_l148
.long Lframe_l156
.section .pcmap_data
Lframe_l156:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l145
.long Lframe_l157
.section .pcmap_data
Lframe_l157:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l142
.long Lframe_l158
.section .pcmap_data
Lframe_l158:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l139
.long Lframe_l159
.section .pcmap_data
Lframe_l159:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l136
.long Lframe_l160
.section .pcmap_data
Lframe_l160:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l114
.long Lframe_l161
.section .pcmap_data
Lframe_l161:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l111
.long Lframe_l162
.section .pcmap_data
Lframe_l162:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l133
.long Lframe_l163
.section .pcmap_data
Lframe_l163:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0xffffff48
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l130
.long Lframe_l164
.section .pcmap_data
Lframe_l164:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0xffffff48
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l127
.long Lframe_l165
.section .pcmap_data
Lframe_l165:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0xffffff48
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l122
.long Lframe_l166
.section .pcmap_data
Lframe_l166:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffff44
.long 0xffffff48
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l119
.long Lframe_l167
.section .pcmap_data
Lframe_l167:
.long 0xffffff30
.long 0x80000004
.long 0x80000000
.long Lstackdata_l155
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffff68
.long 0x4000000b
.long 0xffffff44
.long 0xffffff48
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
.section .data
i_79:
.byte 119
.byte 105
.byte 116
.byte 104
.byte 105
.byte 110
.byte 32
.byte 91
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 59
.byte 32
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 93
.byte 10
.byte 0
i_78:
.byte 110
.byte 111
.byte 116
.byte 32
.byte 0
i_73:
.byte 40
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 41
.byte 32
.byte 105
.byte 115
.byte 32
.byte 0
i_61:
.byte 37
.byte 115
.byte 10
.byte 0

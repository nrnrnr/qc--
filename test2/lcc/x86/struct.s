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
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 16(%esp), %edx
	movl %ecx,(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l10:
Lproc_body_start_l9:
	movl (%eax),%edx
	movl %eax,4(%esp)
	movl (%ecx),%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %edx,(%eax)
	movl $4,%edx
	movl %ecx,8(%esp)
	movl %eax,%ecx
	addl %edx,%ecx
	movl (%ecx),%eax
	movl %ebx,12(%esp)
	movl 8(%esp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %edx,%eax
	movl %eax,(%ecx)
	movl 4(%esp),%eax
	movl (%eax),%ecx
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl (%esp),%eax
	movl %ecx,(%eax)
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
L.1:
	leal 16(%esp), %eax
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebx
	leal 16(%esp), %esp
	ret
.section .text
canonrect:
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 28(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
Linitialize_continuations_l22:
Lproc_body_start_l21:
	movl (%eax),%edx
	movl %ecx,(%esp)
	movl $8,%ecx
	movl %ebx,4(%esp)
	movl %eax,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	cmpl %ecx,%edx
	jge Ljoin_l30
Ljoin_l31:
	movl (%eax),%ecx
	jmp L.12
Ljoin_l30:
	jmp L.11
L.11:
	movl $8,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.12
L.12:
	leal 28(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	movl %eax,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	cmpl %edx,%ecx
	jge Ljoin_l28
Ljoin_l29:
	movl $4,%edx
	movl %eax,%ebx
	addl %edx,%ebx
	movl (%ebx),%ecx
	jmp L.16
Ljoin_l28:
	jmp L.15
L.15:
	movl $12,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	jmp L.16
L.16:
	leal 28(%esp), %ebx
	movl $-16,%edx
	addl %edx,%ebx
	movl $4,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl (%eax),%ecx
	movl $8,%ebx
	movl %eax,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	cmpl %ebx,%ecx
	jle Ljoin_l26
Ljoin_l27:
	movl (%eax),%ecx
	jmp L.20
Ljoin_l26:
	jmp L.19
L.19:
	movl $8,%ecx
	movl %eax,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	jmp L.20
L.20:
	leal 28(%esp), %ebx
	movl $-16,%edx
	addl %edx,%ebx
	movl $8,%edx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $4,%ecx
	movl %eax,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $12,%ebx
	movl %eax,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	cmpl %ebx,%ecx
	jle Ljoin_l24
Ljoin_l25:
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%ecx
	jmp L.25
Ljoin_l24:
	jmp L.24
L.24:
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp L.25
L.25:
	leal 28(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $12,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
	leal 28(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 28(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl (%esp),%eax
	movl %ecx,(%eax)
	movl $4,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	leal 28(%esp), %edx
	movl $-16,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	leal 28(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %ebp,8(%esp)
	movl %eax,%ebp
	addl %edx,%ebp
	movl %ebx,(%ebp)
	movl $12,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
L.8:
	leal 28(%esp), %eax
	leal 28(%esp), %ecx
	movl $0,%ebx
	addl %ebx,%ecx
	movl (%eax),%ebx
	movl %ebx,(%ecx)
	movl 4(%esp),%ebx
	movl 8(%esp),%ebp
	leal 28(%esp), %esp
	ret
.section .text
makepoint:
	leal -16(%esp), %esp
	leal 16(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 16(%esp), %edx
	movl %ecx,(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
Linitialize_continuations_l42:
Lproc_body_start_l41:
	leal 16(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 16(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 16(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl (%esp),%eax
	movl %ecx,(%eax)
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
L.37:
	leal 16(%esp), %eax
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 16(%esp), %esp
	ret
.section .text
makerect:
	leal -56(%esp), %esp
	leal 56(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 56(%esp), %eax
	movl %ecx,8(%esp)
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l54:
Lproc_body_start_l53:
	movl (%edx),%eax
	movl %edx,12(%esp)
	movl $4,%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 56(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-32,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 16(%esp),%eax
	movl (%eax),%edx
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %eax
	movl $-32,%ebx
	addl %ebx,%eax
	movl $8,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 56(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $8,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	leal 56(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call canonrect
Ljoin_l58:
L.43:
	leal 56(%esp), %eax
	leal 56(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	leal 56(%esp), %esp
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
.long 0xffffffc8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l65
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
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
.long 0x80000000
.section .text
ptinrect:
	leal -8(%esp), %esp
	leal 8(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 8(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
Linitialize_continuations_l69:
Lproc_body_start_l68:
	movl (%ecx),%edx
	movl %ecx,(%esp)
	movl (%eax),%ecx
	cmpl %ecx,%edx
	jl Ljoin_l78
Ljoin_l79:
	movl $8,%ecx
	movl %ebx,4(%esp)
	movl %eax,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	cmpl %ecx,%edx
	jge Ljoin_l76
Ljoin_l77:
	movl $4,%ecx
	movl (%esp),%edx
	addl %ecx,%edx
	movl (%edx),%ebx
	movl %eax,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%ebx
	jl Ljoin_l74
Ljoin_l75:
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	cmpl %ecx,%ebx
	jge Ljoin_l72
Ljoin_l73:
	movl $1,%ecx
	jmp L.53
Ljoin_l72:
	jmp L.52
Ljoin_l74:
	jmp L.52
Ljoin_l76:
	jmp L.52
Ljoin_l78:
	jmp Ljoin_l83
Ljoin_l83:
	movl %ebx,4(%esp)
	jmp L.52
L.52:
	movl $0,%ecx
	jmp L.53
L.53:
	movl %ecx,%eax
	leal 8(%esp), %ecx
	leal 8(%esp), %ebx
	movl $0,%edx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .text
.section .data
y:
.byte 97
.byte 98
.byte 0
.section .text
odd:
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
Linitialize_continuations_l91:
Lproc_body_start_l90:
	movsbl (%edx),%eax
	leal 24(%esp), %ecx
	movl %edx,8(%esp)
	movl $-4,%edx
	addl %edx,%ecx
	movb %al,(%ecx)
	movl $1,%eax
	movl 8(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movsbl (%edx),%eax
	movl $2,%edx
	addl %edx,%ecx
	movsbl (%ecx),%edx
	leal 24(%esp), %ecx
	movl %ebx,12(%esp)
	movl $-4,%ebx
	addl %ebx,%ecx
	movl $1,%ebx
	addl %ebx,%ecx
	movb %al,(%ecx)
	leal 24(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $2,%ecx
	addl %ecx,%eax
	movl %eax,16(%esp)
	movl %edx,%eax
	movl 16(%esp),%edx
	movb %al,(%edx)
	leal i_61,%eax
	leal 24(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 24(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	leal 24(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l96:
	movl $0,%eax
	leal 24(%esp), %ecx
	leal 24(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 12(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l103:
.long 1
.long 0xfffffffc
.section .pcmap
.long Ljoin_l96
.long Lframe_l104
.section .pcmap_data
Lframe_l104:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l103
.long 0x80000008
.long 0x80000003
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
	leal -192(%esp), %esp
Linitialize_continuations_l107:
Lproc_body_start_l106:
	leal i_66,%ecx
	movl (%ecx),%eax
	leal i_66,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-92,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal i_67,%eax
	movl (%eax),%eax
	leal i_67,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 192(%esp), %edx
	movl $-84,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 192(%esp), %eax
	movl $-84,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal i_68,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-148,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal i_68,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal i_68,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 192(%esp), %edx
	movl $-148,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 192(%esp), %eax
	movl $-148,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal i_68,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-148,%ebx
	addl %ebx,%ecx
	movl $16,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal i_68,%eax
	movl $24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal i_68,%edx
	movl $28,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 192(%esp), %edx
	movl $-148,%ebx
	addl %ebx,%edx
	movl $24,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 192(%esp), %eax
	movl $-148,%edx
	addl %edx,%eax
	movl $28,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $-10,%eax
	leal 192(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	leal 192(%esp), %edx
	movl $-192,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 192(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call makepoint
Ljoin_l149:
	leal 192(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-60,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-68,%edx
	addl %edx,%eax
	leal 192(%esp), %edx
	movl $-192,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 192(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	leal 192(%esp), %edx
	movl $-188,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 192(%esp), %eax
	movl $-76,%edx
	addl %edx,%eax
	leal 192(%esp), %edx
	movl $-184,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call addpoint
Ljoin_l146:
	movl $10,%eax
	leal 192(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	leal 192(%esp), %edx
	movl $-192,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal 192(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call makepoint
Ljoin_l143:
	leal 192(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-92,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-36,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	leal 192(%esp), %edx
	movl $-192,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 192(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	leal 192(%esp), %edx
	movl $-188,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 192(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	leal 192(%esp), %edx
	movl $-184,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call addpoint
Ljoin_l140:
	leal 192(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	leal 192(%esp), %ecx
	movl $-192,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	leal 192(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	leal 192(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call makerect
Ljoin_l137:
	movl $0,%eax
	jmp L.72
L.72:
	movl $4,%ecx
	cmpl %ecx,%eax
	jb Ljoin_l116
Ljoin_l117:
	leal y,%ecx
	movsbl (%ecx),%eax
	leal 192(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movb %al,(%ecx)
	leal y,%eax
	movl $1,%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	leal y,%ecx
	movl $2,%edx
	addl %edx,%ecx
	movsbl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-4,%ebx
	addl %ebx,%ecx
	movl $1,%ebx
	addl %ebx,%ecx
	movb %al,(%ecx)
	leal 192(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	movl $2,%ecx
	addl %ecx,%eax
	movl %eax,24(%esp)
	movl %edx,%eax
	movl 24(%esp),%edx
	movb %al,(%edx)
	leal 192(%esp), %eax
	movl $-4,%edx
	addl %edx,%eax
	leal 192(%esp), %edx
	movl $-192,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call odd
Ljoin_l115:
	movl $0,%eax
	leal 192(%esp), %ecx
	movl $-192,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call exit
Ljoin_l112:
	movl $0,%eax
	leal 192(%esp), %ecx
	leal 192(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 20(%esp),%ebx
	leal 192(%esp), %esp
	ret
Ljoin_l116:
	jmp L.69
L.69:
	movl $3,%ecx
	movl %eax,%ebx
	shll %cl, %ebx
	leal 192(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	leal 192(%esp), %edx
	movl %ebp,28(%esp)
	movl $-148,%ebp
	addl %ebp,%edx
	movl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	leal 192(%esp), %ebp
	movl %esi,32(%esp)
	movl $-148,%esi
	addl %esi,%ebp
	movl $4,%esi
	addl %esi,%ebp
	addl %ebp,%ebx
	leal 192(%esp), %ebp
	movl $-184,%esi
	addl %esi,%ebp
	movl (%ebx),%esi
	movl %esi,(%ebp)
	leal 192(%esp), %ebp
	movl $-188,%esi
	addl %esi,%ebp
	movl %edx,(%ebp)
	leal 192(%esp), %edx
	movl $-192,%ebp
	addl %ebp,%edx
	movl %ecx,(%edx)
	movl %eax,36(%esp)
	call makepoint
Ljoin_l134:
	leal i_73,%eax
	movl $3,%ecx
	movl 36(%esp),%edx
	movl %edx,%ebp
	shll %cl, %ebp
	leal 192(%esp), %ecx
	movl $-148,%esi
	addl %esi,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	leal 192(%esp), %ebp
	movl $-100,%esi
	addl %esi,%ebp
	movl $4,%esi
	addl %esi,%ebp
	leal 192(%esp), %esi
	movl $-184,%ebx
	addl %ebx,%esi
	movl (%ebp),%ebx
	movl %ebx,(%esi)
	leal 192(%esp), %ebx
	movl $-188,%esi
	addl %esi,%ebx
	movl %ecx,(%ebx)
	leal 192(%esp), %ecx
	movl $-192,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l131:
	leal 192(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-28,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-116,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 192(%esp), %edx
	movl $-116,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 192(%esp), %edx
	movl $-20,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 192(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-20,%ebx
	addl %ebx,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	leal 192(%esp), %edx
	movl $-192,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 192(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	leal 192(%esp), %edx
	movl $-188,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call ptinrect
Ljoin_l128:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l124
Ljoin_l125:
	leal i_78,%eax
	leal 192(%esp), %ecx
	movl $-192,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l123:
	jmp L.76
Ljoin_l124:
	jmp L.76
L.76:
	leal i_79,%eax
	leal 192(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-116,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	leal 192(%esp), %ecx
	movl $-116,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%esi
	leal 192(%esp), %ecx
	movl $-116,%ebp
	addl %ebp,%ecx
	movl $12,%ebp
	addl %ebp,%ecx
	leal 192(%esp), %ebp
	movl %edi,40(%esp)
	movl $-176,%edi
	addl %edi,%ebp
	movl (%ecx),%edi
	movl %edi,(%ebp)
	leal 192(%esp), %ebp
	movl $-180,%edi
	addl %edi,%ebp
	movl %esi,(%ebp)
	leal 192(%esp), %ebp
	movl $-184,%esi
	addl %esi,%ebp
	movl %ebx,(%ebp)
	leal 192(%esp), %ebx
	movl $-188,%ebp
	addl %ebp,%ebx
	movl %edx,(%ebx)
	leal 192(%esp), %edx
	movl $-192,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l120:
L.70:
	movl $1,%eax
	movl 36(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl 40(%esp),%edi
	movl 32(%esp),%esi
	movl 28(%esp),%ebp
	jmp L.72
.section .pcmap_data
Lstackdata_l156:
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
.long Ljoin_l149
.long Lframe_l157
.section .pcmap_data
Lframe_l157:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
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
.long Ljoin_l146
.long Lframe_l158
.section .pcmap_data
Lframe_l158:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
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
.long Ljoin_l143
.long Lframe_l159
.section .pcmap_data
Lframe_l159:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
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
.long Ljoin_l140
.long Lframe_l160
.section .pcmap_data
Lframe_l160:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
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
.long Ljoin_l137
.long Lframe_l161
.section .pcmap_data
Lframe_l161:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
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
.long Ljoin_l115
.long Lframe_l162
.section .pcmap_data
Lframe_l162:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
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
.long Ljoin_l112
.long Lframe_l163
.section .pcmap_data
Lframe_l163:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
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
.long Ljoin_l134
.long Lframe_l164
.section .pcmap_data
Lframe_l164:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0x4000000b
.long 0xffffff64
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l131
.long Lframe_l165
.section .pcmap_data
Lframe_l165:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0x4000000b
.long 0xffffff64
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l128
.long Lframe_l166
.section .pcmap_data
Lframe_l166:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0x4000000b
.long 0xffffff64
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l123
.long Lframe_l167
.section .pcmap_data
Lframe_l167:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0x4000000b
.long 0xffffff64
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l120
.long Lframe_l168
.section .pcmap_data
Lframe_l168:
.long 0xffffff40
.long 0x80000004
.long 0x80000000
.long Lstackdata_l156
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff54
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0xffffff68
.long 0xffffff64
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

.globl addpoint
.globl canonrect
.globl makepoint
.globl makerect
.globl ptinrect
.globl y
.globl odd
.globl main
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
addpoint:
	leal -12(%esp), %esp
	movl $4,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	leal 12(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	movl %edx,(%esp)
	leal 12(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	nop
initialize_continuations_l3:
	movl (%eax),%edx
	movl %eax,4(%esp)
	movl (%ecx),%eax
	addl %edx,%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl %ecx,%edx
	addl %eax,%edx
	movl %ecx,8(%esp)
	movl 4(%esp),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%edx),%ecx
	addl %eax,%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%ecx
	movl (%ecx),%edx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl (%esp),%ecx
	movl %edx,(%ecx)
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
L.1:
	nop
	leal 12(%esp), %eax
	movl $0,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
stackdata_l12:
.long 0
.section .text
canonrect:
	leal -32(%esp), %esp
	movl $4,%edx
	leal 32(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	leal 32(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	nop
initialize_continuations_l15:
	movl (%ecx),%eax
	movl %edx,(%esp)
	movl $8,%edx
	movl %ebx,4(%esp)
	movl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	cmpl %edx,%eax
	jge join_l23
join_l24:
	movl (%ecx),%eax
	jmp L.12
join_l23:
	jmp L.11
L.11:
	movl $8,%eax
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp L.12
L.12:
	movl $-16,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $12,%ebx
	movl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	cmpl %ebx,%eax
	jge join_l21
join_l22:
	movl $4,%ebx
	movl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%eax
	jmp L.16
join_l21:
	jmp L.15
L.15:
	movl $12,%eax
	movl %ecx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	jmp L.16
L.16:
	movl $4,%edx
	movl $-16,%ebx
	movl %ecx,8(%esp)
	leal 32(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl 8(%esp),%ecx
	movl (%ecx),%eax
	movl $8,%edx
	movl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	cmpl %edx,%eax
	jle join_l19
join_l20:
	movl (%ecx),%eax
	jmp L.20
join_l19:
	jmp L.19
L.19:
	movl $8,%eax
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp L.20
L.20:
	movl $8,%edx
	movl $-16,%ebx
	movl %ecx,8(%esp)
	leal 32(%esp), %ecx
	addl %ebx,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	movl 8(%esp),%ecx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	movl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	cmpl %edx,%eax
	jle join_l17
join_l18:
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	jmp L.25
join_l17:
	jmp L.24
L.24:
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.25
L.25:
	movl $12,%ecx
	movl $-16,%edx
	leal 32(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $-16,%eax
	leal 32(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-16,%ecx
	leal 32(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl (%esp),%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	movl $8,%ecx
	movl $-16,%ebx
	leal 32(%esp), %eax
	addl %ebx,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	movl $-16,%ebx
	movl %edx,(%esp)
	leal 32(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	movl %ebp,12(%esp)
	movl (%esp),%ebx
	movl %ebx,%ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $12,%ecx
	addl %ecx,%ebx
	movl %eax,(%ebx)
L.8:
	nop
	leal 32(%esp), %eax
	movl $0,%ebx
	leal 32(%esp), %ecx
	addl %ebx,%ecx
	movl (%eax),%ebx
	movl %ebx,(%ecx)
	movl 12(%esp),%ebp
	movl 4(%esp),%ebx
	leal 32(%esp), %esp
	ret
.section .pcmap_data
stackdata_l32:
.long 1
.long 0xfffffff0
.section .text
makepoint:
	leal -24(%esp), %esp
	movl $4,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	movl %edx,(%esp)
	leal 24(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	nop
initialize_continuations_l35:
	movl $-8,%edx
	movl %ecx,4(%esp)
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl $-8,%edx
	movl %eax,8(%esp)
	leal 24(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl $-8,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-8,%edx
	movl %ebx,12(%esp)
	leal 24(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%esp),%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	addl %eax,%ebx
	movl %ecx,(%ebx)
L.37:
	nop
	leal 24(%esp), %ecx
	movl $0,%ebx
	leal 24(%esp), %eax
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl 12(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
stackdata_l44:
.long 1
.long 0xfffffff8
.section .text
makerect:
	leal -60(%esp), %esp
	movl $4,%eax
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	movl %eax,8(%esp)
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	nop
initialize_continuations_l47:
	movl (%ecx),%eax
	movl %ecx,12(%esp)
	movl $4,%ecx
	movl %edx,16(%esp)
	movl 12(%esp),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $-32,%edx
	movl %ebx,20(%esp)
	leal 60(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-32,%ebx
	leal 60(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl 16(%esp),%ecx
	movl (%ecx),%edx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-32,%ebx
	movl %ebp,24(%esp)
	leal 60(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl $12,%edx
	movl $-32,%ebp
	leal 60(%esp), %ecx
	addl %ebp,%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-32,%eax
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-32,%edx
	leal 60(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $-16,%ebp
	leal 60(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-16,%edx
	leal 60(%esp), %ebp
	addl %edx,%ebp
	addl %eax,%ebp
	movl %ecx,(%ebp)
	movl $8,%ecx
	movl $-32,%ebp
	leal 60(%esp), %eax
	addl %ebp,%eax
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	movl $-32,%ebp
	leal 60(%esp), %edx
	addl %ebp,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	movl $-16,%ebp
	leal 60(%esp), %ebx
	addl %ebp,%ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $12,%ecx
	movl $-16,%ebx
	leal 60(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	movl $-60,%eax
	leal 60(%esp), %edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $-16,%eax
	leal 60(%esp), %edx
	addl %eax,%edx
	movl $-56,%eax
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	nop
	call canonrect
join_l51:
	nop
	nop
L.43:
	nop
	leal 60(%esp), %eax
	movl $0,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	movl 24(%esp),%ebp
	movl 20(%esp),%ebx
	leal 60(%esp), %esp
	ret
.section .pcmap_data
stackdata_l58:
.long 2
.long 0xffffffe0
.long 0xfffffff0
.section .pcmap
.long join_l51
.long frame_l59
.section .pcmap_data
frame_l59:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long stackdata_l58
.long 0x80000008
.long 0x80000005
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffdc
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
ptinrect:
	leal -8(%esp), %esp
	movl $4,%edx
	leal 8(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	leal 8(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	nop
initialize_continuations_l62:
	movl (%edx),%eax
	movl %edx,(%esp)
	movl (%ecx),%edx
	cmpl %edx,%eax
	jl join_l71
join_l72:
	movl $8,%edx
	movl %ebx,4(%esp)
	movl %ecx,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	cmpl %edx,%eax
	jge join_l69
join_l70:
	movl $4,%eax
	movl (%esp),%edx
	addl %eax,%edx
	movl (%edx),%ebx
	movl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	cmpl %eax,%ebx
	jl join_l67
join_l68:
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	cmpl %eax,%ebx
	jge join_l65
join_l66:
	movl $1,%eax
	jmp L.53
join_l65:
	jmp L.52
join_l67:
	jmp L.52
join_l69:
	jmp L.52
join_l71:
	jmp join_l76
join_l76:
	movl %ebx,4(%esp)
	jmp L.52
L.52:
	movl $0,%eax
	jmp L.53
L.53:
	nop
	leal 8(%esp), %ebx
	movl $0,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%ebx
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l81:
.long 0
.section .text
.section .data
y:
.byte 97
.byte 98
.byte 0
.section .text
odd:
	leal -24(%esp), %esp
	movl $4,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	nop
initialize_continuations_l84:
	movsbl (%ecx),%eax
	movl $-4,%edx
	movl %ecx,8(%esp)
	leal 24(%esp), %ecx
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
	movl $1,%ecx
	movl %ebx,12(%esp)
	movl $-4,%ebx
	movl %ebp,16(%esp)
	leal 24(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movb %al,(%ebp)
	movl $2,%eax
	movl $-4,%ebp
	leal 24(%esp), %ecx
	addl %ebp,%ecx
	addl %eax,%ecx
	movl %edx,%eax
	movb %al,(%ecx)
	nop
	leal i_61,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-4,%eax
	leal 24(%esp), %edx
	addl %eax,%edx
	movl $-20,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	nop
	call printf
join_l89:
	nop
	nop
	nop
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	leal 24(%esp), %ebp
	addl %edx,%ebp
	movl (%ecx),%edx
	movl %edx,(%ebp)
	movl 16(%esp),%ebp
	movl 12(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
stackdata_l96:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l89
.long frame_l97
.section .pcmap_data
frame_l97:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l96
.long 0x80000008
.long 0x80000003
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0xfffffff8
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
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
	leal -188(%esp), %esp
	nop
initialize_continuations_l100:
	leal i_66,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	leal i_66,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $-92,%edx
	movl %ebx,20(%esp)
	leal 188(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-92,%ebx
	leal 188(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	leal i_67,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	leal i_67,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $-84,%edx
	leal 188(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-84,%ebx
	leal 188(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	leal i_68,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	leal i_68,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $-148,%edx
	leal 188(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $-148,%ebx
	leal 188(%esp), %edx
	addl %ebx,%edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $8,%ecx
	leal i_68,%edx
	addl %ecx,%edx
	movl (%edx),%eax
	movl $12,%edx
	leal i_68,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl $-148,%ebx
	movl %ebp,24(%esp)
	leal 188(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $12,%eax
	movl $-148,%ebp
	leal 188(%esp), %ecx
	addl %ebp,%ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $16,%ecx
	leal i_68,%edx
	addl %ecx,%edx
	movl (%edx),%eax
	movl $20,%edx
	leal i_68,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	movl $-148,%ebp
	leal 188(%esp), %ebx
	addl %ebp,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl $20,%eax
	movl $-148,%ebx
	leal 188(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $24,%ecx
	leal i_68,%edx
	addl %ecx,%edx
	movl (%edx),%eax
	movl $28,%edx
	leal i_68,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $24,%ecx
	movl $-148,%ebx
	leal 188(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $28,%eax
	movl $-148,%ebp
	leal 188(%esp), %ecx
	addl %ebp,%ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $-10,%ecx
	nop
	movl $-76,%edx
	leal 188(%esp), %eax
	addl %edx,%eax
	movl $-188,%edx
	leal 188(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $-184,%eax
	leal 188(%esp), %ebp
	addl %eax,%ebp
	movl %ecx,(%ebp)
	movl $-180,%ebp
	leal 188(%esp), %eax
	addl %ebp,%eax
	movl %ecx,(%eax)
	nop
	call makepoint
join_l142:
	nop
	nop
	movl $-84,%eax
	leal 188(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-84,%edx
	leal 188(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $-60,%ebp
	leal 188(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-60,%edx
	leal 188(%esp), %ebp
	addl %edx,%ebp
	addl %eax,%ebp
	movl %ecx,(%ebp)
	nop
	movl $-68,%ecx
	leal 188(%esp), %ebp
	addl %ecx,%ebp
	movl $-188,%ecx
	leal 188(%esp), %eax
	addl %ecx,%eax
	movl %ebp,(%eax)
	movl $-60,%eax
	leal 188(%esp), %ebp
	addl %eax,%ebp
	movl $-184,%eax
	leal 188(%esp), %ecx
	addl %eax,%ecx
	movl %ebp,(%ecx)
	movl $-76,%ecx
	leal 188(%esp), %ebp
	addl %ecx,%ebp
	movl $-180,%ecx
	leal 188(%esp), %eax
	addl %ecx,%eax
	movl %ebp,(%eax)
	nop
	call addpoint
join_l139:
	nop
	nop
	movl $10,%eax
	nop
	movl $-52,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	movl $-188,%ecx
	leal 188(%esp), %ebp
	addl %ecx,%ebp
	movl %edx,(%ebp)
	movl $-184,%edx
	leal 188(%esp), %ebp
	addl %edx,%ebp
	movl %eax,(%ebp)
	movl $-180,%ebp
	leal 188(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	nop
	call makepoint
join_l136:
	nop
	nop
	movl $-92,%eax
	leal 188(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-92,%edx
	leal 188(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $-36,%ebp
	leal 188(%esp), %edx
	addl %ebp,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-36,%edx
	leal 188(%esp), %ebp
	addl %edx,%ebp
	addl %eax,%ebp
	movl %ecx,(%ebp)
	nop
	movl $-44,%ecx
	leal 188(%esp), %ebp
	addl %ecx,%ebp
	movl $-188,%ecx
	leal 188(%esp), %eax
	addl %ecx,%eax
	movl %ebp,(%eax)
	movl $-36,%eax
	leal 188(%esp), %ebp
	addl %eax,%ebp
	movl $-184,%eax
	leal 188(%esp), %ecx
	addl %eax,%ecx
	movl %ebp,(%ecx)
	movl $-52,%ecx
	leal 188(%esp), %ebp
	addl %ecx,%ebp
	movl $-180,%ecx
	leal 188(%esp), %eax
	addl %ecx,%eax
	movl %ebp,(%eax)
	nop
	call addpoint
join_l133:
	nop
	nop
	nop
	movl $-116,%eax
	leal 188(%esp), %ecx
	addl %eax,%ecx
	movl $-188,%eax
	leal 188(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-68,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	movl $-184,%ecx
	leal 188(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $-44,%eax
	leal 188(%esp), %edx
	addl %eax,%edx
	movl $-180,%eax
	leal 188(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	nop
	call makerect
join_l130:
	nop
	nop
	movl $0,%eax
	jmp L.72
L.72:
	movl $4,%ecx
	cmpl %ecx,%eax
	jb join_l109
join_l110:
	leal y,%ecx
	movsbl (%ecx),%eax
	movl $-4,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	movb %al,(%edx)
	movl $1,%eax
	leal y,%edx
	addl %eax,%edx
	movsbl (%edx),%eax
	movl $2,%edx
	leal y,%ecx
	addl %edx,%ecx
	movsbl (%ecx),%edx
	movl $1,%ecx
	movl $-4,%ebp
	leal 188(%esp), %ebx
	addl %ebp,%ebx
	addl %ecx,%ebx
	movb %al,(%ebx)
	movl $2,%eax
	movl $-4,%ebx
	leal 188(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl %edx,%eax
	movb %al,(%ecx)
	nop
	movl $-4,%eax
	leal 188(%esp), %ecx
	addl %eax,%ecx
	movl $-188,%eax
	leal 188(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	nop
	call odd
join_l108:
	nop
	nop
	nop
	movl $0,%eax
	movl $-188,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call exit
join_l105:
	nop
	nop
	nop
	movl $0,%eax
	leal 188(%esp), %ecx
	movl $0,%edx
	leal 188(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 24(%esp),%ebp
	movl 20(%esp),%ebx
	leal 188(%esp), %esp
	ret
join_l109:
	jmp L.69
L.69:
	movl $3,%ecx
	movl %eax,%ebp
	shll %cl, %ebp
	nop
	movl $-100,%ecx
	leal 188(%esp), %ebx
	addl %ecx,%ebx
	movl $-148,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	movl %ebp,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	movl %esi,28(%esp)
	movl $-148,%esi
	movl %edi,32(%esp)
	leal 188(%esp), %edi
	addl %esi,%edi
	addl %ecx,%edi
	addl %edi,%ebp
	movl $-180,%edi
	leal 188(%esp), %ecx
	addl %edi,%ecx
	movl (%ebp),%edi
	movl %edi,(%ecx)
	movl $-184,%ecx
	leal 188(%esp), %edi
	addl %ecx,%edi
	movl %edx,(%edi)
	movl $-188,%edx
	leal 188(%esp), %edi
	addl %edx,%edi
	movl %ebx,(%edi)
	nop
	movl %eax,36(%esp)
	call makepoint
join_l127:
	nop
	nop
	nop
	leal i_73,%eax
	movl $-148,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	movl $3,%ecx
	movl 36(%esp),%ebx
	movl %ebx,%edi
	shll %cl, %edi
	addl %edx,%edi
	movl (%edi),%edx
	movl $4,%edi
	movl $-100,%ecx
	leal 188(%esp), %ebp
	addl %ecx,%ebp
	addl %edi,%ebp
	movl $-180,%edi
	leal 188(%esp), %ecx
	addl %edi,%ecx
	movl (%ebp),%edi
	movl %edi,(%ecx)
	movl $-184,%ecx
	leal 188(%esp), %edi
	addl %ecx,%edi
	movl %edx,(%edi)
	movl $-188,%edx
	leal 188(%esp), %edi
	addl %edx,%edi
	movl %eax,(%edi)
	nop
	call printf
join_l124:
	nop
	nop
	movl $-100,%eax
	leal 188(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-100,%edx
	leal 188(%esp), %edi
	addl %edx,%edi
	addl %ecx,%edi
	movl (%edi),%ecx
	movl $-28,%edi
	leal 188(%esp), %edx
	addl %edi,%edx
	movl %eax,(%edx)
	movl $4,%eax
	movl $-28,%edx
	leal 188(%esp), %edi
	addl %edx,%edi
	addl %eax,%edi
	movl %ecx,(%edi)
	movl $-116,%ecx
	leal 188(%esp), %edi
	addl %ecx,%edi
	movl (%edi),%eax
	movl $4,%edi
	movl $-116,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	addl %edi,%edx
	movl (%edx),%edi
	movl $-20,%edx
	leal 188(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-20,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl %edi,(%edx)
	movl $8,%edx
	movl $-116,%edi
	leal 188(%esp), %eax
	addl %edi,%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	movl $-116,%edi
	leal 188(%esp), %ecx
	addl %edi,%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl $-20,%edi
	leal 188(%esp), %ebp
	addl %edi,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	movl $12,%eax
	movl $-20,%ebp
	leal 188(%esp), %ecx
	addl %ebp,%ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	nop
	movl $-28,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	movl $-188,%ecx
	leal 188(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $-20,%eax
	leal 188(%esp), %edx
	addl %eax,%edx
	movl $-184,%eax
	leal 188(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	nop
	call ptinrect
join_l121:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l117
join_l118:
	nop
	leal i_78,%eax
	movl $-188,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	nop
	call printf
join_l116:
	nop
	nop
	jmp L.76
join_l117:
	jmp L.76
L.76:
	nop
	leal i_79,%eax
	movl $-116,%ecx
	leal 188(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	movl $-116,%ebp
	leal 188(%esp), %edi
	addl %ebp,%edi
	addl %edx,%edi
	movl (%edi),%edx
	movl $8,%edi
	movl $-116,%ebp
	leal 188(%esp), %esi
	addl %ebp,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl $12,%esi
	movl $-116,%ebp
	movl %ebx,36(%esp)
	leal 188(%esp), %ebx
	addl %ebp,%ebx
	addl %esi,%ebx
	movl $-172,%esi
	leal 188(%esp), %ebp
	addl %esi,%ebp
	movl (%ebx),%esi
	movl %esi,(%ebp)
	movl $-176,%ebp
	leal 188(%esp), %esi
	addl %ebp,%esi
	movl %edi,(%esi)
	movl $-180,%esi
	leal 188(%esp), %edi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $-184,%edx
	leal 188(%esp), %edi
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $-188,%ecx
	leal 188(%esp), %edi
	addl %ecx,%edi
	movl %eax,(%edi)
	nop
	call printf
join_l113:
	nop
	nop
L.70:
	movl $1,%eax
	movl 36(%esp),%ebx
	addl %eax,%ebx
	movl %ebx,%eax
	movl 32(%esp),%edi
	movl 28(%esp),%esi
	jmp L.72
.section .pcmap_data
stackdata_l149:
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
.long join_l142
.long frame_l150
.section .pcmap_data
frame_l150:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
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
.section .pcmap
.long join_l139
.long frame_l151
.section .pcmap_data
frame_l151:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
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
.section .pcmap
.long join_l136
.long frame_l152
.section .pcmap_data
frame_l152:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
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
.section .pcmap
.long join_l133
.long frame_l153
.section .pcmap_data
frame_l153:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
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
.section .pcmap
.long join_l130
.long frame_l154
.section .pcmap_data
frame_l154:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
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
.section .pcmap
.long join_l127
.long frame_l155
.section .pcmap_data
frame_l155:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0xffffff64
.long 0xffffff68
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l124
.long frame_l156
.section .pcmap_data
frame_l156:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0xffffff64
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l121
.long frame_l157
.section .pcmap_data
frame_l157:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0xffffff64
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l116
.long frame_l158
.section .pcmap_data
frame_l158:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0xffffff64
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l113
.long frame_l159
.section .pcmap_data
frame_l159:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
.long 0x4000000a
.long 0xffffff60
.long 0x4000000b
.long 0xffffff64
.long 0xffffff68
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long join_l108
.long frame_l160
.section .pcmap_data
frame_l160:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
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
.section .pcmap
.long join_l105
.long frame_l161
.section .pcmap_data
frame_l161:
.long 0xffffff44
.long 0x80000004
.long 0x80000000
.long stackdata_l149
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffff58
.long 0x40000009
.long 0xffffff5c
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

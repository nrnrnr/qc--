.globl words
.globl wordlist
.globl x
.globl y
.globl main
.globl f
.globl g
.globl h
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .data
.align 4
words:
.long 1
.long 2
.long 3
.byte 105
.byte 102
.byte 0
.skip 3, 0
.skip 2, 0
.long 4
.long 5
.skip 4, 0
.byte 102
.byte 111
.byte 114
.skip 3, 0
.skip 2, 0
.long 6
.long 7
.long 8
.byte 101
.byte 108
.byte 115
.byte 101
.byte 0
.skip 1, 0
.skip 2, 0
.long 9
.long 10
.long 11
.byte 119
.byte 104
.byte 105
.byte 108
.byte 101
.skip 1, 0
.skip 2, 0
.long 0
.skip 8, 0
.skip 8, 0
.align 4
wordlist:
.long words
.align 4
x:
.long 1
.long 2
.long 3
.long 4
.long 0
.long 5
.long 6
.skip 12, 0
.long 7
.skip 16, 0
.align 4
y:
.long x
.long x + 0x14
.long x + 0x28
.long 0
.section .text
main:
	leal -28(%esp), %esp
initialize_continuations_l7:
proc_body_start_l6:
	movl $0,%eax
	jmp L.8
L.8:
	leal y,%edx
	movl $2,%ecx
	movl %ebx,8(%esp)
	movl %eax,%ebx
	shll %cl, %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $0,%ebx
	cmpl %ebx,%edx
	jne join_l16
join_l17:
	call f
join_l15:
	leal wordlist,%eax
	movl $-28,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	call g
join_l12:
	movl $0,%eax
	leal 28(%esp), %ecx
	movl $0,%edx
	leal 28(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 28(%esp), %esp
	ret
join_l16:
	jmp L.5
L.5:
	movl $0,%ebx
	jmp L.12
L.12:
	movl $2,%ecx
	leal y,%edx
	movl %ebp,12(%esp)
	movl %eax,%ebp
	movl %ecx,16(%esp)
	shll %cl, %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl %ebx,%ebp
	movl 16(%esp),%ecx
	shll %cl, %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $0,%ebp
	cmpl %ebp,%edx
	jne join_l21
join_l22:
	leal i_14,%edx
	movl $-28,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl %edx,(%ecx)
	movl %eax,20(%esp)
	call printf
join_l20:
L.6:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.8
join_l21:
	jmp L.9
L.9:
	movl $2,%ecx
	leal y,%ebp
	movl %eax,%edx
	movl %ecx,24(%esp)
	shll %cl, %edx
	addl %ebp,%edx
	movl (%edx),%ebp
	movl %ebx,%edx
	movl 24(%esp),%ecx
	shll %cl, %edx
	addl %ebp,%edx
	movl $-24,%ebp
	leal 28(%esp), %ecx
	addl %ebp,%ecx
	movl (%edx),%ebp
	movl %ebp,(%ecx)
	leal i_13,%ecx
	movl $-28,%ebp
	leal 28(%esp), %edx
	addl %ebp,%edx
	movl %ecx,(%edx)
	movl %eax,20(%esp)
	call printf
join_l25:
L.10:
	movl $1,%eax
	addl %eax,%ebx
	movl 12(%esp),%ebp
	movl 20(%esp),%eax
	jmp L.12
.section .pcmap_data
stackdata_l32:
.long 0
.section .pcmap
.long join_l25
.long frame_l33
.section .pcmap_data
frame_l33:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l32
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0x40000007
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long join_l20
.long frame_l34
.section .pcmap_data
frame_l34:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l32
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long join_l15
.long frame_l35
.section .pcmap_data
frame_l35:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l32
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffec
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
.section .pcmap
.long join_l12
.long frame_l36
.section .pcmap_data
frame_l36:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long stackdata_l32
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffec
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
.section .text
.section .data
.align 4
L.20:
.long i_21
.long i_22
.long i_23
.long i_24
.long 0
.section .text
f:
	leal -16(%esp), %esp
initialize_continuations_l39:
proc_body_start_l38:
	leal L.20,%edx
	jmp L.28
L.28:
	movl (%edx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne join_l42
join_l43:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	movl %ebx,8(%esp)
	leal 16(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
join_l42:
	jmp L.25
L.25:
	movl $-12,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal i_29,%eax
	movl $-16,%ecx
	movl %ebx,8(%esp)
	leal 16(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edx,12(%esp)
	call printf
join_l46:
L.26:
	movl $4,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%edx
	movl 8(%esp),%ebx
	jmp L.28
.section .pcmap_data
stackdata_l53:
.long 0
.section .pcmap
.long join_l46
.long frame_l54
.section .pcmap_data
frame_l54:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l53
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.section .text
g:
	leal -20(%esp), %esp
	movl $4,%eax
	leal 20(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l57:
proc_body_start_l56:
	jmp L.35
L.35:
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne join_l63
join_l64:
	call h
join_l62:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	movl %ebx,8(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 20(%esp), %esp
	ret
join_l63:
	jmp L.32
L.32:
	movl $0,%ecx
	jmp L.39
L.39:
	movl $3,%edx
	cmpl %edx,%ecx
	jb join_l68
join_l69:
	leal i_29,%edx
	movl $-20,%ecx
	movl %ebx,8(%esp)
	leal 20(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $12,%edx
	movl %eax,%ebx
	addl %edx,%ebx
	movl $-16,%edx
	leal 20(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	movl %eax,12(%esp)
	call printf
join_l67:
L.33:
	movl $20,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl 8(%esp),%ebx
	jmp L.35
join_l68:
	jmp L.36
L.36:
	movl $2,%edx
	movl %ebx,8(%esp)
	movl %ecx,%ebx
	movl %ecx,16(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	addl %eax,%ebx
	movl $-16,%ecx
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	leal i_40,%ecx
	movl $-20,%edx
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,12(%esp)
	call printf
join_l72:
L.37:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl 8(%esp),%ebx
	movl 12(%esp),%eax
	jmp L.39
.section .pcmap_data
stackdata_l79:
.long 0
.section .pcmap
.long join_l72
.long frame_l80
.section .pcmap_data
frame_l80:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l79
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long join_l67
.long frame_l81
.section .pcmap_data
frame_l81:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l79
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffff4
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffff8
.long 0
.section .pcmap
.long join_l62
.long frame_l82
.section .pcmap_data
frame_l82:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long stackdata_l79
.long 0x80000008
.long 0x80000002
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
.section .text
h:
	leal -40(%esp), %esp
initialize_continuations_l85:
proc_body_start_l84:
	movl $0,%edx
	jmp L.46
L.46:
	movl $5,%ecx
	cmpl %ecx,%edx
	jb join_l88
join_l89:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	movl %ebx,20(%esp)
	leal 40(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 20(%esp),%ebx
	leal 40(%esp), %esp
	ret
join_l88:
	jmp L.43
L.43:
	movl $20,%eax
	imull %edx,%eax
	leal i_47,%ecx
	movl %ebx,20(%esp)
	leal words,%ebx
	movl %ebp,24(%esp)
	movl %eax,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl $4,%ebp
	movl %esi,28(%esp)
	leal words,%esi
	addl %ebp,%esi
	movl %eax,%ebp
	addl %esi,%ebp
	movl (%ebp),%esi
	movl $8,%ebp
	movl %edi,32(%esp)
	leal words,%edi
	addl %ebp,%edi
	movl %eax,%ebp
	addl %edi,%ebp
	movl $-28,%edi
	movl %edx,36(%esp)
	leal 40(%esp), %edx
	addl %edi,%edx
	movl (%ebp),%edi
	movl %edi,(%edx)
	movl $12,%edx
	leal words,%edi
	addl %edx,%edi
	addl %edi,%eax
	movl $-24,%edi
	leal 40(%esp), %edx
	addl %edi,%edx
	movl %eax,(%edx)
	movl $-32,%eax
	leal 40(%esp), %edx
	addl %eax,%edx
	movl %esi,(%edx)
	movl $-36,%edx
	leal 40(%esp), %esi
	addl %edx,%esi
	movl %ebx,(%esi)
	movl $-40,%ebx
	leal 40(%esp), %esi
	addl %ebx,%esi
	movl %ecx,(%esi)
	call printf
join_l92:
L.44:
	movl $1,%eax
	movl 36(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%edx
	movl 32(%esp),%edi
	movl 28(%esp),%esi
	movl 24(%esp),%ebp
	movl 20(%esp),%ebx
	jmp L.46
.section .pcmap_data
stackdata_l99:
.long 0
.section .pcmap
.long join_l92
.long frame_l100
.section .pcmap_data
frame_l100:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long stackdata_l99
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffec
.long 0x40000009
.long 0xfffffff0
.long 0x4000000a
.long 0xfffffff4
.long 0x4000000b
.long 0xfffffff8
.long 0xfffffffc
.long 0
.section .text
.section .data
i_47:
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 115
.byte 10
.byte 0
i_40:
.byte 37
.byte 100
.byte 32
.byte 0
i_29:
.byte 37
.byte 115
.byte 10
.byte 0
i_24:
.byte 119
.byte 104
.byte 105
.byte 108
.byte 101
.byte 0
i_23:
.byte 101
.byte 108
.byte 115
.byte 101
.byte 0
i_22:
.byte 102
.byte 111
.byte 114
.byte 0
i_21:
.byte 105
.byte 102
.byte 0
i_14:
.byte 10
.byte 0
i_13:
.byte 32
.byte 37
.byte 100
.byte 0

.globl words
.globl wordlist
.globl x
.globl y
.globl main
.globl f
.globl g
.globl h
.globl Cmm.global_area
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
	leal -40(%esp), %esp
Linitialize_continuations_l7:
Lproc_body_start_l6:
	movl $0,%eax
	jmp L.8
L.8:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal y,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l16
Ljoin_l17:
	call f
Ljoin_l15:
	leal wordlist,%eax
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call g
Ljoin_l12:
	movl $0,%eax
	leal 40(%esp), %ecx
	leal 40(%esp), %edx
	movl %ebx,8(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 8(%esp),%ebx
	leal 40(%esp), %esp
	ret
Ljoin_l16:
	jmp L.5
L.5:
	movl $0,%edx
	jmp L.12
L.12:
	movl $2,%ecx
	movl %ebx,8(%esp)
	movl %edx,%ebx
	movl %ecx,12(%esp)
	shll %cl, %ebx
	movl %eax,%ecx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	movl %ebp,20(%esp)
	movl 16(%esp),%ebp
	shll %cl, %ebp
	leal y,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $0,%ebx
	cmpl %ebx,%ecx
	jne Ljoin_l21
Ljoin_l22:
	leal i_14,%ecx
	leal 40(%esp), %ebx
	movl $-40,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl %eax,24(%esp)
	call printf
Ljoin_l20:
L.6:
	movl $1,%eax
	movl 24(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl 20(%esp),%ebp
	movl 8(%esp),%ebx
	jmp L.8
Ljoin_l21:
	jmp L.9
L.9:
	movl $2,%ecx
	movl %edx,%ebx
	movl %ecx,28(%esp)
	shll %cl, %ebx
	movl %eax,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl 32(%esp),%ebp
	shll %cl, %ebp
	leal y,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	addl %ecx,%ebx
	leal 40(%esp), %ecx
	movl $-36,%ebp
	addl %ebp,%ecx
	movl (%ebx),%ebp
	movl %ebp,(%ecx)
	leal i_13,%ecx
	leal 40(%esp), %ebp
	movl $-40,%ebx
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	movl %eax,24(%esp)
	movl %edx,36(%esp)
	call printf
Ljoin_l25:
L.10:
	movl $1,%eax
	movl 36(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%edx
	movl 20(%esp),%ebp
	movl 8(%esp),%ebx
	movl 24(%esp),%eax
	jmp L.12
.section .pcmap_data
Lstackdata_l32:
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l32
.long 0x80000008
.long 0x80000004
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
.long 0x80000000
.section .pcmap
.long Ljoin_l12
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l32
.long 0x80000008
.long 0x80000004
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
.long 0x80000000
.section .pcmap
.long Ljoin_l20
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l32
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l25
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l32
.long 0x80000008
.long 0x80000004
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0xfffffff0
.long 0
.long 0
.long 0x80000000
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
Linitialize_continuations_l39:
Lproc_body_start_l38:
	leal L.20,%edx
	jmp L.28
L.28:
	movl (%edx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l42
Ljoin_l43:
	movl $0,%eax
	leal 16(%esp), %ecx
	leal 16(%esp), %edx
	movl %ebx,8(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 8(%esp),%ebx
	leal 16(%esp), %esp
	ret
Ljoin_l42:
	jmp L.25
L.25:
	leal 16(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal i_29,%eax
	leal 16(%esp), %ecx
	movl %ebx,8(%esp)
	movl $-16,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl %edx,12(%esp)
	call printf
Ljoin_l46:
L.26:
	movl $4,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%edx
	movl 8(%esp),%ebx
	jmp L.28
.section .pcmap_data
Lstackdata_l53:
.long 0
.section .pcmap
.long Ljoin_l46
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l53
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffff8
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xfffffffc
.long 0x80000000
.section .text
g:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l57:
Lproc_body_start_l56:
	jmp L.35
L.35:
	movl (%ecx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l63
Ljoin_l64:
	call h
Ljoin_l62:
	movl $0,%eax
	leal 20(%esp), %ecx
	leal 20(%esp), %edx
	movl %ebx,8(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 8(%esp),%ebx
	leal 20(%esp), %esp
	ret
Ljoin_l63:
	jmp L.32
L.32:
	movl $0,%eax
	jmp L.39
L.39:
	movl $3,%edx
	cmpl %edx,%eax
	jb Ljoin_l68
Ljoin_l69:
	leal i_29,%edx
	leal 20(%esp), %eax
	movl %ebx,8(%esp)
	movl $-20,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	movl $12,%eax
	movl %ecx,%edx
	addl %eax,%edx
	leal 20(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	movl %ecx,12(%esp)
	call printf
Ljoin_l67:
L.33:
	movl $20,%eax
	movl 12(%esp),%ecx
	addl %eax,%ecx
	movl 8(%esp),%ebx
	jmp L.35
Ljoin_l68:
	jmp L.36
L.36:
	movl $2,%edx
	movl %ebx,8(%esp)
	movl %eax,%ebx
	movl %ecx,12(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	movl 12(%esp),%ecx
	addl %ecx,%ebx
	leal 20(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	leal i_40,%ecx
	leal 20(%esp), %edx
	movl $-20,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,16(%esp)
	call printf
Ljoin_l72:
L.37:
	movl $1,%eax
	movl 16(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl 8(%esp),%ebx
	movl 12(%esp),%ecx
	jmp L.39
.section .pcmap_data
Lstackdata_l79:
.long 0
.section .pcmap
.long Ljoin_l62
.long Lframe_l80
.section .pcmap_data
Lframe_l80:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l79
.long 0x80000008
.long 0x80000002
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
.long 0x80000000
.section .pcmap
.long Ljoin_l67
.long Lframe_l81
.section .pcmap_data
Lframe_l81:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l79
.long 0x80000008
.long 0x80000002
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
.long 0xfffffff8
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l72
.long Lframe_l82
.section .pcmap_data
Lframe_l82:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l79
.long 0x80000008
.long 0x80000002
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
.long 0xfffffff8
.long 0xfffffffc
.long 0x80000000
.section .text
h:
	leal -40(%esp), %esp
Linitialize_continuations_l85:
Lproc_body_start_l84:
	movl $0,%edx
	jmp L.46
L.46:
	movl $5,%ecx
	cmpl %ecx,%edx
	jb Ljoin_l88
Ljoin_l89:
	movl $0,%eax
	leal 40(%esp), %ecx
	leal 40(%esp), %edx
	movl %ebx,20(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 20(%esp),%ebx
	leal 40(%esp), %esp
	ret
Ljoin_l88:
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
	leal words,%ebp
	movl %esi,28(%esp)
	movl $4,%esi
	addl %esi,%ebp
	movl %eax,%esi
	addl %ebp,%esi
	movl (%esi),%ebp
	leal words,%esi
	movl %edi,32(%esp)
	movl $8,%edi
	addl %edi,%esi
	movl %eax,%edi
	addl %esi,%edi
	leal 40(%esp), %esi
	movl %edx,36(%esp)
	movl $-28,%edx
	addl %edx,%esi
	movl (%edi),%edx
	movl %edx,(%esi)
	leal words,%edx
	movl $12,%esi
	addl %esi,%edx
	addl %edx,%eax
	leal 40(%esp), %edx
	movl $-24,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %ebp,(%eax)
	leal 40(%esp), %eax
	movl $-36,%ebp
	addl %ebp,%eax
	movl %ebx,(%eax)
	leal 40(%esp), %eax
	movl $-40,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
	call printf
Ljoin_l92:
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
Lstackdata_l99:
.long 0
.section .pcmap
.long Ljoin_l92
.long Lframe_l100
.section .pcmap_data
Lframe_l100:
.long 0xffffffd8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l99
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
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
.long 0x80000000
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

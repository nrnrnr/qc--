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
	leal -60(%esp), %esp
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
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call g
Ljoin_l12:
	movl $0,%eax
	leal 60(%esp), %edx
	leal 60(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
Ljoin_l16:
	jmp L.5
L.5:
	movl $0,%edx
	jmp L.12
L.12:
	movl $2,%ecx
	movl %edi,12(%esp)
	movl %edx,%edi
	movl %ecx,16(%esp)
	shll %cl, %edi
	movl %eax,%ecx
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	movl %edi,24(%esp)
	movl 20(%esp),%edi
	shll %cl, %edi
	leal y,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl 24(%esp),%ecx
	addl %edi,%ecx
	movl (%ecx),%edi
	movl $0,%ecx
	cmpl %ecx,%edi
	jne Ljoin_l21
Ljoin_l22:
	leal i_14,%edi
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,52(%esp)
	call printf
Ljoin_l20:
L.6:
	movl $1,%edi
	movl 52(%esp),%edx
	addl %edi,%edx
	movl %edx,%eax
	movl 12(%esp),%edi
	jmp L.8
Ljoin_l21:
	jmp L.9
L.9:
	movl $2,%ecx
	movl %edx,%edi
	movl %ecx,28(%esp)
	shll %cl, %edi
	movl %eax,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	shll %cl, %edi
	leal y,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl 36(%esp),%ecx
	addl %edi,%ecx
	leal 60(%esp), %edi
	movl %edi,40(%esp)
	movl $-56,%edi
	movl %edi,44(%esp)
	movl 40(%esp),%edi
	movl %esi,48(%esp)
	movl 44(%esp),%esi
	addl %esi,%edi
	movl (%ecx),%esi
	movl %esi,(%edi)
	leal i_13,%edi
	leal 60(%esp), %esi
	movl $-60,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl %eax,52(%esp)
	movl %edx,56(%esp)
	call printf
Ljoin_l25:
L.10:
	movl $1,%edi
	movl 56(%esp),%esi
	addl %edi,%esi
	movl %esi,%edx
	movl 12(%esp),%edi
	movl 48(%esp),%esi
	movl 52(%esp),%eax
	jmp L.12
.section .pcmap_data
Lstackdata_l32:
.long 0
.section .pcmap
.long Ljoin_l15
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffc4
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
.long 0xffffffc4
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
.long 0xffffffc4
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
.long 0xffffffd0
.long 0
.long 0xfffffff8
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l25
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xffffffc4
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
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffd0
.long 0xfffffffc
.long 0xfffffff8
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
	leal -20(%esp), %esp
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
	leal 20(%esp), %edx
	leal 20(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 20(%esp), %esp
	ret
Ljoin_l42:
	jmp L.25
L.25:
	leal 20(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal i_29,%eax
	leal 20(%esp), %ecx
	movl %edi,12(%esp)
	movl $-20,%edi
	addl %edi,%ecx
	movl %eax,(%ecx)
	movl %edx,16(%esp)
	call printf
Ljoin_l46:
L.26:
	movl $4,%edi
	movl 16(%esp),%edx
	addl %edi,%edx
	movl 12(%esp),%edi
	jmp L.28
.section .pcmap_data
Lstackdata_l53:
.long 0
.section .pcmap
.long Ljoin_l46
.long Lframe_l54
.section .pcmap_data
Lframe_l54:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l53
.long 0x80000008
.long 0x80000001
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
.long 0xfffffffc
.long 0x80000000
.section .text
g:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l57:
Lproc_body_start_l56:
	jmp L.35
L.35:
	movl (%eax),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l63
Ljoin_l64:
	call h
Ljoin_l62:
	movl $0,%eax
	leal 32(%esp), %edx
	leal 32(%esp), %ecx
	movl %edx,8(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %esp
	ret
Ljoin_l63:
	jmp L.32
L.32:
	movl $0,%edx
	jmp L.39
L.39:
	movl $3,%ecx
	cmpl %ecx,%edx
	jb Ljoin_l68
Ljoin_l69:
	leal i_29,%ecx
	leal 32(%esp), %edx
	movl %edi,12(%esp)
	movl $-32,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	movl $12,%edi
	movl %eax,%ecx
	addl %edi,%ecx
	leal 32(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	movl %eax,24(%esp)
	call printf
Ljoin_l67:
L.33:
	movl $20,%edi
	movl 24(%esp),%edx
	addl %edi,%edx
	movl %edx,%eax
	movl 12(%esp),%edi
	jmp L.35
Ljoin_l68:
	jmp L.36
L.36:
	movl $2,%ecx
	movl %edi,12(%esp)
	movl %edx,%edi
	shll %cl, %edi
	addl %eax,%edi
	leal 32(%esp), %ecx
	movl %edi,16(%esp)
	movl $-28,%edi
	addl %edi,%ecx
	movl 16(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal i_40,%edi
	leal 32(%esp), %ecx
	movl %edi,20(%esp)
	movl $-32,%edi
	addl %edi,%ecx
	movl 20(%esp),%edi
	movl %edi,(%ecx)
	movl %eax,24(%esp)
	movl %edx,28(%esp)
	call printf
Ljoin_l72:
L.37:
	movl $1,%edi
	movl 28(%esp),%edx
	addl %edi,%edx
	movl 12(%esp),%edi
	movl 24(%esp),%eax
	jmp L.39
.section .pcmap_data
Lstackdata_l79:
.long 0
.section .pcmap
.long Ljoin_l62
.long Lframe_l80
.section .pcmap_data
Lframe_l80:
.long 0xffffffe0
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
.long 0xffffffe0
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
.long 0xffffffec
.long 0xfffffff8
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l72
.long Lframe_l82
.section .pcmap_data
Lframe_l82:
.long 0xffffffe0
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
.long 0xffffffec
.long 0xfffffff8
.long 0xfffffffc
.long 0x80000000
.section .text
h:
	leal -52(%esp), %esp
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
	leal 52(%esp), %edx
	leal 52(%esp), %ecx
	movl %edx,20(%esp)
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 52(%esp), %esp
	ret
Ljoin_l88:
	jmp L.43
L.43:
	movl $20,%eax
	imull %edx,%eax
	leal i_47,%ecx
	movl %edi,24(%esp)
	leal words,%edi
	movl %edi,28(%esp)
	movl %eax,%edi
	movl %esi,32(%esp)
	movl 28(%esp),%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal words,%esi
	movl %edi,36(%esp)
	movl $4,%edi
	addl %edi,%esi
	movl %eax,%edi
	addl %esi,%edi
	movl (%edi),%edi
	leal words,%esi
	movl %edi,40(%esp)
	movl $8,%edi
	addl %edi,%esi
	movl %eax,%edi
	addl %esi,%edi
	leal 52(%esp), %esi
	movl %edi,44(%esp)
	movl $-40,%edi
	addl %edi,%esi
	movl 44(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal words,%edi
	movl $12,%esi
	addl %esi,%edi
	addl %edi,%eax
	leal 52(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 52(%esp), %edi
	movl $-44,%esi
	addl %esi,%edi
	movl 40(%esp),%esi
	movl %esi,(%edi)
	leal 52(%esp), %edi
	movl $-48,%esi
	addl %esi,%edi
	movl 36(%esp),%esi
	movl %esi,(%edi)
	leal 52(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	movl %edx,48(%esp)
	call printf
Ljoin_l92:
L.44:
	movl $1,%edi
	movl 48(%esp),%esi
	addl %edi,%esi
	movl %esi,%edx
	movl 24(%esp),%edi
	movl 32(%esp),%esi
	jmp L.46
.section .pcmap_data
Lstackdata_l99:
.long 0
.section .pcmap
.long Ljoin_l92
.long Lframe_l100
.section .pcmap_data
Lframe_l100:
.long 0xffffffcc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l99
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe4
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

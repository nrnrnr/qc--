.globl x
.globl i
.globl y
.globl main
.globl f1
.globl f2
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .data
.align 4
x:
.long 1
.byte 2
.skip 3, 0
.byte 3
.byte 64
.skip 2, 0
.byte 80
.byte 6
.skip 2, 0
.align 4
i:
.long 16
.align 4
y:
.byte 35
.skip 3, 0
.byte 9
.byte 0
.byte 0
.byte 0
.section .text
main:
	leal -68(%esp), %esp
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $20,%ecx
	leal i_4,%eax
	movl $-68,%edx
	movl %ebx,28(%esp)
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	leal x,%eax
	movl $-64,%ebx
	leal 68(%esp), %edx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl $4,%edx
	leal x,%ebx
	addl %edx,%ebx
	movsbl (%ebx),%edx
	movl $-60,%ebx
	leal 68(%esp), %eax
	addl %ebx,%eax
	movl %edx,(%eax)
	movl $8,%eax
	leal x,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl %ecx,32(%esp)
	shll %cl, %eax
	movl 32(%esp),%ecx
	sarl %cl, %eax
	movl $-56,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $28,%ecx
	movl $16,%eax
	movl $8,%edx
	leal x,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %ecx,36(%esp)
	movl %eax,%ecx
	shll %cl, %edx
	movl 36(%esp),%ecx
	sarl %cl, %edx
	movl $-52,%ecx
	leal 68(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $29,%ecx
	movl $25,%eax
	movl $12,%edx
	leal x,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %ecx,40(%esp)
	movl %eax,%ecx
	shll %cl, %edx
	movl 40(%esp),%ecx
	sarl %cl, %edx
	movl $-48,%ecx
	leal 68(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $13,%eax
	leal x,%edx
	addl %eax,%edx
	movsbl (%edx),%eax
	movl $-44,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l23:
	leal y,%eax
	movl (%eax),%ecx
	leal i_10,%eax
	movl $-68,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $3,%eax
	movl %ecx,%ebx
	andl %eax,%ebx
	movl $-64,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $15,%edx
	movl $2,%ebx
	movl %ecx,44(%esp)
	movl %ebx,%ecx
	movl 44(%esp),%ebx
	shrl %cl, %ebx
	andl %edx,%ebx
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	movl $4,%ecx
	leal y,%ebx
	addl %ecx,%ebx
	movl $-56,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	call printf
Ljoin_l20:
	movl $8,%eax
	leal x,%ecx
	addl %eax,%ecx
	movl $28,%eax
	movl $61440,%edx
	movl $12,%ebx
	movl %ebp,48(%esp)
	leal i,%ebp
	movl (%ebp),%ebp
	movl %ecx,52(%esp)
	movl %eax,%ecx
	shll %cl, %ebp
	movl %eax,%ecx
	sarl %cl, %ebp
	movl %ebx,%ecx
	shll %cl, %ebp
	andl %edx,%ebp
	movl $-61441,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ebx
	andl %edx,%ebx
	orl %ebp,%ebx
	movl %ebx,(%ecx)
	movl $12,%ecx
	leal x,%ebx
	addl %ecx,%ebx
	movl $-113,%ecx
	movl (%ebx),%ebp
	andl %ecx,%ebp
	movl %ebp,(%ebx)
	movl $20,%ecx
	leal i_4,%ebx
	movl $-68,%ebp
	leal 68(%esp), %edx
	addl %ebp,%edx
	movl %ebx,(%edx)
	leal x,%edx
	movl $-64,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%edx),%ebx
	movl %ebx,(%ebp)
	movl $4,%ebx
	leal x,%ebp
	addl %ebx,%ebp
	movsbl (%ebp),%ebx
	movl $-60,%ebp
	leal 68(%esp), %edx
	addl %ebp,%edx
	movl %ebx,(%edx)
	movl $8,%edx
	leal x,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl %ecx,56(%esp)
	shll %cl, %edx
	movl 56(%esp),%ecx
	sarl %cl, %edx
	movl $-56,%ecx
	leal 68(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	movl $28,%ecx
	movl $16,%edx
	movl $8,%ebx
	leal x,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl %ecx,60(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	movl 60(%esp),%ecx
	sarl %cl, %ebx
	movl $-52,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $29,%ecx
	movl $25,%edx
	movl $12,%ebx
	leal x,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl %ecx,64(%esp)
	movl %edx,%ecx
	shll %cl, %ebx
	movl 64(%esp),%ecx
	sarl %cl, %ebx
	movl $-48,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %ebx,(%edx)
	movl $13,%edx
	leal x,%ebx
	addl %edx,%ebx
	movsbl (%ebx),%edx
	movl $-44,%ebx
	leal 68(%esp), %ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call printf
Ljoin_l17:
	leal y,%eax
	movl $2,%ecx
	movl $-4,%edx
	movl (%eax),%ebx
	andl %edx,%ebx
	orl %ecx,%ebx
	movl %ebx,(%eax)
	leal i,%eax
	movl $4,%ebx
	leal y,%ecx
	addl %ebx,%ecx
	movl (%eax),%ebx
	movl %ebx,(%ecx)
	leal y,%ecx
	movl (%ecx),%ebx
	leal i_10,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $3,%ecx
	movl %ebx,%edx
	andl %ecx,%edx
	movl $-64,%ecx
	leal 68(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $15,%eax
	movl $2,%ecx
	shrl %cl, %ebx
	andl %eax,%ebx
	movl $-60,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	movl $4,%ecx
	leal y,%ebx
	addl %ecx,%ebx
	movl $-56,%ecx
	leal 68(%esp), %eax
	addl %ecx,%eax
	movl (%ebx),%ecx
	movl %ecx,(%eax)
	call printf
Ljoin_l14:
	leal x,%eax
	movl $-68,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call f2
Ljoin_l11:
	movl $0,%eax
	leal 68(%esp), %ecx
	movl $0,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 48(%esp),%ebp
	movl 28(%esp),%ebx
	leal 68(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l30:
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffbc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd8
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
.long 0
.section .pcmap
.long Ljoin_l20
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xffffffbc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd8
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
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffbc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffec
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
.long 0
.section .pcmap
.long Ljoin_l14
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xffffffbc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffec
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
.long 0
.section .pcmap
.long Ljoin_l11
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffbc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xffffffd8
.long 0x40000009
.long 0xffffffec
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
.long 0
.section .text
f1:
	leal -24(%esp), %esp
	movl $4,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l38:
Lproc_body_start_l37:
	movl $-61,%ecx
	movl (%eax),%edx
	andl %ecx,%edx
	movl %edx,(%eax)
	movl $3,%edx
	movl $0,%ecx
	andl %edx,%ecx
	andl %edx,%ecx
	movl $-4,%edx
	movl %ebx,12(%esp)
	movl (%eax),%ebx
	andl %edx,%ebx
	orl %ecx,%ebx
	movl %ebx,(%eax)
	movl $60,%ebx
	movl (%eax),%ecx
	andl %ebx,%ecx
	movl $0,%ebx
	cmpl %ebx,%ecx
	je Ljoin_l47
Ljoin_l48:
	leal i_32,%ecx
	movl $-24,%ebx
	leal 24(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,16(%esp)
	call printf
Ljoin_l46:
	movl 16(%esp),%eax
	jmp L.30
Ljoin_l47:
	jmp L.30
L.30:
	movl $3,%ecx
	movl (%eax),%edx
	orl %ecx,%edx
	movl %edx,(%eax)
	movl $60,%edx
	movl (%eax),%ecx
	orl %edx,%ecx
	movl %ecx,(%eax)
	movl (%eax),%ecx
	leal i_33,%eax
	movl $-24,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $3,%eax
	movl %ecx,%ebx
	andl %eax,%ebx
	movl $-20,%eax
	leal 24(%esp), %edx
	addl %eax,%edx
	movl %ebx,(%edx)
	movl $15,%edx
	movl $2,%ebx
	movl %ecx,20(%esp)
	movl %ebx,%ecx
	movl 20(%esp),%ebx
	shrl %cl, %ebx
	andl %edx,%ebx
	movl $-16,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	call printf
Ljoin_l43:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	leal 24(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 12(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l55:
.long 0
.section .pcmap
.long Ljoin_l46
.long Lframe_l56
.section .pcmap_data
Lframe_l56:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l55
.long 0x80000008
.long 0x80000003
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
.long 0
.section .pcmap
.long Ljoin_l43
.long Lframe_l57
.section .pcmap_data
Lframe_l57:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l55
.long 0x80000008
.long 0x80000003
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
.long 0
.long 0
.long 0
.section .text
f2:
	leal -12(%esp), %esp
	movl $4,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l60:
Lproc_body_start_l59:
	leal i,%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l66
Ljoin_l67:
	movl $1,%ecx
	jmp L.43
Ljoin_l66:
	jmp L.42
L.42:
	movl $0,%ecx
	jmp L.43
L.43:
	movl $3,%edx
	andl %edx,%ecx
	andl %edx,%ecx
	movl $-4,%edx
	movl %ebx,4(%esp)
	movl (%eax),%ebx
	andl %edx,%ebx
	orl %ecx,%ebx
	movl %ebx,(%eax)
	movl $-12,%ebx
	leal 12(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl %eax,8(%esp)
	call f1
Ljoin_l65:
	movl $0,%eax
	movl $-61,%ecx
	movl 8(%esp),%edx
	movl (%edx),%ebx
	andl %ecx,%ebx
	orl %eax,%ebx
	movl %ebx,(%edx)
	movl $0,%edx
	movl %edx,%eax
	leal 12(%esp), %edx
	movl $0,%ebx
	leal 12(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl 4(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l74:
.long 0
.section .pcmap
.long Ljoin_l65
.long Lframe_l75
.section .pcmap_data
Lframe_l75:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l74
.long 0x80000008
.long 0x80000003
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
.long 0
.long 0
.section .text
.section .data
i_33:
.byte 112
.byte 45
.byte 62
.byte 97
.byte 32
.byte 61
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 44
.byte 32
.byte 112
.byte 45
.byte 62
.byte 98
.byte 32
.byte 61
.byte 32
.byte 48
.byte 120
.byte 37
.byte 120
.byte 10
.byte 0
i_32:
.byte 112
.byte 45
.byte 62
.byte 98
.byte 32
.byte 33
.byte 61
.byte 32
.byte 48
.byte 33
.byte 10
.byte 0
i_10:
.byte 121
.byte 32
.byte 61
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
i_4:
.byte 120
.byte 32
.byte 61
.byte 32
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
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0

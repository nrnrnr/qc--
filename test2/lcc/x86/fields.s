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
	leal -48(%esp), %esp
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $20,%ecx
	leal i_4,%eax
	leal 48(%esp), %edx
	movl %ebx,28(%esp)
	movl $-48,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal x,%eax
	leal 48(%esp), %edx
	movl $-44,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal x,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movsbl (%edx),%ebx
	leal 48(%esp), %edx
	movl $-40,%eax
	addl %eax,%edx
	movl %ebx,(%edx)
	leal x,%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl %ecx,32(%esp)
	shll %cl, %ebx
	movl 32(%esp),%ecx
	sarl %cl, %ebx
	leal 48(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal x,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $16,%ecx
	shll %cl, %ebx
	movl $28,%ecx
	sarl %cl, %ebx
	leal 48(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal x,%ecx
	movl $12,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $25,%ecx
	shll %cl, %ebx
	movl $29,%ecx
	sarl %cl, %ebx
	leal 48(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal x,%ecx
	movl $13,%ebx
	addl %ebx,%ecx
	movsbl (%ecx),%ebx
	leal 48(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	call printf
Ljoin_l23:
	leal y,%eax
	movl (%eax),%ecx
	leal i_10,%eax
	leal 48(%esp), %edx
	movl $-48,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl $3,%eax
	movl %ecx,%edx
	andl %eax,%edx
	leal 48(%esp), %eax
	movl $-44,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	movl $2,%eax
	movl %ecx,36(%esp)
	movl %eax,%ecx
	movl 36(%esp),%eax
	shrl %cl, %eax
	movl $15,%ecx
	andl %ecx,%eax
	leal 48(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal y,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 48(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l20:
	leal x,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $28,%ecx
	movl (%eax),%edx
	movl $-61441,%ebx
	andl %ebx,%edx
	leal i,%ebx
	movl (%ebx),%ebx
	movl %ecx,40(%esp)
	shll %cl, %ebx
	movl 40(%esp),%ecx
	sarl %cl, %ebx
	movl $12,%ecx
	shll %cl, %ebx
	movl $61440,%ecx
	andl %ecx,%ebx
	orl %ebx,%edx
	movl %edx,(%eax)
	leal x,%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $-113,%ebx
	andl %ebx,%edx
	movl %edx,(%eax)
	movl $20,%ecx
	leal i_4,%eax
	leal 48(%esp), %edx
	movl $-48,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal x,%eax
	leal 48(%esp), %edx
	movl $-44,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal x,%edx
	movl $4,%ebx
	addl %ebx,%edx
	movsbl (%edx),%ebx
	leal 48(%esp), %edx
	movl $-40,%eax
	addl %eax,%edx
	movl %ebx,(%edx)
	leal x,%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl %ecx,44(%esp)
	shll %cl, %ebx
	movl 44(%esp),%ecx
	sarl %cl, %ebx
	leal 48(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal x,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $16,%ecx
	shll %cl, %ebx
	movl $28,%ecx
	sarl %cl, %ebx
	leal 48(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal x,%ecx
	movl $12,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $25,%ecx
	shll %cl, %ebx
	movl $29,%ecx
	sarl %cl, %ebx
	leal 48(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	leal x,%ecx
	movl $13,%ebx
	addl %ebx,%ecx
	movsbl (%ecx),%ebx
	leal 48(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	call printf
Ljoin_l17:
	leal y,%eax
	movl (%eax),%ecx
	movl $-4,%edx
	andl %edx,%ecx
	movl $2,%edx
	orl %edx,%ecx
	movl %ecx,(%eax)
	leal i,%eax
	leal y,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal y,%ecx
	movl (%ecx),%edx
	leal i_10,%ecx
	leal 48(%esp), %eax
	movl $-48,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
	movl $3,%eax
	movl %edx,%ecx
	andl %eax,%ecx
	leal 48(%esp), %eax
	movl $-44,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
	movl $2,%ecx
	shrl %cl, %edx
	movl $15,%ecx
	andl %ecx,%edx
	leal 48(%esp), %ecx
	movl $-40,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal y,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 48(%esp), %edx
	movl $-36,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call printf
Ljoin_l14:
	leal x,%eax
	leal 48(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call f2
Ljoin_l11:
	movl $0,%eax
	leal 48(%esp), %ecx
	leal 48(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 28(%esp),%ebx
	leal 48(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l30:
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l20
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l17
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l14
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l11
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffd0
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 0x80000008
.long 0x80000008
.long 0x80000000
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
f1:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l38:
Lproc_body_start_l37:
	movl (%ecx),%eax
	movl $-61,%edx
	andl %edx,%eax
	movl %eax,(%ecx)
	movl $3,%eax
	movl (%ecx),%edx
	movl %ecx,12(%esp)
	movl $-4,%ecx
	andl %ecx,%edx
	movl $0,%ecx
	andl %eax,%ecx
	andl %eax,%ecx
	orl %ecx,%edx
	movl 12(%esp),%ecx
	movl %edx,(%ecx)
	movl (%ecx),%edx
	movl $60,%eax
	andl %eax,%edx
	movl $0,%eax
	cmpl %eax,%edx
	je Ljoin_l47
Ljoin_l48:
	leal i_32,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l46:
	movl 12(%esp),%ecx
	jmp L.30
Ljoin_l47:
	jmp L.30
L.30:
	movl (%ecx),%eax
	movl $3,%edx
	orl %edx,%eax
	movl %eax,(%ecx)
	movl (%ecx),%eax
	movl $60,%edx
	orl %edx,%eax
	movl %eax,(%ecx)
	movl (%ecx),%eax
	leal i_33,%ecx
	leal 20(%esp), %edx
	movl %ebx,16(%esp)
	movl $-20,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $3,%ecx
	movl %eax,%edx
	andl %ecx,%edx
	leal 20(%esp), %ecx
	movl $-16,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $2,%ecx
	shrl %cl, %eax
	movl $15,%ecx
	andl %ecx,%eax
	leal 20(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l43:
	movl $0,%eax
	leal 20(%esp), %ecx
	leal 20(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 16(%esp),%ebx
	leal 20(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l55:
.long 0
.section .pcmap
.long Ljoin_l46
.long Lframe_l56
.section .pcmap_data
Lframe_l56:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l55
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
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l43
.long Lframe_l57
.section .pcmap_data
Lframe_l57:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l55
.long 0x80000008
.long 0x80000007
.long 0x80000000
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .text
f2:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
Linitialize_continuations_l60:
Lproc_body_start_l59:
	leal i,%eax
	movl (%eax),%edx
	movl $0,%eax
	cmpl %eax,%edx
	jne Ljoin_l66
Ljoin_l67:
	movl $1,%eax
	jmp L.43
Ljoin_l66:
	jmp L.42
L.42:
	movl $0,%eax
	jmp L.43
L.43:
	movl $3,%edx
	movl %ebx,4(%esp)
	movl (%ecx),%ebx
	movl %ecx,8(%esp)
	movl $-4,%ecx
	andl %ecx,%ebx
	andl %edx,%eax
	andl %edx,%eax
	orl %eax,%ebx
	movl 8(%esp),%ecx
	movl %ebx,(%ecx)
	leal 12(%esp), %ebx
	movl $-12,%eax
	addl %eax,%ebx
	movl %ecx,(%ebx)
	call f1
Ljoin_l65:
	movl 8(%esp),%ecx
	movl (%ecx),%eax
	movl $-61,%edx
	andl %edx,%eax
	movl $0,%edx
	orl %edx,%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 12(%esp), %ecx
	leal 12(%esp), %edx
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
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
.long 0x80000005
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
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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

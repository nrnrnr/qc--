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
	leal -44(%esp), %esp
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $20,%ecx
	leal i_4,%eax
	leal 44(%esp), %edx
	movl %edi,28(%esp)
	movl $-44,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal x,%edi
	leal 44(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	leal x,%edi
	movl $4,%eax
	addl %eax,%edi
	movsbl (%edi),%edi
	leal 44(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal x,%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl %ecx,32(%esp)
	shll %cl, %edi
	movl 32(%esp),%ecx
	sarl %cl, %edi
	leal 44(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal x,%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $16,%ecx
	shll %cl, %edi
	movl $28,%ecx
	sarl %cl, %edi
	leal 44(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal x,%edi
	movl $12,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $25,%ecx
	shll %cl, %edi
	movl $29,%ecx
	sarl %cl, %edi
	leal 44(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal x,%edi
	movl $13,%eax
	addl %eax,%edi
	movsbl (%edi),%edi
	leal 44(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l23:
	leal y,%edi
	movl (%edi),%edi
	leal i_10,%eax
	leal 44(%esp), %edx
	movl $-44,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $3,%eax
	movl %edi,%edx
	andl %eax,%edx
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $2,%ecx
	shrl %cl, %edi
	movl $15,%eax
	andl %eax,%edi
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal y,%edi
	movl $4,%eax
	addl %eax,%edi
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	call printf
Ljoin_l20:
	leal x,%edi
	movl $8,%eax
	addl %eax,%edi
	movl $28,%ecx
	movl (%edi),%eax
	movl $-61441,%edx
	andl %edx,%eax
	leal i,%edx
	movl (%edx),%edx
	movl %ecx,36(%esp)
	shll %cl, %edx
	movl 36(%esp),%ecx
	sarl %cl, %edx
	movl $12,%ecx
	shll %cl, %edx
	movl $61440,%ecx
	andl %ecx,%edx
	orl %edx,%eax
	movl %eax,(%edi)
	leal x,%edi
	movl $12,%eax
	addl %eax,%edi
	movl (%edi),%eax
	movl $-113,%edx
	andl %edx,%eax
	movl %eax,(%edi)
	movl $20,%ecx
	leal i_4,%edi
	leal 44(%esp), %eax
	movl $-44,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal x,%edi
	leal 44(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	leal x,%edi
	movl $4,%eax
	addl %eax,%edi
	movsbl (%edi),%edi
	leal 44(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal x,%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl %ecx,40(%esp)
	shll %cl, %edi
	movl 40(%esp),%ecx
	sarl %cl, %edi
	leal 44(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal x,%edi
	movl $8,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $16,%ecx
	shll %cl, %edi
	movl $28,%ecx
	sarl %cl, %edi
	leal 44(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal x,%edi
	movl $12,%eax
	addl %eax,%edi
	movl (%edi),%edi
	movl $25,%ecx
	shll %cl, %edi
	movl $29,%ecx
	sarl %cl, %edi
	leal 44(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal x,%edi
	movl $13,%eax
	addl %eax,%edi
	movsbl (%edi),%edi
	leal 44(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l17:
	leal y,%edi
	movl (%edi),%eax
	movl $-4,%edx
	andl %edx,%eax
	movl $2,%edx
	orl %edx,%eax
	movl %eax,(%edi)
	leal i,%edi
	leal y,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	leal y,%edi
	movl (%edi),%edi
	leal i_10,%eax
	leal 44(%esp), %edx
	movl $-44,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $3,%eax
	movl %edi,%edx
	andl %eax,%edx
	leal 44(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $2,%ecx
	shrl %cl, %edi
	movl $15,%eax
	andl %eax,%edi
	leal 44(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal y,%edi
	movl $4,%eax
	addl %eax,%edi
	leal 44(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	call printf
Ljoin_l14:
	leal x,%edi
	leal 44(%esp), %eax
	movl $-44,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call f2
Ljoin_l11:
	movl $0,%eax
	leal 44(%esp), %edx
	leal 44(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	leal 44(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l30:
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 8
.long 8
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
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
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 8
.long 8
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
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
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 8
.long 8
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
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
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 8
.long 8
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
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
.long 0xffffffd4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l30
.long 8
.long 8
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff0
.long 0
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
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l38:
Lproc_body_start_l37:
	movl (%eax),%ecx
	movl $-61,%edx
	andl %edx,%ecx
	movl %ecx,(%eax)
	movl $3,%ecx
	movl (%eax),%edx
	movl %edi,12(%esp)
	movl $-4,%edi
	andl %edi,%edx
	movl $0,%edi
	andl %ecx,%edi
	andl %ecx,%edi
	orl %edi,%edx
	movl %edx,(%eax)
	movl (%eax),%edi
	movl $60,%ecx
	andl %ecx,%edi
	movl $0,%ecx
	cmpl %ecx,%edi
	je Ljoin_l47
Ljoin_l48:
	leal i_32,%edi
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl %eax,16(%esp)
	call printf
Ljoin_l46:
	movl 16(%esp),%eax
	jmp L.30
Ljoin_l47:
	jmp L.30
L.30:
	movl (%eax),%edi
	movl $3,%edx
	orl %edx,%edi
	movl %edi,(%eax)
	movl (%eax),%edi
	movl $60,%edx
	orl %edx,%edi
	movl %edi,(%eax)
	movl (%eax),%edi
	leal i_33,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $3,%eax
	movl %edi,%edx
	andl %eax,%edx
	leal 20(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $2,%ecx
	shrl %cl, %edi
	movl $15,%eax
	andl %eax,%edi
	leal 20(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l43:
	movl $0,%eax
	leal 20(%esp), %edx
	leal 20(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
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
.long 8
.long 7
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0xfffffffc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l43
.long Lframe_l57
.section .pcmap_data
Lframe_l57:
.long 0xffffffec
.long 0x80000004
.long 0x80000000
.long Lstackdata_l55
.long 8
.long 7
.long 0
.long 1
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
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
f2:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
Linitialize_continuations_l60:
Lproc_body_start_l59:
	leal i,%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
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
	movl %edi,4(%esp)
	movl (%eax),%edi
	movl %edi,8(%esp)
	movl $-4,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	andl %esi,%edi
	andl %edx,%ecx
	andl %edx,%ecx
	orl %ecx,%edi
	movl %edi,(%eax)
	leal 24(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %eax,20(%esp)
	call f1
Ljoin_l65:
	movl 20(%esp),%edx
	movl (%edx),%ecx
	movl $-61,%edi
	andl %edi,%ecx
	movl $0,%edi
	orl %edi,%ecx
	movl %ecx,(%edx)
	movl $0,%eax
	leal 24(%esp), %edx
	leal 24(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l74:
.long 0
.section .pcmap
.long Ljoin_l65
.long Lframe_l75
.section .pcmap_data
Lframe_l75:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long Lstackdata_l74
.long 8
.long 5
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff8
.long 0x4000000b
.long 0xffffffec
.long 0xfffffffc
.long 0
.long 0
.long 0
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

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
	leal -60(%esp), %esp
	leal 60(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl $20,%ecx
	leal i_4,%edx
	movl %edi,28(%esp)
	leal 60(%esp), %edi
	movl %edi,32(%esp)
	movl $-60,%edi
	movl %edi,36(%esp)
	movl 32(%esp),%edi
	movl %esi,40(%esp)
	movl 36(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal x,%edi
	leal 60(%esp), %esi
	movl $-56,%edx
	addl %edx,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal x,%edi
	movl $4,%esi
	addl %esi,%edi
	movsbl (%edi),%edi
	leal 60(%esp), %esi
	movl $-52,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal x,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl %ecx,44(%esp)
	shll %cl, %edi
	movl 44(%esp),%ecx
	sarl %cl, %edi
	leal 60(%esp), %esi
	movl $-48,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal x,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $16,%ecx
	shll %cl, %edi
	movl $28,%ecx
	sarl %cl, %edi
	leal 60(%esp), %esi
	movl $-44,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal x,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $25,%ecx
	shll %cl, %edi
	movl $29,%ecx
	sarl %cl, %edi
	leal 60(%esp), %esi
	movl $-40,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	leal x,%edi
	movl $13,%esi
	addl %esi,%edi
	movsbl (%edi),%edi
	leal 60(%esp), %esi
	movl $-36,%ecx
	addl %ecx,%esi
	movl %edi,(%esi)
	movl %eax,48(%esp)
	call printf
Ljoin_l23:
	leal y,%edi
	movl (%edi),%edi
	leal i_10,%esi
	leal 60(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	movl %esi,(%eax)
	movl $3,%esi
	movl %edi,%eax
	andl %esi,%eax
	leal 60(%esp), %esi
	movl $-56,%edx
	addl %edx,%esi
	movl %eax,(%esi)
	movl $2,%ecx
	shrl %cl, %edi
	movl $15,%esi
	andl %esi,%edi
	leal 60(%esp), %esi
	movl $-52,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal y,%edi
	movl $4,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-48,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call printf
Ljoin_l20:
	leal x,%edi
	movl $8,%esi
	addl %esi,%edi
	movl $28,%ecx
	movl (%edi),%esi
	movl $-61441,%eax
	andl %eax,%esi
	leal i,%eax
	movl (%eax),%eax
	movl %ecx,52(%esp)
	shll %cl, %eax
	movl 52(%esp),%ecx
	sarl %cl, %eax
	movl $12,%ecx
	shll %cl, %eax
	movl $61440,%edx
	andl %edx,%eax
	orl %eax,%esi
	movl %esi,(%edi)
	leal x,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%esi
	movl $-113,%eax
	andl %eax,%esi
	movl %esi,(%edi)
	movl $20,%ecx
	leal i_4,%edi
	leal 60(%esp), %esi
	movl $-60,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal x,%edi
	leal 60(%esp), %esi
	movl $-56,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal x,%edi
	movl $4,%esi
	addl %esi,%edi
	movsbl (%edi),%edi
	leal 60(%esp), %esi
	movl $-52,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal x,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl %ecx,56(%esp)
	shll %cl, %edi
	movl 56(%esp),%ecx
	sarl %cl, %edi
	leal 60(%esp), %esi
	movl $-48,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal x,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $16,%ecx
	shll %cl, %edi
	movl $28,%ecx
	sarl %cl, %edi
	leal 60(%esp), %esi
	movl $-44,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal x,%edi
	movl $12,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $25,%ecx
	shll %cl, %edi
	movl $29,%ecx
	sarl %cl, %edi
	leal 60(%esp), %esi
	movl $-40,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal x,%edi
	movl $13,%esi
	addl %esi,%edi
	movsbl (%edi),%edi
	leal 60(%esp), %esi
	movl $-36,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l17:
	leal y,%edi
	movl (%edi),%esi
	movl $-4,%eax
	andl %eax,%esi
	movl $2,%eax
	orl %eax,%esi
	movl %esi,(%edi)
	leal i,%edi
	leal y,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	leal y,%edi
	movl (%edi),%edi
	leal i_10,%esi
	leal 60(%esp), %eax
	movl $-60,%edx
	addl %edx,%eax
	movl %esi,(%eax)
	movl $3,%esi
	movl %edi,%eax
	andl %esi,%eax
	leal 60(%esp), %esi
	movl $-56,%edx
	addl %edx,%esi
	movl %eax,(%esi)
	movl $2,%ecx
	shrl %cl, %edi
	movl $15,%esi
	andl %esi,%edi
	leal 60(%esp), %esi
	movl $-52,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	leal y,%edi
	movl $4,%esi
	addl %esi,%edi
	leal 60(%esp), %esi
	movl $-48,%eax
	addl %eax,%esi
	movl (%edi),%edi
	movl %edi,(%esi)
	call printf
Ljoin_l14:
	leal x,%edi
	leal 60(%esp), %esi
	movl $-60,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call f2
Ljoin_l11:
	movl $0,%eax
	leal 60(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl %ecx,(%edx)
	movl 40(%esp),%esi
	movl 28(%esp),%edi
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l30:
.long 0
.section .pcmap
.long Ljoin_l23
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff4
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
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff4
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
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff4
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
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff4
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
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long 0x80000004
.long 0xffffffc4
.long 0xfffffff4
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
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l38:
Lproc_body_start_l37:
	movl (%eax),%edx
	movl %edi,12(%esp)
	movl $-61,%edi
	andl %edi,%edx
	movl %edx,(%eax)
	movl $3,%edi
	movl (%eax),%edx
	movl %edi,16(%esp)
	movl $-4,%edi
	andl %edi,%edx
	movl $0,%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	andl %esi,%edi
	andl %esi,%edi
	orl %edi,%edx
	movl %edx,(%eax)
	movl (%eax),%edi
	movl $60,%esi
	andl %esi,%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l47
Ljoin_l48:
	leal i_32,%edi
	leal 32(%esp), %esi
	movl $-32,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	movl %ecx,28(%esp)
	movl %eax,24(%esp)
	call printf
Ljoin_l46:
	movl 28(%esp),%ecx
	movl 24(%esp),%eax
	jmp L.30
Ljoin_l47:
	jmp L.30
L.30:
	movl (%eax),%edi
	movl $3,%esi
	orl %esi,%edi
	movl %edi,(%eax)
	movl (%eax),%edi
	movl $60,%esi
	orl %esi,%edi
	movl %edi,(%eax)
	movl (%eax),%edi
	leal i_33,%esi
	leal 32(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl %esi,(%eax)
	movl $3,%esi
	movl %edi,%eax
	andl %esi,%eax
	leal 32(%esp), %esi
	movl $-28,%edx
	addl %edx,%esi
	movl %eax,(%esi)
	movl $2,%esi
	movl %ecx,28(%esp)
	movl %esi,%ecx
	shrl %cl, %edi
	movl $15,%esi
	andl %esi,%edi
	leal 32(%esp), %esi
	movl $-24,%eax
	addl %eax,%esi
	movl %edi,(%esi)
	call printf
Ljoin_l43:
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 12(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l55:
.long 0
.section .pcmap
.long Ljoin_l46
.long Lframe_l56
.section .pcmap_data
Lframe_l56:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
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
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffec
.long 0xfffffff8
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
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
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
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffec
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
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l60:
Lproc_body_start_l59:
	leal i,%edx
	movl (%edx),%edx
	movl %edi,4(%esp)
	movl $0,%edi
	cmpl %edi,%edx
	jne Ljoin_l66
Ljoin_l67:
	movl $1,%edi
	jmp L.43
Ljoin_l66:
	jmp L.42
L.42:
	movl $0,%edi
	jmp L.43
L.43:
	movl $3,%edx
	movl %edi,8(%esp)
	movl (%eax),%edi
	movl %edi,12(%esp)
	movl $-4,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	andl %esi,%edi
	movl 8(%esp),%esi
	andl %edx,%esi
	andl %edx,%esi
	orl %esi,%edi
	movl %edi,(%eax)
	leal 32(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	movl %ecx,28(%esp)
	movl %eax,24(%esp)
	call f1
Ljoin_l65:
	movl 24(%esp),%edx
	movl (%edx),%ecx
	movl $-61,%edi
	andl %edi,%ecx
	movl $0,%edi
	orl %edi,%ecx
	movl %ecx,(%edx)
	movl $0,%eax
	leal 32(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 4(%esp),%edi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l74:
.long 0
.section .pcmap
.long Ljoin_l65
.long Lframe_l75
.section .pcmap_data
Lframe_l75:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffffc
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
.long 0xfffffff4
.long 0x4000000b
.long 0xffffffe4
.long 0xfffffff8
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

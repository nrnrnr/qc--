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
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
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
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl (%eax),%eax
	movl %eax,32(%esp)
	movl %edi,28(%esp)
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $20,%ecx
	leal i_4,%eax
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal x,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	leal x,%eax
	movl $4,%edx
	addl %edx,%eax
	movsbl (%eax),%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal x,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	shll %cl, %edx
	sarl %cl, %edx
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal x,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	movl $16,%ecx
	shll %cl, %edx
	movl $28,%ecx
	sarl %cl, %edx
	leal 36(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal x,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	movl $25,%ecx
	shll %cl, %edx
	movl $29,%ecx
	sarl %cl, %edx
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal x,%eax
	movl $13,%ecx
	addl %ecx,%eax
	movsbl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l22:
	leal y,%eax
	movl (%eax),%edx
	leal i_10,%eax
	leal 36(%esp), %edi
	movl $-36,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	movl $3,%ecx
	movl %edx,%eax
	andl %ecx,%eax
	leal 36(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	movl $2,%ecx
	shrl %cl, %edx
	movl $15,%eax
	andl %eax,%edx
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal y,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l19:
	leal x,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %eax,%edi
	movl $28,%eax
	movl %eax,%ecx
	movl (%edi),%edx
	movl $-61441,%eax
	andl %eax,%edx
	leal i,%eax
	movl (%eax),%eax
	shll %cl, %eax
	sarl %cl, %eax
	movl $12,%ecx
	shll %cl, %eax
	movl $61440,%ecx
	andl %ecx,%eax
	movl %edx,%ecx
	orl %eax,%ecx
	movl %ecx,(%edi)
	leal x,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $-113,%edx
	andl %edx,%eax
	movl %eax,(%ecx)
	movl $20,%ecx
	leal i_4,%eax
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal x,%eax
	leal 36(%esp), %edi
	movl $-32,%edx
	addl %edx,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	leal x,%eax
	movl $4,%edx
	addl %edx,%eax
	movsbl (%eax),%eax
	leal 36(%esp), %edi
	movl $-28,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal x,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	shll %cl, %edx
	sarl %cl, %edx
	leal 36(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal x,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	movl $16,%ecx
	shll %cl, %edx
	movl $28,%ecx
	sarl %cl, %edx
	leal 36(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal x,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	movl $25,%ecx
	shll %cl, %edx
	movl $29,%ecx
	sarl %cl, %edx
	leal 36(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal x,%eax
	movl $13,%ecx
	addl %ecx,%eax
	movsbl (%eax),%ecx
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l16:
	leal y,%ecx
	movl (%ecx),%eax
	movl $-4,%edx
	andl %edx,%eax
	movl $2,%edx
	orl %edx,%eax
	movl %eax,(%ecx)
	leal i,%ecx
	leal y,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal y,%eax
	movl (%eax),%edx
	leal i_10,%eax
	leal 36(%esp), %edi
	movl $-36,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	movl $3,%ecx
	movl %edx,%eax
	andl %ecx,%eax
	leal 36(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	movl $2,%ecx
	shrl %cl, %edx
	movl $15,%eax
	andl %eax,%edx
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal y,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 36(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l13:
	leal x,%ecx
	leal 36(%esp), %eax
	movl $-36,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call f2
.Lcall_successor_l10:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl 28(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l29:
.long 0
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l30
.section .pcmap_data
.Lframe_l30:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l29
.long 1
.long 8
.long 0
.long 1
.long 11
.long 0xfffffff8
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
.long .Lcall_successor_l19
.long .Lframe_l31
.section .pcmap_data
.Lframe_l31:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l29
.long 1
.long 8
.long 0
.long 1
.long 11
.long 0xfffffff8
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
.long .Lcall_successor_l16
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l29
.long 1
.long 8
.long 0
.long 1
.long 11
.long 0xfffffff8
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
.long .Lcall_successor_l13
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l29
.long 1
.long 8
.long 0
.long 1
.long 11
.long 0xfffffff8
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
.long .Lcall_successor_l10
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l29
.long 1
.long 8
.long 0
.long 1
.long 11
.long 0xfffffff8
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
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 24(%esp), %eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl %edi,16(%esp)
.Linitialize_continuations_l36:
.Lproc_body_start_l35:
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl $-61,%ecx
	andl %ecx,%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
	movl $3,%edx
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl $-4,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	andl %edx,%ecx
	andl %edx,%ecx
	orl %ecx,%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
.Lbranch_target_l49:
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl $60,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je L.30
.Lbranch_target_l45:
	leal i_32,%ecx
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l44:
L.30:
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl $3,%ecx
	orl %ecx,%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
	movl 12(%esp),%eax
	movl (%eax),%eax
	movl $60,%ecx
	orl %ecx,%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
	movl 12(%esp),%eax
	movl (%eax),%edx
	leal i_33,%eax
	leal 24(%esp), %edi
	movl $-24,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	movl $3,%ecx
	movl %edx,%eax
	andl %ecx,%eax
	leal 24(%esp), %edi
	movl $-20,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	movl $2,%ecx
	shrl %cl, %edx
	movl $15,%eax
	andl %eax,%edx
	leal 24(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l41:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l53:
.long 0
.section .pcmap
.long .Lcall_successor_l44
.long .Lframe_l54
.section .pcmap_data
.Lframe_l54:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l53
.long 1
.long 7
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l41
.long .Lframe_l55
.section .pcmap_data
.Lframe_l55:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l53
.long 1
.long 7
.long 0
.long 1
.long 11
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
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %esi,8(%esp)
.Linitialize_continuations_l57:
.Lproc_body_start_l56:
.Lbranch_target_l67:
	leal i,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne L.42
.Lbranch_target_l63:
	movl $1,%ecx
	jmp L.43
L.42:
	movl $0,%ecx
L.43:
	movl $3,%edx
	movl 4(%esp),%eax
	movl (%eax),%eax
	movl $-4,%esi
	andl %esi,%eax
	andl %edx,%ecx
	andl %edx,%ecx
	orl %ecx,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	leal 16(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	call f1
.Lcall_successor_l62:
	movl 4(%esp),%eax
	movl (%eax),%eax
	movl $-61,%ecx
	andl %ecx,%eax
	movl $0,%ecx
	orl %ecx,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%esi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l71:
.long 0
.section .pcmap
.long .Lcall_successor_l62
.long .Lframe_l72
.section .pcmap_data
.Lframe_l72:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l71
.long 1
.long 5
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 0xfffffff4
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

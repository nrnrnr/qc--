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
	leal -92(%esp), %esp
	leal 92(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $20,%ecx
	leal i_4,%edx
	movl %eax,28(%esp)
	leal 92(%esp), %eax
	movl %eax,32(%esp)
	movl $-92,%eax
	movl %eax,36(%esp)
	movl 32(%esp),%eax
	movl %ecx,40(%esp)
	movl 36(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal x,%eax
	leal 92(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal x,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	leal 92(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal x,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 40(%esp),%edx
	movl %edx,%ecx
	shll %cl, %eax
	movl %edx,%ecx
	sarl %cl, %eax
	leal 92(%esp), %ecx
	movl $-80,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal x,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	shll %cl, %eax
	movl $28,%ecx
	sarl %cl, %eax
	leal 92(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal x,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $25,%ecx
	shll %cl, %eax
	movl $29,%ecx
	sarl %cl, %eax
	leal 92(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal x,%eax
	movl $13,%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	leal 92(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l22:
	leal y,%eax
	movl (%eax),%eax
	leal i_10,%ecx
	leal 92(%esp), %edx
	movl %eax,44(%esp)
	movl $-92,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $3,%eax
	movl 44(%esp),%ecx
	movl %ecx,%edx
	andl %eax,%edx
	leal 92(%esp), %eax
	movl %eax,48(%esp)
	movl $-88,%eax
	movl %eax,52(%esp)
	movl 48(%esp),%eax
	movl 52(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $2,%eax
	movl 44(%esp),%ecx
	movl %ecx,56(%esp)
	movl %eax,%ecx
	movl 56(%esp),%eax
	shrl %cl, %eax
	movl $15,%ecx
	andl %ecx,%eax
	leal 92(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal y,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 92(%esp), %ecx
	movl $-80,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l19:
	leal x,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $28,%ecx
	movl (%eax),%edx
	movl %eax,60(%esp)
	movl $-61441,%eax
	andl %eax,%edx
	leal i,%eax
	movl (%eax),%eax
	movl %eax,68(%esp)
	movl %ecx,64(%esp)
	movl 64(%esp),%eax
	movl %eax,%ecx
	movl 68(%esp),%eax
	shll %cl, %eax
	movl 64(%esp),%ecx
	sarl %cl, %eax
	movl $12,%ecx
	shll %cl, %eax
	movl $61440,%ecx
	andl %ecx,%eax
	orl %eax,%edx
	movl 60(%esp),%eax
	movl %edx,(%eax)
	leal x,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $-113,%edx
	andl %edx,%ecx
	movl %ecx,(%eax)
	movl $20,%eax
	leal i_4,%ecx
	leal 92(%esp), %edx
	movl %eax,72(%esp)
	movl $-92,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal x,%eax
	leal 92(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal x,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	leal 92(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal x,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 72(%esp),%edx
	movl %edx,%ecx
	shll %cl, %eax
	movl %edx,%ecx
	sarl %cl, %eax
	leal 92(%esp), %ecx
	movl $-80,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal x,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	shll %cl, %eax
	movl $28,%ecx
	sarl %cl, %eax
	leal 92(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal x,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $25,%ecx
	shll %cl, %eax
	movl $29,%ecx
	sarl %cl, %eax
	leal 92(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal x,%eax
	movl $13,%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	leal 92(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l16:
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
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal y,%eax
	movl (%eax),%eax
	leal i_10,%ecx
	leal 92(%esp), %edx
	movl %eax,76(%esp)
	movl $-92,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $3,%eax
	movl 76(%esp),%ecx
	movl %ecx,%edx
	andl %eax,%edx
	leal 92(%esp), %eax
	movl %eax,80(%esp)
	movl $-88,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl 84(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $2,%eax
	movl 76(%esp),%ecx
	movl %ecx,88(%esp)
	movl %eax,%ecx
	movl 88(%esp),%eax
	shrl %cl, %eax
	movl $15,%ecx
	andl %ecx,%eax
	leal 92(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal y,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 92(%esp), %ecx
	movl $-80,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l13:
	leal x,%eax
	leal 92(%esp), %ecx
	movl $-92,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call f2
.Lcall_successor_l10:
	movl $0,%eax
	leal 92(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 92(%esp), %esp
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
.long 0xffffffa4
.long 0xffffffc0
.long .Lstackdata_l29
.long 0
.long 8
.long 0
.long 1
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
.long 0xffffffa4
.long 0xffffffc0
.long .Lstackdata_l29
.long 0
.long 8
.long 0
.long 1
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
.long 0xffffffa4
.long 0xffffffc0
.long .Lstackdata_l29
.long 0
.long 8
.long 0
.long 1
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
.long 0xffffffa4
.long 0xffffffc0
.long .Lstackdata_l29
.long 0
.long 8
.long 0
.long 1
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
.long 0xffffffa4
.long 0xffffffc0
.long .Lstackdata_l29
.long 0
.long 8
.long 0
.long 1
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
	leal -48(%esp), %esp
	leal 48(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 48(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l36:
.Lproc_body_start_l35:
	movl (%eax),%edx
	movl %eax,12(%esp)
	movl $-61,%eax
	andl %eax,%edx
	movl 12(%esp),%eax
	movl %edx,(%eax)
	movl $3,%edx
	movl (%eax),%eax
	movl %eax,16(%esp)
	movl $-4,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	andl %ecx,%eax
	movl $0,%ecx
	andl %edx,%ecx
	andl %edx,%ecx
	orl %ecx,%eax
	movl 12(%esp),%ecx
	movl %eax,(%ecx)
.Lbranch_target_l46:
.Lbranch_target_l50:
	movl (%ecx),%eax
	movl $60,%edx
	andl %edx,%eax
	movl $0,%edx
	cmpl %edx,%eax
	je L.30
.Lbranch_target_l45:
	leal i_32,%eax
	leal 48(%esp), %edx
	movl %eax,28(%esp)
	movl $-48,%eax
	addl %eax,%edx
	movl 28(%esp),%eax
	movl %eax,(%edx)
	call printf
.Lcall_successor_l44:
L.30:
	movl 12(%esp),%eax
	movl (%eax),%ecx
	movl $3,%edx
	orl %edx,%ecx
	movl %ecx,(%eax)
	movl (%eax),%ecx
	movl $60,%edx
	orl %edx,%ecx
	movl %ecx,(%eax)
	movl (%eax),%eax
	leal i_33,%ecx
	leal 48(%esp), %edx
	movl %eax,32(%esp)
	movl $-48,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $3,%eax
	movl 32(%esp),%ecx
	movl %ecx,%edx
	andl %eax,%edx
	leal 48(%esp), %eax
	movl %eax,36(%esp)
	movl $-44,%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $2,%eax
	movl 32(%esp),%ecx
	movl %ecx,44(%esp)
	movl %eax,%ecx
	movl 44(%esp),%eax
	shrl %cl, %eax
	movl $15,%ecx
	andl %ecx,%eax
	leal 48(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l41:
	movl $0,%eax
	leal 48(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l54:
.long 0
.section .pcmap
.long .Lcall_successor_l44
.long .Lframe_l55
.section .pcmap_data
.Lframe_l55:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffe8
.long .Lstackdata_l54
.long 0
.long 7
.long 0
.long 1
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l41
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x80000004
.long 0xffffffd0
.long 0xffffffe8
.long .Lstackdata_l54
.long 0
.long 7
.long 0
.long 1
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
	leal 24(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l58:
.Lproc_body_start_l57:
.Lbranch_target_l65:
.Lbranch_target_l69:
	leal i,%edx
	movl (%edx),%edx
	movl %eax,4(%esp)
	movl $0,%eax
	cmpl %eax,%edx
	jne L.42
.Lbranch_target_l64:
	movl $1,%eax
	jmp L.43
L.42:
	movl $0,%eax
L.43:
	movl $3,%edx
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl $-4,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	andl %ecx,%eax
	movl 8(%esp),%ecx
	andl %edx,%ecx
	andl %edx,%ecx
	orl %ecx,%eax
	movl 4(%esp),%ecx
	movl %eax,(%ecx)
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call f1
.Lcall_successor_l63:
	movl 4(%esp),%eax
	movl (%eax),%ecx
	movl $-61,%edx
	andl %edx,%ecx
	movl $0,%edx
	orl %edx,%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l73:
.long 0
.section .pcmap
.long .Lcall_successor_l63
.long .Lframe_l74
.section .pcmap_data
.Lframe_l74:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l73
.long 0
.long 5
.long 0
.long 1
.long 0xffffffec
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

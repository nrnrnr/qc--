.globl main
.globl queens
.globl print
.globl x
.globl rows
.globl down
.globl up
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
.section .text
main:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl $0,%eax
L.2:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	movl $1,%esi
	leal down,%edi
	movl %edx,%ecx
	addl %edi,%ecx
	movl %esi,(%ecx)
	leal up,%ecx
	addl %ecx,%edx
	movl %esi,(%edx)
L.3:
	movl $1,%ecx
	addl %ecx,%eax
.Lbranch_target_l16:
	movl $15,%ecx
	cmpl %ecx,%eax
	jl L.2
.Lbranch_target_l12:
	movl $0,%eax
L.6:
	movl $1,%esi
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal rows,%ecx
	addl %ecx,%edx
	movl %esi,(%edx)
L.7:
	movl $1,%ecx
	addl %ecx,%eax
.Lbranch_target_l17:
	movl $8,%ecx
	cmpl %ecx,%eax
	jl L.6
.Lbranch_target_l11:
	movl $0,%ecx
	leal 16(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call queens
.Lcall_successor_l10:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l21:
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l22
.section .pcmap_data
.Lframe_l22:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l21
.long 2
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .text
queens:
	leal -24(%esp), %esp
	leal 24(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	leal 24(%esp), %eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	movl %esi,16(%esp)
	movl %ebp,12(%esp)
	movl %ebx,8(%esp)
.Linitialize_continuations_l24:
.Lproc_body_start_l23:
	movl $0,%ebx
L.14:
	movl $2,%ecx
	movl $0,%eax
.Lbranch_target_l44:
	movl %ebx,%edx
	shll %cl, %edx
	leal rows,%ebp
	addl %ebp,%edx
	movl (%edx),%edx
	cmpl %eax,%edx
	je L.18
.Lbranch_target_l37:
.Lbranch_target_l41:
	movl %ebx,%edx
	movl 4(%esp),%ebp
	subl %ebp,%edx
	shll %cl, %edx
	leal up,%ebp
	movl $28,%esi
	addl %esi,%ebp
	addl %ebp,%edx
	movl (%edx),%edx
	cmpl %eax,%edx
	je L.18
.Lbranch_target_l36:
.Lbranch_target_l42:
	movl %ebx,%edx
	movl 4(%esp),%ebp
	addl %ebp,%edx
	shll %cl, %edx
	leal down,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %eax,%ecx
	je L.18
.Lbranch_target_l35:
	movl $2,%ecx
	movl $0,%edx
	movl %ebx,%eax
	movl 4(%esp),%ebp
	addl %ebp,%eax
	shll %cl, %eax
	leal down,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	movl %ebx,%eax
	movl 4(%esp),%ebp
	subl %ebp,%eax
	shll %cl, %eax
	leal up,%ebp
	movl $28,%esi
	addl %esi,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	movl %ebx,%eax
	shll %cl, %eax
	leal rows,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $2,%ecx
	movl 4(%esp),%eax
	shll %cl, %eax
	leal x,%ecx
	addl %ecx,%eax
	movl %ebx,(%eax)
.Lbranch_target_l43:
	movl $7,%ecx
	movl 4(%esp),%eax
	cmpl %ecx,%eax
	jne L.22
.Lbranch_target_l34:
	call print
.Lcall_successor_l33:
	jmp L.23
L.22:
	movl $1,%eax
	movl 4(%esp),%ecx
	addl %eax,%ecx
	leal 24(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call queens
.Lcall_successor_l30:
L.23:
	movl $2,%ecx
	movl $1,%edx
	movl %ebx,%eax
	movl 4(%esp),%ebp
	addl %ebp,%eax
	shll %cl, %eax
	leal down,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	movl %ebx,%eax
	movl 4(%esp),%ebp
	subl %ebp,%eax
	shll %cl, %eax
	leal up,%ebp
	movl $28,%esi
	addl %esi,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	movl %ebx,%eax
	shll %cl, %eax
	leal rows,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
L.18:
L.15:
	movl $1,%eax
	addl %eax,%ebx
.Lbranch_target_l45:
	movl $8,%eax
	cmpl %eax,%ebx
	jl L.14
.Lbranch_target_l27:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%esi
	movl 12(%esp),%ebp
	movl 8(%esp),%ebx
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l49:
.long 0
.section .pcmap
.long .Lcall_successor_l33
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l49
.long 3
.long 14
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffff0
.long 0xffffffec
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l30
.long .Lframe_l51
.section .pcmap_data
.Lframe_l51:
.long 0x80000004
.long 0xffffffe8
.long 0xfffffffc
.long .Lstackdata_l49
.long 3
.long 14
.long 0
.long 1
.long 10
.long 0xfffffff8
.long 9
.long 0xfffffff4
.long 7
.long 0xfffffff0
.long 0xffffffec
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
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
print:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l53:
.Lproc_body_start_l52:
	movl $0,%edi
L.39:
	movl $2,%ecx
	movl %edi,%eax
	shll %cl, %eax
	leal x,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $49,%ecx
	addl %ecx,%eax
	leal 16(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal i_43,%eax
	leal 16(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l62:
L.40:
	movl $1,%eax
	addl %eax,%edi
.Lbranch_target_l66:
	movl $8,%eax
	cmpl %eax,%edi
	jl L.39
.Lbranch_target_l59:
	leal i_44,%ecx
	leal 16(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l58:
	movl $0,%eax
	leal 16(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l70:
.long 0
.section .pcmap
.long .Lcall_successor_l62
.long .Lframe_l71
.section .pcmap_data
.Lframe_l71:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l70
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0x4000000b
.long 0
.section .pcmap
.long .Lcall_successor_l58
.long .Lframe_l72
.section .pcmap_data
.Lframe_l72:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long .Lstackdata_l70
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 0
.long 0
.section .text
.section .bss
.align 4
x:
.skip 32, 0
.align 4
rows:
.skip 32, 0
.align 4
down:
.skip 60, 0
.align 4
up:
.skip 60, 0
.section .data
i_44:
.byte 10
.byte 0
i_43:
.byte 37
.byte 99
.byte 32
.byte 0

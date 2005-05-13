.globl addpoint
.globl canonrect
.globl makepoint
.globl makerect
.globl ptinrect
.globl y
.globl odd
.globl main
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
addpoint:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%esp)
	leal 16(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 16(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 16(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l9:
.Lproc_body_start_l8:
	movl (%eax),%edx
	movl (%ecx),%esi
	addl %esi,%edx
	movl %edx,(%eax)
	movl $4,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl (%esi),%edx
	addl %edi,%ecx
	movl (%ecx),%ecx
	addl %ecx,%edx
	movl %edx,(%esi)
	movl (%eax),%edx
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%esp),%eax
	movl %edx,(%eax)
	movl $4,%edx
	movl (%esp),%eax
	addl %edx,%eax
	movl %ecx,(%eax)
L.1:
	leal 16(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 16(%esp), %esp
	ret
.section .text
canonrect:
	leal -28(%esp), %esp
	leal 28(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 28(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%edx
	leal 28(%esp), %eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l20:
.Lproc_body_start_l19:
.Lbranch_target_l29:
	movl (%edx),%edi
	movl $8,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jge L.11
.Lbranch_target_l25:
	movl (%edx),%eax
	jmp L.12
L.11:
	movl $8,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%eax
L.12:
	leal 28(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl %eax,(%edi)
.Lbranch_target_l30:
	movl $4,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%edi
	movl $12,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jge L.15
.Lbranch_target_l24:
	movl $4,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%eax
	jmp L.16
L.15:
	movl $12,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%eax
L.16:
	leal 28(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %eax,(%edi)
.Lbranch_target_l31:
	movl (%edx),%edi
	movl $8,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jle L.19
.Lbranch_target_l23:
	movl (%edx),%eax
	jmp L.20
L.19:
	movl $8,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%eax
L.20:
	leal 28(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
.Lbranch_target_l32:
	movl $4,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%edi
	movl $12,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%eax
	cmpl %eax,%edi
	jle L.24
.Lbranch_target_l22:
	movl $4,%esi
	movl %edx,%eax
	addl %esi,%eax
	movl (%eax),%edx
	jmp L.25
L.24:
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%edx
L.25:
	leal 28(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $12,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl %esi,(%ecx)
	movl $4,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%esi
	leal 28(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%edi
	movl %ecx,%eax
	addl %edi,%eax
	movl %esi,(%eax)
	movl $12,%eax
	addl %eax,%ecx
	movl %edx,(%ecx)
L.8:
	leal 28(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 28(%esp), %esp
	ret
.section .text
makepoint:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%esp)
	leal 20(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
	leal 20(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%esp),%edx
	movl %eax,(%edx)
	movl $4,%edx
	movl (%esp),%eax
	addl %edx,%eax
	movl %ecx,(%eax)
L.37:
	leal 20(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
.section .text
makerect:
	leal -56(%esp), %esp
	leal 56(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	leal 56(%esp), %eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %edx
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 56(%esp), %edx
	movl (%edx),%edx
	movl %edx,20(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
.Linitialize_continuations_l50:
.Lproc_body_start_l49:
	movl (%ecx),%edx
	movl $4,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	leal 56(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	leal 56(%esp), %edx
	movl $-32,%esi
	addl %esi,%edx
	movl $4,%esi
	addl %esi,%edx
	movl %ecx,(%edx)
	movl (%eax),%edx
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %eax
	movl $-32,%esi
	addl %esi,%eax
	movl $8,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	leal 56(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 56(%esp), %eax
	movl $-16,%esi
	addl %esi,%eax
	movl $8,%esi
	addl %esi,%eax
	movl %edx,(%eax)
	leal 56(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 56(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 56(%esp), %ecx
	movl $-16,%eax
	addl %eax,%ecx
	leal 56(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call canonrect
.Lcall_successor_l54:
L.43:
	leal 56(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	leal 56(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l61:
.long 2
.long 0xffffffe0
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l54
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000004
.long 0xffffffc8
.long 0xffffffdc
.long .Lstackdata_l61
.long 2
.long 5
.long 0
.long 1
.long 11
.long 0xffffffd4
.long 10
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
ptinrect:
	leal -12(%esp), %esp
	leal 12(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 12(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 12(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l64:
.Lproc_body_start_l63:
	movl (%eax),%edx
.Lbranch_target_l77:
	movl (%ecx),%esi
	cmpl %esi,%edx
	jl L.52
.Lbranch_target_l70:
.Lbranch_target_l74:
	movl $8,%edi
	movl %ecx,%esi
	addl %edi,%esi
	movl (%esi),%esi
	cmpl %esi,%edx
	jge L.52
.Lbranch_target_l69:
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
.Lbranch_target_l75:
	movl %ecx,%esi
	addl %edx,%esi
	movl (%esi),%edx
	cmpl %edx,%eax
	jl L.52
.Lbranch_target_l68:
.Lbranch_target_l76:
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jge L.52
.Lbranch_target_l67:
	movl $1,%eax
	jmp L.53
L.52:
	movl $0,%eax
L.53:
	leal 12(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 12(%esp), %esp
	ret
.section .text
.section .data
y:
.byte 97
.byte 98
.byte 0
.section .text
odd:
	leal -20(%esp), %esp
	leal 20(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	movl %edi,8(%esp)
.Linitialize_continuations_l84:
.Lproc_body_start_l83:
	movsbl (%ecx),%eax
	leal 20(%esp), %edx
	movl $-4,%edi
	addl %edi,%edx
	movb %al,(%edx)
	movl $1,%edx
	movl %ecx,%eax
	addl %edx,%eax
	movsbl (%eax),%eax
	movl $2,%edx
	addl %edx,%ecx
	movsbl (%ecx),%ecx
	leal 20(%esp), %edx
	movl $-4,%edi
	addl %edi,%edx
	movl $1,%edi
	addl %edi,%edx
	movb %al,(%edx)
	leal 20(%esp), %edx
	movl $-4,%eax
	addl %eax,%edx
	movl $2,%eax
	addl %eax,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal i_61,%ecx
	leal 20(%esp), %eax
	movl $-20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 20(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	leal 20(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l89:
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l96:
.long 1
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l89
.long .Lframe_l97
.section .pcmap_data
.Lframe_l97:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff8
.long .Lstackdata_l96
.long 1
.long 3
.long 0
.long 1
.long 11
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
.align 4
i_66:
.long 0
.long 0
.align 4
i_67:
.long 0x140
.long 0x140
.align 4
i_68:
.long 0xffffffff
.long 0xffffffff
.long 1
.long 1
.long 20
.long 0x12c
.long 0x1f4
.long 0x190
.section .text
main:
	leal -192(%esp), %esp
	leal 192(%esp), %eax
	movl (%eax),%eax
	movl %eax,40(%esp)
	movl %edi,36(%esp)
	movl %esi,32(%esp)
	movl %ebp,28(%esp)
	movl %ebx,24(%esp)
.Linitialize_continuations_l99:
.Lproc_body_start_l98:
	leal i_66,%eax
	movl (%eax),%eax
	leal i_66,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-92,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal i_67,%eax
	movl (%eax),%eax
	leal i_67,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-84,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal i_68,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-148,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal i_68,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-148,%ebx
	addl %ebx,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal i_68,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-148,%ebx
	addl %ebx,%ecx
	movl $16,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal i_68,%eax
	movl $24,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal i_68,%ecx
	movl $28,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-148,%ebx
	addl %ebx,%ecx
	movl $24,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	movl $28,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $-10,%ecx
	leal 192(%esp), %edx
	movl $-76,%eax
	addl %eax,%edx
	leal 192(%esp), %eax
	movl $-192,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-188,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %eax
	movl $-184,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call makepoint
.Lcall_successor_l139:
	leal 192(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-60,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %ecx
	movl $-68,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %ecx
	movl $-60,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-188,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %ecx
	movl $-76,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-184,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call addpoint
.Lcall_successor_l136:
	movl $10,%ecx
	leal 192(%esp), %edx
	movl $-52,%eax
	addl %eax,%edx
	leal 192(%esp), %eax
	movl $-192,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-188,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %eax
	movl $-184,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call makepoint
.Lcall_successor_l133:
	leal 192(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-92,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-36,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %ecx
	movl $-44,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %ecx
	movl $-36,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-188,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %ecx
	movl $-52,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-184,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call addpoint
.Lcall_successor_l130:
	leal 192(%esp), %ecx
	movl $-116,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %ecx
	movl $-68,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-188,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %ecx
	movl $-44,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-184,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call makerect
.Lcall_successor_l127:
	movl $0,%eax
	movl %eax,20(%esp)
L.72:
.Lbranch_target_l144:
	movl $4,%ecx
	movl 20(%esp),%eax
	cmpl %ecx,%eax
	jb L.69
.Lbranch_target_l108:
	leal y,%eax
	movsbl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movb %al,(%ecx)
	leal y,%eax
	movl $1,%ecx
	addl %ecx,%eax
	movsbl (%eax),%eax
	leal y,%ecx
	movl $2,%edx
	addl %edx,%ecx
	movsbl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-4,%ebx
	addl %ebx,%ecx
	movl $1,%ebx
	addl %ebx,%ecx
	movb %al,(%ecx)
	leal 192(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	movl $2,%eax
	addl %eax,%ecx
	movl %edx,%eax
	movb %al,(%ecx)
	leal 192(%esp), %ecx
	movl $-4,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call odd
.Lcall_successor_l107:
	movl $0,%ecx
	leal 192(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call exit
.Lcall_successor_l104:
	movl $0,%eax
	leal 192(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	movl 36(%esp),%edi
	movl 32(%esp),%esi
	movl 28(%esp),%ebp
	movl 24(%esp),%ebx
	leal 192(%esp), %esp
	ret
L.69:
	movl $3,%ecx
	movl 20(%esp),%ebx
	shll %cl, %ebx
	leal 192(%esp), %ecx
	movl $-100,%eax
	addl %eax,%ecx
	leal 192(%esp), %edx
	movl $-148,%eax
	addl %eax,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 192(%esp), %eax
	movl $-148,%ebp
	addl %ebp,%eax
	movl $4,%ebp
	addl %ebp,%eax
	addl %eax,%ebx
	leal 192(%esp), %eax
	movl $-184,%ebp
	addl %ebp,%eax
	movl (%ebx),%ebx
	movl %ebx,(%eax)
	leal 192(%esp), %eax
	movl $-188,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call makepoint
.Lcall_successor_l124:
	leal i_73,%edx
	movl $3,%ecx
	movl 20(%esp),%eax
	shll %cl, %eax
	leal 192(%esp), %ecx
	movl $-148,%ebx
	addl %ebx,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 192(%esp), %ebx
	movl $-100,%eax
	addl %eax,%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal 192(%esp), %eax
	movl $-184,%ebp
	addl %ebp,%eax
	movl (%ebx),%ebx
	movl %ebx,(%eax)
	leal 192(%esp), %eax
	movl $-188,%ebx
	addl %ebx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %eax
	movl $-192,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l121:
	leal 192(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-28,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-20,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-116,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 192(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 192(%esp), %ecx
	movl $-20,%ebx
	addl %ebx,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	leal 192(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %ecx
	movl $-28,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 192(%esp), %ecx
	movl $-20,%eax
	addl %eax,%ecx
	leal 192(%esp), %eax
	movl $-188,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call ptinrect
.Lcall_successor_l118:
.Lbranch_target_l143:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne L.76
.Lbranch_target_l115:
	leal i_78,%ecx
	leal 192(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l114:
L.76:
	leal i_79,%ecx
	leal 192(%esp), %eax
	movl $-116,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 192(%esp), %eax
	movl $-116,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	leal 192(%esp), %eax
	movl $-116,%ebp
	addl %ebp,%eax
	movl $8,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	leal 192(%esp), %eax
	movl $-116,%esi
	addl %esi,%eax
	movl $12,%esi
	addl %esi,%eax
	leal 192(%esp), %edi
	movl $-176,%esi
	addl %esi,%edi
	movl (%eax),%eax
	movl %eax,(%edi)
	leal 192(%esp), %eax
	movl $-180,%esi
	addl %esi,%eax
	movl %ebp,(%eax)
	leal 192(%esp), %eax
	movl $-184,%ebp
	addl %ebp,%eax
	movl %ebx,(%eax)
	leal 192(%esp), %eax
	movl $-188,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	leal 192(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l111:
L.70:
	movl $1,%ecx
	movl 20(%esp),%eax
	addl %ecx,%eax
	movl %eax,20(%esp)
	jmp L.72
.section .pcmap_data
.Lstackdata_l148:
.long 14
.long 0xffffff6c
.long 0xffffff8c
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0xffffffcc
.long 0xffffffd4
.long 0xffffffdc
.long 0xffffffe4
.long 0xffffffec
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l139
.long .Lframe_l149
.section .pcmap_data
.Lframe_l149:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l136
.long .Lframe_l150
.section .pcmap_data
.Lframe_l150:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l133
.long .Lframe_l151
.section .pcmap_data
.Lframe_l151:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l130
.long .Lframe_l152
.section .pcmap_data
.Lframe_l152:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l127
.long .Lframe_l153
.section .pcmap_data
.Lframe_l153:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l107
.long .Lframe_l154
.section .pcmap_data
.Lframe_l154:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l104
.long .Lframe_l155
.section .pcmap_data
.Lframe_l155:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l124
.long .Lframe_l156
.section .pcmap_data
.Lframe_l156:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0xffffff54
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l121
.long .Lframe_l157
.section .pcmap_data
.Lframe_l157:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0xffffff54
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l118
.long .Lframe_l158
.section .pcmap_data
.Lframe_l158:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0xffffff54
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l114
.long .Lframe_l159
.section .pcmap_data
.Lframe_l159:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0xffffff54
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l111
.long .Lframe_l160
.section .pcmap_data
.Lframe_l160:
.long 0x80000004
.long 0xffffff40
.long 0xffffff68
.long .Lstackdata_l148
.long 4
.long 7
.long 0
.long 1
.long 11
.long 0xffffff64
.long 10
.long 0xffffff60
.long 9
.long 0xffffff5c
.long 7
.long 0xffffff58
.long 0xffffff54
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .data
i_79:
.byte 119
.byte 105
.byte 116
.byte 104
.byte 105
.byte 110
.byte 32
.byte 91
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 59
.byte 32
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 93
.byte 10
.byte 0
i_78:
.byte 110
.byte 111
.byte 116
.byte 32
.byte 0
i_73:
.byte 40
.byte 37
.byte 100
.byte 44
.byte 37
.byte 100
.byte 41
.byte 32
.byte 105
.byte 115
.byte 32
.byte 0
i_61:
.byte 37
.byte 115
.byte 10
.byte 0

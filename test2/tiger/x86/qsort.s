.globl tiger_main
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
.align 32
gc_data:
.long 0
.long 5
Lgbl_41:
.long 0
.byte 0
.long 19
Lgbl_114:
.long 14
.byte 115
.byte 111
.byte 114
.byte 116
.byte 101
.byte 100
.byte 32
.byte 98
.byte 121
.byte 32
.byte 110
.byte 97
.byte 109
.byte 101
.byte 0
.long 11
Lgbl_61:
.long 6
.byte 78
.byte 111
.byte 114
.byte 109
.byte 97
.byte 110
.byte 0
.long 9
Lgbl_59:
.long 4
.byte 79
.byte 109
.byte 114
.byte 105
.byte 0
.long 9
Lgbl_62:
.long 4
.byte 77
.byte 105
.byte 107
.byte 101
.byte 0
.long 18
Lgbl_115:
.long 13
.byte 115
.byte 111
.byte 114
.byte 116
.byte 101
.byte 100
.byte 32
.byte 98
.byte 121
.byte 32
.byte 110
.byte 117
.byte 109
.byte 0
.long 8
Lgbl_64:
.long 3
.byte 32
.byte 58
.byte 10
.byte 0
.long 10
Lgbl_58:
.long 5
.byte 68
.byte 97
.byte 118
.byte 105
.byte 100
.byte 0
.long 9
Lgbl_53:
.long 4
.byte 80
.byte 97
.byte 117
.byte 108
.byte 0
.long 6
Lgbl_66:
.long 1
.byte 9
.byte 0
.long 6
Lgbl_67:
.long 1
.byte 10
.byte 0
.long 9
Lgbl_55:
.long 4
.byte 74
.byte 111
.byte 97
.byte 111
.byte 0
.long 11
Lgbl_54:
.long 6
.byte 83
.byte 116
.byte 117
.byte 97
.byte 114
.byte 116
.byte 0
.long 10
Lgbl_56:
.long 5
.byte 75
.byte 101
.byte 118
.byte 105
.byte 110
.byte 0
.long 14
Lgbl_60:
.long 9
.byte 75
.byte 97
.byte 116
.byte 104
.byte 108
.byte 101
.byte 101
.byte 101
.byte 110
.byte 0
.long 8
Lgbl_57:
.long 3
.byte 75
.byte 105
.byte 109
.byte 0
.section .text
initlist_49:
	leal -68(%esp), %esp
	leal 68(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l18:
	movl $-4,%ecx
	movl %eax,32(%esp)
	leal 68(%esp), %eax
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-4,%ecx
	movl %edx,36(%esp)
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $0,%eax
	movl $-64,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $15,%eax
	movl $-60,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl %edi,52(%esp)
	movl %esi,48(%esp)
	movl %ebp,44(%esp)
	movl %ebx,40(%esp)
	call tig_bounds_check
join_l80:
	movl $10,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $8,%eax
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $1,%eax
	movl $-64,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $16,%eax
	movl $-60,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l77:
	movl $32,%eax
	movl $8,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $-1,%eax
	movl $8,%ecx
	movl $-4,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl $-68,%ecx
	leal 68(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl $2,%ecx
	movl $-64,%ebx
	leal 68(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $17,%ecx
	movl $-60,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,56(%esp)
	call tig_bounds_check
join_l74:
	movl $12,%eax
	movl $8,%ecx
	movl $-4,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $3,%eax
	movl $-64,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $18,%eax
	movl $-60,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l71:
	movl $567,%eax
	movl $16,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $8,%eax
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-64,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $19,%eax
	movl $-60,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l68:
	movl $3,%eax
	movl $20,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $8,%eax
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $5,%eax
	movl $-64,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $20,%eax
	movl $-60,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l65:
	movl $18,%eax
	movl $24,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $8,%eax
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $6,%eax
	movl $-64,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $21,%eax
	movl $-60,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l62:
	movl $1,%eax
	movl $28,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $-51,%eax
	movl $8,%ecx
	movl $-4,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl $-68,%ecx
	leal 68(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl $7,%ecx
	movl $-64,%ebx
	leal 68(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $22,%ecx
	movl $-60,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl %eax,60(%esp)
	call tig_bounds_check
join_l59:
	movl $32,%eax
	movl $8,%ecx
	movl $-4,%edx
	leal 68(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-64,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $23,%eax
	movl $-60,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l56:
	movl $789,%eax
	movl $36,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $8,%eax
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $9,%eax
	movl $-64,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $24,%eax
	movl $-60,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l53:
	movl $49,%eax
	movl $40,%ecx
	movl $8,%edx
	movl $-4,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	movl $8,%eax
	movl $-4,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl $-68,%eax
	leal 68(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $0,%eax
	movl $-64,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $25,%eax
	movl $-60,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l50:
	leal Lgbl_53,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 68(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $-4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $1,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $26,%eax
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
join_l47:
	leal Lgbl_54,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 68(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $-4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $2,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $27,%eax
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
join_l44:
	leal Lgbl_55,%eax
	movl $4,%ecx
	movl $12,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 68(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $-4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $3,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $28,%eax
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
join_l41:
	leal Lgbl_56,%eax
	movl $4,%ecx
	movl $16,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 68(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $-4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $29,%eax
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
join_l38:
	leal Lgbl_57,%eax
	movl $4,%ecx
	movl $20,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 68(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $-4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $5,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $30,%eax
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
join_l35:
	leal Lgbl_58,%eax
	movl $4,%ecx
	movl $24,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 68(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $-4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $6,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $31,%eax
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
join_l32:
	leal Lgbl_59,%eax
	movl $4,%ecx
	movl $28,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 68(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $-4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $7,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $32,%eax
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
join_l29:
	leal Lgbl_60,%eax
	movl $4,%ecx
	movl $32,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 68(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $-4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $8,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $33,%eax
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
join_l26:
	leal Lgbl_61,%eax
	movl $4,%ecx
	movl $36,%edx
	movl $8,%ebx
	movl $-4,%ebp
	leal 68(%esp), %esi
	addl %ebp,%esi
	movl (%esi),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $8,%eax
	movl $-4,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl $-68,%eax
	leal 68(%esp), %ecx
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	movl $9,%eax
	movl $-64,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $34,%eax
	movl $-60,%edx
	leal 68(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_bounds_check
join_l23:
	leal Lgbl_62,%ecx
	movl $4,%edx
	movl $40,%edi
	movl $8,%esi
	movl $-4,%ebx
	leal 68(%esp), %ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	addl %esi,%ebx
	movl (%ebx),%esi
	addl %edi,%esi
	movl (%esi),%edi
	addl %edx,%edi
	movl %ecx,(%edi)
	movl $0,%eax
	movl $0,%ecx
	leal 68(%esp), %edi
	addl %ecx,%edi
	movl 36(%esp),%ecx
	movl %ecx,(%edi)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 68(%esp), %esp
	ret
killer_C16:
	movl $0,%eax
	movl $0,%ecx
	leal 68(%esp), %edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl %ecx,(%edx)
	movl 44(%esp),%ebp
	movl 40(%esp),%ebx
	movl 48(%esp),%esi
	movl 52(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
stackdata_l86:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l80
.long frame_l87
.section .pcmap_data
frame_l87:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l77
.long frame_l88
.section .pcmap_data
frame_l88:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l74
.long frame_l89
.section .pcmap_data
frame_l89:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l71
.long frame_l90
.section .pcmap_data
frame_l90:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l68
.long frame_l91
.section .pcmap_data
frame_l91:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l65
.long frame_l92
.section .pcmap_data
frame_l92:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l62
.long frame_l93
.section .pcmap_data
frame_l93:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l59
.long frame_l94
.section .pcmap_data
frame_l94:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0xfffffff8
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l56
.long frame_l95
.section .pcmap_data
frame_l95:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l53
.long frame_l96
.section .pcmap_data
frame_l96:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l50
.long frame_l97
.section .pcmap_data
frame_l97:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l47
.long frame_l98
.section .pcmap_data
frame_l98:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l44
.long frame_l99
.section .pcmap_data
frame_l99:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l41
.long frame_l100
.section .pcmap_data
frame_l100:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l38
.long frame_l101
.section .pcmap_data
frame_l101:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l35
.long frame_l102
.section .pcmap_data
frame_l102:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l32
.long frame_l103
.section .pcmap_data
frame_l103:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l29
.long frame_l104
.section .pcmap_data
frame_l104:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l26
.long frame_l105
.section .pcmap_data
frame_l105:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .pcmap
.long join_l23
.long frame_l106
.section .pcmap_data
frame_l106:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l86
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
.long 0x40000009
.long 0xffffffe8
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long initlist_49_gc_data
.section .text
.section .data
initlist_49_gc_data:
.long 1
.long 1
.long 4
.long 1
.long 0
.long 0
.long 0
.section .text
print_list_50:
	leal -76(%esp), %esp
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 76(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l115:
	movl %eax,32(%esp)
	movl $-12,%eax
	movl %ecx,36(%esp)
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl 32(%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-12,%ecx
	movl %edx,40(%esp)
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 36(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $-76,%eax
	leal 76(%esp), %edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl %edi,56(%esp)
	movl %esi,52(%esp)
	movl %ebp,48(%esp)
	movl %ebx,44(%esp)
	call tig_print
join_l143:
	leal Lgbl_64,%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l140:
	movl $0,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	jmp Lloop_start_68
Lloop_start_68:
	movl $8,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	movl $4,%ebx
	movl $-12,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	subl %ecx,%ebx
	cmpl %ebx,%eax
	jle if_true_l147
if_false_l148:
	movl $0,%eax
	jmp end_if_l149
if_true_l147:
	movl $1,%eax
	jmp end_if_l149
end_if_l149:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne join_l136
join_l137:
	jmp Lloop_end_65
Lloop_end_65:
	movl $0,%eax
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 80(%esp), %esp
	ret
join_l136:
	jmp Lloop_body_69
Lloop_body_69:
	movl $8,%eax
	movl $-12,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-72,%ebx
	leal 76(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl $40,%ecx
	movl $-68,%ebx
	leal 76(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_bounds_check
join_l135:
	movl $4,%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $-76,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	call tig_printi
join_l132:
	leal Lgbl_66,%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l129:
	movl $8,%eax
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-72,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $42,%ecx
	movl $-68,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-76,%ecx
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
join_l126:
	movl $4,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $-12,%ebx
	leal 76(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl $-76,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ebp),%eax
	movl %eax,(%ecx)
	call tig_print
join_l123:
	leal Lgbl_67,%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l120:
	movl $1,%eax
	movl $8,%ebx
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	addl %eax,%ebx
	movl $8,%eax
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	jmp Lloop_start_68
killer_C113:
	movl $0,%eax
	movl $4,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl %ecx,(%edx)
	movl 48(%esp),%ebp
	movl 44(%esp),%ebx
	movl 52(%esp),%esi
	movl 56(%esp),%edi
	leal 80(%esp), %esp
	ret
.section .pcmap_data
stackdata_l152:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l143
.long frame_l153
.section .pcmap_data
frame_l153:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l152
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long print_list_50_gc_data
.section .pcmap
.long join_l140
.long frame_l154
.section .pcmap_data
frame_l154:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l152
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long print_list_50_gc_data
.section .pcmap
.long join_l135
.long frame_l155
.section .pcmap_data
frame_l155:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l152
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long print_list_50_gc_data
.section .pcmap
.long join_l132
.long frame_l156
.section .pcmap_data
frame_l156:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l152
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long print_list_50_gc_data
.section .pcmap
.long join_l129
.long frame_l157
.section .pcmap_data
frame_l157:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l152
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long print_list_50_gc_data
.section .pcmap
.long join_l126
.long frame_l158
.section .pcmap_data
frame_l158:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l152
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long print_list_50_gc_data
.section .pcmap
.long join_l123
.long frame_l159
.section .pcmap_data
frame_l159:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l152
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long print_list_50_gc_data
.section .pcmap
.long join_l120
.long frame_l160
.section .pcmap_data
frame_l160:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l152
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long print_list_50_gc_data
.section .text
.section .data
print_list_50_gc_data:
.long 3
.long 1
.long 1
.long 0
.long 3
.long 1
.long 1
.long 0
.section .text
lte_71:
	leal -108(%esp), %esp
	movl $4,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,32(%esp)
	leal 108(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 108(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l169:
	movl %ecx,36(%esp)
	movl $-12,%ecx
	movl %edx,40(%esp)
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,44(%esp)
	leal 108(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 40(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne if_true_l192
if_false_l193:
	movl $0,%eax
	jmp end_if_l194
if_true_l192:
	movl $1,%eax
	jmp end_if_l194
end_if_l194:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l187
join_l188:
	jmp LifFalse_78
LifFalse_78:
	movl $8,%eax
	movl $-12,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	movl %ebx,48(%esp)
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-104,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $50,%ecx
	movl $-100,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-108,%ecx
	leal 108(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	call tig_bounds_check
join_l177:
	movl $4,%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $8,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl (%ebx),%eax
	movl $8,%ebx
	movl $-12,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl $-104,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%ebp),%ecx
	movl %ecx,(%edx)
	movl $50,%ecx
	movl $-100,%edx
	leal 108(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $-108,%ecx
	leal 108(%esp), %ebp
	addl %ecx,%ebp
	movl %ebx,(%ebp)
	movl %eax,64(%esp)
	call tig_bounds_check
join_l174:
	movl $4,%ecx
	movl $8,%edx
	movl $-12,%edi
	leal 108(%esp), %esi
	addl %edi,%esi
	addl %edx,%esi
	movl (%esi),%edx
	movl $1,%esi
	addl %edx,%esi
	imull %ecx,%esi
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %edi
	addl %edx,%edi
	movl (%edi),%edx
	movl (%edx),%edi
	addl %ecx,%edi
	movl (%edi),%ecx
	addl %esi,%ecx
	movl (%ecx),%esi
	movl (%esi),%ecx
	movl 64(%esp),%esi
	cmpl %ecx,%esi
	jle if_true_l195
if_false_l196:
	movl $0,%eax
	jmp end_if_l197
if_true_l195:
	movl $1,%eax
	jmp end_if_l197
end_if_l197:
	jmp LifEnd_79
join_l187:
	jmp LifTrue_77
LifTrue_77:
	movl $8,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ecx
	movl %ebx,48(%esp)
	leal 108(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl $-104,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl $49,%ecx
	movl $-100,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-108,%ecx
	leal 108(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	call tig_bounds_check
join_l186:
	movl $4,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 108(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $8,%ebp
	movl $-12,%ecx
	leal 108(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl $8,%ebx
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-104,%ebx
	leal 108(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl $49,%ecx
	movl $-100,%ebx
	leal 108(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-108,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl %ebp,(%edx)
	movl %eax,68(%esp)
	call tig_bounds_check
join_l183:
	movl $4,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $-12,%ebx
	leal 108(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl $-104,%eax
	leal 108(%esp), %ecx
	addl %eax,%ecx
	movl (%ebp),%eax
	movl %eax,(%ecx)
	movl $-108,%eax
	leal 108(%esp), %ecx
	addl %eax,%ecx
	movl 68(%esp),%eax
	movl %eax,(%ecx)
	call tig_compare_str
join_l180:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle if_true_l198
if_false_l199:
	movl $0,%eax
	jmp end_if_l200
if_true_l198:
	movl $1,%eax
	jmp end_if_l200
end_if_l200:
	jmp LifEnd_79
LifEnd_79:
	movl $8,%ecx
	leal 108(%esp), %esi
	addl %ecx,%esi
	movl 44(%esp),%ecx
	movl %ecx,(%esi)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 116(%esp), %esp
	ret
killer_C167:
	movl $0,%eax
	movl $8,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 116(%esp), %esp
	ret
.section .pcmap_data
stackdata_l203:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l186
.long frame_l204
.section .pcmap_data
frame_l204:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l203
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long lte_71_gc_data
.section .pcmap
.long join_l183
.long frame_l205
.section .pcmap_data
frame_l205:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l203
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd8
.long 0
.long lte_71_gc_data
.section .pcmap
.long join_l180
.long frame_l206
.section .pcmap_data
frame_l206:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l203
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long lte_71_gc_data
.section .pcmap
.long join_l177
.long frame_l207
.section .pcmap_data
frame_l207:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l203
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long lte_71_gc_data
.section .pcmap
.long join_l174
.long frame_l208
.section .pcmap_data
frame_l208:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l203
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long lte_71_gc_data
.section .text
.section .data
lte_71_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 8
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 1
.section .text
gt_72:
	leal -108(%esp), %esp
	movl $4,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,32(%esp)
	leal 108(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 108(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l217:
	movl %ecx,36(%esp)
	movl $-12,%ecx
	movl %edx,40(%esp)
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-12,%edx
	movl %eax,44(%esp)
	leal 108(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 40(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-12,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $0,%edx
	cmpl %edx,%eax
	jne if_true_l240
if_false_l241:
	movl $0,%eax
	jmp end_if_l242
if_true_l240:
	movl $1,%eax
	jmp end_if_l242
end_if_l242:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l235
join_l236:
	jmp LifFalse_83
LifFalse_83:
	movl $8,%eax
	movl $-12,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-12,%edx
	movl %ebx,48(%esp)
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-104,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $54,%ecx
	movl $-100,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-108,%ecx
	leal 108(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	call tig_bounds_check
join_l225:
	movl $4,%eax
	movl $4,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $8,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl (%ebx),%eax
	movl $8,%ebx
	movl $-12,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl $-104,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%ebp),%ecx
	movl %ecx,(%edx)
	movl $54,%ecx
	movl $-100,%edx
	leal 108(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $-108,%ecx
	leal 108(%esp), %ebp
	addl %ecx,%ebp
	movl %ebx,(%ebp)
	movl %eax,64(%esp)
	call tig_bounds_check
join_l222:
	movl $4,%ecx
	movl $8,%edx
	movl $-12,%edi
	leal 108(%esp), %esi
	addl %edi,%esi
	addl %edx,%esi
	movl (%esi),%edx
	movl $1,%esi
	addl %edx,%esi
	imull %ecx,%esi
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %edi
	addl %edx,%edi
	movl (%edi),%edx
	movl (%edx),%edi
	addl %ecx,%edi
	movl (%edi),%ecx
	addl %esi,%ecx
	movl (%ecx),%esi
	movl (%esi),%ecx
	movl 64(%esp),%esi
	cmpl %ecx,%esi
	jg if_true_l243
if_false_l244:
	movl $0,%eax
	jmp end_if_l245
if_true_l243:
	movl $1,%eax
	jmp end_if_l245
end_if_l245:
	jmp LifEnd_84
join_l235:
	jmp LifTrue_82
LifTrue_82:
	movl $8,%eax
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-12,%ecx
	movl %ebx,48(%esp)
	leal 108(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl $-104,%edx
	leal 108(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl $53,%ecx
	movl $-100,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-108,%ecx
	leal 108(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	call tig_bounds_check
join_l234:
	movl $4,%eax
	movl $4,%ecx
	movl $4,%edx
	movl $-12,%ebx
	leal 108(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $8,%ebp
	movl $-12,%ecx
	leal 108(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl (%ecx),%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl $8,%ebx
	movl $-12,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl $-104,%ebx
	leal 108(%esp), %ecx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	movl $53,%ecx
	movl $-100,%ebx
	leal 108(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-108,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl %ebp,(%edx)
	movl %eax,68(%esp)
	call tig_bounds_check
join_l231:
	movl $4,%eax
	movl $4,%ecx
	movl $8,%edx
	movl $-12,%ebx
	leal 108(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $1,%ebp
	addl %edx,%ebp
	imull %ecx,%ebp
	movl $8,%ecx
	movl $-12,%edx
	leal 108(%esp), %ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl (%edx),%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	addl %eax,%ebp
	movl $-104,%eax
	leal 108(%esp), %ecx
	addl %eax,%ecx
	movl (%ebp),%eax
	movl %eax,(%ecx)
	movl $-108,%eax
	leal 108(%esp), %ecx
	addl %eax,%ecx
	movl 68(%esp),%eax
	movl %eax,(%ecx)
	call tig_compare_str
join_l228:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg if_true_l246
if_false_l247:
	movl $0,%eax
	jmp end_if_l248
if_true_l246:
	movl $1,%eax
	jmp end_if_l248
end_if_l248:
	jmp LifEnd_84
LifEnd_84:
	movl $8,%ecx
	leal 108(%esp), %esi
	addl %ecx,%esi
	movl 44(%esp),%ecx
	movl %ecx,(%esi)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 116(%esp), %esp
	ret
killer_C215:
	movl $0,%eax
	movl $8,%ecx
	leal 108(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 116(%esp), %esp
	ret
.section .pcmap_data
stackdata_l251:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l234
.long frame_l252
.section .pcmap_data
frame_l252:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l251
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long gt_72_gc_data
.section .pcmap
.long join_l231
.long frame_l253
.section .pcmap_data
frame_l253:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l251
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd8
.long 0
.long gt_72_gc_data
.section .pcmap
.long join_l228
.long frame_l254
.section .pcmap_data
frame_l254:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l251
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long gt_72_gc_data
.section .pcmap
.long join_l225
.long frame_l255
.section .pcmap_data
frame_l255:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l251
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long gt_72_gc_data
.section .pcmap
.long join_l222
.long frame_l256
.section .pcmap_data
frame_l256:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l251
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffc4
.long 0x40000009
.long 0xffffffc8
.long 0x4000000a
.long 0xffffffcc
.long 0x4000000b
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long gt_72_gc_data
.section .text
.section .data
gt_72_gc_data:
.long 3
.long 1
.long 0
.long 0
.long 8
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 1
.section .text
exchange_86:
	leal -80(%esp), %esp
	movl $4,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,32(%esp)
	leal 80(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 80(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l265:
	movl %ecx,36(%esp)
	movl $-16,%ecx
	movl %edx,40(%esp)
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,44(%esp)
	leal 80(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 40(%esp),%eax
	movl %eax,(%edx)
	movl $8,%eax
	movl $-16,%edx
	leal 80(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	movl $-16,%ecx
	movl %ebx,48(%esp)
	leal 80(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl $-76,%edx
	leal 80(%esp), %ecx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl $60,%ecx
	movl $-72,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-80,%ecx
	leal 80(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	movl %edi,60(%esp)
	movl %esi,56(%esp)
	movl %ebp,52(%esp)
	call tig_bounds_check
join_l279:
	movl $4,%eax
	movl $4,%ecx
	movl $-16,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $8,%eax
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebx,%eax
	movl $12,%ebx
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl $8,%edx
	movl $-16,%ebx
	leal 80(%esp), %eax
	addl %ebx,%eax
	movl (%eax),%ebx
	movl (%ebx),%eax
	movl (%eax),%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $8,%ebx
	movl $-16,%eax
	leal 80(%esp), %ecx
	addl %eax,%ecx
	addl %ebx,%ecx
	movl $-76,%ebx
	leal 80(%esp), %eax
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	movl $61,%eax
	movl $-72,%ebx
	leal 80(%esp), %ecx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl $-80,%eax
	leal 80(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	call tig_bounds_check
join_l276:
	movl $8,%eax
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl $-76,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%ebx),%ecx
	movl %ecx,(%edx)
	movl $61,%ecx
	movl $-72,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-80,%ecx
	leal 80(%esp), %ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	call tig_bounds_check
join_l273:
	movl $4,%eax
	movl $8,%ecx
	movl $-16,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	imull %eax,%ebx
	movl $8,%eax
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %ebx,%eax
	movl $4,%ebx
	movl $4,%ecx
	movl $-16,%edx
	leal 80(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $1,%ebp
	addl %ecx,%ebp
	imull %ebx,%ebp
	movl $8,%ebx
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	addl %ebp,%ebx
	movl (%eax),%ebp
	movl %ebp,(%ebx)
	movl $8,%ebx
	movl $-16,%ebp
	leal 80(%esp), %eax
	addl %ebp,%eax
	movl (%eax),%ebp
	movl (%ebp),%eax
	movl (%eax),%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl $8,%ebp
	movl $-16,%eax
	leal 80(%esp), %ecx
	addl %eax,%ecx
	addl %ebp,%ecx
	movl $-76,%ebp
	leal 80(%esp), %eax
	addl %ebp,%eax
	movl (%ecx),%ebp
	movl %ebp,(%eax)
	movl $61,%eax
	movl $-72,%ebp
	leal 80(%esp), %ecx
	addl %ebp,%ecx
	movl %eax,(%ecx)
	movl $-80,%eax
	leal 80(%esp), %ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	call tig_bounds_check
join_l270:
	movl $12,%ecx
	movl $-16,%edx
	leal 80(%esp), %edi
	addl %edx,%edi
	addl %ecx,%edi
	movl $4,%ecx
	movl $8,%edx
	movl $-16,%esi
	leal 80(%esp), %ebx
	addl %esi,%ebx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $1,%ebx
	addl %edx,%ebx
	imull %ecx,%ebx
	movl $8,%ecx
	movl $-16,%edx
	leal 80(%esp), %esi
	addl %edx,%esi
	movl (%esi),%edx
	movl (%edx),%esi
	movl (%esi),%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	addl %ebx,%ecx
	movl (%edi),%ebx
	movl %ebx,(%ecx)
	movl $0,%eax
	movl $8,%ecx
	leal 80(%esp), %ebx
	addl %ecx,%ebx
	movl 44(%esp),%ecx
	movl %ecx,(%ebx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 88(%esp), %esp
	ret
killer_C263:
	movl $0,%eax
	movl $8,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	movl 52(%esp),%ebp
	movl 48(%esp),%ebx
	movl 56(%esp),%esi
	movl 60(%esp),%edi
	leal 88(%esp), %esp
	ret
.section .pcmap_data
stackdata_l285:
.long 1
.long 0xfffffff0
.section .pcmap
.long join_l279
.long frame_l286
.section .pcmap_data
frame_l286:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l285
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long exchange_86_gc_data
.section .pcmap
.long join_l276
.long frame_l287
.section .pcmap_data
frame_l287:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l285
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long exchange_86_gc_data
.section .pcmap
.long join_l273
.long frame_l288
.section .pcmap_data
frame_l288:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l285
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long exchange_86_gc_data
.section .pcmap
.long join_l270
.long frame_l289
.section .pcmap_data
frame_l289:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l285
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long exchange_86_gc_data
.section .text
.section .data
exchange_86_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 1
.long 4
.long 1
.long 0
.long 0
.long 0
.section .text
partition_73:
	leal -48(%esp), %esp
	movl $4,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl %eax,(%esp)
	leal 48(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal 48(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l298:
	movl %ecx,4(%esp)
	movl $-16,%ecx
	movl %edx,8(%esp)
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,12(%esp)
	leal 48(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-16,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	movl %ebx,16(%esp)
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	jmp Lloop_start_106
Lloop_start_106:
	movl $4,%eax
	movl $-16,%ebx
	leal 48(%esp), %ecx
	addl %ebx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-16,%ebx
	leal 48(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	cmpl %ecx,%eax
	jl if_true_l328
if_false_l329:
	movl $0,%eax
	jmp end_if_l330
if_true_l328:
	movl $1,%eax
	jmp end_if_l330
end_if_l330:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l323
join_l324:
	jmp Lloop_end_88
Lloop_end_88:
	leal -32(%esp), %esp
	movl $-16,%eax
	leal 80(%esp), %ecx
	addl %eax,%ecx
	movl $12,%eax
	movl $-16,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $8,%ebx
	movl $-16,%edx
	movl %ebp,52(%esp)
	leal 80(%esp), %ebp
	addl %edx,%ebp
	addl %ebx,%ebp
	movl $-76,%ebx
	leal 80(%esp), %edx
	addl %ebx,%edx
	movl (%ebp),%ebx
	movl %ebx,(%edx)
	movl $-80,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl %ecx,%eax
	call exchange_86
join_l303:
	leal 24(%esp), %esp
	movl $8,%eax
	movl $-16,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	leal 56(%esp), %esp
	ret
join_l323:
	jmp Lloop_body_107
Lloop_body_107:
	jmp Lloop_start_94
Lloop_start_94:
	leal -32(%esp), %esp
	movl $-16,%ebx
	leal 80(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%ebx
	leal 80(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	movl $-16,%ebx
	movl %ebp,52(%esp)
	leal 80(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl $-76,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl (%ebp),%edx
	movl %edx,(%ebx)
	movl $-80,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call lte_71
join_l322:
	leal 24(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l318
join_l319:
	jmp LifFalse_92
LifFalse_92:
	movl $0,%eax
	jmp LifEnd_93
join_l318:
	jmp LifTrue_91
LifTrue_91:
	movl $4,%ecx
	movl $-16,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $8,%ebx
	movl $-16,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	addl %ebx,%ebp
	movl (%ebp),%ebx
	cmpl %ebx,%ecx
	jl if_true_l331
if_false_l332:
	movl $0,%eax
	jmp end_if_l333
if_true_l331:
	movl $1,%eax
	jmp end_if_l333
end_if_l333:
	jmp LifEnd_93
LifEnd_93:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l316
join_l317:
	jmp Lloop_end_89
Lloop_end_89:
	jmp Lloop_start_101
Lloop_start_101:
	leal -32(%esp), %esp
	movl $-16,%eax
	leal 80(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-16,%ebx
	leal 80(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $12,%ebp
	movl $-16,%ebx
	leal 80(%esp), %edx
	addl %ebx,%edx
	addl %ebp,%edx
	movl $-76,%ebp
	leal 80(%esp), %ebx
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	movl $-80,%ebx
	leal 80(%esp), %ebp
	addl %ebx,%ebp
	movl %ecx,(%ebp)
	call gt_72
join_l315:
	leal 24(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l311
join_l312:
	jmp LifFalse_99
LifFalse_99:
	movl $0,%eax
	jmp LifEnd_100
join_l311:
	jmp LifTrue_98
LifTrue_98:
	movl $8,%ecx
	movl $-16,%edx
	leal 48(%esp), %ebp
	addl %edx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $4,%ebp
	movl $-16,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	cmpl %ebp,%ecx
	jge if_true_l334
if_false_l335:
	movl $0,%eax
	jmp end_if_l336
if_true_l334:
	movl $1,%eax
	jmp end_if_l336
end_if_l336:
	jmp LifEnd_100
LifEnd_100:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l309
join_l310:
	jmp Lloop_end_96
Lloop_end_96:
	movl $4,%eax
	movl $-16,%ecx
	leal 48(%esp), %ebp
	addl %ecx,%ebp
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $8,%ebp
	movl $-16,%ecx
	leal 48(%esp), %ebx
	addl %ecx,%ebx
	addl %ebp,%ebx
	movl (%ebx),%ebp
	cmpl %ebp,%eax
	jl if_true_l337
if_false_l338:
	movl $0,%eax
	jmp end_if_l339
if_true_l337:
	movl $1,%eax
	jmp end_if_l339
end_if_l339:
	movl $0,%ebp
	cmpl %ebp,%eax
	jne join_l307
join_l308:
	jmp LifFalse_104
LifFalse_104:
	jmp LifEnd_105
join_l307:
	jmp LifTrue_103
LifTrue_103:
	leal -32(%esp), %esp
	movl $-16,%ebp
	leal 80(%esp), %eax
	addl %ebp,%eax
	movl $4,%ebp
	movl $-16,%ebx
	leal 80(%esp), %ecx
	addl %ebx,%ecx
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $8,%ecx
	movl $-16,%ebx
	leal 80(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl $-76,%ecx
	leal 80(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl $-80,%ecx
	leal 80(%esp), %ebx
	addl %ecx,%ebx
	movl %ebp,(%ebx)
	call exchange_86
join_l306:
	leal 24(%esp), %esp
	jmp LifEnd_105
LifEnd_105:
	jmp join_l340
join_l340:
	movl 20(%esp),%ebp
	jmp Lloop_start_106
join_l309:
	jmp Lloop_body_102
Lloop_body_102:
	movl $1,%eax
	movl $8,%ecx
	movl $-16,%ebx
	leal 48(%esp), %ebp
	addl %ebx,%ebp
	addl %ecx,%ebp
	movl (%ebp),%ecx
	subl %eax,%ecx
	movl $8,%eax
	movl $-16,%ebp
	leal 48(%esp), %ebx
	addl %ebp,%ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	jmp Lloop_start_101
join_l316:
	jmp Lloop_body_95
Lloop_body_95:
	movl $1,%ebx
	movl $4,%ebp
	movl $-16,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	addl %ebp,%edx
	movl (%edx),%ebp
	addl %ebx,%ebp
	movl $4,%ebx
	movl $-16,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl %ebp,(%ecx)
	jmp join_l341
join_l341:
	movl 20(%esp),%ebp
	jmp Lloop_start_94
.section .pcmap_data
stackdata_l343:
.long 1
.long 0xfffffff0
.section .pcmap
.long join_l322
.long frame_l344
.section .pcmap_data
frame_l344:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l343
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long 0
.long partition_73_gc_data
.section .pcmap
.long join_l315
.long frame_l345
.section .pcmap_data
frame_l345:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l343
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long 0
.long partition_73_gc_data
.section .pcmap
.long join_l306
.long frame_l346
.section .pcmap_data
frame_l346:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l343
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long 0
.long partition_73_gc_data
.section .pcmap
.long join_l303
.long frame_l347
.section .pcmap_data
frame_l347:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l343
.long 0x80000008
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long 0
.long partition_73_gc_data
.section .text
.section .data
partition_73_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 0
.long 8
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
qsort_74:
	leal -48(%esp), %esp
	movl $4,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	movl %eax,(%esp)
	leal 48(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl (%eax),%eax
initialize_continuations_l356:
	movl %edx,4(%esp)
	movl $-16,%edx
	movl %ecx,8(%esp)
	leal 48(%esp), %ecx
	addl %edx,%ecx
	movl (%esp),%edx
	movl %edx,(%ecx)
	movl $4,%ecx
	movl $-16,%edx
	movl %eax,12(%esp)
	leal 48(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl $8,%eax
	movl $-16,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $4,%eax
	movl $-16,%edx
	leal 48(%esp), %ecx
	addl %edx,%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	movl $-16,%edx
	movl %ebx,16(%esp)
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	cmpl %ecx,%eax
	jl if_true_l373
if_false_l374:
	movl $0,%eax
	jmp end_if_l375
if_true_l373:
	movl $1,%eax
	jmp end_if_l375
end_if_l375:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l368
join_l369:
	jmp LifFalse_110
LifFalse_110:
	movl %esi,24(%esp)
	movl %ebp,20(%esp)
	jmp LifEnd_111
join_l368:
	jmp LifTrue_109
LifTrue_109:
	leal -32(%esp), %esp
	movl $-16,%ebx
	leal 80(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	movl $-16,%ebx
	leal 80(%esp), %edx
	addl %ebx,%edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $8,%edx
	movl $-16,%ebx
	movl %ebp,52(%esp)
	leal 80(%esp), %ebp
	addl %ebx,%ebp
	addl %edx,%ebp
	movl $-76,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl (%ebp),%edx
	movl %edx,(%ebx)
	movl $-80,%edx
	leal 80(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call partition_73
join_l367:
	leal 24(%esp), %esp
	movl $12,%ecx
	movl $-16,%edx
	leal 48(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl %eax,(%ebx)
	leal -32(%esp), %esp
	movl $-16,%eax
	leal 80(%esp), %ebx
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	movl $-16,%ecx
	leal 80(%esp), %edx
	addl %ecx,%edx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $1,%edx
	movl $12,%ecx
	movl $-16,%ebp
	movl %esi,56(%esp)
	leal 80(%esp), %esi
	addl %ebp,%esi
	addl %ecx,%esi
	movl (%esi),%ecx
	subl %edx,%ecx
	movl $-76,%edx
	leal 80(%esp), %esi
	addl %edx,%esi
	movl %ecx,(%esi)
	movl $-80,%ecx
	leal 80(%esp), %esi
	addl %ecx,%esi
	movl %ebx,(%esi)
	call qsort_74
join_l364:
	leal 24(%esp), %esp
	leal -32(%esp), %esp
	movl $-16,%eax
	leal 80(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	movl $12,%edx
	movl $-16,%ebx
	leal 80(%esp), %esi
	addl %ebx,%esi
	addl %edx,%esi
	movl (%esi),%edx
	addl %ecx,%edx
	movl $8,%ecx
	movl $-16,%esi
	leal 80(%esp), %ebx
	addl %esi,%ebx
	addl %ecx,%ebx
	movl $-76,%ecx
	leal 80(%esp), %esi
	addl %ecx,%esi
	movl (%ebx),%ecx
	movl %ecx,(%esi)
	movl $-80,%ecx
	leal 80(%esp), %esi
	addl %ecx,%esi
	movl %edx,(%esi)
	call qsort_74
join_l361:
	leal 24(%esp), %esp
	jmp LifEnd_111
LifEnd_111:
	movl $0,%eax
	movl $8,%ecx
	leal 48(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%ebp
	movl 16(%esp),%ebx
	movl 24(%esp),%esi
	leal 56(%esp), %esp
	ret
.section .pcmap_data
stackdata_l377:
.long 1
.long 0xfffffff0
.section .pcmap
.long join_l367
.long frame_l378
.section .pcmap_data
frame_l378:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l377
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
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
.long qsort_74_gc_data
.section .pcmap
.long join_l364
.long frame_l379
.section .pcmap_data
frame_l379:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l377
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long qsort_74_gc_data
.section .pcmap
.long join_l361
.long frame_l380
.section .pcmap_data
frame_l380:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l377
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0xffffffe8
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long qsort_74_gc_data
.section .text
.section .data
qsort_74_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 0
.long 5
.long 1
.long 0
.long 0
.long 0
.long 0
.section .text
sort_51:
	leal -40(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
initialize_continuations_l389:
	movl %eax,(%esp)
	movl $-8,%eax
	movl %ecx,4(%esp)
	leal 40(%esp), %ecx
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $4,%eax
	movl $-8,%ecx
	movl %edx,8(%esp)
	leal 40(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal -32(%esp), %esp
	movl $1,%eax
	movl $4,%edx
	movl $-8,%ecx
	movl %ebx,44(%esp)
	leal 72(%esp), %ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl (%ecx),%edx
	subl %eax,%edx
	movl $-68,%eax
	leal 72(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $-8,%ecx
	leal 72(%esp), %eax
	addl %ecx,%eax
	movl $0,%ecx
	movl $-72,%edx
	leal 72(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	call qsort_74
join_l394:
	leal 24(%esp), %esp
	movl $4,%ecx
	leal 40(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebx
	leal 44(%esp), %esp
	ret
.section .pcmap_data
stackdata_l399:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l394
.long frame_l400
.section .pcmap_data
frame_l400:
.long 0xffffffc0
.long 0x80000008
.long 0xffffffe0
.long stackdata_l399
.long 0x80000008
.long 0x80000003
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffe4
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
.long sort_51_gc_data
.section .text
.section .data
sort_51_gc_data:
.long 2
.long 1
.long 0
.long 3
.long 1
.long 0
.long 0
.section .text
tiger_main:
	leal -76(%esp), %esp
	movl $4,%eax
	leal 76(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l409:
	movl $-12,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $10,%eax
	movl $4,%edx
	movl $-12,%ecx
	movl %ebx,32(%esp)
	leal 76(%esp), %ebx
	addl %ecx,%ebx
	addl %edx,%ebx
	movl %eax,(%ebx)
	movl $4,%eax
	movl $4,%ebx
	movl $-12,%edx
	leal 76(%esp), %ecx
	addl %edx,%ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $1,%ecx
	addl %ebx,%ecx
	imull %eax,%ecx
	movl $-76,%eax
	leal 76(%esp), %ebx
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
	call tig_alloc
join_l434:
	movl $4,%ecx
	movl $-12,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $1,%ebx
	addl %ecx,%ebx
	jmp Lloop_start_47
Lloop_start_47:
	movl $0,%ecx
	cmpl %ecx,%ebx
	jne join_l430
join_l431:
	jmp Lloop_end_46
Lloop_end_46:
	movl $4,%edi
	movl $-12,%esi
	leal 76(%esp), %ebx
	addl %esi,%ebx
	addl %edi,%ebx
	movl (%ebx),%edi
	movl %edi,(%eax)
	movl $8,%edi
	movl $-12,%ebx
	leal 76(%esp), %esi
	addl %ebx,%esi
	addl %edi,%esi
	movl %eax,(%esi)
	leal -32(%esp), %esp
	movl $-12,%eax
	leal 108(%esp), %esi
	addl %eax,%esi
	movl %esi,%eax
	call initlist_49
join_l426:
	leal 32(%esp), %esp
	leal -36(%esp), %esp
	movl $-12,%eax
	leal 112(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $1,%ecx
	movl $-112,%edx
	leal 112(%esp), %esi
	addl %edx,%esi
	movl %ecx,(%esi)
	call sort_51
join_l423:
	leal 32(%esp), %esp
	leal -32(%esp), %esp
	movl $-12,%eax
	leal 108(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	leal Lgbl_114,%ecx
	movl $-108,%edx
	leal 108(%esp), %esi
	addl %edx,%esi
	movl %ecx,(%esi)
	call print_list_50
join_l420:
	leal 28(%esp), %esp
	leal -32(%esp), %esp
	movl $-12,%eax
	leal 108(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl $0,%ecx
	movl $-108,%edx
	leal 108(%esp), %esi
	addl %edx,%esi
	movl %ecx,(%esi)
	call sort_51
join_l417:
	leal 28(%esp), %esp
	leal -32(%esp), %esp
	movl $-12,%eax
	leal 108(%esp), %ecx
	addl %eax,%ecx
	movl %ecx,%eax
	leal Lgbl_115,%ecx
	movl $-108,%edx
	leal 108(%esp), %esi
	addl %edx,%esi
	movl %ecx,(%esi)
	call print_list_50
join_l414:
	leal 28(%esp), %esp
	leal 76(%esp), %ecx
	movl $0,%edx
	leal 76(%esp), %esi
	addl %edx,%esi
	movl (%ecx),%edx
	movl %edx,(%esi)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 76(%esp), %esp
	ret
join_l430:
	jmp Lloop_body_48
Lloop_body_48:
	movl $8,%ecx
	movl $-76,%edx
	leal 76(%esp), %ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl %eax,48(%esp)
	movl %ebx,52(%esp)
	call tig_alloc
join_l429:
	movl $0,%ecx
	movl %ecx,(%eax)
	leal Lgbl_41,%ecx
	movl $4,%edx
	movl %eax,%ebp
	addl %edx,%ebp
	movl %ecx,(%ebp)
	movl $4,%ecx
	movl $1,%ebp
	movl 52(%esp),%edx
	movl %edx,%esi
	subl %ebp,%esi
	imull %ecx,%esi
	movl 48(%esp),%ecx
	movl %ecx,%ebp
	addl %esi,%ebp
	movl %eax,(%ebp)
	movl $1,%eax
	subl %eax,%edx
	jmp join_l438
join_l438:
	movl %ecx,%eax
	movl %edx,%ebx
	jmp Lloop_start_47
killer_C407:
	movl $0,%eax
	leal 76(%esp), %ecx
	movl $0,%edx
	leal 76(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	movl 40(%esp),%esi
	movl 44(%esp),%edi
	leal 76(%esp), %esp
	ret
.section .pcmap_data
stackdata_l441:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l434
.long frame_l442
.section .pcmap_data
frame_l442:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long stackdata_l441
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l429
.long frame_l443
.section .pcmap_data
frame_l443:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long stackdata_l441
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0xffffffe4
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l426
.long frame_l444
.section .pcmap_data
frame_l444:
.long 0xffffff94
.long 0x80000004
.long 0x80000000
.long stackdata_l441
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l423
.long frame_l445
.section .pcmap_data
frame_l445:
.long 0xffffff94
.long 0x80000004
.long 0x80000000
.long stackdata_l441
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l420
.long frame_l446
.section .pcmap_data
frame_l446:
.long 0xffffff98
.long 0x80000004
.long 0x80000000
.long stackdata_l441
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l417
.long frame_l447
.section .pcmap_data
frame_l447:
.long 0xffffff98
.long 0x80000004
.long 0x80000000
.long stackdata_l441
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .pcmap
.long join_l414
.long frame_l448
.section .pcmap_data
frame_l448:
.long 0xffffff98
.long 0x80000004
.long 0x80000000
.long stackdata_l441
.long 0x80000008
.long 0x80000005
.long 0x80000002
.long 0x80000000
.long 0x40000007
.long 0xffffffd4
.long 0x40000009
.long 0xffffffd8
.long 0x4000000a
.long 0xffffffdc
.long 0x4000000b
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 3
.long 1
.long 0
.long 1
.long 5
.long 1
.long 0
.long 1
.long 0
.long 1

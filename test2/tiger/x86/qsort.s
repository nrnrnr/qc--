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
initialize_continuations_l19:
proc_body_start_l18:
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
join_l81:
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
join_l78:
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
join_l75:
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
join_l72:
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
join_l69:
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
join_l66:
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
join_l63:
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
join_l60:
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
join_l57:
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
join_l54:
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
join_l51:
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
join_l48:
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
join_l45:
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
join_l42:
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
join_l39:
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
join_l36:
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
join_l33:
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
join_l30:
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
join_l27:
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
join_l24:
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
stackdata_l87:
.long 1
.long 0xfffffffc
.section .pcmap
.long join_l81
.long frame_l88
.section .pcmap_data
frame_l88:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l78
.long frame_l89
.section .pcmap_data
frame_l89:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l75
.long frame_l90
.section .pcmap_data
frame_l90:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l72
.long frame_l91
.section .pcmap_data
frame_l91:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l69
.long frame_l92
.section .pcmap_data
frame_l92:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l66
.long frame_l93
.section .pcmap_data
frame_l93:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l63
.long frame_l94
.section .pcmap_data
frame_l94:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l60
.long frame_l95
.section .pcmap_data
frame_l95:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l57
.long frame_l96
.section .pcmap_data
frame_l96:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l54
.long frame_l97
.section .pcmap_data
frame_l97:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l51
.long frame_l98
.section .pcmap_data
frame_l98:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l48
.long frame_l99
.section .pcmap_data
frame_l99:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l45
.long frame_l100
.section .pcmap_data
frame_l100:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l42
.long frame_l101
.section .pcmap_data
frame_l101:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l39
.long frame_l102
.section .pcmap_data
frame_l102:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l36
.long frame_l103
.section .pcmap_data
frame_l103:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l33
.long frame_l104
.section .pcmap_data
frame_l104:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l30
.long frame_l105
.section .pcmap_data
frame_l105:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l27
.long frame_l106
.section .pcmap_data
frame_l106:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
.long join_l24
.long frame_l107
.section .pcmap_data
frame_l107:
.long 0xffffffbc
.long 0x80000004
.long 0xffffffe0
.long stackdata_l87
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
initialize_continuations_l117:
proc_body_start_l116:
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
join_l145:
	leal Lgbl_64,%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l142:
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
	jle if_true_l149
if_false_l150:
	movl $0,%eax
	jmp end_if_l151
if_true_l149:
	movl $1,%eax
	jmp end_if_l151
end_if_l151:
	movl $0,%ebx
	cmpl %ebx,%eax
	jne join_l138
join_l139:
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
join_l138:
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
join_l137:
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
join_l134:
	leal Lgbl_66,%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l131:
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
join_l128:
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
join_l125:
	leal Lgbl_67,%eax
	movl $-76,%ecx
	leal 76(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
join_l122:
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
killer_C114:
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
stackdata_l154:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l145
.long frame_l155
.section .pcmap_data
frame_l155:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l154
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
.long join_l142
.long frame_l156
.section .pcmap_data
frame_l156:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l154
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
.long join_l137
.long frame_l157
.section .pcmap_data
frame_l157:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l154
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
.long join_l134
.long frame_l158
.section .pcmap_data
frame_l158:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l154
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
.long join_l131
.long frame_l159
.section .pcmap_data
frame_l159:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l154
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
.long join_l128
.long frame_l160
.section .pcmap_data
frame_l160:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l154
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
.long join_l125
.long frame_l161
.section .pcmap_data
frame_l161:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l154
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
.long join_l122
.long frame_l162
.section .pcmap_data
frame_l162:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffdc
.long stackdata_l154
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
initialize_continuations_l172:
proc_body_start_l171:
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
	jne if_true_l195
if_false_l196:
	movl $0,%eax
	jmp end_if_l197
if_true_l195:
	movl $1,%eax
	jmp end_if_l197
end_if_l197:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l190
join_l191:
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
join_l180:
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
join_l177:
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
	jle if_true_l198
if_false_l199:
	movl $0,%eax
	jmp end_if_l200
if_true_l198:
	movl $1,%eax
	jmp end_if_l200
end_if_l200:
	jmp LifEnd_79
join_l190:
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
join_l189:
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
join_l186:
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
join_l183:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle if_true_l201
if_false_l202:
	movl $0,%eax
	jmp end_if_l203
if_true_l201:
	movl $1,%eax
	jmp end_if_l203
end_if_l203:
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
killer_C169:
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
stackdata_l206:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l189
.long frame_l207
.section .pcmap_data
frame_l207:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l206
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
.long join_l186
.long frame_l208
.section .pcmap_data
frame_l208:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l206
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
.long join_l183
.long frame_l209
.section .pcmap_data
frame_l209:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l206
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
.long join_l180
.long frame_l210
.section .pcmap_data
frame_l210:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l206
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
.long frame_l211
.section .pcmap_data
frame_l211:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l206
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
initialize_continuations_l221:
proc_body_start_l220:
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
	jne if_true_l244
if_false_l245:
	movl $0,%eax
	jmp end_if_l246
if_true_l244:
	movl $1,%eax
	jmp end_if_l246
end_if_l246:
	movl $0,%edx
	cmpl %edx,%eax
	jne join_l239
join_l240:
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
join_l229:
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
join_l226:
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
	jg if_true_l247
if_false_l248:
	movl $0,%eax
	jmp end_if_l249
if_true_l247:
	movl $1,%eax
	jmp end_if_l249
end_if_l249:
	jmp LifEnd_84
join_l239:
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
join_l238:
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
join_l235:
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
join_l232:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg if_true_l250
if_false_l251:
	movl $0,%eax
	jmp end_if_l252
if_true_l250:
	movl $1,%eax
	jmp end_if_l252
end_if_l252:
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
killer_C218:
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
stackdata_l255:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l238
.long frame_l256
.section .pcmap_data
frame_l256:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l255
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
.long join_l235
.long frame_l257
.section .pcmap_data
frame_l257:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l255
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
.long join_l232
.long frame_l258
.section .pcmap_data
frame_l258:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l255
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
.long join_l229
.long frame_l259
.section .pcmap_data
frame_l259:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l255
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
.long join_l226
.long frame_l260
.section .pcmap_data
frame_l260:
.long 0xffffff94
.long 0x8000000c
.long 0xffffffc0
.long stackdata_l255
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
initialize_continuations_l270:
proc_body_start_l269:
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
join_l284:
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
join_l281:
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
join_l278:
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
join_l275:
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
killer_C267:
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
stackdata_l290:
.long 1
.long 0xfffffff0
.section .pcmap
.long join_l284
.long frame_l291
.section .pcmap_data
frame_l291:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l290
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
.long join_l281
.long frame_l292
.section .pcmap_data
frame_l292:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l290
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
.long join_l278
.long frame_l293
.section .pcmap_data
frame_l293:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l290
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
.long join_l275
.long frame_l294
.section .pcmap_data
frame_l294:
.long 0xffffffb0
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l290
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
initialize_continuations_l304:
proc_body_start_l303:
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
	jl if_true_l334
if_false_l335:
	movl $0,%eax
	jmp end_if_l336
if_true_l334:
	movl $1,%eax
	jmp end_if_l336
end_if_l336:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l329
join_l330:
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
join_l309:
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
join_l329:
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
join_l328:
	leal 24(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l324
join_l325:
	jmp LifFalse_92
LifFalse_92:
	movl $0,%eax
	jmp LifEnd_93
join_l324:
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
	jl if_true_l337
if_false_l338:
	movl $0,%eax
	jmp end_if_l339
if_true_l337:
	movl $1,%eax
	jmp end_if_l339
end_if_l339:
	jmp LifEnd_93
LifEnd_93:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l322
join_l323:
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
join_l321:
	leal 24(%esp), %esp
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l317
join_l318:
	jmp LifFalse_99
LifFalse_99:
	movl $0,%eax
	jmp LifEnd_100
join_l317:
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
	jge if_true_l340
if_false_l341:
	movl $0,%eax
	jmp end_if_l342
if_true_l340:
	movl $1,%eax
	jmp end_if_l342
end_if_l342:
	jmp LifEnd_100
LifEnd_100:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l315
join_l316:
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
	jl if_true_l343
if_false_l344:
	movl $0,%eax
	jmp end_if_l345
if_true_l343:
	movl $1,%eax
	jmp end_if_l345
end_if_l345:
	movl $0,%ebp
	cmpl %ebp,%eax
	jne join_l313
join_l314:
	jmp LifFalse_104
LifFalse_104:
	jmp LifEnd_105
join_l313:
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
join_l312:
	leal 24(%esp), %esp
	jmp LifEnd_105
LifEnd_105:
	jmp join_l346
join_l346:
	movl 20(%esp),%ebp
	jmp Lloop_start_106
join_l315:
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
join_l322:
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
	jmp join_l347
join_l347:
	movl 20(%esp),%ebp
	jmp Lloop_start_94
.section .pcmap_data
stackdata_l349:
.long 1
.long 0xfffffff0
.section .pcmap
.long join_l328
.long frame_l350
.section .pcmap_data
frame_l350:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l349
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
.long join_l321
.long frame_l351
.section .pcmap_data
frame_l351:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l349
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
.long join_l312
.long frame_l352
.section .pcmap_data
frame_l352:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l349
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
.long join_l309
.long frame_l353
.section .pcmap_data
frame_l353:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l349
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
initialize_continuations_l363:
proc_body_start_l362:
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
	jl if_true_l380
if_false_l381:
	movl $0,%eax
	jmp end_if_l382
if_true_l380:
	movl $1,%eax
	jmp end_if_l382
end_if_l382:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l375
join_l376:
	jmp LifFalse_110
LifFalse_110:
	movl %esi,24(%esp)
	movl %ebp,20(%esp)
	jmp LifEnd_111
join_l375:
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
join_l374:
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
join_l371:
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
join_l368:
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
stackdata_l384:
.long 1
.long 0xfffffff0
.section .pcmap
.long join_l374
.long frame_l385
.section .pcmap_data
frame_l385:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l384
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
.long join_l371
.long frame_l386
.section .pcmap_data
frame_l386:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l384
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
.long join_l368
.long frame_l387
.section .pcmap_data
frame_l387:
.long 0xffffffb8
.long 0x8000000c
.long 0xffffffdc
.long stackdata_l384
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
initialize_continuations_l397:
proc_body_start_l396:
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
join_l402:
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
stackdata_l407:
.long 1
.long 0xfffffff8
.section .pcmap
.long join_l402
.long frame_l408
.section .pcmap_data
frame_l408:
.long 0xffffffc0
.long 0x80000008
.long 0xffffffe0
.long stackdata_l407
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
initialize_continuations_l418:
proc_body_start_l417:
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
join_l443:
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
	jne join_l439
join_l440:
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
join_l435:
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
join_l432:
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
join_l429:
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
join_l426:
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
join_l423:
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
join_l439:
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
join_l438:
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
	jmp join_l447
join_l447:
	movl %ecx,%eax
	movl %edx,%ebx
	jmp Lloop_start_47
killer_C415:
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
stackdata_l450:
.long 1
.long 0xfffffff4
.section .pcmap
.long join_l443
.long frame_l451
.section .pcmap_data
frame_l451:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long stackdata_l450
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
.long join_l438
.long frame_l452
.section .pcmap_data
frame_l452:
.long 0xffffffb4
.long 0x80000004
.long 0x80000000
.long stackdata_l450
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
.long join_l435
.long frame_l453
.section .pcmap_data
frame_l453:
.long 0xffffff94
.long 0x80000004
.long 0x80000000
.long stackdata_l450
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
.long join_l432
.long frame_l454
.section .pcmap_data
frame_l454:
.long 0xffffff94
.long 0x80000004
.long 0x80000000
.long stackdata_l450
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
.long frame_l455
.section .pcmap_data
frame_l455:
.long 0xffffff98
.long 0x80000004
.long 0x80000000
.long stackdata_l450
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
.long join_l426
.long frame_l456
.section .pcmap_data
frame_l456:
.long 0xffffff98
.long 0x80000004
.long 0x80000000
.long stackdata_l450
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
.long frame_l457
.section .pcmap_data
frame_l457:
.long 0xffffff98
.long 0x80000004
.long 0x80000000
.long stackdata_l450
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

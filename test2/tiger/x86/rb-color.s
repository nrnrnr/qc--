.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ:
Cmm.global_area:
.skip 4
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .data
.align 4
Lgbl_289:
.long 0
.byte 0
Lgbl_271:
.long 1
.byte 122
.byte 0
Lgbl_252:
.long 1
.byte 65
.byte 0
Lgbl_240:
.long 1
.byte 9
.byte 0
Lgbl_208:
.long 6
.byte 101
.byte 114
.byte 114
.byte 111
.byte 114
.byte 33
.byte 0
Lgbl_52:
.long 2
.byte 63
.byte 32
.byte 0
Lgbl_255:
.long 1
.byte 90
.byte 0
Lgbl_57:
.long 1
.byte 10
.byte 0
Lgbl_264:
.long 1
.byte 97
.byte 0
.section .text
err_43:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l12:
.Lproc_body_start_l11:
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
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_52,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l25:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l22:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_57,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l19:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	movl $1,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_exit
.Lcall_successor_l16:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l31:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l32
.section .pcmap_data
.Lframe_l32:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l31
.long 1
.long 11
.long 2
.long 1
.long 11
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
.long 0
.long 0x4000000b
.long 0
.long 0
.long err_43_gc_data
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l31
.long 1
.long 11
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long err_43_gc_data
.section .pcmap
.long .Lcall_successor_l19
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l31
.long 1
.long 11
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long err_43_gc_data
.section .pcmap
.long .Lcall_successor_l16
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l31
.long 1
.long 11
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long err_43_gc_data
.section .text
.section .data
err_43_gc_data:
.long 2
.long 1
.long 1
.long 11
.long 1
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
balance_44:
	leal -52(%esp), %esp
	leal 52(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,12(%esp)
	leal 52(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,8(%esp)
	leal 52(%esp), %edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,4(%esp)
	leal 52(%esp), %edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,(%esp)
	leal 52(%esp), %edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 52(%esp), %edx
	movl (%edx),%edx
	movl %edx,24(%esp)
	movl %esi,20(%esp)
	movl %ebx,16(%esp)
.Linitialize_continuations_l37:
.Lproc_body_start_l36:
	leal 52(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $12,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l81:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je LifTrue_64
LifFalse_65:
	movl $0,%eax
	jmp LifEnd_66
LifTrue_64:
.Lbranch_target_l85:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l84
.Lbranch_target_l83:
	movl $0,%eax
	jmp .Lbranch_target_l82
.Lbranch_target_l84:
	movl $-1,%eax
.Lbranch_target_l82:
LifEnd_66:
.Lbranch_target_l86:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_68
LifFalse_69:
	movl $0,%eax
	jmp LifEnd_70
LifTrue_68:
.Lbranch_target_l90:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l89
.Lbranch_target_l88:
	movl $0,%eax
	jmp .Lbranch_target_l87
.Lbranch_target_l89:
	movl $-1,%eax
.Lbranch_target_l87:
LifEnd_70:
.Lbranch_target_l91:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_72
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
LifTrue_72:
.Lbranch_target_l95:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l94
.Lbranch_target_l93:
	movl $0,%eax
	jmp .Lbranch_target_l92
.Lbranch_target_l94:
	movl $-1,%eax
.Lbranch_target_l92:
LifEnd_74:
.Lbranch_target_l96:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_76
LifFalse_77:
	movl $0,%eax
	jmp LifEnd_78
LifTrue_76:
.Lbranch_target_l100:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l99
.Lbranch_target_l98:
	movl $0,%eax
	jmp .Lbranch_target_l97
.Lbranch_target_l99:
	movl $-1,%eax
.Lbranch_target_l97:
LifEnd_78:
.Lbranch_target_l101:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_193
LifFalse_194:
.Lbranch_target_l105:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je LifTrue_93
LifFalse_94:
	movl $0,%eax
	jmp LifEnd_95
LifTrue_93:
.Lbranch_target_l109:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l108
.Lbranch_target_l107:
	movl $0,%eax
	jmp .Lbranch_target_l106
.Lbranch_target_l108:
	movl $-1,%eax
.Lbranch_target_l106:
LifEnd_95:
.Lbranch_target_l110:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_97
LifFalse_98:
	movl $0,%eax
	jmp LifEnd_99
LifTrue_97:
.Lbranch_target_l114:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l113
.Lbranch_target_l112:
	movl $0,%eax
	jmp .Lbranch_target_l111
.Lbranch_target_l113:
	movl $-1,%eax
.Lbranch_target_l111:
LifEnd_99:
.Lbranch_target_l115:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_101
LifFalse_102:
	movl $0,%eax
	jmp LifEnd_103
LifTrue_101:
.Lbranch_target_l119:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l118
.Lbranch_target_l117:
	movl $0,%eax
	jmp .Lbranch_target_l116
.Lbranch_target_l118:
	movl $-1,%eax
.Lbranch_target_l116:
LifEnd_103:
.Lbranch_target_l120:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_105
LifFalse_106:
	movl $0,%eax
	jmp LifEnd_107
LifTrue_105:
.Lbranch_target_l124:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l123
.Lbranch_target_l122:
	movl $0,%eax
	jmp .Lbranch_target_l121
.Lbranch_target_l123:
	movl $-1,%eax
.Lbranch_target_l121:
LifEnd_107:
.Lbranch_target_l125:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_189
LifFalse_190:
.Lbranch_target_l129:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je LifTrue_121
LifFalse_122:
	movl $0,%eax
	jmp LifEnd_123
LifTrue_121:
.Lbranch_target_l133:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l132
.Lbranch_target_l131:
	movl $0,%eax
	jmp .Lbranch_target_l130
.Lbranch_target_l132:
	movl $-1,%eax
.Lbranch_target_l130:
LifEnd_123:
.Lbranch_target_l134:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_125
LifFalse_126:
	movl $0,%eax
	jmp LifEnd_127
LifTrue_125:
.Lbranch_target_l138:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l137
.Lbranch_target_l136:
	movl $0,%eax
	jmp .Lbranch_target_l135
.Lbranch_target_l137:
	movl $-1,%eax
.Lbranch_target_l135:
LifEnd_127:
.Lbranch_target_l139:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_129
LifFalse_130:
	movl $0,%eax
	jmp LifEnd_131
LifTrue_129:
.Lbranch_target_l143:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l142
.Lbranch_target_l141:
	movl $0,%eax
	jmp .Lbranch_target_l140
.Lbranch_target_l142:
	movl $-1,%eax
.Lbranch_target_l140:
LifEnd_131:
.Lbranch_target_l144:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_133
LifFalse_134:
	movl $0,%eax
	jmp LifEnd_135
LifTrue_133:
.Lbranch_target_l148:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l147
.Lbranch_target_l146:
	movl $0,%eax
	jmp .Lbranch_target_l145
.Lbranch_target_l147:
	movl $-1,%eax
.Lbranch_target_l145:
LifEnd_135:
.Lbranch_target_l149:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_185
LifFalse_186:
.Lbranch_target_l153:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je LifTrue_149
LifFalse_150:
	movl $0,%eax
	jmp LifEnd_151
LifTrue_149:
.Lbranch_target_l157:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l156
.Lbranch_target_l155:
	movl $0,%eax
	jmp .Lbranch_target_l154
.Lbranch_target_l156:
	movl $-1,%eax
.Lbranch_target_l154:
LifEnd_151:
.Lbranch_target_l158:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_153
LifFalse_154:
	movl $0,%eax
	jmp LifEnd_155
LifTrue_153:
.Lbranch_target_l162:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne .Lbranch_target_l161
.Lbranch_target_l160:
	movl $0,%eax
	jmp .Lbranch_target_l159
.Lbranch_target_l161:
	movl $-1,%eax
.Lbranch_target_l159:
LifEnd_155:
.Lbranch_target_l163:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_157
LifFalse_158:
	movl $0,%eax
	jmp LifEnd_159
LifTrue_157:
.Lbranch_target_l167:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l166
.Lbranch_target_l165:
	movl $0,%eax
	jmp .Lbranch_target_l164
.Lbranch_target_l166:
	movl $-1,%eax
.Lbranch_target_l164:
LifEnd_159:
.Lbranch_target_l168:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_161
LifFalse_162:
	movl $0,%eax
	jmp LifEnd_163
LifTrue_161:
.Lbranch_target_l172:
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%ecx
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je .Lbranch_target_l171
.Lbranch_target_l170:
	movl $0,%eax
	jmp .Lbranch_target_l169
.Lbranch_target_l171:
	movl $-1,%eax
.Lbranch_target_l169:
LifEnd_163:
.Lbranch_target_l173:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_181
LifFalse_182:
.Lbranch_target_l177:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_178
Lalc_gc_178:
	call tig_call_gc
.Lcall_successor_l41:
Lalc_179:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%ebx)
	leal 52(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl $4,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl $8,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl $12,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl $16,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_183
LifTrue_181:
.Lbranch_target_l174:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_174
Lalc_gc_174:
	call tig_call_gc
.Lcall_successor_l50:
Lalc_175:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%ebx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $4,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl $8,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l175:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_166
Lalc_gc_166:
	call tig_call_gc
.Lcall_successor_l47:
Lalc_167:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl $4,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl $8,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $16,%eax
	addl %eax,%edx
	movl $12,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl $16,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $12,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l176:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_170
Lalc_gc_170:
	call tig_call_gc
.Lcall_successor_l44:
Lalc_171:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl $4,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl $8,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $16,%eax
	addl %eax,%edx
	movl $12,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $16,%eax
	addl %eax,%edx
	movl $16,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $16,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
LifEnd_183:
	jmp LifEnd_187
LifTrue_185:
.Lbranch_target_l150:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_146
Lalc_gc_146:
	call tig_call_gc
.Lcall_successor_l59:
Lalc_147:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%ebx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $4,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl $8,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l151:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_138
Lalc_gc_138:
	call tig_call_gc
.Lcall_successor_l56:
Lalc_139:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl $4,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl $8,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $16,%eax
	addl %eax,%edx
	movl $12,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl $16,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $12,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l152:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_142
Lalc_gc_142:
	call tig_call_gc
.Lcall_successor_l53:
Lalc_143:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl $4,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl $8,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl $12,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $16,%eax
	addl %eax,%edx
	movl $16,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $16,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
LifEnd_187:
	jmp LifEnd_191
LifTrue_189:
.Lbranch_target_l126:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_118
Lalc_gc_118:
	call tig_call_gc
.Lcall_successor_l68:
Lalc_119:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%ebx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $4,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl $8,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l127:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_110
Lalc_gc_110:
	call tig_call_gc
.Lcall_successor_l65:
Lalc_111:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl $4,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl $8,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl $12,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl $16,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $12,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l128:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_114
Lalc_gc_114:
	call tig_call_gc
.Lcall_successor_l62:
Lalc_115:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl $4,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl $8,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $16,%eax
	addl %eax,%edx
	movl $12,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $20,%eax
	addl %eax,%edx
	movl $16,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $16,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
LifEnd_191:
	jmp LifEnd_195
LifTrue_193:
.Lbranch_target_l102:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_90
Lalc_gc_90:
	call tig_call_gc
.Lcall_successor_l77:
Lalc_91:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,(%ebx)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $4,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl $8,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l103:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_81
Lalc_gc_81:
	call tig_call_gc
.Lcall_successor_l74:
Lalc_82:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl $4,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl $8,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl $12,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $16,%eax
	addl %eax,%edx
	movl $16,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $12,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l104:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_86
Lalc_gc_86:
	call tig_call_gc
.Lcall_successor_l71:
Lalc_87:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl %eax,(%edx)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl $4,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl $8,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $16,%eax
	addl %eax,%edx
	movl $12,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 52(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl $20,%eax
	addl %eax,%edx
	movl $16,%esi
	movl %ecx,%eax
	addl %esi,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	movl $16,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl %ecx,(%eax)
LifEnd_195:
	movl %ebx,%eax
	leal 52(%esp), %ecx
	movl $20,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%esi
	movl 16(%esp),%ebx
	leal 72(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l179:
.long 1
.long 0xffffffe8
.section .pcmap
.long .Lcall_successor_l41
.long .Lframe_l180
.section .pcmap_data
.Lframe_l180:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l50
.long .Lframe_l181
.section .pcmap_data
.Lframe_l181:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l47
.long .Lframe_l182
.section .pcmap_data
.Lframe_l182:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l44
.long .Lframe_l183
.section .pcmap_data
.Lframe_l183:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l59
.long .Lframe_l184
.section .pcmap_data
.Lframe_l184:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l56
.long .Lframe_l185
.section .pcmap_data
.Lframe_l185:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l53
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l68
.long .Lframe_l187
.section .pcmap_data
.Lframe_l187:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l65
.long .Lframe_l188
.section .pcmap_data
.Lframe_l188:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l62
.long .Lframe_l189
.section .pcmap_data
.Lframe_l189:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l77
.long .Lframe_l190
.section .pcmap_data
.Lframe_l190:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
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
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l74
.long .Lframe_l191
.section .pcmap_data
.Lframe_l191:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .pcmap
.long .Lcall_successor_l71
.long .Lframe_l192
.section .pcmap_data
.Lframe_l192:
.long 0x80000018
.long 0xffffffcc
.long 0xffffffe4
.long .Lstackdata_l179
.long 2
.long 53
.long 2
.long 1
.long 10
.long 0xffffffe0
.long 7
.long 0xffffffdc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long balance_44_gc_data
.section .text
.section .data
balance_44_gc_data:
.long 6
.long 1
.long 0
.long 0
.long 1
.long 1
.long 1
.long 53
.long 1
.long 0
.long 0
.long 1
.long 1
.long 1
.long 0
.long 0
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 0
.long 0
.section .text
ins_45:
	leal -64(%esp), %esp
	leal 64(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,8(%esp)
	leal 64(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 64(%esp), %edx
	movl (%edx),%edx
	movl %edx,48(%esp)
	movl %edi,44(%esp)
	movl %esi,40(%esp)
	movl %ebp,36(%esp)
	movl %ebx,32(%esp)
.Linitialize_continuations_l194:
.Lproc_body_start_l193:
	leal 64(%esp), %edx
	movl $-12,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	leal 64(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 64(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
.Lbranch_target_l232:
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	je LifTrue_228
LifFalse_229:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	leal 64(%esp), %eax
	movl $-60,%ebp
	addl %ebp,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 64(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l222:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
.Lbranch_target_l229:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl LifTrue_224
LifFalse_225:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	leal 64(%esp), %eax
	movl $-60,%ebp
	addl %ebp,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 64(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l213:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
.Lbranch_target_l230:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg LifTrue_220
LifFalse_221:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 64(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	leal 64(%esp), %eax
	movl $-60,%ebp
	addl %ebp,%eax
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 64(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l204:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
.Lbranch_target_l231:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_212
LifFalse_213:
	movl $0,%eax
	jmp LifEnd_214
LifTrue_212:
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	leal Lgbl_208,%ecx
	leal 64(%esp), %eax
	movl $-64,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_print
.Lcall_successor_l201:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
LifEnd_214:
.Lbranch_target_l234:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_217
Lalc_gc_217:
	call tig_call_gc
.Lcall_successor_l198:
Lalc_218:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal 64(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $8,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $12,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $16,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	jmp LifEnd_222
LifTrue_220:
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,20(%esp)
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl %eax,28(%esp)
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ebp
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ebx
	leal -8(%esp), %esp
	leal 72(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 72(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 72(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $16,%esi
	addl %esi,%ecx
	leal 72(%esp), %edi
	movl $-68,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 72(%esp), %ecx
	movl $-72,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call ins_45
.Lcall_successor_l210:
	movl %eax,%edx
	leal -20(%esp), %esp
	movl 40(%esp),%eax
	leal 84(%esp), %ecx
	movl $-84,%esi
	addl %esi,%ecx
	movl 48(%esp),%esi
	movl %esi,(%ecx)
	leal 84(%esp), %ecx
	movl $-80,%esi
	addl %esi,%ecx
	movl 32(%esp),%esi
	movl %esi,(%ecx)
	leal 84(%esp), %ecx
	movl $-76,%esi
	addl %esi,%ecx
	movl %ebp,(%ecx)
	leal 84(%esp), %ecx
	movl $-72,%ebp
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	leal 84(%esp), %ecx
	movl $-68,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call balance_44
.Lcall_successor_l207:
LifEnd_222:
	jmp LifEnd_226
LifTrue_224:
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ebp
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl %eax,24(%esp)
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,16(%esp)
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ebx
	leal -8(%esp), %esp
	leal 72(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 72(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 72(%esp), %ecx
	movl $-12,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $12,%esi
	addl %esi,%ecx
	leal 72(%esp), %edi
	movl $-68,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 72(%esp), %ecx
	movl $-72,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call ins_45
.Lcall_successor_l219:
	movl %eax,%edx
	leal -20(%esp), %esp
	movl %ebp,%eax
	leal 84(%esp), %ecx
	movl $-12,%ebp
	addl %ebp,%ecx
	movl $8,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $16,%ecx
	addl %ecx,%ebp
	leal 84(%esp), %ecx
	movl $-68,%esi
	addl %esi,%ecx
	movl (%ebp),%ebp
	movl %ebp,(%ecx)
	leal 84(%esp), %ecx
	movl $-84,%ebp
	addl %ebp,%ecx
	movl 44(%esp),%ebp
	movl %ebp,(%ecx)
	leal 84(%esp), %ecx
	movl $-80,%ebp
	addl %ebp,%ecx
	movl 36(%esp),%ebp
	movl %ebp,(%ecx)
	leal 84(%esp), %ecx
	movl $-76,%ebp
	addl %ebp,%ecx
	movl %ebx,(%ecx)
	leal 84(%esp), %ecx
	movl $-72,%ebx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	call balance_44
.Lcall_successor_l216:
LifEnd_226:
	jmp LifEnd_230
LifTrue_228:
.Lbranch_target_l233:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_199
Lalc_gc_199:
	call tig_call_gc
.Lcall_successor_l225:
Lalc_200:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $1,%edx
	movl $4,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	leal 64(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $8,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $0,%edx
	movl $12,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
	movl $0,%edx
	movl $16,%ebx
	movl %eax,%ecx
	addl %ebx,%ecx
	movl %edx,(%ecx)
LifEnd_230:
	leal 64(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl 44(%esp),%edi
	movl 40(%esp),%esi
	movl 36(%esp),%ebp
	movl 32(%esp),%ebx
	leal 72(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l236:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l222
.long .Lframe_l237
.section .pcmap_data
.Lframe_l237:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l213
.long .Lframe_l238
.section .pcmap_data
.Lframe_l238:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long 0
.long 0
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l204
.long .Lframe_l239
.section .pcmap_data
.Lframe_l239:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long 0
.long 0
.long 0x40000007
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l201
.long .Lframe_l240
.section .pcmap_data
.Lframe_l240:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l198
.long .Lframe_l241
.section .pcmap_data
.Lframe_l241:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l210
.long .Lframe_l242
.section .pcmap_data
.Lframe_l242:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0xffffffdc
.long 0xffffffcc
.long 0x40000009
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l207
.long .Lframe_l243
.section .pcmap_data
.Lframe_l243:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l219
.long .Lframe_l244
.section .pcmap_data
.Lframe_l244:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0x40000009
.long 0xffffffd8
.long 0xffffffd0
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
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l216
.long .Lframe_l245
.section .pcmap_data
.Lframe_l245:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l225
.long .Lframe_l246
.section .pcmap_data
.Lframe_l246:
.long 0x8000000c
.long 0xffffffc0
.long 0xfffffff0
.long .Lstackdata_l236
.long 4
.long 31
.long 2
.long 1
.long 11
.long 0xffffffec
.long 10
.long 0xffffffe8
.long 9
.long 0xffffffe4
.long 7
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
.long ins_45_gc_data
.section .text
.section .data
ins_45_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 31
.long 1
.long 1
.long 1
.long 1
.long 0
.long 0
.long 1
.long 1
.long 1
.long 0
.long 0
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
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
.long 1
.long 1
.section .text
insert_46:
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,(%esp)
	leal 32(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
	movl %edx,12(%esp)
	movl %edi,8(%esp)
	movl %esi,4(%esp)
.Linitialize_continuations_l248:
.Lproc_body_start_l247:
	leal 32(%esp), %edx
	movl $-16,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 32(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl $-16,%esi
	addl %esi,%ecx
	movl $8,%esi
	addl %esi,%ecx
	leal 40(%esp), %edi
	movl $-36,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 40(%esp), %ecx
	movl $-40,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call ins_45
.Lcall_successor_l255:
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l259:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_234
Lalc_gc_234:
	call tig_call_gc
.Lcall_successor_l252:
Lalc_235:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%esi
	movl %eax,%ecx
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%esi
	movl %eax,%ecx
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $12,%esi
	movl %eax,%ecx
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $16,%esi
	movl %eax,%ecx
	addl %esi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 32(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 8(%esp),%edi
	movl 4(%esp),%esi
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l261:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l255
.long .Lframe_l262
.section .pcmap_data
.Lframe_l262:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l261
.long 2
.long 7
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_46_gc_data
.section .pcmap
.long .Lcall_successor_l252
.long .Lframe_l263
.section .pcmap_data
.Lframe_l263:
.long 0x8000000c
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l261
.long 2
.long 7
.long 2
.long 1
.long 11
.long 0xffffffe8
.long 10
.long 0xffffffe4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long insert_46_gc_data
.section .text
.section .data
insert_46_gc_data:
.long 4
.long 1
.long 1
.long 1
.long 1
.long 7
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.long 1
.section .text
add_word_47:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
	movl %esi,(%esp)
.Linitialize_continuations_l265:
.Lproc_body_start_l264:
	leal 20(%esp), %edx
	movl $-8,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 20(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 28(%esp), %ecx
	movl $-8,%esi
	addl %esi,%ecx
	movl (%ecx),%ecx
	movl $4,%esi
	addl %esi,%ecx
	leal 28(%esp), %edi
	movl $-24,%esi
	addl %esi,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 28(%esp), %ecx
	movl $-28,%esi
	addl %esi,%ecx
	movl %edx,(%ecx)
	call insert_46
.Lcall_successor_l269:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	movl (%esp),%esi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l274:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l269
.long .Lframe_l275
.section .pcmap_data
.Lframe_l275:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l274
.long 2
.long 4
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long add_word_47_gc_data
.section .text
.section .data
add_word_47_gc_data:
.long 2
.long 1
.long 1
.long 4
.long 1
.long 1
.long 1
.long 0
.section .text
tprint_48:
	leal -20(%esp), %esp
	leal 20(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 20(%esp), %edx
	movl (%edx),%edx
	movl %edx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l277:
.Lproc_body_start_l276:
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
.Lbranch_target_l300:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne LifTrue_248
LifFalse_249:
	movl $0,%eax
	jmp LifEnd_250
LifTrue_248:
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call tprint_48
.Lcall_successor_l296:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_printi
.Lcall_successor_l293:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_240,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l290:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l287:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_57,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l284:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call tprint_48
.Lcall_successor_l281:
LifEnd_250:
	leal 20(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l302:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l296
.long .Lframe_l303
.section .pcmap_data
.Lframe_l303:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l302
.long 1
.long 12
.long 2
.long 1
.long 11
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tprint_48_gc_data
.section .pcmap
.long .Lcall_successor_l293
.long .Lframe_l304
.section .pcmap_data
.Lframe_l304:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l302
.long 1
.long 12
.long 2
.long 1
.long 11
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
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long tprint_48_gc_data
.section .pcmap
.long .Lcall_successor_l290
.long .Lframe_l305
.section .pcmap_data
.Lframe_l305:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l302
.long 1
.long 12
.long 2
.long 1
.long 11
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long tprint_48_gc_data
.section .pcmap
.long .Lcall_successor_l287
.long .Lframe_l306
.section .pcmap_data
.Lframe_l306:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l302
.long 1
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tprint_48_gc_data
.section .pcmap
.long .Lcall_successor_l284
.long .Lframe_l307
.section .pcmap_data
.Lframe_l307:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l302
.long 1
.long 12
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tprint_48_gc_data
.section .pcmap
.long .Lcall_successor_l281
.long .Lframe_l308
.section .pcmap_data
.Lframe_l308:
.long 0x80000008
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l302
.long 1
.long 12
.long 2
.long 1
.long 11
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long tprint_48_gc_data
.section .text
.section .data
tprint_48_gc_data:
.long 2
.long 1
.long 1
.long 12
.long 1
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
.long 0
.section .text
isletter_49:
	leal -28(%esp), %esp
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 28(%esp), %edx
	movl (%edx),%edx
	movl %edx,16(%esp)
	movl %edi,12(%esp)
	movl %esi,8(%esp)
.Linitialize_continuations_l310:
.Lproc_body_start_l309:
	leal 28(%esp), %edx
	movl $-8,%esi
	addl %esi,%edx
	movl %eax,(%edx)
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_252,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l335:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l339:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_259
LifFalse_260:
	movl $0,%eax
	jmp LifEnd_261
LifTrue_259:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_255,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l332:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l343:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l342
.Lbranch_target_l341:
	movl $0,%eax
	jmp .Lbranch_target_l340
.Lbranch_target_l342:
	movl $-1,%eax
.Lbranch_target_l340:
LifEnd_261:
.Lbranch_target_l349:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_285
LifFalse_286:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_264,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l320:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l344:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_275
LifFalse_276:
	movl $0,%eax
	jmp LifEnd_277
LifTrue_275:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_271,%ecx
	leal 28(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l317:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
.Lbranch_target_l348:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l347
.Lbranch_target_l346:
	movl $0,%eax
	jmp .Lbranch_target_l345
.Lbranch_target_l347:
	movl $-1,%eax
.Lbranch_target_l345:
LifEnd_277:
.Lbranch_target_l350:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_281
LifFalse_282:
	movl $0,%eax
	jmp LifEnd_283
LifTrue_281:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_ord
.Lcall_successor_l314:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
LifEnd_283:
	movl %eax,%esi
	jmp LifEnd_287
LifTrue_285:
	leal Cmm.global_area,%eax
	movl (%eax),%esi
	leal 28(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 28(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	call tig_ord
.Lcall_successor_l329:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_264,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l326:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	addl %eax,%esi
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal Lgbl_252,%eax
	leal 28(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l323:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	subl %eax,%esi
LifEnd_287:
	movl %esi,%eax
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	movl 8(%esp),%esi
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l353:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l335
.long .Lframe_l354
.section .pcmap_data
.Lframe_l354:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l353
.long 2
.long 25
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
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
.long 0x4000000a
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l332
.long .Lframe_l355
.section .pcmap_data
.Lframe_l355:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l353
.long 2
.long 25
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l320
.long .Lframe_l356
.section .pcmap_data
.Lframe_l356:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l353
.long 2
.long 25
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
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
.long 0x4000000a
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
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l317
.long .Lframe_l357
.section .pcmap_data
.Lframe_l357:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l353
.long 2
.long 25
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
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
.long 0x4000000a
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
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l314
.long .Lframe_l358
.section .pcmap_data
.Lframe_l358:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l353
.long 2
.long 25
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l329
.long .Lframe_l359
.section .pcmap_data
.Lframe_l359:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l353
.long 2
.long 25
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000a
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l326
.long .Lframe_l360
.section .pcmap_data
.Lframe_l360:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l353
.long 2
.long 25
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0x4000000a
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
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l323
.long .Lframe_l361
.section .pcmap_data
.Lframe_l361:
.long 0x80000008
.long 0xffffffe4
.long 0xfffffff4
.long .Lstackdata_l353
.long 2
.long 25
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 10
.long 0xffffffec
.long 0
.long 0
.long 0x4000000a
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
.long 0
.long 0
.long isletter_49_gc_data
.section .text
.section .data
isletter_49_gc_data:
.long 2
.long 1
.long 1
.long 25
.long 1
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
.long 0
.section .text
getword_50:
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,16(%esp)
	movl %edi,12(%esp)
.Linitialize_continuations_l363:
.Lproc_body_start_l362:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_289,%ecx
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal Lgbl_289,%ecx
	leal 32(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_getchar
.Lcall_successor_l394:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_297:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 32(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal Lgbl_289,%eax
	leal 32(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l391:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l398:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_294
LifFalse_295:
	movl $0,%eax
	jmp LifEnd_296
LifTrue_294:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call isletter_49
.Lcall_successor_l388:
.Lbranch_target_l402:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l401
.Lbranch_target_l400:
	movl $0,%eax
	jmp .Lbranch_target_l399
.Lbranch_target_l401:
	movl $-1,%eax
.Lbranch_target_l399:
LifEnd_296:
.Lbranch_target_l404:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_298
Lloop_end_290:
Lloop_start_306:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 32(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	leal Lgbl_289,%eax
	leal 32(%esp), %edx
	movl $-28,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call tig_compare_str
.Lcall_successor_l382:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l403:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_303
LifFalse_304:
	movl $0,%eax
	jmp LifEnd_305
LifTrue_303:
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call isletter_49
.Lcall_successor_l379:
LifEnd_305:
.Lbranch_target_l405:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_307
Lloop_end_299:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%edi
	leal 32(%esp), %esp
	ret
Lloop_body_307:
	leal 32(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,8(%esp)
	leal -4(%esp), %esp
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call isletter_49
.Lcall_successor_l376:
	call tig_chr
.Lcall_successor_l373:
	movl %eax,%ecx
	leal -4(%esp), %esp
	movl 12(%esp),%eax
	leal 36(%esp), %edi
	movl $-36,%edx
	addl %edx,%edi
	movl %ecx,(%edi)
	call tig_concat
.Lcall_successor_l370:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l367:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_306
Lloop_body_298:
	call tig_getchar
.Lcall_successor_l385:
	leal 32(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_297
.section .pcmap_data
.Lstackdata_l407:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l394
.long .Lframe_l408
.section .pcmap_data
.Lframe_l408:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l391
.long .Lframe_l409
.section .pcmap_data
.Lframe_l409:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l388
.long .Lframe_l410
.section .pcmap_data
.Lframe_l410:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l382
.long .Lframe_l411
.section .pcmap_data
.Lframe_l411:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l379
.long .Lframe_l412
.section .pcmap_data
.Lframe_l412:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l376
.long .Lframe_l413
.section .pcmap_data
.Lframe_l413:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0xffffffe8
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
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l373
.long .Lframe_l414
.section .pcmap_data
.Lframe_l414:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
.long 0
.long 0
.long 0xffffffe8
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
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l370
.long .Lframe_l415
.section .pcmap_data
.Lframe_l415:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l367
.long .Lframe_l416
.section .pcmap_data
.Lframe_l416:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l385
.long .Lframe_l417
.section .pcmap_data
.Lframe_l417:
.long 0x80000004
.long 0xffffffe0
.long 0xfffffff0
.long .Lstackdata_l407
.long 1
.long 16
.long 2
.long 1
.long 11
.long 0xffffffec
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_50_gc_data
.section .text
.section .data
getword_50_gc_data:
.long 3
.long 1
.long 1
.long 1
.long 16
.long 1
.long 1
.long 1
.long 0
.long 1
.long 1
.long 0
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
main_51:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,8(%esp)
	movl %edi,4(%esp)
.Linitialize_continuations_l419:
.Lproc_body_start_l418:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_289,%ecx
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
	call getword_50
.Lcall_successor_l435:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_312:
	leal Cmm.global_area,%eax
	movl (%eax),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 20(%esp), %edx
	movl $-20,%ecx
	addl %ecx,%edx
	movl (%eax),%eax
	movl %eax,(%edx)
	call tig_size
.Lcall_successor_l432:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
.Lbranch_target_l439:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Lloop_body_313
Lloop_end_309:
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call tprint_48
.Lcall_successor_l423:
	leal 20(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
Lloop_body_313:
	leal -4(%esp), %esp
	leal 24(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 24(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	call add_word_47
.Lcall_successor_l429:
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_50
.Lcall_successor_l426:
	leal 20(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_312
.section .pcmap_data
.Lstackdata_l441:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l435
.long .Lframe_l442
.section .pcmap_data
.Lframe_l442:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l441
.long 1
.long 6
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long main_51_gc_data
.section .pcmap
.long .Lcall_successor_l432
.long .Lframe_l443
.section .pcmap_data
.Lframe_l443:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l441
.long 1
.long 6
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long main_51_gc_data
.section .pcmap
.long .Lcall_successor_l423
.long .Lframe_l444
.section .pcmap_data
.Lframe_l444:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l441
.long 1
.long 6
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long main_51_gc_data
.section .pcmap
.long .Lcall_successor_l429
.long .Lframe_l445
.section .pcmap_data
.Lframe_l445:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l441
.long 1
.long 6
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long main_51_gc_data
.section .pcmap
.long .Lcall_successor_l426
.long .Lframe_l446
.section .pcmap_data
.Lframe_l446:
.long 0x80000004
.long 0xffffffec
.long 0xfffffff4
.long .Lstackdata_l441
.long 1
.long 6
.long 2
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long main_51_gc_data
.section .text
.section .data
main_51_gc_data:
.long 2
.long 1
.long 1
.long 6
.long 1
.long 1
.long 1
.long 0
.long 0
.long 0
.section .text
tiger_main:
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
	movl %ecx,(%esp)
.Linitialize_continuations_l448:
.Lproc_body_start_l447:
	leal 20(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 20(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 20(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $1,%eax
	leal 20(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 20(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	call main_51
.Lcall_successor_l452:
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 20(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l457:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l452
.long .Lframe_l458
.section .pcmap_data
.Lframe_l458:
.long 0x80000004
.long 0xffffffec
.long 0xffffffec
.long .Lstackdata_l457
.long 0
.long 2
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 4
.long 1
.long 1
.long 0
.long 0
.long 2
.long 1
.long 0

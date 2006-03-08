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
	leal -60(%esp), %esp
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 60(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l12:
.Lproc_body_start_l11:
	movl %eax,4(%esp)
	leal 60(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_52,%ecx
	movl %eax,20(%esp)
	leal 60(%esp), %eax
	movl %eax,24(%esp)
	movl $-60,%eax
	movl %eax,28(%esp)
	movl 24(%esp),%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,36(%esp)
	call tig_print
.Lcall_successor_l25:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 60(%esp), %edx
	movl %eax,40(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l22:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_57,%ecx
	leal 60(%esp), %edx
	movl %eax,44(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l19:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $1,%ecx
	leal 60(%esp), %edx
	movl %eax,48(%esp)
	movl $-60,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_exit
.Lcall_successor_l16:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %esp
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
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l31
.long 0
.long 11
.long 2
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
.long 0xffffffd8
.long 0
.long 0
.long err_43_gc_data
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l31
.long 0
.long 11
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
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
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l31
.long 0
.long 11
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
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
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l31
.long 0
.long 11
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff4
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
	leal -316(%esp), %esp
	leal 316(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 316(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 316(%esp), %edx
	movl %eax,4(%esp)
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 316(%esp), %edx
	movl %eax,8(%esp)
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 316(%esp), %edx
	movl %eax,12(%esp)
	movl $20,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 316(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l37:
.Lproc_body_start_l36:
	movl %eax,16(%esp)
	leal 316(%esp), %eax
	movl %eax,20(%esp)
	movl $-24,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l177:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,32(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 32(%esp),%ecx
	cmpl %eax,%ecx
	je LifTrue_64
LifFalse_65:
	movl $0,%eax
	jmp LifEnd_66
LifTrue_64:
.Lbranch_target_l176:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l175
.Lbranch_target_l174:
	movl $0,%eax
	jmp .Lbranch_target_l173
.Lbranch_target_l175:
	movl $-1,%eax
.Lbranch_target_l173:
LifEnd_66:
.Lbranch_target_l172:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_68
LifFalse_69:
	movl $0,%eax
	jmp LifEnd_70
LifTrue_68:
.Lbranch_target_l171:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l170
.Lbranch_target_l169:
	movl $0,%eax
	jmp .Lbranch_target_l168
.Lbranch_target_l170:
	movl $-1,%eax
.Lbranch_target_l168:
LifEnd_70:
.Lbranch_target_l167:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_72
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
LifTrue_72:
.Lbranch_target_l166:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,36(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 36(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l165
.Lbranch_target_l164:
	movl $0,%eax
	jmp .Lbranch_target_l163
.Lbranch_target_l165:
	movl $-1,%eax
.Lbranch_target_l163:
LifEnd_74:
.Lbranch_target_l162:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_76
LifFalse_77:
	movl $0,%eax
	jmp LifEnd_78
LifTrue_76:
.Lbranch_target_l161:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,40(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 40(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l160
.Lbranch_target_l159:
	movl $0,%eax
	jmp .Lbranch_target_l158
.Lbranch_target_l160:
	movl $-1,%eax
.Lbranch_target_l158:
LifEnd_78:
.Lbranch_target_l157:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_193
LifFalse_194:
.Lbranch_target_l153:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,96(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 96(%esp),%ecx
	cmpl %eax,%ecx
	je LifTrue_93
LifFalse_94:
	movl $0,%eax
	jmp LifEnd_95
LifTrue_93:
.Lbranch_target_l152:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l151
.Lbranch_target_l150:
	movl $0,%eax
	jmp .Lbranch_target_l149
.Lbranch_target_l151:
	movl $-1,%eax
.Lbranch_target_l149:
LifEnd_95:
.Lbranch_target_l148:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_97
LifFalse_98:
	movl $0,%eax
	jmp LifEnd_99
LifTrue_97:
.Lbranch_target_l147:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l146
.Lbranch_target_l145:
	movl $0,%eax
	jmp .Lbranch_target_l144
.Lbranch_target_l146:
	movl $-1,%eax
.Lbranch_target_l144:
LifEnd_99:
.Lbranch_target_l143:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_101
LifFalse_102:
	movl $0,%eax
	jmp LifEnd_103
LifTrue_101:
.Lbranch_target_l142:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,100(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 100(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l141
.Lbranch_target_l140:
	movl $0,%eax
	jmp .Lbranch_target_l139
.Lbranch_target_l141:
	movl $-1,%eax
.Lbranch_target_l139:
LifEnd_103:
.Lbranch_target_l138:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_105
LifFalse_106:
	movl $0,%eax
	jmp LifEnd_107
LifTrue_105:
.Lbranch_target_l137:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,104(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 104(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l136
.Lbranch_target_l135:
	movl $0,%eax
	jmp .Lbranch_target_l134
.Lbranch_target_l136:
	movl $-1,%eax
.Lbranch_target_l134:
LifEnd_107:
.Lbranch_target_l133:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_189
LifFalse_190:
.Lbranch_target_l129:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,156(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 156(%esp),%ecx
	cmpl %eax,%ecx
	je LifTrue_121
LifFalse_122:
	movl $0,%eax
	jmp LifEnd_123
LifTrue_121:
.Lbranch_target_l128:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l127
.Lbranch_target_l126:
	movl $0,%eax
	jmp .Lbranch_target_l125
.Lbranch_target_l127:
	movl $-1,%eax
.Lbranch_target_l125:
LifEnd_123:
.Lbranch_target_l124:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_125
LifFalse_126:
	movl $0,%eax
	jmp LifEnd_127
LifTrue_125:
.Lbranch_target_l123:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l122
.Lbranch_target_l121:
	movl $0,%eax
	jmp .Lbranch_target_l120
.Lbranch_target_l122:
	movl $-1,%eax
.Lbranch_target_l120:
LifEnd_127:
.Lbranch_target_l119:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_129
LifFalse_130:
	movl $0,%eax
	jmp LifEnd_131
LifTrue_129:
.Lbranch_target_l118:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,160(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 160(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l117
.Lbranch_target_l116:
	movl $0,%eax
	jmp .Lbranch_target_l115
.Lbranch_target_l117:
	movl $-1,%eax
.Lbranch_target_l115:
LifEnd_131:
.Lbranch_target_l114:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_133
LifFalse_134:
	movl $0,%eax
	jmp LifEnd_135
LifTrue_133:
.Lbranch_target_l113:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,164(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 164(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l112
.Lbranch_target_l111:
	movl $0,%eax
	jmp .Lbranch_target_l110
.Lbranch_target_l112:
	movl $-1,%eax
.Lbranch_target_l110:
LifEnd_135:
.Lbranch_target_l109:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_185
LifFalse_186:
.Lbranch_target_l105:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,216(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 216(%esp),%ecx
	cmpl %eax,%ecx
	je LifTrue_149
LifFalse_150:
	movl $0,%eax
	jmp LifEnd_151
LifTrue_149:
.Lbranch_target_l104:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l103
.Lbranch_target_l102:
	movl $0,%eax
	jmp .Lbranch_target_l101
.Lbranch_target_l103:
	movl $-1,%eax
.Lbranch_target_l101:
LifEnd_151:
.Lbranch_target_l100:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_153
LifFalse_154:
	movl $0,%eax
	jmp LifEnd_155
LifTrue_153:
.Lbranch_target_l99:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l98
.Lbranch_target_l97:
	movl $0,%eax
	jmp .Lbranch_target_l96
.Lbranch_target_l98:
	movl $-1,%eax
.Lbranch_target_l96:
LifEnd_155:
.Lbranch_target_l95:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_157
LifFalse_158:
	movl $0,%eax
	jmp LifEnd_159
LifTrue_157:
.Lbranch_target_l94:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,220(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 220(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l93
.Lbranch_target_l92:
	movl $0,%eax
	jmp .Lbranch_target_l91
.Lbranch_target_l93:
	movl $-1,%eax
.Lbranch_target_l91:
LifEnd_159:
.Lbranch_target_l90:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_161
LifFalse_162:
	movl $0,%eax
	jmp LifEnd_163
LifTrue_161:
.Lbranch_target_l89:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,224(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 224(%esp),%ecx
	cmpl %eax,%ecx
	je .Lbranch_target_l88
.Lbranch_target_l87:
	movl $0,%eax
	jmp .Lbranch_target_l86
.Lbranch_target_l88:
	movl $-1,%eax
.Lbranch_target_l86:
LifEnd_163:
.Lbranch_target_l85:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_181
LifFalse_182:
.Lbranch_target_l81:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_178
Lalc_gc_178:
	movl %edx,44(%esp)
	call tig_call_gc
.Lcall_successor_l41:
Lalc_179:
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
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,276(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,280(%esp)
	movl 276(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 280(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,284(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 284(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,288(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 288(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.LLifEnd_183_l178:
	movl %edx,%eax
	jmp LifEnd_183
LifTrue_181:
.Lbranch_target_l84:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_174
Lalc_gc_174:
	movl %edx,44(%esp)
	call tig_call_gc
.Lcall_successor_l50:
Lalc_175:
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
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,228(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,232(%esp)
	movl 228(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 232(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l83:
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,236(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,240(%esp)
	movl 236(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 240(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,244(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 244(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,248(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 248(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,252(%esp)
	movl 228(%esp),%ecx
	movl %ecx,%eax
	movl 252(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
.Lbranch_target_l82:
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,256(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,260(%esp)
	movl 256(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 260(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,264(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 264(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,268(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 268(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $16,%eax
	movl %eax,272(%esp)
	movl 228(%esp),%ecx
	movl %ecx,%eax
	movl 272(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 228(%esp),%eax
LifEnd_183:
	jmp LifEnd_187
LifTrue_185:
.Lbranch_target_l108:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_146
Lalc_gc_146:
	movl %edx,44(%esp)
	call tig_call_gc
.Lcall_successor_l59:
Lalc_147:
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
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,168(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,172(%esp)
	movl 168(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 172(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l107:
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,176(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,180(%esp)
	movl 176(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 180(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,184(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 184(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,188(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 188(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,192(%esp)
	movl 168(%esp),%ecx
	movl %ecx,%eax
	movl 192(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
.Lbranch_target_l106:
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,196(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,200(%esp)
	movl 196(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 200(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,204(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 204(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,208(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 208(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $16,%eax
	movl %eax,212(%esp)
	movl 168(%esp),%ecx
	movl %ecx,%eax
	movl 212(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 168(%esp),%eax
LifEnd_187:
	jmp LifEnd_191
LifTrue_189:
.Lbranch_target_l132:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_118
Lalc_gc_118:
	movl %edx,44(%esp)
	call tig_call_gc
.Lcall_successor_l68:
Lalc_119:
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
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,108(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,112(%esp)
	movl 108(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 112(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l131:
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,116(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,120(%esp)
	movl 116(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 120(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,124(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 124(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,128(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 128(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,132(%esp)
	movl 108(%esp),%ecx
	movl %ecx,%eax
	movl 132(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
.Lbranch_target_l130:
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,136(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,140(%esp)
	movl 136(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 140(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,144(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 144(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,148(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 148(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $16,%eax
	movl %eax,152(%esp)
	movl 108(%esp),%ecx
	movl %ecx,%eax
	movl 152(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 108(%esp),%eax
LifEnd_191:
	jmp LifEnd_195
LifTrue_193:
.Lbranch_target_l156:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_90
Lalc_gc_90:
	movl %edx,44(%esp)
	call tig_call_gc
.Lcall_successor_l77:
Lalc_91:
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
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,48(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,52(%esp)
	movl 48(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l155:
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,56(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,60(%esp)
	movl 56(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,64(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,68(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,72(%esp)
	movl 48(%esp),%ecx
	movl %ecx,%eax
	movl 72(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
.Lbranch_target_l154:
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
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,76(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,80(%esp)
	movl 76(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 80(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,84(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 84(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,88(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 88(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $16,%eax
	movl %eax,92(%esp)
	movl 48(%esp),%ecx
	movl %ecx,%eax
	movl 92(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 48(%esp),%eax
LifEnd_195:
	leal 316(%esp), %ecx
	movl $20,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 336(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l180:
.long 1
.long 0xffffffe8
.section .pcmap
.long .Lcall_successor_l41
.long .Lframe_l181
.section .pcmap_data
.Lframe_l181:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l182
.section .pcmap_data
.Lframe_l182:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l183
.section .pcmap_data
.Lframe_l183:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0xffffffa8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l184
.section .pcmap_data
.Lframe_l184:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0xffffffa8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l185
.section .pcmap_data
.Lframe_l185:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff6c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l187
.section .pcmap_data
.Lframe_l187:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff6c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l188
.section .pcmap_data
.Lframe_l188:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l189
.section .pcmap_data
.Lframe_l189:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff30
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
.long .Lframe_l190
.section .pcmap_data
.Lframe_l190:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff30
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
.long .Lframe_l191
.section .pcmap_data
.Lframe_l191:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l192
.section .pcmap_data
.Lframe_l192:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lframe_l193
.section .pcmap_data
.Lframe_l193:
.long 0x80000018
.long 0xfffffec4
.long 0xfffffef0
.long .Lstackdata_l180
.long 0
.long 53
.long 2
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
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
	leal -172(%esp), %esp
	leal 172(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 172(%esp), %edx
	movl %eax,8(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 172(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l195:
.Lproc_body_start_l194:
	movl %eax,12(%esp)
	leal 172(%esp), %eax
	movl %eax,16(%esp)
	movl $-12,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l232:
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je LifTrue_228
LifFalse_229:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 172(%esp), %ecx
	movl %eax,48(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 172(%esp), %ecx
	movl %eax,52(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 172(%esp), %ecx
	movl %eax,56(%esp)
	movl $-168,%eax
	addl %eax,%ecx
	movl 56(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 172(%esp), %eax
	movl $-172,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,28(%esp)
	call tig_compare_str
.Lcall_successor_l223:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l235:
	movl $0,%ecx
	cmpl %ecx,%eax
	jl LifTrue_224
LifFalse_225:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 172(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 172(%esp), %edx
	movl %eax,92(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 172(%esp), %edx
	movl %eax,96(%esp)
	movl $-168,%eax
	addl %eax,%edx
	movl 96(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 172(%esp), %eax
	movl $-172,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l214:
	leal Cmm.global_area,%ecx
	movl 92(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l234:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg LifTrue_220
LifFalse_221:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 172(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 172(%esp), %edx
	movl %eax,132(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 172(%esp), %edx
	movl %eax,136(%esp)
	movl $-168,%eax
	addl %eax,%edx
	movl 136(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 172(%esp), %eax
	movl $-172,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Lcall_successor_l205:
	leal Cmm.global_area,%ecx
	movl 132(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l233:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_212
LifFalse_213:
	movl $0,%eax
	jmp LifEnd_214
LifTrue_212:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_208,%ecx
	leal 172(%esp), %edx
	movl %eax,140(%esp)
	movl $-172,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l202:
	leal Cmm.global_area,%ecx
	movl 140(%esp),%edx
	movl %edx,(%ecx)
LifEnd_214:
.Lbranch_target_l230:
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
.Lcall_successor_l199:
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
	leal 172(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 172(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $1,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,144(%esp)
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,148(%esp)
	movl 144(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 148(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,152(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 152(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,156(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 156(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
.LLifEnd_222_l236:
	movl %edx,%eax
	jmp LifEnd_222
LifTrue_220:
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 172(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 172(%esp), %edx
	movl %eax,100(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 172(%esp), %edx
	movl %eax,104(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 172(%esp), %edx
	movl %eax,108(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal -8(%esp), %esp
	leal 180(%esp), %edx
	movl %eax,120(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 180(%esp), %edx
	movl %ecx,124(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 180(%esp), %edx
	movl %ecx,128(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 180(%esp), %edx
	movl %ecx,132(%esp)
	movl $-176,%ecx
	addl %ecx,%edx
	movl 132(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 180(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 128(%esp),%edx
	movl %edx,(%ecx)
	call ins_45
.Lcall_successor_l211:
	leal -20(%esp), %esp
	movl %eax,148(%esp)
	movl 120(%esp),%eax
	leal 192(%esp), %ecx
	movl $-192,%edx
	addl %edx,%ecx
	movl 136(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl 124(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl 128(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 132(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	movl 148(%esp),%edx
	movl %edx,(%ecx)
	call balance_44
.Lcall_successor_l208:
LifEnd_222:
	jmp LifEnd_226
LifTrue_224:
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 172(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 172(%esp), %edx
	movl %eax,60(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 172(%esp), %edx
	movl %eax,64(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal -8(%esp), %esp
	leal 180(%esp), %edx
	movl %eax,76(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 180(%esp), %edx
	movl %ecx,80(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 180(%esp), %edx
	movl %ecx,84(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 180(%esp), %edx
	movl %ecx,88(%esp)
	movl $-176,%ecx
	addl %ecx,%edx
	movl 88(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 180(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 84(%esp),%edx
	movl %edx,(%ecx)
	call ins_45
.Lcall_successor_l220:
	leal -20(%esp), %esp
	movl %eax,104(%esp)
	movl 80(%esp),%eax
	leal 192(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 192(%esp), %edx
	movl %ecx,108(%esp)
	movl $-176,%ecx
	addl %ecx,%edx
	movl 108(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 192(%esp), %ecx
	movl $-192,%edx
	addl %edx,%ecx
	movl 92(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl 84(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 104(%esp),%edx
	movl %edx,(%ecx)
	call balance_44
.Lcall_successor_l217:
LifEnd_226:
.LLifEnd_230_l237:
	movl %eax,%edx
	jmp LifEnd_230
LifTrue_228:
.Lbranch_target_l231:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg Lalc_gc_199
Lalc_gc_199:
	movl %edx,28(%esp)
	call tig_call_gc
.Lcall_successor_l226:
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
	leal 172(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
	movl $4,%edx
	movl %eax,32(%esp)
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,36(%esp)
	movl 32(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $12,%ecx
	movl %eax,40(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $16,%ecx
	movl %eax,44(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
LifEnd_230:
	movl %edx,%eax
	leal 172(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l239:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l223
.long .Lframe_l240
.section .pcmap_data
.Lframe_l240:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0
.long 0
.long 0
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l214
.long .Lframe_l241
.section .pcmap_data
.Lframe_l241:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
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
.long 0
.long 0
.long 0
.long 0xffffffb0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l205
.long .Lframe_l242
.section .pcmap_data
.Lframe_l242:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
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
.long 0
.long 0xffffffd8
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
.long .Lcall_successor_l202
.long .Lframe_l243
.section .pcmap_data
.Lframe_l243:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
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
.long ins_45_gc_data
.section .pcmap
.long .Lcall_successor_l199
.long .Lframe_l244
.section .pcmap_data
.Lframe_l244:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
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
.long 0
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
.long .Lcall_successor_l211
.long .Lframe_l245
.section .pcmap_data
.Lframe_l245:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffb8
.long 0xffffffc8
.long 0xffffffbc
.long 0xffffffc0
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l208
.long .Lframe_l246
.section .pcmap_data
.Lframe_l246:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
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
.long 0
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
.long .Lcall_successor_l220
.long .Lframe_l247
.section .pcmap_data
.Lframe_l247:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0xffffff90
.long 0xffffff9c
.long 0xffffff94
.long 0xffffff98
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l217
.long .Lframe_l248
.section .pcmap_data
.Lframe_l248:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
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
.long 0
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
.long .Lcall_successor_l226
.long .Lframe_l249
.section .pcmap_data
.Lframe_l249:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff70
.long .Lstackdata_l239
.long 0
.long 31
.long 2
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
.long 0
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
	leal -80(%esp), %esp
	leal 80(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 80(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 80(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l251:
.Lproc_body_start_l250:
	movl %eax,4(%esp)
	leal 80(%esp), %eax
	movl %eax,8(%esp)
	movl $-16,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 88(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 88(%esp), %ecx
	movl %ecx,28(%esp)
	movl $-16,%ecx
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	movl %edx,36(%esp)
	movl 32(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 88(%esp), %edx
	movl %ecx,40(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	leal 88(%esp), %ecx
	movl %ecx,44(%esp)
	movl $-84,%ecx
	movl %ecx,48(%esp)
	movl 44(%esp),%ecx
	movl %edx,52(%esp)
	movl 48(%esp),%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	call ins_45
.Lcall_successor_l258:
	leal 80(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
.Lbranch_target_l262:
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
.Lcall_successor_l255:
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
	leal 80(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl $4,%edx
	movl %eax,48(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,52(%esp)
	movl 48(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,56(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,60(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %edx,%eax
	leal 80(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 88(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l264:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l258
.long .Lframe_l265
.section .pcmap_data
.Lframe_l265:
.long 0x8000000c
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l264
.long 0
.long 7
.long 2
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
.long insert_46_gc_data
.section .pcmap
.long .Lcall_successor_l255
.long .Lframe_l266
.section .pcmap_data
.Lframe_l266:
.long 0x8000000c
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l264
.long 0
.long 7
.long 2
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l268:
.Lproc_body_start_l267:
	movl %eax,(%esp)
	leal 44(%esp), %eax
	movl %eax,4(%esp)
	movl $-8,%eax
	movl %eax,8(%esp)
	movl 4(%esp),%eax
	movl %ecx,12(%esp)
	movl 8(%esp),%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 44(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal -8(%esp), %esp
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl %ecx,24(%esp)
	movl $-8,%ecx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 52(%esp), %edx
	movl %ecx,36(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 52(%esp), %edx
	movl %ecx,40(%esp)
	movl $-48,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	call insert_46
.Lcall_successor_l272:
	leal 44(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	leal 48(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l277:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l272
.long .Lframe_l278
.section .pcmap_data
.Lframe_l278:
.long 0x80000008
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l277
.long 0
.long 4
.long 2
.long 1
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
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 64(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l280:
.Lproc_body_start_l279:
	movl %eax,4(%esp)
	leal 64(%esp), %eax
	movl %eax,8(%esp)
	movl $-8,%eax
	movl %eax,12(%esp)
	movl 8(%esp),%eax
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 64(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
.Lbranch_target_l303:
	leal 64(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_248
LifFalse_249:
	movl $0,%eax
.LLifEnd_250_l304:
	movl %edx,28(%esp)
	jmp LifEnd_250
LifTrue_248:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl %ecx,24(%esp)
	movl $-8,%ecx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	movl %edx,32(%esp)
	movl 28(%esp),%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,36(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_48
.Lcall_successor_l299:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,36(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_printi
.Lcall_successor_l296:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_240,%ecx
	leal 64(%esp), %edx
	movl %eax,40(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l293:
	leal Cmm.global_area,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,44(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_print
.Lcall_successor_l290:
	leal Cmm.global_area,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_57,%ecx
	leal 64(%esp), %edx
	movl %eax,48(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Lcall_successor_l287:
	leal Cmm.global_area,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,56(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_48
.Lcall_successor_l284:
LifEnd_250:
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l306:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l299
.long .Lframe_l307
.section .pcmap_data
.Lframe_l307:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l306
.long 0
.long 12
.long 2
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
.long tprint_48_gc_data
.section .pcmap
.long .Lcall_successor_l296
.long .Lframe_l308
.section .pcmap_data
.Lframe_l308:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l306
.long 0
.long 12
.long 2
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
.long 0xffffffe4
.long 0
.long 0
.long tprint_48_gc_data
.section .pcmap
.long .Lcall_successor_l293
.long .Lframe_l309
.section .pcmap_data
.Lframe_l309:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l306
.long 0
.long 12
.long 2
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
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0
.long tprint_48_gc_data
.section .pcmap
.long .Lcall_successor_l290
.long .Lframe_l310
.section .pcmap_data
.Lframe_l310:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l306
.long 0
.long 12
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long tprint_48_gc_data
.section .pcmap
.long .Lcall_successor_l287
.long .Lframe_l311
.section .pcmap_data
.Lframe_l311:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l306
.long 0
.long 12
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff0
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
.long .Lcall_successor_l284
.long .Lframe_l312
.section .pcmap_data
.Lframe_l312:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l306
.long 0
.long 12
.long 2
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
	leal -108(%esp), %esp
	leal 108(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 108(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l314:
.Lproc_body_start_l313:
	movl %eax,8(%esp)
	leal 108(%esp), %eax
	movl %eax,12(%esp)
	movl $-8,%eax
	movl %eax,16(%esp)
	movl 12(%esp),%eax
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 108(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl %eax,24(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal 108(%esp), %eax
	movl %eax,28(%esp)
	movl $-108,%eax
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	movl %ecx,36(%esp)
	movl 32(%esp),%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Lgbl_252,%eax
	leal 108(%esp), %ecx
	movl %eax,40(%esp)
	movl $-104,%eax
	addl %eax,%ecx
	movl 40(%esp),%eax
	movl %eax,(%ecx)
	movl %edx,44(%esp)
	call tig_compare_str
.Lcall_successor_l339:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l354:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_259
LifFalse_260:
	movl $0,%eax
	jmp LifEnd_261
LifTrue_259:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,48(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_255,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l336:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l353:
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Lbranch_target_l352
.Lbranch_target_l351:
	movl $0,%eax
	jmp .Lbranch_target_l350
.Lbranch_target_l352:
	movl $-1,%eax
.Lbranch_target_l350:
LifEnd_261:
.Lbranch_target_l344:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_285
LifFalse_286:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,88(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_264,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l324:
	leal Cmm.global_area,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l349:
	movl $0,%ecx
	cmpl %ecx,%eax
	jge LifTrue_275
LifFalse_276:
	movl $0,%eax
	jmp LifEnd_277
LifTrue_275:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,92(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_271,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l321:
	leal Cmm.global_area,%ecx
	movl 92(%esp),%edx
	movl %edx,(%ecx)
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
.Lbranch_target_l343:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_281
LifFalse_282:
	movl $0,%eax
	jmp LifEnd_283
LifTrue_281:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,96(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l318:
	leal Cmm.global_area,%ecx
	movl 96(%esp),%edx
	movl %edx,(%ecx)
LifEnd_283:
.LLifEnd_287_l355:
	movl %eax,%ecx
	jmp LifEnd_287
LifTrue_285:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,52(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Lcall_successor_l333:
	leal Cmm.global_area,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal Lgbl_264,%edx
	movl %eax,56(%esp)
	leal 108(%esp), %eax
	movl %eax,60(%esp)
	movl $-108,%eax
	movl %eax,64(%esp)
	movl 60(%esp),%eax
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l330:
	leal Cmm.global_area,%ecx
	movl 68(%esp),%edx
	movl %edx,(%ecx)
	movl 56(%esp),%ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_252,%edx
	movl %eax,72(%esp)
	leal 108(%esp), %eax
	movl %eax,76(%esp)
	movl $-108,%eax
	movl %eax,80(%esp)
	movl 76(%esp),%eax
	movl %ecx,84(%esp)
	movl 80(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Lcall_successor_l327:
	leal Cmm.global_area,%ecx
	movl 72(%esp),%edx
	movl %edx,(%ecx)
	movl 84(%esp),%ecx
	subl %eax,%ecx
LifEnd_287:
	movl %ecx,%eax
	leal 108(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal 112(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l358:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l339
.long .Lframe_l359
.section .pcmap_data
.Lframe_l359:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l358
.long 0
.long 25
.long 2
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
.long 0
.long 0xffffffac
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l336
.long .Lframe_l360
.section .pcmap_data
.Lframe_l360:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l358
.long 0
.long 25
.long 2
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
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l324
.long .Lframe_l361
.section .pcmap_data
.Lframe_l361:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l358
.long 0
.long 25
.long 2
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
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l321
.long .Lframe_l362
.section .pcmap_data
.Lframe_l362:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l358
.long 0
.long 25
.long 2
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
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l318
.long .Lframe_l363
.section .pcmap_data
.Lframe_l363:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l358
.long 0
.long 25
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l333
.long .Lframe_l364
.section .pcmap_data
.Lframe_l364:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l358
.long 0
.long 25
.long 2
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
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Lcall_successor_l330
.long .Lframe_l365
.section .pcmap_data
.Lframe_l365:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l358
.long 0
.long 25
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0xffffffcc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffd8
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
.long .Lcall_successor_l327
.long .Lframe_l366
.section .pcmap_data
.Lframe_l366:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l358
.long 0
.long 25
.long 2
.long 1
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
	leal -64(%esp), %esp
	leal 64(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l368:
.Lproc_body_start_l367:
	leal 64(%esp), %edx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_289,%eax
	leal 64(%esp), %edx
	movl %eax,12(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_289,%eax
	leal 64(%esp), %edx
	movl %eax,16(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl 16(%esp),%eax
	movl %eax,(%edx)
	movl %ecx,20(%esp)
	call tig_getchar
.Lcall_successor_l399:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_297:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,24(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_289,%eax
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l396:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l410:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_294
LifFalse_295:
	movl $0,%eax
	jmp LifEnd_296
LifTrue_294:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,32(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isletter_49
.Lcall_successor_l393:
.Lbranch_target_l409:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Lbranch_target_l408
.Lbranch_target_l407:
	movl $0,%eax
	jmp .Lbranch_target_l406
.Lbranch_target_l408:
	movl $-1,%eax
.Lbranch_target_l406:
LifEnd_296:
.Lbranch_target_l404:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_298
Lloop_end_290:
Lloop_start_306:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 64(%esp), %edx
	movl %eax,32(%esp)
	movl $-64,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal Lgbl_289,%eax
	leal 64(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Lcall_successor_l387:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l405:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne LifTrue_303
LifFalse_304:
	movl $0,%eax
	jmp LifEnd_305
LifTrue_303:
	leal -4(%esp), %esp
	leal 68(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,40(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isletter_49
.Lcall_successor_l384:
LifEnd_305:
.Lbranch_target_l403:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Lloop_body_307
Lloop_end_299:
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 64(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	leal 64(%esp), %esp
	ret
Lloop_body_307:
	leal 64(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal -4(%esp), %esp
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,44(%esp)
	movl %ecx,%eax
	leal 68(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	leal 68(%esp), %edx
	movl %ecx,48(%esp)
	movl $-68,%ecx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call isletter_49
.Lcall_successor_l381:
	call tig_chr
.Lcall_successor_l378:
	leal -4(%esp), %esp
	movl %eax,52(%esp)
	movl 44(%esp),%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	call tig_concat
.Lcall_successor_l375:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Lcall_successor_l372:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_306
Lloop_body_298:
	call tig_getchar
.Lcall_successor_l390:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_297
.section .pcmap_data
.Lstackdata_l412:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Lcall_successor_l399
.long .Lframe_l413
.section .pcmap_data
.Lframe_l413:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
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
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l396
.long .Lframe_l414
.section .pcmap_data
.Lframe_l414:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
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
.long 0xffffffd8
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l393
.long .Lframe_l415
.section .pcmap_data
.Lframe_l415:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
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
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l387
.long .Lframe_l416
.section .pcmap_data
.Lframe_l416:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
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
.long 0xffffffe0
.long 0
.long 0
.long 0
.long 0
.long 0
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l384
.long .Lframe_l417
.section .pcmap_data
.Lframe_l417:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
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
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l381
.long .Lframe_l418
.section .pcmap_data
.Lframe_l418:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
.long 1
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
.long .Lcall_successor_l378
.long .Lframe_l419
.section .pcmap_data
.Lframe_l419:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
.long 1
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
.long .Lcall_successor_l375
.long .Lframe_l420
.section .pcmap_data
.Lframe_l420:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
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
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l372
.long .Lframe_l421
.section .pcmap_data
.Lframe_l421:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
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
.long getword_50_gc_data
.section .pcmap
.long .Lcall_successor_l390
.long .Lframe_l422
.section .pcmap_data
.Lframe_l422:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l412
.long 0
.long 16
.long 2
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l424:
.Lproc_body_start_l423:
	leal 36(%esp), %edx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	leal Lgbl_289,%eax
	leal 36(%esp), %edx
	movl %eax,8(%esp)
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl %ecx,12(%esp)
	call getword_50
.Lcall_successor_l440:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
Lloop_start_312:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl %eax,16(%esp)
	movl $-36,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_size
.Lcall_successor_l437:
	leal Cmm.global_area,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
.Lbranch_target_l444:
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Lloop_body_313
Lloop_end_309:
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,28(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_48
.Lcall_successor_l428:
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
Lloop_body_313:
	leal -4(%esp), %esp
	leal 40(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 40(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 40(%esp), %edx
	movl %ecx,24(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call add_word_47
.Lcall_successor_l434:
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_50
.Lcall_successor_l431:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_312
.section .pcmap_data
.Lstackdata_l446:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Lcall_successor_l440
.long .Lframe_l447
.section .pcmap_data
.Lframe_l447:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l446
.long 0
.long 6
.long 2
.long 1
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
.long .Lcall_successor_l437
.long .Lframe_l448
.section .pcmap_data
.Lframe_l448:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l446
.long 0
.long 6
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long main_51_gc_data
.section .pcmap
.long .Lcall_successor_l428
.long .Lframe_l449
.section .pcmap_data
.Lframe_l449:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l446
.long 0
.long 6
.long 2
.long 1
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
.long .Lcall_successor_l434
.long .Lframe_l450
.section .pcmap_data
.Lframe_l450:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l446
.long 0
.long 6
.long 2
.long 1
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
.long .Lcall_successor_l431
.long .Lframe_l451
.section .pcmap_data
.Lframe_l451:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l446
.long 0
.long 6
.long 2
.long 1
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l453:
.Lproc_body_start_l452:
	leal 36(%esp), %edx
	movl %eax,(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 36(%esp), %edx
	movl %eax,4(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl 4(%esp),%eax
	movl %eax,(%edx)
	movl $0,%eax
	leal 36(%esp), %edx
	movl %eax,8(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	movl $1,%eax
	leal 36(%esp), %edx
	movl %eax,12(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl 12(%esp),%eax
	movl %eax,(%edx)
	leal 36(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl %ecx,16(%esp)
	call main_51
.Lcall_successor_l457:
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l462:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Lcall_successor_l457
.long .Lframe_l463
.section .pcmap_data
.Lframe_l463:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffec
.long .Lstackdata_l462
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

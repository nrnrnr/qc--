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
.Linitialize_continuations_l13:
.Lproc_body_start_l12:
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
.Ljoin_l26:
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
.Ljoin_l23:
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
.Ljoin_l20:
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
.Ljoin_l17:
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
.Lstackdata_l32:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l26
.long .Lframe_l33
.section .pcmap_data
.Lframe_l33:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l32
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
.long .Ljoin_l23
.long .Lframe_l34
.section .pcmap_data
.Lframe_l34:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l32
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
.long .Ljoin_l20
.long .Lframe_l35
.section .pcmap_data
.Lframe_l35:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l32
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
.long .Ljoin_l17
.long .Lframe_l36
.section .pcmap_data
.Lframe_l36:
.long 0x80000008
.long 0xffffffc4
.long 0xffffffe8
.long .Lstackdata_l32
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
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
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
	je .Ljoin_l144
.Ljoin_l145:
	jmp LifFalse_65
LifFalse_65:
	movl $0,%eax
	jmp LifEnd_66
.Ljoin_l144:
	jmp LifTrue_64
LifTrue_64:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l195
.Ljoin_l196:
	movl $0,%eax
	jmp .Ljoin_l194
.Ljoin_l195:
	movl $-1,%eax
	jmp .Ljoin_l194
.Ljoin_l194:
	jmp LifEnd_66
LifEnd_66:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l142
.Ljoin_l143:
	jmp LifFalse_69
LifFalse_69:
	movl $0,%eax
	jmp LifEnd_70
.Ljoin_l142:
	jmp LifTrue_68
LifTrue_68:
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
	jne .Ljoin_l192
.Ljoin_l193:
	movl $0,%eax
	jmp .Ljoin_l191
.Ljoin_l192:
	movl $-1,%eax
	jmp .Ljoin_l191
.Ljoin_l191:
	jmp LifEnd_70
LifEnd_70:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l140
.Ljoin_l141:
	jmp LifFalse_73
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
.Ljoin_l140:
	jmp LifTrue_72
LifTrue_72:
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
	je .Ljoin_l189
.Ljoin_l190:
	movl $0,%eax
	jmp .Ljoin_l188
.Ljoin_l189:
	movl $-1,%eax
	jmp .Ljoin_l188
.Ljoin_l188:
	jmp LifEnd_74
LifEnd_74:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l138
.Ljoin_l139:
	jmp LifFalse_77
LifFalse_77:
	movl $0,%eax
	jmp LifEnd_78
.Ljoin_l138:
	jmp LifTrue_76
LifTrue_76:
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
	je .Ljoin_l186
.Ljoin_l187:
	movl $0,%eax
	jmp .Ljoin_l185
.Ljoin_l186:
	movl $-1,%eax
	jmp .Ljoin_l185
.Ljoin_l185:
	jmp LifEnd_78
LifEnd_78:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l136
.Ljoin_l137:
	jmp LifFalse_194
LifFalse_194:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,44(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 44(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l119
.Ljoin_l120:
	jmp LifFalse_94
LifFalse_94:
	movl $0,%eax
	jmp LifEnd_95
.Ljoin_l119:
	jmp LifTrue_93
LifTrue_93:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l150
.Ljoin_l151:
	movl $0,%eax
	jmp .Ljoin_l149
.Ljoin_l150:
	movl $-1,%eax
	jmp .Ljoin_l149
.Ljoin_l149:
	jmp LifEnd_95
LifEnd_95:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l117
.Ljoin_l118:
	jmp LifFalse_98
LifFalse_98:
	movl $0,%eax
	jmp LifEnd_99
.Ljoin_l117:
	jmp LifTrue_97
LifTrue_97:
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
	jne .Ljoin_l153
.Ljoin_l154:
	movl $0,%eax
	jmp .Ljoin_l152
.Ljoin_l153:
	movl $-1,%eax
	jmp .Ljoin_l152
.Ljoin_l152:
	jmp LifEnd_99
LifEnd_99:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l115
.Ljoin_l116:
	jmp LifFalse_102
LifFalse_102:
	movl $0,%eax
	jmp LifEnd_103
.Ljoin_l115:
	jmp LifTrue_101
LifTrue_101:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,48(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 48(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l156
.Ljoin_l157:
	movl $0,%eax
	jmp .Ljoin_l155
.Ljoin_l156:
	movl $-1,%eax
	jmp .Ljoin_l155
.Ljoin_l155:
	jmp LifEnd_103
LifEnd_103:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l113
.Ljoin_l114:
	jmp LifFalse_106
LifFalse_106:
	movl $0,%eax
	jmp LifEnd_107
.Ljoin_l113:
	jmp LifTrue_105
LifTrue_105:
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
	movl %eax,52(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 52(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l159
.Ljoin_l160:
	movl $0,%eax
	jmp .Ljoin_l158
.Ljoin_l159:
	movl $-1,%eax
	jmp .Ljoin_l158
.Ljoin_l158:
	jmp LifEnd_107
LifEnd_107:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l111
.Ljoin_l112:
	jmp LifFalse_190
LifFalse_190:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,56(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 56(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l94
.Ljoin_l95:
	jmp LifFalse_122
LifFalse_122:
	movl $0,%eax
	jmp LifEnd_123
.Ljoin_l94:
	jmp LifTrue_121
LifTrue_121:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l162
.Ljoin_l163:
	movl $0,%eax
	jmp .Ljoin_l161
.Ljoin_l162:
	movl $-1,%eax
	jmp .Ljoin_l161
.Ljoin_l161:
	jmp LifEnd_123
LifEnd_123:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l92
.Ljoin_l93:
	jmp LifFalse_126
LifFalse_126:
	movl $0,%eax
	jmp LifEnd_127
.Ljoin_l92:
	jmp LifTrue_125
LifTrue_125:
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
	jne .Ljoin_l165
.Ljoin_l166:
	movl $0,%eax
	jmp .Ljoin_l164
.Ljoin_l165:
	movl $-1,%eax
	jmp .Ljoin_l164
.Ljoin_l164:
	jmp LifEnd_127
LifEnd_127:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l90
.Ljoin_l91:
	jmp LifFalse_130
LifFalse_130:
	movl $0,%eax
	jmp LifEnd_131
.Ljoin_l90:
	jmp LifTrue_129
LifTrue_129:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,60(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 60(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l168
.Ljoin_l169:
	movl $0,%eax
	jmp .Ljoin_l167
.Ljoin_l168:
	movl $-1,%eax
	jmp .Ljoin_l167
.Ljoin_l167:
	jmp LifEnd_131
LifEnd_131:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l88
.Ljoin_l89:
	jmp LifFalse_134
LifFalse_134:
	movl $0,%eax
	jmp LifEnd_135
.Ljoin_l88:
	jmp LifTrue_133
LifTrue_133:
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
	movl %eax,64(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 64(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l171
.Ljoin_l172:
	movl $0,%eax
	jmp .Ljoin_l170
.Ljoin_l171:
	movl $-1,%eax
	jmp .Ljoin_l170
.Ljoin_l170:
	jmp LifEnd_135
LifEnd_135:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l86
.Ljoin_l87:
	jmp LifFalse_186
LifFalse_186:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,68(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 68(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l69
.Ljoin_l70:
	jmp LifFalse_150
LifFalse_150:
	movl $0,%eax
	jmp LifEnd_151
.Ljoin_l69:
	jmp LifTrue_149
LifTrue_149:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l174
.Ljoin_l175:
	movl $0,%eax
	jmp .Ljoin_l173
.Ljoin_l174:
	movl $-1,%eax
	jmp .Ljoin_l173
.Ljoin_l173:
	jmp LifEnd_151
LifEnd_151:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l67
.Ljoin_l68:
	jmp LifFalse_154
LifFalse_154:
	movl $0,%eax
	jmp LifEnd_155
.Ljoin_l67:
	jmp LifTrue_153
LifTrue_153:
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
	jne .Ljoin_l177
.Ljoin_l178:
	movl $0,%eax
	jmp .Ljoin_l176
.Ljoin_l177:
	movl $-1,%eax
	jmp .Ljoin_l176
.Ljoin_l176:
	jmp LifEnd_155
LifEnd_155:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l65
.Ljoin_l66:
	jmp LifFalse_158
LifFalse_158:
	movl $0,%eax
	jmp LifEnd_159
.Ljoin_l65:
	jmp LifTrue_157
LifTrue_157:
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal 316(%esp), %ecx
	movl %eax,72(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 72(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l180
.Ljoin_l181:
	movl $0,%eax
	jmp .Ljoin_l179
.Ljoin_l180:
	movl $-1,%eax
	jmp .Ljoin_l179
.Ljoin_l179:
	jmp LifEnd_159
LifEnd_159:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l63
.Ljoin_l64:
	jmp LifFalse_162
LifFalse_162:
	movl $0,%eax
	jmp LifEnd_163
.Ljoin_l63:
	jmp LifTrue_161
LifTrue_161:
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
	movl %eax,76(%esp)
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl 76(%esp),%ecx
	cmpl %eax,%ecx
	je .Ljoin_l183
.Ljoin_l184:
	movl $0,%eax
	jmp .Ljoin_l182
.Ljoin_l183:
	movl $-1,%eax
	jmp .Ljoin_l182
.Ljoin_l182:
	jmp LifEnd_163
LifEnd_163:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l61
.Ljoin_l62:
	jmp LifFalse_182
LifFalse_182:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l44
.Ljoin_l45:
	jmp Lalc_gc_178
.Ljoin_l44:
	jmp Lalc_gc_178
Lalc_gc_178:
	movl %edx,80(%esp)
	call tig_call_gc
.Ljoin_l43:
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
	movl %eax,84(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,88(%esp)
	movl 84(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 88(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,92(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 92(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,96(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 96(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_183
.Ljoin_l61:
	jmp LifTrue_181
LifTrue_181:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l59
.Ljoin_l60:
	jmp Lalc_gc_174
.Ljoin_l59:
	jmp Lalc_gc_174
Lalc_gc_174:
	movl %edx,80(%esp)
	call tig_call_gc
.Ljoin_l58:
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
	movl %eax,100(%esp)
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
	movl %eax,104(%esp)
	movl 100(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 104(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l54
.Ljoin_l55:
	jmp Lalc_gc_166
.Ljoin_l54:
	jmp Lalc_gc_166
Lalc_gc_166:
	call tig_call_gc
.Ljoin_l53:
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
	movl %eax,108(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,112(%esp)
	movl 108(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 112(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,116(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 116(%esp),%ecx
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
	movl %eax,120(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 120(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,124(%esp)
	movl 100(%esp),%ecx
	movl %ecx,%eax
	movl 124(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l49
.Ljoin_l50:
	jmp Lalc_gc_170
.Ljoin_l49:
	jmp Lalc_gc_170
Lalc_gc_170:
	call tig_call_gc
.Ljoin_l48:
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
	movl %eax,128(%esp)
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
	movl %eax,132(%esp)
	movl 128(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 132(%esp),%ecx
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
	movl %eax,136(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 136(%esp),%ecx
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
	movl %eax,140(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 140(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $16,%eax
	movl %eax,144(%esp)
	movl 100(%esp),%ecx
	movl %ecx,%eax
	movl 144(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 100(%esp),%edx
	jmp LifEnd_183
LifEnd_183:
	jmp LifEnd_187
.Ljoin_l86:
	jmp LifTrue_185
LifTrue_185:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l84
.Ljoin_l85:
	jmp Lalc_gc_146
.Ljoin_l84:
	jmp Lalc_gc_146
Lalc_gc_146:
	movl %edx,80(%esp)
	call tig_call_gc
.Ljoin_l83:
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
	movl %eax,148(%esp)
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
	movl %eax,152(%esp)
	movl 148(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 152(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l79
.Ljoin_l80:
	jmp Lalc_gc_138
.Ljoin_l79:
	jmp Lalc_gc_138
Lalc_gc_138:
	call tig_call_gc
.Ljoin_l78:
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
	movl %eax,156(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,160(%esp)
	movl 156(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 160(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	movl %eax,164(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 164(%esp),%ecx
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
	movl %eax,168(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 168(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,172(%esp)
	movl 148(%esp),%ecx
	movl %ecx,%eax
	movl 172(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l74
.Ljoin_l75:
	jmp Lalc_gc_142
.Ljoin_l74:
	jmp Lalc_gc_142
Lalc_gc_142:
	call tig_call_gc
.Ljoin_l73:
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
	movl %eax,176(%esp)
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
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $12,%ecx
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
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,188(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 188(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $16,%eax
	movl %eax,192(%esp)
	movl 148(%esp),%ecx
	movl %ecx,%eax
	movl 192(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 148(%esp),%edx
	jmp LifEnd_187
LifEnd_187:
	jmp LifEnd_191
.Ljoin_l111:
	jmp LifTrue_189
LifTrue_189:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l109
.Ljoin_l110:
	jmp Lalc_gc_118
.Ljoin_l109:
	jmp Lalc_gc_118
Lalc_gc_118:
	movl %edx,80(%esp)
	call tig_call_gc
.Ljoin_l108:
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
	movl %eax,196(%esp)
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
	movl %eax,200(%esp)
	movl 196(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 200(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l104
.Ljoin_l105:
	jmp Lalc_gc_110
.Ljoin_l104:
	jmp Lalc_gc_110
Lalc_gc_110:
	call tig_call_gc
.Ljoin_l103:
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
	movl %eax,204(%esp)
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
	movl %eax,208(%esp)
	movl 204(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 208(%esp),%ecx
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
	movl %eax,212(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 212(%esp),%ecx
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
	movl %eax,216(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 216(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,220(%esp)
	movl 196(%esp),%ecx
	movl %ecx,%eax
	movl 220(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l99
.Ljoin_l100:
	jmp Lalc_gc_114
.Ljoin_l99:
	jmp Lalc_gc_114
Lalc_gc_114:
	call tig_call_gc
.Ljoin_l98:
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
	movl %eax,224(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,228(%esp)
	movl 224(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 228(%esp),%ecx
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
	movl %eax,232(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 232(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,236(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 236(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $16,%eax
	movl %eax,240(%esp)
	movl 196(%esp),%ecx
	movl %ecx,%eax
	movl 240(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 196(%esp),%edx
	jmp LifEnd_191
LifEnd_191:
	jmp LifEnd_195
.Ljoin_l136:
	jmp LifTrue_193
LifTrue_193:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l134
.Ljoin_l135:
	jmp Lalc_gc_90
.Ljoin_l134:
	jmp Lalc_gc_90
Lalc_gc_90:
	movl %edx,80(%esp)
	call tig_call_gc
.Ljoin_l133:
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
	movl %eax,244(%esp)
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
	movl %eax,248(%esp)
	movl 244(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 248(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l129
.Ljoin_l130:
	jmp Lalc_gc_81
.Ljoin_l129:
	jmp Lalc_gc_81
Lalc_gc_81:
	call tig_call_gc
.Ljoin_l128:
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
	movl %eax,252(%esp)
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
	movl %eax,256(%esp)
	movl 252(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 256(%esp),%ecx
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
	movl %eax,260(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 260(%esp),%ecx
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
	movl %eax,264(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 264(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %eax,268(%esp)
	movl 244(%esp),%ecx
	movl %ecx,%eax
	movl 268(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l124
.Ljoin_l125:
	jmp Lalc_gc_86
.Ljoin_l124:
	jmp Lalc_gc_86
Lalc_gc_86:
	call tig_call_gc
.Ljoin_l123:
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
	movl %eax,272(%esp)
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,276(%esp)
	movl 272(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 276(%esp),%ecx
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
	movl %eax,280(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 280(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	leal 316(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %eax,284(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 284(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $16,%eax
	movl %eax,288(%esp)
	movl 244(%esp),%ecx
	movl %ecx,%eax
	movl 288(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl 244(%esp),%edx
	jmp LifEnd_195
LifEnd_195:
	movl %edx,%eax
	leal 316(%esp), %ecx
	movl $20,%edx
	addl %edx,%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	leal 336(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l198:
.long 1
.long 0xffffffe8
.section .pcmap
.long .Ljoin_l43
.long .Lframe_l199
.section .pcmap_data
.Lframe_l199:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long .Ljoin_l58
.long .Lframe_l200
.section .pcmap_data
.Lframe_l200:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long .Ljoin_l53
.long .Lframe_l201
.section .pcmap_data
.Lframe_l201:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long 0xffffff28
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l48
.long .Lframe_l202
.section .pcmap_data
.Lframe_l202:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long 0xffffff28
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l83
.long .Lframe_l203
.section .pcmap_data
.Lframe_l203:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long .Ljoin_l78
.long .Lframe_l204
.section .pcmap_data
.Lframe_l204:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l73
.long .Lframe_l205
.section .pcmap_data
.Lframe_l205:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long 0xffffff58
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l108
.long .Lframe_l206
.section .pcmap_data
.Lframe_l206:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long .Ljoin_l103
.long .Lframe_l207
.section .pcmap_data
.Lframe_l207:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long 0xffffff88
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
.long .Ljoin_l98
.long .Lframe_l208
.section .pcmap_data
.Lframe_l208:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long 0xffffff88
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
.long .Ljoin_l133
.long .Lframe_l209
.section .pcmap_data
.Lframe_l209:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long .Ljoin_l128
.long .Lframe_l210
.section .pcmap_data
.Lframe_l210:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long 0xffffffb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l123
.long .Lframe_l211
.section .pcmap_data
.Lframe_l211:
.long 0x80000018
.long 0xfffffec4
.long 0xffffff14
.long .Lstackdata_l198
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
.long 0xffffffb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.Linitialize_continuations_l214:
.Lproc_body_start_l213:
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
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l256
.Ljoin_l257:
	jmp LifFalse_229
LifFalse_229:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 172(%esp), %ecx
	movl %eax,28(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 172(%esp), %ecx
	movl %eax,32(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 172(%esp), %ecx
	movl %eax,36(%esp)
	movl $-168,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 172(%esp), %eax
	movl $-172,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	movl %edx,40(%esp)
	call tig_compare_str
.Ljoin_l250:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jl .Ljoin_l246
.Ljoin_l247:
	jmp LifFalse_225
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
	movl %eax,44(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 172(%esp), %edx
	movl %eax,48(%esp)
	movl $-168,%eax
	addl %eax,%edx
	movl 48(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 172(%esp), %eax
	movl $-172,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Ljoin_l239:
	leal Cmm.global_area,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l235
.Ljoin_l236:
	jmp LifFalse_221
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
	movl %eax,52(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	leal 172(%esp), %edx
	movl %eax,56(%esp)
	movl $-168,%eax
	addl %eax,%edx
	movl 56(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%edx)
	leal 172(%esp), %eax
	movl $-172,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call tig_compare_str
.Ljoin_l228:
	leal Cmm.global_area,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l224
.Ljoin_l225:
	jmp LifFalse_213
LifFalse_213:
	movl $0,%eax
	jmp LifEnd_214
.Ljoin_l224:
	jmp LifTrue_212
LifTrue_212:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_208,%ecx
	leal 172(%esp), %edx
	movl %eax,60(%esp)
	movl $-172,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	call tig_print
.Ljoin_l223:
	leal Cmm.global_area,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_214
LifEnd_214:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l219
.Ljoin_l220:
	jmp Lalc_gc_217
.Ljoin_l219:
	jmp Lalc_gc_217
Lalc_gc_217:
	call tig_call_gc
.Ljoin_l218:
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
	movl %eax,64(%esp)
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 172(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	movl %eax,68(%esp)
	movl 64(%esp),%edx
	movl %edx,%eax
	addl %ecx,%eax
	movl 68(%esp),%ecx
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
	movl %eax,72(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 72(%esp),%ecx
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
	movl %eax,76(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %edx,%eax
	jmp LifEnd_222
.Ljoin_l235:
	jmp LifTrue_220
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
	movl %eax,80(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 172(%esp), %edx
	movl %eax,84(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 172(%esp), %edx
	movl %eax,88(%esp)
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
	movl %eax,100(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 180(%esp), %edx
	movl %ecx,104(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 180(%esp), %edx
	movl %ecx,108(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 180(%esp), %edx
	movl %ecx,112(%esp)
	movl $-176,%ecx
	addl %ecx,%edx
	movl 112(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 180(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 108(%esp),%edx
	movl %edx,(%ecx)
	call ins_45
.Ljoin_l234:
	leal -20(%esp), %esp
	movl %eax,128(%esp)
	movl 100(%esp),%eax
	leal 192(%esp), %ecx
	movl $-192,%edx
	addl %edx,%ecx
	movl 116(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl 104(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl 108(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 112(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	movl 128(%esp),%edx
	movl %edx,(%ecx)
	call balance_44
.Ljoin_l231:
	jmp LifEnd_222
LifEnd_222:
	jmp LifEnd_226
.Ljoin_l246:
	jmp LifTrue_224
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
	movl %eax,112(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 172(%esp), %edx
	movl %eax,116(%esp)
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
	movl %eax,128(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 180(%esp), %edx
	movl %ecx,132(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 180(%esp), %edx
	movl %ecx,136(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 180(%esp), %edx
	movl %ecx,140(%esp)
	movl $-176,%ecx
	addl %ecx,%edx
	movl 140(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 180(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 136(%esp),%edx
	movl %edx,(%ecx)
	call ins_45
.Ljoin_l245:
	leal -20(%esp), %esp
	movl %eax,156(%esp)
	movl 132(%esp),%eax
	leal 192(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $16,%edx
	addl %edx,%ecx
	leal 192(%esp), %edx
	movl %ecx,160(%esp)
	movl $-176,%ecx
	addl %ecx,%edx
	movl 160(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 192(%esp), %ecx
	movl $-192,%edx
	addl %edx,%ecx
	movl 144(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	movl 136(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl 140(%esp),%edx
	movl %edx,(%ecx)
	leal 192(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	movl 156(%esp),%edx
	movl %edx,(%ecx)
	call balance_44
.Ljoin_l242:
	jmp LifEnd_226
LifEnd_226:
	movl %eax,%edx
	jmp LifEnd_230
.Ljoin_l256:
	jmp LifTrue_228
LifTrue_228:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l254
.Ljoin_l255:
	jmp Lalc_gc_199
.Ljoin_l254:
	jmp Lalc_gc_199
Lalc_gc_199:
	movl %edx,40(%esp)
	call tig_call_gc
.Ljoin_l253:
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
	movl $0,%eax
	movl $12,%ecx
	movl %eax,152(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 152(%esp),%ecx
	movl %ecx,(%eax)
	movl $0,%eax
	movl $16,%ecx
	movl %eax,156(%esp)
	movl %edx,%eax
	addl %ecx,%eax
	movl 156(%esp),%ecx
	movl %ecx,(%eax)
	jmp LifEnd_230
LifEnd_230:
	movl %edx,%eax
	leal 172(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	leal 180(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l262:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Ljoin_l250
.long .Lframe_l263
.section .pcmap_data
.Lframe_l263:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
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
.long 0xffffff70
.long 0
.long 0
.long 0
.long 0
.long ins_45_gc_data
.section .pcmap
.long .Ljoin_l239
.long .Lframe_l264
.section .pcmap_data
.Lframe_l264:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
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
.long 0xffffff80
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long ins_45_gc_data
.section .pcmap
.long .Ljoin_l228
.long .Lframe_l265
.section .pcmap_data
.Lframe_l265:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
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
.long 0xffffff88
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
.long .Ljoin_l223
.long .Lframe_l266
.section .pcmap_data
.Lframe_l266:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
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
.long 0xffffff90
.long 0
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
.long .Ljoin_l218
.long .Lframe_l267
.section .pcmap_data
.Lframe_l267:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
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
.long .Ljoin_l234
.long .Lframe_l268
.section .pcmap_data
.Lframe_l268:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
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
.long 0xffffffa4
.long 0xffffffb4
.long 0xffffffa8
.long 0xffffffac
.long 0xffffffb0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l231
.long .Lframe_l269
.section .pcmap_data
.Lframe_l269:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
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
.long .Ljoin_l245
.long .Lframe_l270
.section .pcmap_data
.Lframe_l270:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
.long 0
.long 31
.long 2
.long 1
.long 0
.long 0
.long 0
.long 0xffffffc4
.long 0xffffffd0
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l242
.long .Lframe_l271
.section .pcmap_data
.Lframe_l271:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
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
.long .Ljoin_l253
.long .Lframe_l272
.section .pcmap_data
.Lframe_l272:
.long 0x8000000c
.long 0xffffff54
.long 0xffffff7c
.long .Lstackdata_l262
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
.Linitialize_continuations_l275:
.Lproc_body_start_l274:
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
.Ljoin_l284:
	leal 80(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl $24,%ecx
	addl %ecx,%eax
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l280
.Ljoin_l281:
	jmp Lalc_gc_234
.Ljoin_l280:
	jmp Lalc_gc_234
Lalc_gc_234:
	call tig_call_gc
.Ljoin_l279:
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
.Lstackdata_l289:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Ljoin_l284
.long .Lframe_l290
.section .pcmap_data
.Lframe_l290:
.long 0x8000000c
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l289
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
.long .Ljoin_l279
.long .Lframe_l291
.section .pcmap_data
.Lframe_l291:
.long 0x8000000c
.long 0xffffffb0
.long 0xffffffcc
.long .Lstackdata_l289
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
.Linitialize_continuations_l294:
.Lproc_body_start_l293:
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
.Ljoin_l298:
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
.Lstackdata_l303:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l298
.long .Lframe_l304
.section .pcmap_data
.Lframe_l304:
.long 0x80000008
.long 0xffffffd4
.long 0xffffffec
.long .Lstackdata_l303
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
.Linitialize_continuations_l307:
.Lproc_body_start_l306:
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
	leal 64(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l327
.Ljoin_l328:
	jmp LifFalse_249
LifFalse_249:
	movl $0,%eax
	movl %edx,28(%esp)
	jmp LifEnd_250
.Ljoin_l327:
	jmp LifTrue_248
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
.Ljoin_l326:
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
.Ljoin_l323:
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
.Ljoin_l320:
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
.Ljoin_l317:
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
.Ljoin_l314:
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
.Ljoin_l311:
	jmp LifEnd_250
LifEnd_250:
	leal 64(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	leal 68(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l333:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l326
.long .Lframe_l334
.section .pcmap_data
.Lframe_l334:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l333
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
.long .Ljoin_l323
.long .Lframe_l335
.section .pcmap_data
.Lframe_l335:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l333
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
.long .Ljoin_l320
.long .Lframe_l336
.section .pcmap_data
.Lframe_l336:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l333
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
.long .Ljoin_l317
.long .Lframe_l337
.section .pcmap_data
.Lframe_l337:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l333
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
.long .Ljoin_l314
.long .Lframe_l338
.section .pcmap_data
.Lframe_l338:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l333
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
.long .Ljoin_l311
.long .Lframe_l339
.section .pcmap_data
.Lframe_l339:
.long 0x80000008
.long 0xffffffc0
.long 0xffffffdc
.long .Lstackdata_l333
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
.Linitialize_continuations_l342:
.Lproc_body_start_l341:
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
.Ljoin_l375:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jge .Ljoin_l371
.Ljoin_l372:
	jmp LifFalse_260
LifFalse_260:
	movl $0,%eax
	jmp LifEnd_261
.Ljoin_l371:
	jmp LifTrue_259
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
.Ljoin_l370:
	leal Cmm.global_area,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Ljoin_l380
.Ljoin_l381:
	movl $0,%eax
	jmp .Ljoin_l379
.Ljoin_l380:
	movl $-1,%eax
	jmp .Ljoin_l379
.Ljoin_l379:
	jmp LifEnd_261
LifEnd_261:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l366
.Ljoin_l367:
	jmp LifFalse_286
LifFalse_286:
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
	leal Lgbl_264,%eax
	leal 108(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
.Ljoin_l356:
	leal Cmm.global_area,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jge .Ljoin_l352
.Ljoin_l353:
	jmp LifFalse_276
LifFalse_276:
	movl $0,%eax
	jmp LifEnd_277
.Ljoin_l352:
	jmp LifTrue_275
LifTrue_275:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,56(%esp)
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
.Ljoin_l351:
	leal Cmm.global_area,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle .Ljoin_l383
.Ljoin_l384:
	movl $0,%eax
	jmp .Ljoin_l382
.Ljoin_l383:
	movl $-1,%eax
	jmp .Ljoin_l382
.Ljoin_l382:
	jmp LifEnd_277
LifEnd_277:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l347
.Ljoin_l348:
	jmp LifFalse_282
LifFalse_282:
	movl $0,%eax
	jmp LifEnd_283
.Ljoin_l347:
	jmp LifTrue_281
LifTrue_281:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,60(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Ljoin_l346:
	leal Cmm.global_area,%ecx
	movl 60(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_283
LifEnd_283:
	movl %eax,%ecx
	jmp LifEnd_287
.Ljoin_l366:
	jmp LifTrue_285
LifTrue_285:
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal 108(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	leal 108(%esp), %edx
	movl %eax,64(%esp)
	movl $-108,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	call tig_ord
.Ljoin_l365:
	leal Cmm.global_area,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	leal Lgbl_264,%edx
	movl %eax,68(%esp)
	leal 108(%esp), %eax
	movl %eax,72(%esp)
	movl $-108,%eax
	movl %eax,76(%esp)
	movl 72(%esp),%eax
	movl %ecx,80(%esp)
	movl 76(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Ljoin_l362:
	leal Cmm.global_area,%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	movl 68(%esp),%ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	leal Lgbl_252,%edx
	movl %eax,84(%esp)
	leal 108(%esp), %eax
	movl %eax,88(%esp)
	movl $-108,%eax
	movl %eax,92(%esp)
	movl 88(%esp),%eax
	movl %ecx,96(%esp)
	movl 92(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call tig_ord
.Ljoin_l359:
	leal Cmm.global_area,%ecx
	movl 84(%esp),%edx
	movl %edx,(%ecx)
	movl 96(%esp),%ecx
	subl %eax,%ecx
	jmp LifEnd_287
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
.Lstackdata_l387:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l375
.long .Lframe_l388
.section .pcmap_data
.Lframe_l388:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l387
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
.long .Ljoin_l370
.long .Lframe_l389
.section .pcmap_data
.Lframe_l389:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l387
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
.long .Ljoin_l356
.long .Lframe_l390
.section .pcmap_data
.Lframe_l390:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l387
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
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
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
.long .Ljoin_l351
.long .Lframe_l391
.section .pcmap_data
.Lframe_l391:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l387
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
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Ljoin_l346
.long .Lframe_l392
.section .pcmap_data
.Lframe_l392:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l387
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
.long .Ljoin_l365
.long .Lframe_l393
.section .pcmap_data
.Lframe_l393:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l387
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
.long 0xffffffd4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long isletter_49_gc_data
.section .pcmap
.long .Ljoin_l362
.long .Lframe_l394
.section .pcmap_data
.Lframe_l394:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l387
.long 0
.long 25
.long 2
.long 1
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
.long 0
.long 0
.long 0
.long 0
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
.long isletter_49_gc_data
.section .pcmap
.long .Ljoin_l359
.long .Lframe_l395
.section .pcmap_data
.Lframe_l395:
.long 0x80000008
.long 0xffffff94
.long 0xffffffc0
.long .Lstackdata_l387
.long 0
.long 25
.long 2
.long 1
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
.Linitialize_continuations_l398:
.Lproc_body_start_l397:
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
.Ljoin_l437:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_297
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
.Ljoin_l434:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l430
.Ljoin_l431:
	jmp LifFalse_295
LifFalse_295:
	movl $0,%eax
	jmp LifEnd_296
.Ljoin_l430:
	jmp LifTrue_294
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
.Ljoin_l429:
	movl $0,%ecx
	cmpl %ecx,%eax
	je .Ljoin_l442
.Ljoin_l443:
	movl $0,%eax
	jmp .Ljoin_l441
.Ljoin_l442:
	movl $-1,%eax
	jmp .Ljoin_l441
.Ljoin_l441:
	jmp LifEnd_296
LifEnd_296:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l425
.Ljoin_l426:
	jmp Lloop_end_290
Lloop_end_290:
	jmp Lloop_start_306
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
.Ljoin_l421:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l417
.Ljoin_l418:
	jmp LifFalse_304
LifFalse_304:
	movl $0,%eax
	jmp LifEnd_305
.Ljoin_l417:
	jmp LifTrue_303
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
.Ljoin_l416:
	jmp LifEnd_305
LifEnd_305:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne .Ljoin_l412
.Ljoin_l413:
	jmp Lloop_end_299
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
.Ljoin_l412:
	jmp Lloop_body_307
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
.Ljoin_l411:
	call tig_chr
.Ljoin_l408:
	leal -4(%esp), %esp
	movl %eax,52(%esp)
	movl 44(%esp),%eax
	leal 68(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	movl 52(%esp),%edx
	movl %edx,(%ecx)
	call tig_concat
.Ljoin_l405:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
.Ljoin_l402:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_306
.Ljoin_l425:
	jmp Lloop_body_298
Lloop_body_298:
	call tig_getchar
.Ljoin_l424:
	leal 64(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_297
.section .pcmap_data
.Lstackdata_l445:
.long 1
.long 0xfffffff4
.section .pcmap
.long .Ljoin_l437
.long .Lframe_l446
.section .pcmap_data
.Lframe_l446:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.long .Ljoin_l434
.long .Lframe_l447
.section .pcmap_data
.Lframe_l447:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.long .Ljoin_l429
.long .Lframe_l448
.section .pcmap_data
.Lframe_l448:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.long .Ljoin_l421
.long .Lframe_l449
.section .pcmap_data
.Lframe_l449:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.long .Ljoin_l416
.long .Lframe_l450
.section .pcmap_data
.Lframe_l450:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.long .Ljoin_l411
.long .Lframe_l451
.section .pcmap_data
.Lframe_l451:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.long .Ljoin_l408
.long .Lframe_l452
.section .pcmap_data
.Lframe_l452:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.long .Ljoin_l405
.long .Lframe_l453
.section .pcmap_data
.Lframe_l453:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.long .Ljoin_l402
.long .Lframe_l454
.section .pcmap_data
.Lframe_l454:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.long .Ljoin_l424
.long .Lframe_l455
.section .pcmap_data
.Lframe_l455:
.long 0x80000004
.long 0xffffffc0
.long 0xffffffd4
.long .Lstackdata_l445
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
.Linitialize_continuations_l458:
.Lproc_body_start_l457:
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
.Ljoin_l476:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_312
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
.Ljoin_l473:
	leal Cmm.global_area,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg .Ljoin_l469
.Ljoin_l470:
	jmp Lloop_end_309
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
	movl %ecx,24(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call tprint_48
.Ljoin_l462:
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.Ljoin_l469:
	jmp Lloop_body_313
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
	movl %ecx,28(%esp)
	movl $-40,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call add_word_47
.Ljoin_l468:
	leal 36(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_50
.Ljoin_l465:
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_312
.section .pcmap_data
.Lstackdata_l481:
.long 1
.long 0xfffffff8
.section .pcmap
.long .Ljoin_l476
.long .Lframe_l482
.section .pcmap_data
.Lframe_l482:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l481
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
.long .Ljoin_l473
.long .Lframe_l483
.section .pcmap_data
.Lframe_l483:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l481
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
.long .Ljoin_l462
.long .Lframe_l484
.section .pcmap_data
.Lframe_l484:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l481
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
.long .Ljoin_l468
.long .Lframe_l485
.section .pcmap_data
.Lframe_l485:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l481
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
.long .Ljoin_l465
.long .Lframe_l486
.section .pcmap_data
.Lframe_l486:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffe8
.long .Lstackdata_l481
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
.Linitialize_continuations_l489:
.Lproc_body_start_l488:
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
.Ljoin_l493:
	leal 36(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l498:
.long 1
.long 0xfffffff0
.section .pcmap
.long .Ljoin_l493
.long .Lframe_l499
.section .pcmap_data
.Lframe_l499:
.long 0x80000004
.long 0xffffffdc
.long 0xffffffec
.long .Lstackdata_l498
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

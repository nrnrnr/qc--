.globl tiger_main
.globl Cmm.global_area
.globl Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.KcTMHeeQKYEMOaTAYRbSbWBXRQ:
Cmm.global_area:
.skip 4
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 44(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l13:
Lproc_body_start_l12:
	movl %eax,4(%esp)
	leal 44(%esp), %eax
	movl %edx,8(%esp)
	movl $-8,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 44(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Lgbl_52,%eax
	movl %ecx,12(%esp)
	leal 44(%esp), %ecx
	movl %ebx,16(%esp)
	movl $-44,%ebx
	addl %ebx,%ecx
	movl %eax,(%ecx)
	movl %edx,20(%esp)
	call tig_print
Ljoin_l26:
	leal Cmm.global_area,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 44(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 44(%esp), %edx
	movl $-44,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl %ecx,24(%esp)
	call tig_print
Ljoin_l23:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_57,%eax
	leal 44(%esp), %edx
	movl $-44,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,28(%esp)
	call tig_print
Ljoin_l20:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $1,%eax
	leal 44(%esp), %edx
	movl $-44,%ebx
	addl %ebx,%edx
	movl %eax,(%edx)
	movl %ecx,32(%esp)
	call tig_exit
Ljoin_l17:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 48(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l32:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l26
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffd4
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l32
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe8
.long 0x80000000
.long 0
.long err_43_gc_data
.section .pcmap
.long Ljoin_l23
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xffffffd4
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l32
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.long 0
.long 0x80000000
.long 0
.long err_43_gc_data
.section .pcmap
.long Ljoin_l20
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffd4
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l32
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long err_43_gc_data
.section .pcmap
.long Ljoin_l17
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xffffffd4
.long 0x80000008
.long 0xffffffe0
.long Lstackdata_l32
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
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
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -60(%esp), %esp
	leal 60(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 60(%esp), %edx
	movl %ecx,4(%esp)
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl %eax,8(%esp)
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 60(%esp), %edx
	movl %ecx,12(%esp)
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l39:
Lproc_body_start_l38:
	movl %eax,16(%esp)
	leal 60(%esp), %eax
	movl %ecx,20(%esp)
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl 20(%esp),%ecx
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 60(%esp), %eax
	movl %edx,24(%esp)
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	je Ljoin_l144
Ljoin_l145:
	jmp LifFalse_65
LifFalse_65:
	movl $0,%eax
	jmp LifEnd_66
Ljoin_l144:
	jmp LifTrue_64
LifTrue_64:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l150
Ljoin_l151:
	movl $0,%eax
	jmp Ljoin_l149
Ljoin_l150:
	movl $-1,%eax
	jmp Ljoin_l149
Ljoin_l149:
	jmp LifEnd_66
LifEnd_66:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l142
Ljoin_l143:
	jmp LifFalse_69
LifFalse_69:
	movl $0,%eax
	jmp LifEnd_70
Ljoin_l142:
	jmp LifTrue_68
LifTrue_68:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l153
Ljoin_l154:
	movl $0,%eax
	jmp Ljoin_l152
Ljoin_l153:
	movl $-1,%eax
	jmp Ljoin_l152
Ljoin_l152:
	jmp LifEnd_70
LifEnd_70:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l140
Ljoin_l141:
	jmp LifFalse_73
LifFalse_73:
	movl $0,%eax
	jmp LifEnd_74
Ljoin_l140:
	jmp LifTrue_72
LifTrue_72:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	je Ljoin_l156
Ljoin_l157:
	movl $0,%eax
	jmp Ljoin_l155
Ljoin_l156:
	movl $-1,%eax
	jmp Ljoin_l155
Ljoin_l155:
	jmp LifEnd_74
LifEnd_74:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l138
Ljoin_l139:
	jmp LifFalse_77
LifFalse_77:
	movl $0,%eax
	jmp LifEnd_78
Ljoin_l138:
	jmp LifTrue_76
LifTrue_76:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	leal 60(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	cmpl %ecx,%edx
	je Ljoin_l159
Ljoin_l160:
	movl $0,%eax
	jmp Ljoin_l158
Ljoin_l159:
	movl $-1,%eax
	jmp Ljoin_l158
Ljoin_l158:
	jmp LifEnd_78
LifEnd_78:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l136
Ljoin_l137:
	jmp LifFalse_194
LifFalse_194:
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	je Ljoin_l119
Ljoin_l120:
	jmp LifFalse_94
LifFalse_94:
	movl $0,%eax
	jmp LifEnd_95
Ljoin_l119:
	jmp LifTrue_93
LifTrue_93:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l195
Ljoin_l196:
	movl $0,%eax
	jmp Ljoin_l194
Ljoin_l195:
	movl $-1,%eax
	jmp Ljoin_l194
Ljoin_l194:
	jmp LifEnd_95
LifEnd_95:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l117
Ljoin_l118:
	jmp LifFalse_98
LifFalse_98:
	movl $0,%eax
	jmp LifEnd_99
Ljoin_l117:
	jmp LifTrue_97
LifTrue_97:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l192
Ljoin_l193:
	movl $0,%eax
	jmp Ljoin_l191
Ljoin_l192:
	movl $-1,%eax
	jmp Ljoin_l191
Ljoin_l191:
	jmp LifEnd_99
LifEnd_99:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l115
Ljoin_l116:
	jmp LifFalse_102
LifFalse_102:
	movl $0,%eax
	jmp LifEnd_103
Ljoin_l115:
	jmp LifTrue_101
LifTrue_101:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	je Ljoin_l189
Ljoin_l190:
	movl $0,%eax
	jmp Ljoin_l188
Ljoin_l189:
	movl $-1,%eax
	jmp Ljoin_l188
Ljoin_l188:
	jmp LifEnd_103
LifEnd_103:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l113
Ljoin_l114:
	jmp LifFalse_106
LifFalse_106:
	movl $0,%eax
	jmp LifEnd_107
Ljoin_l113:
	jmp LifTrue_105
LifTrue_105:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	leal 60(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	cmpl %ecx,%edx
	je Ljoin_l186
Ljoin_l187:
	movl $0,%eax
	jmp Ljoin_l185
Ljoin_l186:
	movl $-1,%eax
	jmp Ljoin_l185
Ljoin_l185:
	jmp LifEnd_107
LifEnd_107:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l111
Ljoin_l112:
	jmp LifFalse_190
LifFalse_190:
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	je Ljoin_l94
Ljoin_l95:
	jmp LifFalse_122
LifFalse_122:
	movl $0,%eax
	jmp LifEnd_123
Ljoin_l94:
	jmp LifTrue_121
LifTrue_121:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l183
Ljoin_l184:
	movl $0,%eax
	jmp Ljoin_l182
Ljoin_l183:
	movl $-1,%eax
	jmp Ljoin_l182
Ljoin_l182:
	jmp LifEnd_123
LifEnd_123:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l92
Ljoin_l93:
	jmp LifFalse_126
LifFalse_126:
	movl $0,%eax
	jmp LifEnd_127
Ljoin_l92:
	jmp LifTrue_125
LifTrue_125:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l180
Ljoin_l181:
	movl $0,%eax
	jmp Ljoin_l179
Ljoin_l180:
	movl $-1,%eax
	jmp Ljoin_l179
Ljoin_l179:
	jmp LifEnd_127
LifEnd_127:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l90
Ljoin_l91:
	jmp LifFalse_130
LifFalse_130:
	movl $0,%eax
	jmp LifEnd_131
Ljoin_l90:
	jmp LifTrue_129
LifTrue_129:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	je Ljoin_l177
Ljoin_l178:
	movl $0,%eax
	jmp Ljoin_l176
Ljoin_l177:
	movl $-1,%eax
	jmp Ljoin_l176
Ljoin_l176:
	jmp LifEnd_131
LifEnd_131:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l88
Ljoin_l89:
	jmp LifFalse_134
LifFalse_134:
	movl $0,%eax
	jmp LifEnd_135
Ljoin_l88:
	jmp LifTrue_133
LifTrue_133:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	leal 60(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	cmpl %ecx,%edx
	je Ljoin_l174
Ljoin_l175:
	movl $0,%eax
	jmp Ljoin_l173
Ljoin_l174:
	movl $-1,%eax
	jmp Ljoin_l173
Ljoin_l173:
	jmp LifEnd_135
LifEnd_135:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l86
Ljoin_l87:
	jmp LifFalse_186
LifFalse_186:
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	je Ljoin_l69
Ljoin_l70:
	jmp LifFalse_150
LifFalse_150:
	movl $0,%eax
	jmp LifEnd_151
Ljoin_l69:
	jmp LifTrue_149
LifTrue_149:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l171
Ljoin_l172:
	movl $0,%eax
	jmp Ljoin_l170
Ljoin_l171:
	movl $-1,%eax
	jmp Ljoin_l170
Ljoin_l170:
	jmp LifEnd_151
LifEnd_151:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l67
Ljoin_l68:
	jmp LifFalse_154
LifFalse_154:
	movl $0,%eax
	jmp LifEnd_155
Ljoin_l67:
	jmp LifTrue_153
LifTrue_153:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne Ljoin_l168
Ljoin_l169:
	movl $0,%eax
	jmp Ljoin_l167
Ljoin_l168:
	movl $-1,%eax
	jmp Ljoin_l167
Ljoin_l167:
	jmp LifEnd_155
LifEnd_155:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l65
Ljoin_l66:
	jmp LifFalse_158
LifFalse_158:
	movl $0,%eax
	jmp LifEnd_159
Ljoin_l65:
	jmp LifTrue_157
LifTrue_157:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	leal 60(%esp), %edx
	movl $-24,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	je Ljoin_l165
Ljoin_l166:
	movl $0,%eax
	jmp Ljoin_l164
Ljoin_l165:
	movl $-1,%eax
	jmp Ljoin_l164
Ljoin_l164:
	jmp LifEnd_159
LifEnd_159:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l63
Ljoin_l64:
	jmp LifFalse_162
LifFalse_162:
	movl $0,%eax
	jmp LifEnd_163
Ljoin_l63:
	jmp LifTrue_161
LifTrue_161:
	leal 60(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl (%ecx),%edx
	leal 60(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	cmpl %ecx,%edx
	je Ljoin_l162
Ljoin_l163:
	movl $0,%eax
	jmp Ljoin_l161
Ljoin_l162:
	movl $-1,%eax
	jmp Ljoin_l161
Ljoin_l161:
	jmp LifEnd_163
LifEnd_163:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l61
Ljoin_l62:
	jmp LifFalse_182
LifFalse_182:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal space_end,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jg Ljoin_l44
Ljoin_l45:
	jmp Lalc_179
Ljoin_l44:
	jmp Lalc_gc_178
Lalc_gc_178:
	call tig_call_gc
Ljoin_l43:
	jmp Lalc_179
Lalc_179:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 60(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl $4,%eax
	movl %ebx,28(%esp)
	movl %edx,%ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $12,%ebx
	addl %ebx,%eax
	movl $8,%ebx
	movl %edx,%ecx
	addl %ebx,%ecx
	movl (%eax),%ebx
	movl %ebx,(%ecx)
	leal 60(%esp), %ecx
	movl $-24,%ebx
	addl %ebx,%ecx
	movl $16,%ebx
	addl %ebx,%ecx
	movl $12,%ebx
	movl %edx,%eax
	addl %ebx,%eax
	movl (%ecx),%ebx
	movl %ebx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $20,%ebx
	addl %ebx,%eax
	movl $16,%ebx
	movl %edx,%ecx
	addl %ebx,%ecx
	movl (%eax),%ebx
	movl %ebx,(%ecx)
	movl %ebp,32(%esp)
	movl %edx,%ecx
	jmp LifEnd_183
Ljoin_l61:
	jmp LifTrue_181
LifTrue_181:
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%eax
	cmpl %eax,%edx
	jg Ljoin_l59
Ljoin_l60:
	jmp Lalc_175
Ljoin_l59:
	jmp Lalc_gc_174
Lalc_gc_174:
	call tig_call_gc
Ljoin_l58:
	jmp Lalc_175
Lalc_175:
	movl $24,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $24,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	movl $4,%edx
	movl %ebx,28(%esp)
	movl %ecx,%ebx
	addl %edx,%ebx
	movl (%eax),%edx
	movl %edx,(%ebx)
	leal 60(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl $20,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $12,%edx
	addl %edx,%ebx
	movl (%ebx),%edx
	movl $8,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	movl %ecx,%eax
	addl %ebx,%eax
	movl (%edx),%ebx
	movl %ebx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $24,%eax
	addl %eax,%ebx
	leal space_end,%eax
	movl (%eax),%edx
	cmpl %edx,%ebx
	jg Ljoin_l54
Ljoin_l55:
	jmp Lalc_167
Ljoin_l54:
	jmp Lalc_gc_166
Lalc_gc_166:
	call tig_call_gc
Ljoin_l53:
	jmp Lalc_167
Lalc_167:
	movl $24,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ebx
	movl %eax,(%ebx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $24,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl $4,%edx
	movl %ebp,32(%esp)
	movl %ebx,%ebp
	addl %edx,%ebp
	movl (%eax),%edx
	movl %edx,(%ebp)
	leal 60(%esp), %edx
	movl $-24,%ebp
	addl %ebp,%edx
	movl $12,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	movl %ebx,%eax
	addl %ebp,%eax
	movl (%edx),%ebp
	movl %ebp,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $16,%ebp
	addl %ebp,%eax
	movl $12,%ebp
	movl %ebx,%edx
	addl %ebp,%edx
	movl (%eax),%ebp
	movl %ebp,(%edx)
	leal 60(%esp), %edx
	movl $-24,%ebp
	addl %ebp,%edx
	movl $20,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	movl $12,%edx
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $12,%ebp
	addl %ebp,%edx
	movl $16,%ebp
	movl %ebx,%eax
	addl %ebp,%eax
	movl (%edx),%ebp
	movl %ebp,(%eax)
	movl $12,%eax
	movl %ecx,%ebp
	addl %eax,%ebp
	movl %ebx,(%ebp)
	leal Cmm.global_area,%ebx
	movl (%ebx),%ebp
	movl $24,%ebx
	addl %ebx,%ebp
	leal space_end,%ebx
	movl (%ebx),%eax
	cmpl %eax,%ebp
	jg Ljoin_l49
Ljoin_l50:
	jmp Lalc_171
Ljoin_l49:
	jmp Lalc_gc_170
Lalc_gc_170:
	call tig_call_gc
Ljoin_l48:
	jmp Lalc_171
Lalc_171:
	movl $24,%eax
	leal Cmm.global_area,%ebp
	movl (%ebp),%ebx
	movl %eax,(%ebx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $24,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $8,%eax
	addl %eax,%ebp
	movl (%ebp),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $20,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	movl $4,%eax
	movl %ebx,%edx
	addl %eax,%edx
	movl (%ebp),%eax
	movl %eax,(%edx)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $20,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl $8,%eax
	movl %ebx,%ebp
	addl %eax,%ebp
	movl (%edx),%eax
	movl %eax,(%ebp)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $20,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $12,%eax
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $16,%ebp
	addl %ebp,%eax
	movl $12,%ebp
	movl %ebx,%edx
	addl %ebp,%edx
	movl (%eax),%ebp
	movl %ebp,(%edx)
	leal 60(%esp), %edx
	movl $-24,%ebp
	addl %ebp,%edx
	movl $20,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	movl $16,%edx
	addl %edx,%ebp
	movl $16,%edx
	movl %ebx,%eax
	addl %edx,%eax
	movl (%ebp),%edx
	movl %edx,(%eax)
	movl $16,%eax
	movl %ecx,%edx
	addl %eax,%edx
	movl %ebx,(%edx)
	jmp LifEnd_183
LifEnd_183:
	movl %ecx,%edx
	jmp LifEnd_187
Ljoin_l86:
	jmp LifTrue_185
LifTrue_185:
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal space_end,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	jg Ljoin_l84
Ljoin_l85:
	jmp Lalc_147
Ljoin_l84:
	jmp Lalc_gc_146
Lalc_gc_146:
	call tig_call_gc
Ljoin_l83:
	jmp Lalc_147
Lalc_147:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $4,%eax
	movl %ebx,28(%esp)
	movl %edx,%ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $20,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	addl %eax,%ebx
	movl $8,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal space_end,%eax
	movl (%eax),%ebx
	cmpl %ebx,%ecx
	jg Ljoin_l79
Ljoin_l80:
	jmp Lalc_139
Ljoin_l79:
	jmp Lalc_gc_138
Lalc_gc_138:
	call tig_call_gc
Ljoin_l78:
	jmp Lalc_139
Lalc_139:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebx
	movl %eax,(%ebx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	movl %ebp,32(%esp)
	movl %ebx,%ebp
	addl %ecx,%ebp
	movl (%eax),%ecx
	movl %ecx,(%ebp)
	leal 60(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl $12,%ebp
	addl %ebp,%ecx
	movl $8,%ebp
	movl %ebx,%eax
	addl %ebp,%eax
	movl (%ecx),%ebp
	movl %ebp,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $16,%ebp
	addl %ebp,%eax
	movl $12,%ebp
	movl %ebx,%ecx
	addl %ebp,%ecx
	movl (%eax),%ebp
	movl %ebp,(%ecx)
	leal 60(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl $20,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $12,%ecx
	addl %ecx,%ebp
	movl $16,%ecx
	movl %ebx,%eax
	addl %ecx,%eax
	movl (%ebp),%ecx
	movl %ecx,(%eax)
	movl $12,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl %ebx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebx
	movl $24,%ecx
	addl %ecx,%ebx
	leal space_end,%ecx
	movl (%ecx),%eax
	cmpl %eax,%ebx
	jg Ljoin_l74
Ljoin_l75:
	jmp Lalc_143
Ljoin_l74:
	jmp Lalc_gc_142
Lalc_gc_142:
	call tig_call_gc
Ljoin_l73:
	jmp Lalc_143
Lalc_143:
	movl $24,%eax
	leal Cmm.global_area,%ebx
	movl (%ebx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $24,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl %ebx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $20,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $16,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $4,%ebx
	addl %ebx,%eax
	movl $4,%ebx
	movl %ecx,%ebp
	addl %ebx,%ebp
	movl (%eax),%ebx
	movl %ebx,(%ebp)
	leal 60(%esp), %ebx
	movl $-24,%ebp
	addl %ebp,%ebx
	movl $20,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl $16,%ebx
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl $8,%ebp
	addl %ebp,%ebx
	movl $8,%ebp
	movl %ecx,%eax
	addl %ebp,%eax
	movl (%ebx),%ebp
	movl %ebp,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $20,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $16,%eax
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $12,%ebp
	addl %ebp,%eax
	movl $12,%ebp
	movl %ecx,%ebx
	addl %ebp,%ebx
	movl (%eax),%ebp
	movl %ebp,(%ebx)
	leal 60(%esp), %ebx
	movl $-24,%ebp
	addl %ebp,%ebx
	movl $20,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl $16,%ebx
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl $16,%ebp
	addl %ebp,%ebx
	movl $16,%ebp
	movl %ecx,%eax
	addl %ebp,%eax
	movl (%ebx),%ebp
	movl %ebp,(%eax)
	movl $16,%eax
	movl %edx,%ebp
	addl %eax,%ebp
	movl %ecx,(%ebp)
	jmp LifEnd_187
LifEnd_187:
	movl %edx,%ecx
	jmp LifEnd_191
Ljoin_l111:
	jmp LifTrue_189
LifTrue_189:
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%eax
	cmpl %eax,%edx
	jg Ljoin_l109
Ljoin_l110:
	jmp Lalc_119
Ljoin_l109:
	jmp Lalc_gc_118
Lalc_gc_118:
	call tig_call_gc
Ljoin_l108:
	jmp Lalc_119
Lalc_119:
	movl $24,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $24,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $16,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	movl $4,%edx
	movl %ebp,32(%esp)
	movl %ecx,%ebp
	addl %edx,%ebp
	movl (%eax),%edx
	movl %edx,(%ebp)
	leal 60(%esp), %edx
	movl $-24,%ebp
	addl %ebp,%edx
	movl $16,%ebp
	addl %ebp,%edx
	movl (%edx),%ebp
	movl $16,%edx
	addl %edx,%ebp
	movl (%ebp),%edx
	movl $8,%ebp
	addl %ebp,%edx
	movl $8,%ebp
	movl %ecx,%eax
	addl %ebp,%eax
	movl (%edx),%ebp
	movl %ebp,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $24,%eax
	addl %eax,%ebp
	leal space_end,%eax
	movl (%eax),%edx
	cmpl %edx,%ebp
	jg Ljoin_l104
Ljoin_l105:
	jmp Lalc_111
Ljoin_l104:
	jmp Lalc_gc_110
Lalc_gc_110:
	call tig_call_gc
Ljoin_l103:
	jmp Lalc_111
Lalc_111:
	movl $24,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ebp
	movl %eax,(%ebp)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $24,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,(%ebp)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	movl $4,%eax
	movl %ebx,28(%esp)
	movl %ebp,%ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $16,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	addl %eax,%ebx
	movl $8,%eax
	movl %ebp,%edx
	addl %eax,%edx
	movl (%ebx),%eax
	movl %eax,(%edx)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $16,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $12,%eax
	addl %eax,%edx
	movl $12,%eax
	movl %ebp,%ebx
	addl %eax,%ebx
	movl (%edx),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $16,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $16,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $12,%ebx
	addl %ebx,%eax
	movl $16,%ebx
	movl %ebp,%edx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl $12,%edx
	movl %ecx,%ebx
	addl %edx,%ebx
	movl %ebp,(%ebx)
	leal Cmm.global_area,%ebx
	movl (%ebx),%ebp
	movl $24,%ebx
	addl %ebx,%ebp
	leal space_end,%ebx
	movl (%ebx),%edx
	cmpl %edx,%ebp
	jg Ljoin_l99
Ljoin_l100:
	jmp Lalc_115
Ljoin_l99:
	jmp Lalc_gc_114
Lalc_gc_114:
	call tig_call_gc
Ljoin_l98:
	jmp Lalc_115
Lalc_115:
	movl $24,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%ebp
	movl %eax,(%ebp)
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $4,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $24,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl %edx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	movl %eax,(%ebp)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl $4,%edx
	movl %ebp,%ebx
	addl %edx,%ebx
	movl (%eax),%edx
	movl %edx,(%ebx)
	leal 60(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl $12,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	movl %ebp,%eax
	addl %ebx,%eax
	movl (%edx),%ebx
	movl %ebx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $16,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $16,%eax
	addl %eax,%ebx
	movl (%ebx),%eax
	movl $16,%ebx
	addl %ebx,%eax
	movl $12,%ebx
	movl %ebp,%edx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal 60(%esp), %edx
	movl $-24,%ebx
	addl %ebx,%edx
	movl $20,%ebx
	addl %ebx,%edx
	movl $16,%ebx
	movl %ebp,%eax
	addl %ebx,%eax
	movl (%edx),%ebx
	movl %ebx,(%eax)
	movl $16,%eax
	movl %ecx,%ebx
	addl %eax,%ebx
	movl %ebp,(%ebx)
	jmp LifEnd_191
LifEnd_191:
	movl %ecx,%edx
	jmp LifEnd_195
Ljoin_l136:
	jmp LifTrue_193
LifTrue_193:
	leal Cmm.global_area,%edx
	movl (%edx),%ecx
	movl $24,%edx
	addl %edx,%ecx
	leal space_end,%edx
	movl (%edx),%eax
	cmpl %eax,%ecx
	jg Ljoin_l134
Ljoin_l135:
	jmp Lalc_91
Ljoin_l134:
	jmp Lalc_gc_90
Lalc_gc_90:
	call tig_call_gc
Ljoin_l133:
	jmp Lalc_91
Lalc_91:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $4,%eax
	movl %ebx,28(%esp)
	movl %edx,%ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%ebx
	addl %ebx,%eax
	movl $16,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	addl %eax,%ebx
	movl $8,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal space_end,%eax
	movl (%eax),%ebx
	cmpl %ebx,%ecx
	jg Ljoin_l129
Ljoin_l130:
	jmp Lalc_82
Ljoin_l129:
	jmp Lalc_gc_81
Lalc_gc_81:
	call tig_call_gc
Ljoin_l128:
	jmp Lalc_82
Lalc_82:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebx
	movl %eax,(%ebx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	movl %ebp,32(%esp)
	movl %ebx,%ebp
	addl %ecx,%ebp
	movl (%eax),%ecx
	movl %ecx,(%ebp)
	leal 60(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl $16,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $12,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $8,%ebp
	addl %ebp,%ecx
	movl $8,%ebp
	movl %ebx,%eax
	addl %ebp,%eax
	movl (%ecx),%ebp
	movl %ebp,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $16,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $12,%eax
	addl %eax,%ebp
	movl (%ebp),%eax
	movl $12,%ebp
	addl %ebp,%eax
	movl $12,%ebp
	movl %ebx,%ecx
	addl %ebp,%ecx
	movl (%eax),%ebp
	movl %ebp,(%ecx)
	leal 60(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl $16,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	movl $12,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $16,%ebp
	addl %ebp,%ecx
	movl $16,%ebp
	movl %ebx,%eax
	addl %ebp,%eax
	movl (%ecx),%ebp
	movl %ebp,(%eax)
	movl $12,%eax
	movl %edx,%ebp
	addl %eax,%ebp
	movl %ebx,(%ebp)
	leal Cmm.global_area,%ebx
	movl (%ebx),%ebp
	movl $24,%ebx
	addl %ebx,%ebp
	leal space_end,%ebx
	movl (%ebx),%eax
	cmpl %eax,%ebp
	jg Ljoin_l124
Ljoin_l125:
	jmp Lalc_87
Ljoin_l124:
	jmp Lalc_gc_86
Lalc_gc_86:
	call tig_call_gc
Ljoin_l123:
	jmp Lalc_87
Lalc_87:
	movl $24,%eax
	leal Cmm.global_area,%ebp
	movl (%ebp),%ebx
	movl %eax,(%ebx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ebp
	movl $24,%eax
	addl %eax,%ebp
	leal Cmm.global_area,%eax
	movl %ebp,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $8,%eax
	addl %eax,%ebp
	movl (%ebp),%eax
	movl %eax,(%ebx)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $8,%ebp
	addl %ebp,%eax
	movl $4,%ebp
	movl %ebx,%ecx
	addl %ebp,%ecx
	movl (%eax),%ebp
	movl %ebp,(%ecx)
	leal 60(%esp), %ecx
	movl $-24,%ebp
	addl %ebp,%ecx
	movl $12,%ebp
	addl %ebp,%ecx
	movl $8,%ebp
	movl %ebx,%eax
	addl %ebp,%eax
	movl (%ecx),%ebp
	movl %ebp,(%eax)
	leal 60(%esp), %eax
	movl $-24,%ebp
	addl %ebp,%eax
	movl $16,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $16,%eax
	addl %eax,%ebp
	movl $12,%eax
	movl %ebx,%ecx
	addl %eax,%ecx
	movl (%ebp),%eax
	movl %eax,(%ecx)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl $20,%ecx
	addl %ecx,%eax
	movl $16,%ecx
	movl %ebx,%ebp
	addl %ecx,%ebp
	movl (%eax),%ecx
	movl %ecx,(%ebp)
	movl $16,%ecx
	movl %edx,%ebp
	addl %ecx,%ebp
	movl %ebx,(%ebp)
	jmp LifEnd_195
LifEnd_195:
	movl %edx,%eax
	leal 60(%esp), %edx
	movl $20,%ebx
	addl %ebx,%edx
	movl 24(%esp),%ebx
	movl %ebx,(%edx)
	movl 28(%esp),%ebx
	movl 32(%esp),%ebp
	leal 80(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l199:
.long 1
.long 0xffffffe8
.section .pcmap
.long Ljoin_l43
.long Lframe_l200
.section .pcmap_data
Lframe_l200:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l58
.long Lframe_l201
.section .pcmap_data
Lframe_l201:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l53
.long Lframe_l202
.section .pcmap_data
Lframe_l202:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000005
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l48
.long Lframe_l203
.section .pcmap_data
Lframe_l203:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000005
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l83
.long Lframe_l204
.section .pcmap_data
Lframe_l204:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l78
.long Lframe_l205
.section .pcmap_data
Lframe_l205:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000006
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l73
.long Lframe_l206
.section .pcmap_data
Lframe_l206:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000006
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l108
.long Lframe_l207
.section .pcmap_data
Lframe_l207:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l103
.long Lframe_l208
.section .pcmap_data
Lframe_l208:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000005
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l98
.long Lframe_l209
.section .pcmap_data
Lframe_l209:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000005
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l133
.long Lframe_l210
.section .pcmap_data
Lframe_l210:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l128
.long Lframe_l211
.section .pcmap_data
Lframe_l211:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x40000006
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long balance_44_gc_data
.section .pcmap
.long Ljoin_l123
.long Lframe_l212
.section .pcmap_data
Lframe_l212:
.long 0xffffffc4
.long 0x80000018
.long 0xffffffdc
.long Lstackdata_l199
.long 0x80000008
.long 0x80000035
.long 0x80000002
.long 0x80000001
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
.long 0x40000006
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -104(%esp), %esp
	leal 104(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 104(%esp), %ecx
	movl %eax,8(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 104(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l215:
Lproc_body_start_l214:
	movl %edx,12(%esp)
	leal 104(%esp), %edx
	movl %eax,16(%esp)
	movl $-12,%eax
	addl %eax,%edx
	movl 8(%esp),%eax
	movl %eax,(%edx)
	leal 104(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal 104(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 16(%esp),%edx
	movl %edx,(%eax)
	leal 104(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $0,%eax
	cmpl %eax,%edx
	je Ljoin_l257
Ljoin_l258:
	jmp LifFalse_229
LifFalse_229:
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 104(%esp), %eax
	movl %ecx,20(%esp)
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 104(%esp), %eax
	movl %ebx,24(%esp)
	movl $-12,%ebx
	addl %ebx,%eax
	movl $8,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	addl %eax,%ebx
	leal 104(%esp), %eax
	movl %ebp,28(%esp)
	movl $-100,%ebp
	addl %ebp,%eax
	movl (%ebx),%ebp
	movl %ebp,(%eax)
	leal 104(%esp), %eax
	movl $-104,%ebp
	addl %ebp,%eax
	movl %ecx,(%eax)
	movl %edx,32(%esp)
	call tig_compare_str
Ljoin_l251:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jl Ljoin_l247
Ljoin_l248:
	jmp LifFalse_225
LifFalse_225:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 104(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 104(%esp), %eax
	movl $-12,%ebp
	addl %ebp,%eax
	movl $8,%ebp
	addl %ebp,%eax
	movl (%eax),%ebp
	movl $8,%eax
	addl %eax,%ebp
	leal 104(%esp), %eax
	movl $-100,%ebx
	addl %ebx,%eax
	movl (%ebp),%ebx
	movl %ebx,(%eax)
	leal 104(%esp), %eax
	movl $-104,%ebx
	addl %ebx,%eax
	movl %edx,(%eax)
	movl %ecx,36(%esp)
	call tig_compare_str
Ljoin_l240:
	leal Cmm.global_area,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l236
Ljoin_l237:
	jmp LifFalse_221
LifFalse_221:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 104(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	leal 104(%esp), %eax
	movl $-12,%ebx
	addl %ebx,%eax
	movl $8,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	addl %eax,%ebx
	leal 104(%esp), %eax
	movl $-100,%ebp
	addl %ebp,%eax
	movl (%ebx),%ebp
	movl %ebp,(%eax)
	leal 104(%esp), %eax
	movl $-104,%ebp
	addl %ebp,%eax
	movl %edx,(%eax)
	movl %ecx,40(%esp)
	call tig_compare_str
Ljoin_l229:
	leal Cmm.global_area,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l225
Ljoin_l226:
	jmp LifFalse_213
LifFalse_213:
	movl $0,%eax
	jmp LifEnd_214
Ljoin_l225:
	jmp LifTrue_212
LifTrue_212:
	leal Cmm.global_area,%ebp
	movl (%ebp),%ebx
	leal Lgbl_208,%ebp
	leal 104(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	movl %ebp,(%eax)
	call tig_print
Ljoin_l224:
	leal Cmm.global_area,%ecx
	movl %ebx,(%ecx)
	jmp LifEnd_214
LifEnd_214:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal space_end,%eax
	movl (%eax),%ebx
	cmpl %ebx,%ecx
	jg Ljoin_l220
Ljoin_l221:
	jmp Lalc_218
Ljoin_l220:
	jmp Lalc_gc_217
Lalc_gc_217:
	call tig_call_gc
Ljoin_l219:
	jmp Lalc_218
Lalc_218:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ebx
	movl %eax,(%ebx)
	leal Cmm.global_area,%eax
	movl (%eax),%ebx
	movl $4,%eax
	addl %eax,%ebx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	leal 104(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal 104(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $1,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	movl %ebx,%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 104(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl $8,%edx
	movl %ebx,%ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 104(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %ebx,%eax
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
	leal 104(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl $16,%eax
	movl %ebx,%edx
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl %edi,48(%esp)
	movl %esi,44(%esp)
	movl %ebx,%eax
	jmp LifEnd_222
Ljoin_l236:
	jmp LifTrue_220
LifTrue_220:
	leal 104(%esp), %ebp
	movl $-12,%ebx
	addl %ebx,%ebp
	movl (%ebp),%eax
	leal 104(%esp), %ebp
	movl $-12,%ebx
	addl %ebx,%ebp
	movl $8,%ebx
	addl %ebx,%ebp
	movl (%ebp),%ebx
	movl (%ebx),%ebp
	leal 104(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl $8,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	leal 104(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 104(%esp), %edx
	movl %esi,44(%esp)
	movl $-12,%esi
	addl %esi,%edx
	movl $8,%esi
	addl %esi,%edx
	movl (%edx),%esi
	movl $12,%edx
	addl %edx,%esi
	movl (%esi),%edx
	leal -8(%esp), %esp
	leal 112(%esp), %esi
	movl %edi,56(%esp)
	movl $-12,%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl %eax,60(%esp)
	movl %edi,%eax
	leal 112(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%esi
	leal 112(%esp), %edi
	movl %ebp,64(%esp)
	movl $-12,%ebp
	addl %ebp,%edi
	movl $8,%ebp
	addl %ebp,%edi
	movl (%edi),%ebp
	movl $16,%edi
	addl %edi,%ebp
	leal 112(%esp), %edi
	movl %ebx,68(%esp)
	movl $-108,%ebx
	addl %ebx,%edi
	movl (%ebp),%ebx
	movl %ebx,(%edi)
	leal 112(%esp), %ebx
	movl $-112,%edi
	addl %edi,%ebx
	movl %esi,(%ebx)
	movl %ecx,72(%esp)
	movl %edx,76(%esp)
	call ins_45
Ljoin_l235:
	leal -20(%esp), %esp
	movl %eax,92(%esp)
	movl 72(%esp),%eax
	leal 124(%esp), %ecx
	movl $-124,%edx
	addl %edx,%ecx
	movl 76(%esp),%edx
	movl %edx,(%ecx)
	leal 124(%esp), %ecx
	movl $-120,%edx
	addl %edx,%ecx
	movl 80(%esp),%edx
	movl %edx,(%ecx)
	leal 124(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	movl 84(%esp),%edx
	movl %edx,(%ecx)
	leal 124(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	movl 88(%esp),%edx
	movl %edx,(%ecx)
	leal 124(%esp), %ecx
	movl $-108,%edx
	addl %edx,%ecx
	movl 92(%esp),%edx
	movl %edx,(%ecx)
	call balance_44
Ljoin_l232:
	jmp LifEnd_222
LifEnd_222:
	jmp LifEnd_226
Ljoin_l247:
	jmp LifTrue_224
LifTrue_224:
	leal 104(%esp), %ebx
	movl $-12,%ebp
	addl %ebp,%ebx
	movl (%ebx),%eax
	leal 104(%esp), %ebx
	movl $-12,%ebp
	addl %ebp,%ebx
	movl $8,%ebp
	addl %ebp,%ebx
	movl (%ebx),%ebp
	movl (%ebp),%ebx
	leal 104(%esp), %ebp
	movl $-12,%ecx
	addl %ecx,%ebp
	movl $8,%ecx
	addl %ecx,%ebp
	movl (%ebp),%ecx
	movl $4,%ebp
	addl %ebp,%ecx
	movl (%ecx),%ebp
	leal 104(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal -8(%esp), %esp
	leal 112(%esp), %edx
	movl %esi,52(%esp)
	movl $-12,%esi
	addl %esi,%edx
	movl (%edx),%esi
	movl %eax,84(%esp)
	movl %esi,%eax
	leal 112(%esp), %esi
	movl $-12,%edx
	addl %edx,%esi
	movl $4,%edx
	addl %edx,%esi
	movl (%esi),%edx
	leal 112(%esp), %esi
	movl %edi,56(%esp)
	movl $-12,%edi
	addl %edi,%esi
	movl $8,%edi
	addl %edi,%esi
	movl (%esi),%edi
	movl $12,%esi
	addl %esi,%edi
	leal 112(%esp), %esi
	movl %ebx,88(%esp)
	movl $-108,%ebx
	addl %ebx,%esi
	movl (%edi),%ebx
	movl %ebx,(%esi)
	leal 112(%esp), %ebx
	movl $-112,%esi
	addl %esi,%ebx
	movl %edx,(%ebx)
	movl %ecx,92(%esp)
	call ins_45
Ljoin_l246:
	leal -20(%esp), %esp
	movl %eax,108(%esp)
	movl 96(%esp),%eax
	leal 124(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	leal 124(%esp), %ecx
	movl $-108,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	leal 124(%esp), %ecx
	movl $-124,%ebx
	addl %ebx,%ecx
	movl 100(%esp),%ebx
	movl %ebx,(%ecx)
	leal 124(%esp), %ecx
	movl $-120,%ebx
	addl %ebx,%ecx
	movl %ebp,(%ecx)
	leal 124(%esp), %ecx
	movl $-116,%ebp
	addl %ebp,%ecx
	movl 104(%esp),%ebp
	movl %ebp,(%ecx)
	leal 124(%esp), %ecx
	movl $-112,%ebp
	addl %ebp,%ecx
	movl 108(%esp),%ebp
	movl %ebp,(%ecx)
	call balance_44
Ljoin_l243:
	jmp LifEnd_226
LifEnd_226:
	movl %eax,%edx
	movl 48(%esp),%edi
	movl 44(%esp),%esi
	movl 24(%esp),%ebx
	jmp LifEnd_230
Ljoin_l257:
	jmp LifTrue_228
LifTrue_228:
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $24,%edx
	addl %edx,%eax
	leal space_end,%edx
	movl (%edx),%edx
	cmpl %edx,%eax
	jg Ljoin_l255
Ljoin_l256:
	jmp Lalc_200
Ljoin_l255:
	jmp Lalc_gc_199
Lalc_gc_199:
	call tig_call_gc
Ljoin_l254:
	jmp Lalc_200
Lalc_200:
	movl $24,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%eax
	movl %ecx,20(%esp)
	movl $24,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal 104(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,(%edx)
	movl $1,%eax
	movl $4,%ecx
	movl %ebp,28(%esp)
	movl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	leal 104(%esp), %eax
	movl $-12,%ebp
	addl %ebp,%eax
	movl $4,%ebp
	addl %ebp,%eax
	movl $8,%ebp
	movl %edx,%ecx
	addl %ebp,%ecx
	movl (%eax),%ebp
	movl %ebp,(%ecx)
	movl $0,%ecx
	movl $12,%ebp
	movl %edx,%eax
	addl %ebp,%eax
	movl %ecx,(%eax)
	movl $0,%eax
	movl $16,%ecx
	movl %edx,%ebp
	addl %ecx,%ebp
	movl %eax,(%ebp)
	jmp LifEnd_230
LifEnd_230:
	movl %edx,%eax
	leal 104(%esp), %edx
	movl $8,%ebp
	addl %ebp,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 28(%esp),%ebp
	leal 112(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l263:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l251
.long Lframe_l264
.section .pcmap_data
Lframe_l264:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffac
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffb0
.long 0x40000009
.long 0xffffffb4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l240
.long Lframe_l265
.section .pcmap_data
Lframe_l265:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffac
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffb0
.long 0x40000009
.long 0xffffffb4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffbc
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l229
.long Lframe_l266
.section .pcmap_data
Lframe_l266:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffac
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffb0
.long 0x40000009
.long 0xffffffb4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffc0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l224
.long Lframe_l267
.section .pcmap_data
Lframe_l267:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffac
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffb0
.long 0x40000009
.long 0xffffffb4
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
.long 0
.long 0
.long 0
.long 0
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
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l219
.long Lframe_l268
.section .pcmap_data
Lframe_l268:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffac
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffb0
.long 0x40000009
.long 0xffffffb4
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l235
.long Lframe_l269
.section .pcmap_data
Lframe_l269:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffac
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffb0
.long 0x40000009
.long 0xffffffb4
.long 0x4000000a
.long 0xffffffc4
.long 0x4000000b
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffcc
.long 0xffffffd0
.long 0xffffffd4
.long 0xffffffd8
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
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l232
.long Lframe_l270
.section .pcmap_data
Lframe_l270:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffac
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffb0
.long 0x40000009
.long 0xffffffb4
.long 0x4000000a
.long 0xffffffc4
.long 0x4000000b
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l246
.long Lframe_l271
.section .pcmap_data
Lframe_l271:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffac
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffb0
.long 0x40000009
.long 0xffffffb4
.long 0x4000000a
.long 0xffffffc4
.long 0x4000000b
.long 0xffffffc8
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0x40000009
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
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l243
.long Lframe_l272
.section .pcmap_data
Lframe_l272:
.long 0xffffff98
.long 0x8000000c
.long 0xffffffac
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffb0
.long 0x40000009
.long 0xffffffb4
.long 0x4000000a
.long 0xffffffc4
.long 0x4000000b
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l254
.long Lframe_l273
.section .pcmap_data
Lframe_l273:
.long 0xffffff98
.long 0x8000000c
.long 0x40000005
.long Lstackdata_l263
.long 0x80000008
.long 0x8000001f
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 40(%esp), %ecx
	movl %eax,(%esp)
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 40(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l276:
Lproc_body_start_l275:
	movl %edx,4(%esp)
	leal 40(%esp), %edx
	movl %eax,8(%esp)
	movl $-16,%eax
	addl %eax,%edx
	movl (%esp),%eax
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal 40(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal -8(%esp), %esp
	leal 48(%esp), %eax
	movl $-16,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 48(%esp), %edx
	movl %ecx,20(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl %ebx,24(%esp)
	movl $-16,%ebx
	addl %ebx,%edx
	movl $8,%ebx
	addl %ebx,%edx
	leal 48(%esp), %ebx
	movl %ebp,28(%esp)
	movl $-44,%ebp
	addl %ebp,%ebx
	movl (%edx),%ebp
	movl %ebp,(%ebx)
	leal 48(%esp), %ebx
	movl $-48,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	call ins_45
Ljoin_l285:
	leal 40(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal space_end,%eax
	movl (%eax),%edx
	cmpl %edx,%ecx
	jg Ljoin_l281
Ljoin_l282:
	jmp Lalc_235
Ljoin_l281:
	jmp Lalc_gc_234
Lalc_gc_234:
	call tig_call_gc
Ljoin_l280:
	jmp Lalc_235
Lalc_235:
	movl $24,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	movl $24,%eax
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl %ecx,(%eax)
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $4,%eax
	addl %eax,%ecx
	movl $4,%eax
	movl %edx,%ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal 40(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $12,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $8,%eax
	addl %eax,%ebx
	movl $8,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl $12,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl $12,%eax
	movl %edx,%ebx
	addl %eax,%ebx
	movl (%ecx),%eax
	movl %eax,(%ebx)
	leal 40(%esp), %eax
	movl $-16,%ebx
	addl %ebx,%eax
	movl $12,%ebx
	addl %ebx,%eax
	movl (%eax),%ebx
	movl $16,%eax
	addl %eax,%ebx
	movl $16,%eax
	movl %edx,%ecx
	addl %eax,%ecx
	movl (%ebx),%eax
	movl %eax,(%ecx)
	movl %edx,%eax
	leal 40(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%ebx
	movl 20(%esp),%ebp
	leal 48(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l290:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l285
.long Lframe_l291
.section .pcmap_data
Lframe_l291:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l290
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
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
.long 0x80000000
.long 0
.long insert_46_gc_data
.section .pcmap
.long Ljoin_l280
.long Lframe_l292
.section .pcmap_data
Lframe_l292:
.long 0xffffffd8
.long 0x8000000c
.long 0xffffffe4
.long Lstackdata_l290
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
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
.long 0x80000000
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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 28(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l295:
Lproc_body_start_l294:
	movl %eax,(%esp)
	leal 28(%esp), %eax
	movl %edx,4(%esp)
	movl $-8,%edx
	addl %edx,%eax
	movl (%esp),%edx
	movl %edx,(%eax)
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 4(%esp),%edx
	movl %edx,(%eax)
	leal -8(%esp), %esp
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl (%eax),%eax
	leal 36(%esp), %edx
	movl %ecx,16(%esp)
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 36(%esp), %edx
	movl %ebx,20(%esp)
	movl $-8,%ebx
	addl %ebx,%edx
	movl (%edx),%ebx
	movl $4,%edx
	addl %edx,%ebx
	leal 36(%esp), %edx
	movl %ebp,24(%esp)
	movl $-32,%ebp
	addl %ebp,%edx
	movl (%ebx),%ebp
	movl %ebp,(%edx)
	leal 36(%esp), %edx
	movl $-36,%ebp
	addl %ebp,%edx
	movl %ecx,(%edx)
	call insert_46
Ljoin_l299:
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 28(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebx
	movl 16(%esp),%ebp
	leal 32(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l304:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l299
.long Lframe_l305
.section .pcmap_data
Lframe_l305:
.long 0xffffffe4
.long 0x80000008
.long 0xffffffec
.long Lstackdata_l304
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
.long 0x40000009
.long 0xfffffff4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -48(%esp), %esp
	leal 48(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 48(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l308:
Lproc_body_start_l307:
	movl %eax,4(%esp)
	leal 48(%esp), %eax
	movl %ecx,8(%esp)
	movl $-8,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 48(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l328
Ljoin_l329:
	jmp LifFalse_249
LifFalse_249:
	movl $0,%eax
	movl %ebp,16(%esp)
	movl %ebx,12(%esp)
	movl %edx,20(%esp)
	jmp LifEnd_250
Ljoin_l328:
	jmp LifTrue_248
LifTrue_248:
	leal -4(%esp), %esp
	leal 52(%esp), %ecx
	movl $-8,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal 52(%esp), %ecx
	movl %ebx,16(%esp)
	movl $-8,%ebx
	addl %ebx,%ecx
	movl $4,%ebx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl $12,%ecx
	addl %ecx,%ebx
	leal 52(%esp), %ecx
	movl %ebp,20(%esp)
	movl $-52,%ebp
	addl %ebp,%ecx
	movl (%ebx),%ebp
	movl %ebp,(%ecx)
	movl %edx,24(%esp)
	call tprint_48
Ljoin_l327:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $4,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-48,%ebp
	addl %ebp,%eax
	movl (%edx),%ebp
	movl %ebp,(%eax)
	movl %ecx,24(%esp)
	call tig_printi
Ljoin_l324:
	leal Cmm.global_area,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_240,%eax
	leal 48(%esp), %edx
	movl $-48,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	movl %ecx,28(%esp)
	call tig_print
Ljoin_l321:
	leal Cmm.global_area,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl (%eax),%edx
	movl $8,%eax
	addl %eax,%edx
	leal 48(%esp), %eax
	movl $-48,%ebp
	addl %ebp,%eax
	movl (%edx),%ebp
	movl %ebp,(%eax)
	movl %ecx,32(%esp)
	call tig_print
Ljoin_l318:
	leal Cmm.global_area,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal Lgbl_57,%eax
	leal 48(%esp), %edx
	movl $-48,%ebp
	addl %ebp,%edx
	movl %eax,(%edx)
	movl %ecx,36(%esp)
	call tig_print
Ljoin_l315:
	leal Cmm.global_area,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal -4(%esp), %esp
	leal 52(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 52(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	leal 52(%esp), %ecx
	movl $-52,%ebp
	addl %ebp,%ecx
	movl (%edx),%ebp
	movl %ebp,(%ecx)
	call tprint_48
Ljoin_l312:
	jmp LifEnd_250
LifEnd_250:
	leal 48(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	movl 16(%esp),%ebp
	leal 52(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l334:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l327
.long Lframe_l335
.section .pcmap_data
Lframe_l335:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tprint_48_gc_data
.section .pcmap
.long Ljoin_l324
.long Lframe_l336
.section .pcmap_data
Lframe_l336:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0
.long 0
.long 0xffffffe8
.long 0x80000000
.long 0
.long tprint_48_gc_data
.section .pcmap
.long Ljoin_l321
.long Lframe_l337
.section .pcmap_data
Lframe_l337:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0xffffffec
.long 0
.long 0
.long 0x80000000
.long 0
.long tprint_48_gc_data
.section .pcmap
.long Ljoin_l318
.long Lframe_l338
.section .pcmap_data
Lframe_l338:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long tprint_48_gc_data
.section .pcmap
.long Ljoin_l315
.long Lframe_l339
.section .pcmap_data
Lframe_l339:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long tprint_48_gc_data
.section .pcmap
.long Ljoin_l312
.long Lframe_l340
.section .pcmap_data
Lframe_l340:
.long 0xffffffd0
.long 0x80000008
.long 0xffffffe4
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffdc
.long 0x40000009
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -76(%esp), %esp
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 76(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l343:
Lproc_body_start_l342:
	movl %eax,8(%esp)
	leal 76(%esp), %eax
	movl %edx,12(%esp)
	movl $-8,%edx
	addl %edx,%eax
	movl 8(%esp),%edx
	movl %edx,(%eax)
	leal 76(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl 12(%esp),%edx
	movl %edx,(%eax)
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal 76(%esp), %eax
	movl %ecx,16(%esp)
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 76(%esp), %ecx
	movl %ebx,20(%esp)
	movl $-76,%ebx
	addl %ebx,%ecx
	movl (%eax),%ebx
	movl %ebx,(%ecx)
	leal Lgbl_252,%ecx
	leal 76(%esp), %ebx
	movl $-72,%eax
	addl %eax,%ebx
	movl %ecx,(%ebx)
	movl %edx,24(%esp)
	call tig_compare_str
Ljoin_l376:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Ljoin_l372
Ljoin_l373:
	jmp LifFalse_260
LifFalse_260:
	movl $0,%eax
	jmp LifEnd_261
Ljoin_l372:
	jmp LifTrue_259
LifTrue_259:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	leal 76(%esp), %ebx
	movl $-8,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 76(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	leal Lgbl_255,%ecx
	leal 76(%esp), %edx
	movl $-72,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,28(%esp)
	call tig_compare_str
Ljoin_l371:
	leal Cmm.global_area,%ecx
	movl 28(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l384
Ljoin_l385:
	movl $0,%eax
	jmp Ljoin_l383
Ljoin_l384:
	movl $-1,%eax
	jmp Ljoin_l383
Ljoin_l383:
	jmp LifEnd_261
LifEnd_261:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l367
Ljoin_l368:
	jmp LifFalse_286
LifFalse_286:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 76(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 76(%esp), %edx
	movl $-76,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal Lgbl_264,%edx
	leal 76(%esp), %ebx
	movl $-72,%eax
	addl %eax,%ebx
	movl %edx,(%ebx)
	movl %ecx,32(%esp)
	call tig_compare_str
Ljoin_l357:
	leal Cmm.global_area,%ecx
	movl 32(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jge Ljoin_l353
Ljoin_l354:
	jmp LifFalse_276
LifFalse_276:
	movl $0,%eax
	jmp LifEnd_277
Ljoin_l353:
	jmp LifTrue_275
LifTrue_275:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	leal 76(%esp), %ebx
	movl $-8,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 76(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	leal Lgbl_271,%ecx
	leal 76(%esp), %edx
	movl $-72,%ebx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl %eax,36(%esp)
	call tig_compare_str
Ljoin_l352:
	leal Cmm.global_area,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l381
Ljoin_l382:
	movl $0,%eax
	jmp Ljoin_l380
Ljoin_l381:
	movl $-1,%eax
	jmp Ljoin_l380
Ljoin_l380:
	jmp LifEnd_277
LifEnd_277:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l348
Ljoin_l349:
	jmp LifFalse_282
LifFalse_282:
	movl $0,%eax
	jmp LifEnd_283
Ljoin_l348:
	jmp LifTrue_281
LifTrue_281:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	leal 76(%esp), %ebx
	movl $-8,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 76(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl %eax,40(%esp)
	call tig_ord
Ljoin_l347:
	leal Cmm.global_area,%ecx
	movl 40(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_283
LifEnd_283:
	movl %ebp,48(%esp)
	movl %eax,%ecx
	jmp LifEnd_287
Ljoin_l367:
	jmp LifTrue_285
LifTrue_285:
	leal Cmm.global_area,%ebx
	movl (%ebx),%eax
	leal 76(%esp), %ebx
	movl $-8,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 76(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	movl %eax,44(%esp)
	call tig_ord
Ljoin_l366:
	leal Cmm.global_area,%ecx
	movl 44(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%ecx
	movl (%ecx),%edx
	leal Lgbl_264,%ecx
	leal 76(%esp), %ebx
	movl %ebp,48(%esp)
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %ecx,(%ebx)
	movl %eax,52(%esp)
	movl %edx,56(%esp)
	call tig_ord
Ljoin_l363:
	leal Cmm.global_area,%ecx
	movl 56(%esp),%edx
	movl %edx,(%ecx)
	movl 52(%esp),%ecx
	addl %eax,%ecx
	leal Cmm.global_area,%eax
	movl (%eax),%edx
	leal Lgbl_252,%eax
	leal 76(%esp), %ebx
	movl $-76,%ebp
	addl %ebp,%ebx
	movl %eax,(%ebx)
	movl %ecx,60(%esp)
	movl %edx,64(%esp)
	call tig_ord
Ljoin_l360:
	leal Cmm.global_area,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	movl 60(%esp),%ecx
	subl %eax,%ecx
	jmp LifEnd_287
LifEnd_287:
	movl %ecx,%eax
	leal 76(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl 20(%esp),%ebx
	movl 48(%esp),%ebp
	leal 80(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l388:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l376
.long Lframe_l389
.section .pcmap_data
Lframe_l389:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l371
.long Lframe_l390
.section .pcmap_data
Lframe_l390:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l357
.long Lframe_l391
.section .pcmap_data
Lframe_l391:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l352
.long Lframe_l392
.section .pcmap_data
Lframe_l392:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l347
.long Lframe_l393
.section .pcmap_data
Lframe_l393:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l366
.long Lframe_l394
.section .pcmap_data
Lframe_l394:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l363
.long Lframe_l395
.section .pcmap_data
Lframe_l395:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l360
.long Lframe_l396
.section .pcmap_data
Lframe_l396:
.long 0xffffffb4
.long 0x80000008
.long 0xffffffc4
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffc8
.long 0x40000009
.long 0xffffffe4
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
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
	leal -48(%esp), %esp
	leal 48(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l399:
Lproc_body_start_l398:
	leal 48(%esp), %ecx
	movl %eax,8(%esp)
	movl $-12,%eax
	addl %eax,%ecx
	movl 8(%esp),%eax
	movl %eax,(%ecx)
	leal Lgbl_289,%eax
	leal 48(%esp), %ecx
	movl %edx,12(%esp)
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal Lgbl_289,%eax
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
Ljoin_l438:
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_297
Lloop_start_297:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 48(%esp), %edx
	movl %ebx,16(%esp)
	movl $-48,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal Lgbl_289,%edx
	leal 48(%esp), %ebx
	movl $-44,%eax
	addl %eax,%ebx
	movl %edx,(%ebx)
	movl %ecx,20(%esp)
	call tig_compare_str
Ljoin_l435:
	leal Cmm.global_area,%ecx
	movl 20(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l431
Ljoin_l432:
	jmp LifFalse_295
LifFalse_295:
	movl $0,%eax
	jmp LifEnd_296
Ljoin_l431:
	jmp LifTrue_294
LifTrue_294:
	leal -4(%esp), %esp
	leal 52(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl (%ebx),%eax
	leal 52(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl $8,%ecx
	addl %ecx,%ebx
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	call isletter_49
Ljoin_l430:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l443
Ljoin_l444:
	movl $0,%eax
	jmp Ljoin_l442
Ljoin_l443:
	movl $-1,%eax
	jmp Ljoin_l442
Ljoin_l442:
	jmp LifEnd_296
LifEnd_296:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l426
Ljoin_l427:
	jmp Lloop_end_290
Lloop_end_290:
	jmp Lloop_start_306
Lloop_start_306:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 48(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	leal 48(%esp), %edx
	movl $-48,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	leal Lgbl_289,%edx
	leal 48(%esp), %ebx
	movl $-44,%eax
	addl %eax,%ebx
	movl %edx,(%ebx)
	movl %ecx,24(%esp)
	call tig_compare_str
Ljoin_l422:
	leal Cmm.global_area,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l418
Ljoin_l419:
	jmp LifFalse_304
LifFalse_304:
	movl $0,%eax
	jmp LifEnd_305
Ljoin_l418:
	jmp LifTrue_303
LifTrue_303:
	leal -4(%esp), %esp
	leal 52(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl (%ebx),%eax
	leal 52(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl $8,%ecx
	addl %ecx,%ebx
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	call isletter_49
Ljoin_l417:
	jmp LifEnd_305
LifEnd_305:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l413
Ljoin_l414:
	jmp Lloop_end_299
Lloop_end_299:
	leal 48(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	movl %ecx,%eax
	leal 48(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	movl 16(%esp),%ebx
	leal 48(%esp), %esp
	ret
Ljoin_l413:
	jmp Lloop_body_307
Lloop_body_307:
	leal 48(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	movl (%ebx),%eax
	leal -4(%esp), %esp
	leal 52(%esp), %ebx
	movl $-12,%ecx
	addl %ecx,%ebx
	movl (%ebx),%ecx
	movl %eax,32(%esp)
	movl %ecx,%eax
	leal 52(%esp), %ecx
	movl $-12,%ebx
	addl %ebx,%ecx
	movl $8,%ebx
	addl %ebx,%ecx
	leal 52(%esp), %ebx
	movl $-52,%edx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	call isletter_49
Ljoin_l412:
	call tig_chr
Ljoin_l409:
	leal -4(%esp), %esp
	movl %eax,36(%esp)
	movl 32(%esp),%eax
	leal 52(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	call tig_concat
Ljoin_l406:
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_getchar
Ljoin_l403:
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_306
Ljoin_l426:
	jmp Lloop_body_298
Lloop_body_298:
	call tig_getchar
Ljoin_l425:
	leal 48(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Ljoin_l445
Ljoin_l445:
	movl 16(%esp),%ebx
	jmp Lloop_start_297
.section .pcmap_data
Lstackdata_l447:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l438
.long Lframe_l448
.section .pcmap_data
Lframe_l448:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l435
.long Lframe_l449
.section .pcmap_data
Lframe_l449:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
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
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l430
.long Lframe_l450
.section .pcmap_data
Lframe_l450:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l422
.long Lframe_l451
.section .pcmap_data
Lframe_l451:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l417
.long Lframe_l452
.section .pcmap_data
Lframe_l452:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l412
.long Lframe_l453
.section .pcmap_data
Lframe_l453:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l409
.long Lframe_l454
.section .pcmap_data
Lframe_l454:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l406
.long Lframe_l455
.section .pcmap_data
Lframe_l455:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l403
.long Lframe_l456
.section .pcmap_data
Lframe_l456:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l425
.long Lframe_l457
.section .pcmap_data
Lframe_l457:
.long 0xffffffd0
.long 0x80000004
.long 0xffffffdc
.long Lstackdata_l447
.long 0x80000008
.long 0x80000010
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xffffffe0
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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
	leal -28(%esp), %esp
	leal 28(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l460:
Lproc_body_start_l459:
	leal 28(%esp), %ecx
	movl %eax,4(%esp)
	movl $-8,%eax
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	leal Lgbl_289,%eax
	leal 28(%esp), %ecx
	movl %edx,8(%esp)
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_50
Ljoin_l478:
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Lloop_start_312
Lloop_start_312:
	leal Cmm.global_area,%eax
	movl (%eax),%ecx
	leal 28(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	leal 28(%esp), %edx
	movl %ebx,12(%esp)
	movl $-28,%ebx
	addl %ebx,%edx
	movl (%eax),%ebx
	movl %ebx,(%edx)
	movl %ecx,16(%esp)
	call tig_size
Ljoin_l475:
	leal Cmm.global_area,%ecx
	movl 16(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jg Ljoin_l471
Ljoin_l472:
	jmp Lloop_end_309
Lloop_end_309:
	leal -4(%esp), %esp
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 32(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal 32(%esp), %ecx
	movl $-32,%ebx
	addl %ebx,%ecx
	movl (%edx),%ebx
	movl %ebx,(%ecx)
	call tprint_48
Ljoin_l464:
	leal 28(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	leal 28(%esp), %esp
	ret
Ljoin_l471:
	jmp Lloop_body_313
Lloop_body_313:
	leal -4(%esp), %esp
	leal 32(%esp), %ebx
	movl $-8,%ecx
	addl %ecx,%ebx
	movl (%ebx),%eax
	leal 32(%esp), %ebx
	movl $-8,%ecx
	addl %ecx,%ebx
	movl $4,%ecx
	addl %ecx,%ebx
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%ebx),%edx
	movl %edx,(%ecx)
	call add_word_47
Ljoin_l470:
	leal 28(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	call getword_50
Ljoin_l467:
	leal 28(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	jmp Ljoin_l482
Ljoin_l482:
	movl 12(%esp),%ebx
	jmp Lloop_start_312
.section .pcmap_data
Lstackdata_l484:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l478
.long Lframe_l485
.section .pcmap_data
Lframe_l485:
.long 0xffffffe4
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l484
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
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
.long 0
.long 0
.long 0x80000000
.long 0
.long main_51_gc_data
.section .pcmap
.long Ljoin_l475
.long Lframe_l486
.section .pcmap_data
Lframe_l486:
.long 0xffffffe4
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l484
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
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
.long 0
.long 0xfffffff4
.long 0x80000000
.long 0
.long main_51_gc_data
.section .pcmap
.long Ljoin_l464
.long Lframe_l487
.section .pcmap_data
Lframe_l487:
.long 0xffffffe4
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l484
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
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
.long 0
.long 0
.long 0x80000000
.long 0
.long main_51_gc_data
.section .pcmap
.long Ljoin_l470
.long Lframe_l488
.section .pcmap_data
Lframe_l488:
.long 0xffffffe4
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l484
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
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
.long 0
.long 0
.long 0x80000000
.long 0
.long main_51_gc_data
.section .pcmap
.long Ljoin_l467
.long Lframe_l489
.section .pcmap_data
Lframe_l489:
.long 0xffffffe4
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l484
.long 0x80000008
.long 0x80000006
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0xfffffff0
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
.long 0
.long 0
.long 0x80000000
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
	leal -24(%esp), %esp
	leal 24(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l492:
Lproc_body_start_l491:
	leal 24(%esp), %ecx
	movl %eax,(%esp)
	movl $-16,%eax
	addl %eax,%ecx
	movl (%esp),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 24(%esp), %ecx
	movl %edx,4(%esp)
	movl $-16,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1,%eax
	leal 24(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl $12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 24(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	call main_51
Ljoin_l496:
	movl $0,%eax
	leal 24(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l501:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l496
.long Lframe_l502
.section .pcmap_data
Lframe_l502:
.long 0xffffffe8
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l501
.long 0x80000008
.long 0x80000002
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.long 0x80000000
.long 0
.long tiger_main_gc_data
.section .text
.section .data
tiger_main_gc_data:
.long 4
.long 1
.long 0
.long 0
.long 1
.long 2
.long 1
.long 0

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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l13:
Lproc_body_start_l12:
	movl %edi,4(%esp)
	leal 32(%esp), %edi
	movl %edi,8(%esp)
	movl $-8,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 32(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_52,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	movl %edx,20(%esp)
	call tig_print
Ljoin_l26:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 32(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_print
Ljoin_l23:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_57,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l20:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl $1,%esi
	leal 32(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_exit
Ljoin_l17:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 36(%esp), %esp
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
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l32
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
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
.long 0
.long 0x4000000b
.long 0x80000000
.long 0
.long err_43_gc_data
.section .pcmap
.long Ljoin_l23
.long Lframe_l34
.section .pcmap_data
Lframe_l34:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l32
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
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
.long 0x80000000
.long 0
.long err_43_gc_data
.section .pcmap
.long Ljoin_l20
.long Lframe_l35
.section .pcmap_data
Lframe_l35:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l32
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
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
.long 0x80000000
.long 0
.long err_43_gc_data
.section .pcmap
.long Ljoin_l17
.long Lframe_l36
.section .pcmap_data
Lframe_l36:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l32
.long 0x80000008
.long 0x8000000b
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xffffffe4
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
	leal -504(%esp), %esp
	leal 504(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 504(%esp), %ecx
	movl %edx,(%esp)
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 504(%esp), %ecx
	movl %edx,4(%esp)
	movl $12,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 504(%esp), %ecx
	movl %edx,8(%esp)
	movl $16,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 504(%esp), %ecx
	movl %edx,12(%esp)
	movl $20,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	leal 504(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l39:
Lproc_body_start_l38:
	movl %edx,16(%esp)
	leal 504(%esp), %edx
	movl %edx,20(%esp)
	movl $-24,%edx
	movl %edx,24(%esp)
	movl 20(%esp),%edx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%esp),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	je Ljoin_l144
Ljoin_l145:
	jmp LifFalse_65
LifFalse_65:
	movl $0,%edx
	jmp LifEnd_66
Ljoin_l144:
	jmp LifTrue_64
LifTrue_64:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l150
Ljoin_l151:
	movl $0,%edx
	jmp Ljoin_l149
Ljoin_l150:
	movl $-1,%edx
	jmp Ljoin_l149
Ljoin_l149:
	jmp LifEnd_66
LifEnd_66:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l142
Ljoin_l143:
	jmp LifFalse_69
LifFalse_69:
	movl $0,%edx
	jmp LifEnd_70
Ljoin_l142:
	jmp LifTrue_68
LifTrue_68:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l153
Ljoin_l154:
	movl $0,%edx
	jmp Ljoin_l152
Ljoin_l153:
	movl $-1,%edx
	jmp Ljoin_l152
Ljoin_l152:
	jmp LifEnd_70
LifEnd_70:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l140
Ljoin_l141:
	jmp LifFalse_73
LifFalse_73:
	movl $0,%edx
	jmp LifEnd_74
Ljoin_l140:
	jmp LifTrue_72
LifTrue_72:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 504(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je Ljoin_l156
Ljoin_l157:
	movl $0,%edx
	jmp Ljoin_l155
Ljoin_l156:
	movl $-1,%edx
	jmp Ljoin_l155
Ljoin_l155:
	jmp LifEnd_74
LifEnd_74:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l138
Ljoin_l139:
	jmp LifFalse_77
LifFalse_77:
	movl $0,%edx
	jmp LifEnd_78
Ljoin_l138:
	jmp LifTrue_76
LifTrue_76:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 504(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je Ljoin_l159
Ljoin_l160:
	movl $0,%edx
	jmp Ljoin_l158
Ljoin_l159:
	movl $-1,%edx
	jmp Ljoin_l158
Ljoin_l158:
	jmp LifEnd_78
LifEnd_78:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l136
Ljoin_l137:
	jmp LifFalse_194
LifFalse_194:
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	je Ljoin_l119
Ljoin_l120:
	jmp LifFalse_94
LifFalse_94:
	movl $0,%edx
	jmp LifEnd_95
Ljoin_l119:
	jmp LifTrue_93
LifTrue_93:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l195
Ljoin_l196:
	movl $0,%edx
	jmp Ljoin_l194
Ljoin_l195:
	movl $-1,%edx
	jmp Ljoin_l194
Ljoin_l194:
	jmp LifEnd_95
LifEnd_95:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l117
Ljoin_l118:
	jmp LifFalse_98
LifFalse_98:
	movl $0,%edx
	jmp LifEnd_99
Ljoin_l117:
	jmp LifTrue_97
LifTrue_97:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l192
Ljoin_l193:
	movl $0,%edx
	jmp Ljoin_l191
Ljoin_l192:
	movl $-1,%edx
	jmp Ljoin_l191
Ljoin_l191:
	jmp LifEnd_99
LifEnd_99:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l115
Ljoin_l116:
	jmp LifFalse_102
LifFalse_102:
	movl $0,%edx
	jmp LifEnd_103
Ljoin_l115:
	jmp LifTrue_101
LifTrue_101:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 504(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je Ljoin_l189
Ljoin_l190:
	movl $0,%edx
	jmp Ljoin_l188
Ljoin_l189:
	movl $-1,%edx
	jmp Ljoin_l188
Ljoin_l188:
	jmp LifEnd_103
LifEnd_103:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l113
Ljoin_l114:
	jmp LifFalse_106
LifFalse_106:
	movl $0,%edx
	jmp LifEnd_107
Ljoin_l113:
	jmp LifTrue_105
LifTrue_105:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 504(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je Ljoin_l186
Ljoin_l187:
	movl $0,%edx
	jmp Ljoin_l185
Ljoin_l186:
	movl $-1,%edx
	jmp Ljoin_l185
Ljoin_l185:
	jmp LifEnd_107
LifEnd_107:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l111
Ljoin_l112:
	jmp LifFalse_190
LifFalse_190:
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	je Ljoin_l94
Ljoin_l95:
	jmp LifFalse_122
LifFalse_122:
	movl $0,%edx
	jmp LifEnd_123
Ljoin_l94:
	jmp LifTrue_121
LifTrue_121:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l183
Ljoin_l184:
	movl $0,%edx
	jmp Ljoin_l182
Ljoin_l183:
	movl $-1,%edx
	jmp Ljoin_l182
Ljoin_l182:
	jmp LifEnd_123
LifEnd_123:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l92
Ljoin_l93:
	jmp LifFalse_126
LifFalse_126:
	movl $0,%edx
	jmp LifEnd_127
Ljoin_l92:
	jmp LifTrue_125
LifTrue_125:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l180
Ljoin_l181:
	movl $0,%edx
	jmp Ljoin_l179
Ljoin_l180:
	movl $-1,%edx
	jmp Ljoin_l179
Ljoin_l179:
	jmp LifEnd_127
LifEnd_127:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l90
Ljoin_l91:
	jmp LifFalse_130
LifFalse_130:
	movl $0,%edx
	jmp LifEnd_131
Ljoin_l90:
	jmp LifTrue_129
LifTrue_129:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 504(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je Ljoin_l177
Ljoin_l178:
	movl $0,%edx
	jmp Ljoin_l176
Ljoin_l177:
	movl $-1,%edx
	jmp Ljoin_l176
Ljoin_l176:
	jmp LifEnd_131
LifEnd_131:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l88
Ljoin_l89:
	jmp LifFalse_134
LifFalse_134:
	movl $0,%edx
	jmp LifEnd_135
Ljoin_l88:
	jmp LifTrue_133
LifTrue_133:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $16,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 504(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je Ljoin_l174
Ljoin_l175:
	movl $0,%edx
	jmp Ljoin_l173
Ljoin_l174:
	movl $-1,%edx
	jmp Ljoin_l173
Ljoin_l173:
	jmp LifEnd_135
LifEnd_135:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l86
Ljoin_l87:
	jmp LifFalse_186
LifFalse_186:
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $8,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	je Ljoin_l69
Ljoin_l70:
	jmp LifFalse_150
LifFalse_150:
	movl $0,%edx
	jmp LifEnd_151
Ljoin_l69:
	jmp LifTrue_149
LifTrue_149:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l171
Ljoin_l172:
	movl $0,%edx
	jmp Ljoin_l170
Ljoin_l171:
	movl $-1,%edx
	jmp Ljoin_l170
Ljoin_l170:
	jmp LifEnd_151
LifEnd_151:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l67
Ljoin_l68:
	jmp LifFalse_154
LifFalse_154:
	movl $0,%edx
	jmp LifEnd_155
Ljoin_l67:
	jmp LifTrue_153
LifTrue_153:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $0,%eax
	cmpl %eax,%ecx
	jne Ljoin_l168
Ljoin_l169:
	movl $0,%edx
	jmp Ljoin_l167
Ljoin_l168:
	movl $-1,%edx
	jmp Ljoin_l167
Ljoin_l167:
	jmp LifEnd_155
LifEnd_155:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l65
Ljoin_l66:
	jmp LifFalse_158
LifFalse_158:
	movl $0,%edx
	jmp LifEnd_159
Ljoin_l65:
	jmp LifTrue_157
LifTrue_157:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 504(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je Ljoin_l165
Ljoin_l166:
	movl $0,%edx
	jmp Ljoin_l164
Ljoin_l165:
	movl $-1,%edx
	jmp Ljoin_l164
Ljoin_l164:
	jmp LifEnd_159
LifEnd_159:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l63
Ljoin_l64:
	jmp LifFalse_162
LifFalse_162:
	movl $0,%edx
	jmp LifEnd_163
Ljoin_l63:
	jmp LifTrue_161
LifTrue_161:
	leal 504(%esp), %ecx
	movl $-24,%eax
	addl %eax,%ecx
	movl $20,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl $12,%eax
	addl %eax,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	leal 504(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	movl (%eax),%eax
	movl $12,%edx
	addl %edx,%eax
	movl (%eax),%eax
	cmpl %eax,%ecx
	je Ljoin_l162
Ljoin_l163:
	movl $0,%edx
	jmp Ljoin_l161
Ljoin_l162:
	movl $-1,%edx
	jmp Ljoin_l161
Ljoin_l161:
	jmp LifEnd_163
LifEnd_163:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l61
Ljoin_l62:
	jmp LifFalse_182
LifFalse_182:
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
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
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %edx,32(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %edx,36(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 36(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %edx,40(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 40(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %edx,44(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	jmp LifEnd_183
Ljoin_l61:
	jmp LifTrue_181
LifTrue_181:
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
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
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %edx,48(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 48(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %edx,52(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jg Ljoin_l54
Ljoin_l55:
	jmp Lalc_167
Ljoin_l54:
	jmp Lalc_gc_166
Lalc_gc_166:
	movl %eax,56(%esp)
	call tig_call_gc
Ljoin_l53:
	movl 56(%esp),%eax
	jmp Lalc_167
Lalc_167:
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,60(%esp)
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl 60(%esp),%edx
	leal 504(%esp), %ecx
	movl %edx,64(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 64(%esp),%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl %edx,68(%esp)
	movl $-24,%edx
	movl %edx,72(%esp)
	movl 68(%esp),%edx
	movl 72(%esp),%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %ecx,80(%esp)
	movl %edx,76(%esp)
	movl 64(%esp),%edx
	movl %edx,%ecx
	movl 80(%esp),%edx
	addl %edx,%ecx
	movl 76(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %ecx,88(%esp)
	movl %edx,84(%esp)
	movl 64(%esp),%edx
	movl %edx,%ecx
	movl 88(%esp),%edx
	addl %edx,%ecx
	movl 84(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %ecx,96(%esp)
	movl %edx,92(%esp)
	movl 64(%esp),%edx
	movl %edx,%ecx
	movl 96(%esp),%edx
	addl %edx,%ecx
	movl 92(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %ecx,104(%esp)
	movl %edx,100(%esp)
	movl 64(%esp),%edx
	movl %edx,%ecx
	movl 104(%esp),%edx
	addl %edx,%ecx
	movl 100(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $12,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl 64(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jg Ljoin_l49
Ljoin_l50:
	jmp Lalc_171
Ljoin_l49:
	jmp Lalc_gc_170
Lalc_gc_170:
	movl %eax,56(%esp)
	call tig_call_gc
Ljoin_l48:
	movl 56(%esp),%eax
	jmp Lalc_171
Lalc_171:
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,108(%esp)
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl 108(%esp),%edx
	leal 504(%esp), %ecx
	movl %edx,112(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 112(%esp),%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl %edx,116(%esp)
	movl $-24,%edx
	movl %edx,120(%esp)
	movl 116(%esp),%edx
	movl 120(%esp),%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %ecx,128(%esp)
	movl %edx,124(%esp)
	movl 112(%esp),%edx
	movl %edx,%ecx
	movl 128(%esp),%edx
	addl %edx,%ecx
	movl 124(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %ecx,136(%esp)
	movl %edx,132(%esp)
	movl 112(%esp),%edx
	movl %edx,%ecx
	movl 136(%esp),%edx
	addl %edx,%ecx
	movl 132(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %ecx,144(%esp)
	movl %edx,140(%esp)
	movl 112(%esp),%edx
	movl %edx,%ecx
	movl 144(%esp),%edx
	addl %edx,%ecx
	movl 140(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %ecx,152(%esp)
	movl %edx,148(%esp)
	movl 112(%esp),%edx
	movl %edx,%ecx
	movl 152(%esp),%edx
	addl %edx,%ecx
	movl 148(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $16,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl 112(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_183
LifEnd_183:
	jmp LifEnd_187
Ljoin_l86:
	jmp LifTrue_185
LifTrue_185:
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
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
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %edx,156(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 156(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %edx,160(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 160(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jg Ljoin_l79
Ljoin_l80:
	jmp Lalc_139
Ljoin_l79:
	jmp Lalc_gc_138
Lalc_gc_138:
	movl %eax,164(%esp)
	call tig_call_gc
Ljoin_l78:
	movl 164(%esp),%eax
	jmp Lalc_139
Lalc_139:
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,168(%esp)
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl 168(%esp),%edx
	leal 504(%esp), %ecx
	movl %edx,172(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 172(%esp),%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl %edx,176(%esp)
	movl $-24,%edx
	movl %edx,180(%esp)
	movl 176(%esp),%edx
	movl 180(%esp),%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %ecx,188(%esp)
	movl %edx,184(%esp)
	movl 172(%esp),%edx
	movl %edx,%ecx
	movl 188(%esp),%edx
	addl %edx,%ecx
	movl 184(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %ecx,196(%esp)
	movl %edx,192(%esp)
	movl 172(%esp),%edx
	movl %edx,%ecx
	movl 196(%esp),%edx
	addl %edx,%ecx
	movl 192(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %ecx,204(%esp)
	movl %edx,200(%esp)
	movl 172(%esp),%edx
	movl %edx,%ecx
	movl 204(%esp),%edx
	addl %edx,%ecx
	movl 200(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %ecx,212(%esp)
	movl %edx,208(%esp)
	movl 172(%esp),%edx
	movl %edx,%ecx
	movl 212(%esp),%edx
	addl %edx,%ecx
	movl 208(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $12,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl 172(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jg Ljoin_l74
Ljoin_l75:
	jmp Lalc_143
Ljoin_l74:
	jmp Lalc_gc_142
Lalc_gc_142:
	movl %eax,164(%esp)
	call tig_call_gc
Ljoin_l73:
	movl 164(%esp),%eax
	jmp Lalc_143
Lalc_143:
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,216(%esp)
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl 216(%esp),%edx
	leal 504(%esp), %ecx
	movl %edx,220(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 220(%esp),%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl %edx,224(%esp)
	movl $-24,%edx
	movl %edx,228(%esp)
	movl 224(%esp),%edx
	movl 228(%esp),%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %ecx,236(%esp)
	movl %edx,232(%esp)
	movl 220(%esp),%edx
	movl %edx,%ecx
	movl 236(%esp),%edx
	addl %edx,%ecx
	movl 232(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %ecx,244(%esp)
	movl %edx,240(%esp)
	movl 220(%esp),%edx
	movl %edx,%ecx
	movl 244(%esp),%edx
	addl %edx,%ecx
	movl 240(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %ecx,252(%esp)
	movl %edx,248(%esp)
	movl 220(%esp),%edx
	movl %edx,%ecx
	movl 252(%esp),%edx
	addl %edx,%ecx
	movl 248(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %ecx,260(%esp)
	movl %edx,256(%esp)
	movl 220(%esp),%edx
	movl %edx,%ecx
	movl 260(%esp),%edx
	addl %edx,%ecx
	movl 256(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $16,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl 220(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_187
LifEnd_187:
	jmp LifEnd_191
Ljoin_l111:
	jmp LifTrue_189
LifTrue_189:
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
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
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %edx,264(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 264(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %edx,268(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 268(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jg Ljoin_l104
Ljoin_l105:
	jmp Lalc_111
Ljoin_l104:
	jmp Lalc_gc_110
Lalc_gc_110:
	movl %eax,272(%esp)
	call tig_call_gc
Ljoin_l103:
	movl 272(%esp),%eax
	jmp Lalc_111
Lalc_111:
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,276(%esp)
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl 276(%esp),%edx
	leal 504(%esp), %ecx
	movl %edx,280(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 280(%esp),%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl %edx,284(%esp)
	movl $-24,%edx
	movl %edx,288(%esp)
	movl 284(%esp),%edx
	movl 288(%esp),%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %ecx,296(%esp)
	movl %edx,292(%esp)
	movl 280(%esp),%edx
	movl %edx,%ecx
	movl 296(%esp),%edx
	addl %edx,%ecx
	movl 292(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %ecx,304(%esp)
	movl %edx,300(%esp)
	movl 280(%esp),%edx
	movl %edx,%ecx
	movl 304(%esp),%edx
	addl %edx,%ecx
	movl 300(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %ecx,312(%esp)
	movl %edx,308(%esp)
	movl 280(%esp),%edx
	movl %edx,%ecx
	movl 312(%esp),%edx
	addl %edx,%ecx
	movl 308(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %ecx,320(%esp)
	movl %edx,316(%esp)
	movl 280(%esp),%edx
	movl %edx,%ecx
	movl 320(%esp),%edx
	addl %edx,%ecx
	movl 316(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $12,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl 280(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jg Ljoin_l99
Ljoin_l100:
	jmp Lalc_115
Ljoin_l99:
	jmp Lalc_gc_114
Lalc_gc_114:
	movl %eax,272(%esp)
	call tig_call_gc
Ljoin_l98:
	movl 272(%esp),%eax
	jmp Lalc_115
Lalc_115:
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,324(%esp)
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl 324(%esp),%edx
	leal 504(%esp), %ecx
	movl %edx,328(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 328(%esp),%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl %edx,332(%esp)
	movl $-24,%edx
	movl %edx,336(%esp)
	movl 332(%esp),%edx
	movl 336(%esp),%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %ecx,344(%esp)
	movl %edx,340(%esp)
	movl 328(%esp),%edx
	movl %edx,%ecx
	movl 344(%esp),%edx
	addl %edx,%ecx
	movl 340(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %ecx,352(%esp)
	movl %edx,348(%esp)
	movl 328(%esp),%edx
	movl %edx,%ecx
	movl 352(%esp),%edx
	addl %edx,%ecx
	movl 348(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %ecx,360(%esp)
	movl %edx,356(%esp)
	movl 328(%esp),%edx
	movl %edx,%ecx
	movl 360(%esp),%edx
	addl %edx,%ecx
	movl 356(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %ecx,368(%esp)
	movl %edx,364(%esp)
	movl 328(%esp),%edx
	movl %edx,%ecx
	movl 368(%esp),%edx
	addl %edx,%ecx
	movl 364(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $16,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl 328(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_191
LifEnd_191:
	jmp LifEnd_195
Ljoin_l136:
	jmp LifTrue_193
LifTrue_193:
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
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
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %edx,372(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 372(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %edx,376(%esp)
	movl %eax,%edx
	addl %ecx,%edx
	movl 376(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jg Ljoin_l129
Ljoin_l130:
	jmp Lalc_82
Ljoin_l129:
	jmp Lalc_gc_81
Lalc_gc_81:
	movl %eax,380(%esp)
	call tig_call_gc
Ljoin_l128:
	movl 380(%esp),%eax
	jmp Lalc_82
Lalc_82:
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,384(%esp)
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl 384(%esp),%edx
	leal 504(%esp), %ecx
	movl %edx,388(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 388(%esp),%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl %edx,392(%esp)
	movl $-24,%edx
	movl %edx,396(%esp)
	movl 392(%esp),%edx
	movl 396(%esp),%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %ecx,404(%esp)
	movl %edx,400(%esp)
	movl 388(%esp),%edx
	movl %edx,%ecx
	movl 404(%esp),%edx
	addl %edx,%ecx
	movl 400(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %ecx,412(%esp)
	movl %edx,408(%esp)
	movl 388(%esp),%edx
	movl %edx,%ecx
	movl 412(%esp),%edx
	addl %edx,%ecx
	movl 408(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %ecx,420(%esp)
	movl %edx,416(%esp)
	movl 388(%esp),%edx
	movl %edx,%ecx
	movl 420(%esp),%edx
	addl %edx,%ecx
	movl 416(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %ecx,428(%esp)
	movl %edx,424(%esp)
	movl 388(%esp),%edx
	movl %edx,%ecx
	movl 428(%esp),%edx
	addl %edx,%ecx
	movl 424(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $12,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl 388(%esp),%edx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
	jg Ljoin_l124
Ljoin_l125:
	jmp Lalc_87
Ljoin_l124:
	jmp Lalc_gc_86
Lalc_gc_86:
	movl %eax,380(%esp)
	call tig_call_gc
Ljoin_l123:
	movl 380(%esp),%eax
	jmp Lalc_87
Lalc_87:
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,432(%esp)
	movl $24,%edx
	addl %edx,%ecx
	leal Cmm.global_area,%edx
	movl %ecx,(%edx)
	movl 432(%esp),%edx
	leal 504(%esp), %ecx
	movl %edx,436(%esp)
	movl $-24,%edx
	addl %edx,%ecx
	movl (%ecx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl 436(%esp),%ecx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl %edx,440(%esp)
	movl $-24,%edx
	movl %edx,444(%esp)
	movl 440(%esp),%edx
	movl 444(%esp),%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %ecx,452(%esp)
	movl %edx,448(%esp)
	movl 436(%esp),%edx
	movl %edx,%ecx
	movl 452(%esp),%edx
	addl %edx,%ecx
	movl 448(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %ecx,460(%esp)
	movl %edx,456(%esp)
	movl 436(%esp),%edx
	movl %edx,%ecx
	movl 460(%esp),%edx
	addl %edx,%ecx
	movl 456(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %ecx,468(%esp)
	movl %edx,464(%esp)
	movl 436(%esp),%edx
	movl %edx,%ecx
	movl 468(%esp),%edx
	addl %edx,%ecx
	movl 464(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 504(%esp), %edx
	movl $-24,%ecx
	addl %ecx,%edx
	movl $20,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %ecx,476(%esp)
	movl %edx,472(%esp)
	movl 436(%esp),%edx
	movl %edx,%ecx
	movl 476(%esp),%edx
	addl %edx,%ecx
	movl 472(%esp),%edx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $16,%edx
	movl %eax,%ecx
	addl %edx,%ecx
	movl 436(%esp),%edx
	movl %edx,(%ecx)
	jmp LifEnd_195
LifEnd_195:
	leal 504(%esp), %edx
	movl $20,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	leal 524(%esp), %esp
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xfffffe40
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xfffffe40
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xfffffeac
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xfffffeac
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xffffff18
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xffffff18
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xffffff84
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long 0xfffffe08
.long 0x80000018
.long 0xfffffe24
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
.long 0xffffff84
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
	leal -100(%esp), %esp
	leal 100(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 100(%esp), %edx
	movl %eax,8(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 100(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l215:
Lproc_body_start_l214:
	movl %edi,12(%esp)
	leal 100(%esp), %edi
	movl %edi,16(%esp)
	movl $-12,%edi
	movl %edi,20(%esp)
	movl 16(%esp),%edi
	movl %esi,24(%esp)
	movl 20(%esp),%esi
	addl %esi,%edi
	movl 8(%esp),%esi
	movl %esi,(%edi)
	leal 100(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal 100(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 100(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl $0,%esi
	cmpl %esi,%edi
	je Ljoin_l257
Ljoin_l258:
	jmp LifFalse_229
LifFalse_229:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 100(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 100(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 100(%esp), %ecx
	movl %edi,28(%esp)
	movl $-96,%edi
	addl %edi,%ecx
	movl (%eax),%edi
	movl %edi,(%ecx)
	leal 100(%esp), %edi
	movl $-100,%eax
	addl %eax,%edi
	movl %esi,(%edi)
	movl %edx,32(%esp)
	call tig_compare_str
Ljoin_l251:
	leal Cmm.global_area,%edi
	movl 28(%esp),%esi
	movl %esi,(%edi)
	movl $0,%edi
	cmpl %edi,%eax
	jl Ljoin_l247
Ljoin_l248:
	jmp LifFalse_225
LifFalse_225:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 100(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 100(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 100(%esp), %ecx
	movl $-96,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 100(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_compare_str
Ljoin_l240:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	cmpl %edi,%eax
	jg Ljoin_l236
Ljoin_l237:
	jmp LifFalse_221
LifFalse_221:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 100(%esp), %esi
	movl $-12,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	movl (%esi),%esi
	leal 100(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 100(%esp), %ecx
	movl $-96,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 100(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_compare_str
Ljoin_l229:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l225
Ljoin_l226:
	jmp LifFalse_213
LifFalse_213:
	movl $0,%edx
	jmp LifEnd_214
Ljoin_l225:
	jmp LifTrue_212
LifTrue_212:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_208,%esi
	leal 100(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_print
Ljoin_l224:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	jmp LifEnd_214
LifEnd_214:
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
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
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	leal 100(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 100(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $1,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl %edx,(%edi)
	leal 100(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl (%edx),%edx
	movl %edx,(%edi)
	leal 100(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl (%edx),%edx
	movl %edx,(%edi)
	leal 100(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl (%edx),%edx
	movl %edx,(%edi)
	jmp LifEnd_222
Ljoin_l236:
	jmp LifTrue_220
LifTrue_220:
	leal 100(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 100(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	leal 100(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $4,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	leal 100(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 100(%esp), %edx
	movl %edi,36(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl $12,%edx
	addl %edx,%edi
	movl (%edi),%edi
	leal -8(%esp), %esp
	leal 108(%esp), %edx
	movl %edi,48(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl %eax,52(%esp)
	movl %edi,%eax
	leal 108(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edi
	leal 108(%esp), %edx
	movl %edi,56(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl $16,%edx
	addl %edx,%edi
	leal 108(%esp), %edx
	movl %edi,60(%esp)
	movl $-104,%edi
	addl %edi,%edx
	movl 60(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%edx)
	leal 108(%esp), %edi
	movl $-108,%edx
	addl %edx,%edi
	movl 56(%esp),%edx
	movl %edx,(%edi)
	movl %ecx,64(%esp)
	call ins_45
Ljoin_l235:
	leal -20(%esp), %esp
	movl %eax,80(%esp)
	movl 64(%esp),%eax
	leal 120(%esp), %edi
	movl $-120,%ecx
	addl %ecx,%edi
	movl 56(%esp),%ecx
	movl %ecx,(%edi)
	leal 120(%esp), %edi
	movl $-116,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal 120(%esp), %edi
	movl $-112,%esi
	addl %esi,%edi
	movl 76(%esp),%esi
	movl %esi,(%edi)
	leal 120(%esp), %edi
	movl $-108,%esi
	addl %esi,%edi
	movl 60(%esp),%esi
	movl %esi,(%edi)
	leal 120(%esp), %edi
	movl $-104,%esi
	addl %esi,%edi
	movl 80(%esp),%esi
	movl %esi,(%edi)
	call balance_44
Ljoin_l232:
	jmp LifEnd_222
LifEnd_222:
	jmp LifEnd_226
Ljoin_l247:
	jmp LifTrue_224
LifTrue_224:
	leal 100(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 100(%esp), %edi
	movl $-12,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	leal 100(%esp), %esi
	movl $-12,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $4,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	leal 100(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal -8(%esp), %esp
	leal 108(%esp), %edx
	movl %edi,72(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl %eax,76(%esp)
	movl %edi,%eax
	leal 108(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl (%edi),%edi
	leal 108(%esp), %edx
	movl %edi,80(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl $12,%edx
	addl %edx,%edi
	leal 108(%esp), %edx
	movl %edi,84(%esp)
	movl $-104,%edi
	addl %edi,%edx
	movl 84(%esp),%edi
	movl (%edi),%edi
	movl %edi,(%edx)
	leal 108(%esp), %edi
	movl $-108,%edx
	addl %edx,%edi
	movl 80(%esp),%edx
	movl %edx,(%edi)
	movl %ecx,88(%esp)
	call ins_45
Ljoin_l246:
	leal -20(%esp), %esp
	movl %eax,104(%esp)
	movl 88(%esp),%eax
	leal 120(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl $16,%ecx
	addl %ecx,%edi
	leal 120(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 120(%esp), %edi
	movl $-120,%ecx
	addl %ecx,%edi
	movl 84(%esp),%ecx
	movl %ecx,(%edi)
	leal 120(%esp), %edi
	movl $-116,%ecx
	addl %ecx,%edi
	movl %esi,(%edi)
	leal 120(%esp), %edi
	movl $-112,%esi
	addl %esi,%edi
	movl 100(%esp),%esi
	movl %esi,(%edi)
	leal 120(%esp), %edi
	movl $-108,%esi
	addl %esi,%edi
	movl 104(%esp),%esi
	movl %esi,(%edi)
	call balance_44
Ljoin_l243:
	jmp LifEnd_226
LifEnd_226:
	movl 32(%esp),%edx
	jmp LifEnd_230
Ljoin_l257:
	jmp LifTrue_228
LifTrue_228:
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edi
	addl %edi,%ecx
	leal space_end,%edi
	movl (%edi),%edi
	cmpl %edi,%ecx
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
	movl $24,%ecx
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	movl %ecx,(%edi)
	leal Cmm.global_area,%ecx
	movl (%ecx),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl $24,%edi
	addl %edi,%ecx
	leal Cmm.global_area,%edi
	movl %ecx,(%edi)
	leal 100(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl $12,%edi
	addl %edi,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl $1,%ecx
	movl $4,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl %ecx,(%esi)
	leal 100(%esp), %ecx
	movl $-12,%edi
	addl %edi,%ecx
	movl $4,%edi
	addl %edi,%ecx
	movl $8,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl (%ecx),%ecx
	movl %ecx,(%esi)
	movl $0,%ecx
	movl $12,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl %ecx,(%esi)
	movl $0,%ecx
	movl $16,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl %ecx,(%esi)
	jmp LifEnd_230
LifEnd_230:
	leal 100(%esp), %ecx
	movl $8,%edi
	addl %edi,%ecx
	movl %edx,(%ecx)
	movl 24(%esp),%esi
	movl 12(%esp),%edi
	leal 108(%esp), %esp
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
.long 0xffffff9c
.long 0x8000000c
.long 0xffffffbc
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
.long 0xffffffb4
.long 0x4000000b
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
.long 0xffffff9c
.long 0x8000000c
.long 0xffffffbc
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
.long 0xffffffb4
.long 0x4000000b
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
.long 0x4000000b
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
.long 0xffffff9c
.long 0x8000000c
.long 0xffffffbc
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
.long 0xffffffb4
.long 0x4000000b
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
.long 0x4000000b
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
.long 0xffffff9c
.long 0x8000000c
.long 0xffffffbc
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
.long 0xffffffb4
.long 0x4000000b
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
.long 0x4000000b
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
.long 0xffffff9c
.long 0x8000000c
.long 0xffffffbc
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
.long 0xffffffb4
.long 0x4000000b
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
.long 0xffffff9c
.long 0x8000000c
.long 0xffffffbc
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
.long 0xffffffb4
.long 0x4000000b
.long 0xffffffa8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffc8
.long 0xffffffc0
.long 0x4000000a
.long 0xffffffd4
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
.long 0x80000000
.long 0
.long ins_45_gc_data
.section .pcmap
.long Ljoin_l232
.long Lframe_l270
.section .pcmap_data
Lframe_l270:
.long 0xffffff9c
.long 0x8000000c
.long 0xffffffbc
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
.long 0xffffffb4
.long 0x4000000b
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
.long 0xffffff9c
.long 0x8000000c
.long 0xffffffbc
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
.long 0xffffffb4
.long 0x4000000b
.long 0xffffffa8
.long 0
.long 0
.long 0
.long 0xffffffe0
.long 0xffffffdc
.long 0x4000000a
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
.long 0xffffff9c
.long 0x8000000c
.long 0xffffffbc
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
.long 0xffffffb4
.long 0x4000000b
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
.long 0xffffff9c
.long 0x8000000c
.long 0x40000006
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
.long 0xffffffb4
.long 0x4000000b
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
	leal -44(%esp), %esp
	leal 44(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 44(%esp), %edx
	movl %ecx,(%esp)
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 44(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l276:
Lproc_body_start_l275:
	movl %edi,4(%esp)
	leal 44(%esp), %edi
	movl %edi,8(%esp)
	movl $-16,%edi
	movl %edi,12(%esp)
	movl 8(%esp),%edi
	movl %esi,16(%esp)
	movl 12(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%esp),%esi
	movl %esi,(%edi)
	leal 44(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $8,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal -8(%esp), %esp
	leal 52(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 52(%esp), %edi
	movl $-16,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 52(%esp), %esi
	movl $-16,%ecx
	addl %ecx,%esi
	movl $8,%ecx
	addl %ecx,%esi
	leal 52(%esp), %ecx
	movl %edi,28(%esp)
	movl $-48,%edi
	addl %edi,%ecx
	movl (%esi),%edi
	movl %edi,(%ecx)
	leal 52(%esp), %edi
	movl $-52,%esi
	addl %esi,%edi
	movl 28(%esp),%esi
	movl %esi,(%edi)
	movl %edx,32(%esp)
	call ins_45
Ljoin_l285:
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal space_end,%ecx
	movl (%ecx),%ecx
	cmpl %ecx,%edx
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
	movl $24,%edx
	leal Cmm.global_area,%ecx
	movl (%ecx),%ecx
	movl %edx,(%ecx)
	leal Cmm.global_area,%edx
	movl (%edx),%eax
	movl $4,%edx
	addl %edx,%eax
	leal Cmm.global_area,%edx
	movl (%edx),%edx
	movl $24,%ecx
	addl %ecx,%edx
	leal Cmm.global_area,%ecx
	movl %edx,(%ecx)
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl %edx,(%eax)
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl (%edx),%edx
	movl %edx,(%edi)
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $8,%ecx
	addl %ecx,%edx
	movl $8,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl (%edx),%edx
	movl %edx,(%edi)
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl (%edx),%edx
	movl %edx,(%edi)
	leal 44(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	movl $12,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $16,%ecx
	addl %ecx,%edx
	movl $16,%ecx
	movl %eax,%edi
	addl %ecx,%edi
	movl (%edx),%edx
	movl %edx,(%edi)
	leal 44(%esp), %edx
	movl $8,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 16(%esp),%esi
	movl 4(%esp),%edi
	leal 52(%esp), %esp
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
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l290
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffd8
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
.long 0xffffffd4
.long 0x8000000c
.long 0xffffffec
.long Lstackdata_l290
.long 0x80000008
.long 0x80000007
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffe4
.long 0x4000000b
.long 0xffffffd8
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
	leal -32(%esp), %esp
	leal 32(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 32(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l295:
Lproc_body_start_l294:
	movl %edi,(%esp)
	leal 32(%esp), %edi
	movl %edi,4(%esp)
	movl $-8,%edi
	movl %edi,8(%esp)
	movl 4(%esp),%edi
	movl %esi,12(%esp)
	movl 8(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 32(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal -8(%esp), %esp
	leal 40(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl (%edi),%eax
	leal 40(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%ecx
	addl %ecx,%esi
	movl (%esi),%esi
	movl $4,%ecx
	addl %ecx,%esi
	leal 40(%esp), %ecx
	movl %edi,24(%esp)
	movl $-36,%edi
	addl %edi,%ecx
	movl (%esi),%edi
	movl %edi,(%ecx)
	leal 40(%esp), %edi
	movl $-40,%esi
	addl %esi,%edi
	movl 24(%esp),%esi
	movl %esi,(%edi)
	movl %edx,28(%esp)
	call insert_46
Ljoin_l299:
	leal 32(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%esi
	movl (%esp),%edi
	leal 36(%esp), %esp
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
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff4
.long Lstackdata_l304
.long 0x80000008
.long 0x80000004
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
	leal -32(%esp), %esp
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	leal 32(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l308:
Lproc_body_start_l307:
	movl %edx,4(%esp)
	leal 32(%esp), %edx
	movl %edx,8(%esp)
	movl $-8,%edx
	movl %edx,12(%esp)
	movl 8(%esp),%edx
	movl %ecx,16(%esp)
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 32(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal 32(%esp), %edx
	movl $-8,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%edx
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l328
Ljoin_l329:
	jmp LifFalse_249
LifFalse_249:
	movl $0,%eax
	movl %edi,20(%esp)
	jmp LifEnd_250
Ljoin_l328:
	jmp LifTrue_248
LifTrue_248:
	leal -4(%esp), %esp
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl $12,%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl %edi,24(%esp)
	movl $-36,%edi
	addl %edi,%edx
	movl (%ecx),%edi
	movl %edi,(%edx)
	call tprint_48
Ljoin_l327:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_printi
Ljoin_l324:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_240,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l321:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 32(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_print
Ljoin_l318:
	leal Cmm.global_area,%eax
	movl %edi,(%eax)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_57,%eax
	leal 32(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_print
Ljoin_l315:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	leal -4(%esp), %esp
	leal 36(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 36(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl $16,%ecx
	addl %ecx,%edi
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call tprint_48
Ljoin_l312:
	jmp LifEnd_250
LifEnd_250:
	leal 32(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%edi
	leal 36(%esp), %esp
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
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x80000000
.long 0
.long tprint_48_gc_data
.section .pcmap
.long Ljoin_l324
.long Lframe_l336
.section .pcmap_data
Lframe_l336:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x4000000b
.long 0x80000000
.long 0
.long tprint_48_gc_data
.section .pcmap
.long Ljoin_l321
.long Lframe_l337
.section .pcmap_data
Lframe_l337:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
.long 0x4000000b
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
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
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
.long 0x80000000
.long 0
.long tprint_48_gc_data
.section .pcmap
.long Ljoin_l315
.long Lframe_l339
.section .pcmap_data
Lframe_l339:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff4
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
.long 0x80000000
.long 0
.long tprint_48_gc_data
.section .pcmap
.long Ljoin_l312
.long Lframe_l340
.section .pcmap_data
Lframe_l340:
.long 0xffffffe0
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l334
.long 0x80000008
.long 0x8000000c
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
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
	leal -40(%esp), %esp
	leal 40(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 40(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l343:
Lproc_body_start_l342:
	movl %edi,8(%esp)
	leal 40(%esp), %edi
	movl %edi,12(%esp)
	movl $-8,%edi
	movl %edi,16(%esp)
	movl 12(%esp),%edi
	movl %esi,20(%esp)
	movl 16(%esp),%esi
	addl %esi,%edi
	movl %eax,(%edi)
	leal 40(%esp), %edi
	movl $-8,%esi
	addl %esi,%edi
	movl $4,%esi
	addl %esi,%edi
	movl %ecx,(%edi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	leal Lgbl_252,%esi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	movl %edx,24(%esp)
	call tig_compare_str
Ljoin_l376:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl $0,%edi
	cmpl %edi,%eax
	jge Ljoin_l372
Ljoin_l373:
	jmp LifFalse_260
LifFalse_260:
	movl $0,%edi
	jmp LifEnd_261
Ljoin_l372:
	jmp LifTrue_259
LifTrue_259:
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal 40(%esp), %edi
	movl $-8,%eax
	addl %eax,%edi
	movl $4,%eax
	addl %eax,%edi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%edi),%edi
	movl %edi,(%eax)
	leal Lgbl_255,%edi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call tig_compare_str
Ljoin_l371:
	leal Cmm.global_area,%ecx
	movl %esi,(%ecx)
	movl $0,%esi
	cmpl %esi,%eax
	jle Ljoin_l384
Ljoin_l385:
	movl $0,%edi
	jmp Ljoin_l383
Ljoin_l384:
	movl $-1,%edi
	jmp Ljoin_l383
Ljoin_l383:
	jmp LifEnd_261
LifEnd_261:
	movl $0,%esi
	cmpl %esi,%edi
	jne Ljoin_l367
Ljoin_l368:
	jmp LifFalse_286
LifFalse_286:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	leal Lgbl_264,%esi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_compare_str
Ljoin_l357:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jge Ljoin_l353
Ljoin_l354:
	jmp LifFalse_276
LifFalse_276:
	movl $0,%edx
	jmp LifEnd_277
Ljoin_l353:
	jmp LifTrue_275
LifTrue_275:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	leal Lgbl_271,%esi
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call tig_compare_str
Ljoin_l352:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%ecx
	cmpl %ecx,%eax
	jle Ljoin_l381
Ljoin_l382:
	movl $0,%edx
	jmp Ljoin_l380
Ljoin_l381:
	movl $-1,%edx
	jmp Ljoin_l380
Ljoin_l380:
	jmp LifEnd_277
LifEnd_277:
	movl $0,%ecx
	cmpl %ecx,%edx
	jne Ljoin_l348
Ljoin_l349:
	jmp LifFalse_282
LifFalse_282:
	movl $0,%eax
	jmp LifEnd_283
Ljoin_l348:
	jmp LifTrue_281
LifTrue_281:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_ord
Ljoin_l347:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	jmp LifEnd_283
LifEnd_283:
	movl %eax,%edi
	jmp LifEnd_287
Ljoin_l367:
	jmp LifTrue_285
LifTrue_285:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 40(%esp), %esi
	movl $-8,%eax
	addl %eax,%esi
	movl $4,%eax
	addl %eax,%esi
	leal 40(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl (%esi),%esi
	movl %esi,(%eax)
	call tig_ord
Ljoin_l366:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal Lgbl_264,%esi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %esi,(%ecx)
	movl %eax,28(%esp)
	call tig_ord
Ljoin_l363:
	leal Cmm.global_area,%esi
	movl %edi,(%esi)
	movl 28(%esp),%edi
	addl %eax,%edi
	leal Cmm.global_area,%esi
	movl (%esi),%esi
	leal Lgbl_252,%eax
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_ord
Ljoin_l360:
	leal Cmm.global_area,%edx
	movl %esi,(%edx)
	subl %eax,%edi
	jmp LifEnd_287
LifEnd_287:
	movl %edi,%eax
	leal 40(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	movl 20(%esp),%esi
	movl 8(%esp),%edi
	leal 44(%esp), %esp
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
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x4000000b
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l371
.long Lframe_l390
.section .pcmap_data
Lframe_l390:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x4000000a
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
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l352
.long Lframe_l392
.section .pcmap_data
Lframe_l392:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x80000000
.long 0
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l347
.long Lframe_l393
.section .pcmap_data
Lframe_l393:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
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
.long 0x4000000b
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
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
.long isletter_49_gc_data
.section .pcmap
.long Ljoin_l360
.long Lframe_l396
.section .pcmap_data
Lframe_l396:
.long 0xffffffd8
.long 0x80000008
.long 0xfffffff0
.long Lstackdata_l388
.long 0x80000008
.long 0x80000019
.long 0x80000002
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0xffffffec
.long 0x4000000b
.long 0xffffffe0
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
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l399:
Lproc_body_start_l398:
	leal 36(%esp), %edx
	movl %edi,8(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Lgbl_289,%edi
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $4,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	leal Lgbl_289,%edi
	leal 36(%esp), %eax
	movl $-12,%edx
	addl %edx,%eax
	movl $8,%edx
	addl %edx,%eax
	movl %edi,(%eax)
	movl %ecx,12(%esp)
	call tig_getchar
Ljoin_l438:
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_297
Lloop_start_297:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Lgbl_289,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l435:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l431
Ljoin_l432:
	jmp LifFalse_295
LifFalse_295:
	movl $0,%edi
	jmp LifEnd_296
Ljoin_l431:
	jmp LifTrue_294
LifTrue_294:
	leal -4(%esp), %esp
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call isletter_49
Ljoin_l430:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l443
Ljoin_l444:
	movl $0,%edi
	jmp Ljoin_l442
Ljoin_l443:
	movl $-1,%edi
	jmp Ljoin_l442
Ljoin_l442:
	jmp LifEnd_296
LifEnd_296:
	movl $0,%eax
	cmpl %eax,%edi
	jne Ljoin_l426
Ljoin_l427:
	jmp Lloop_end_290
Lloop_end_290:
	jmp Lloop_start_306
Lloop_start_306:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal Lgbl_289,%eax
	leal 36(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call tig_compare_str
Ljoin_l422:
	leal Cmm.global_area,%edx
	movl %edi,(%edx)
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l418
Ljoin_l419:
	jmp LifFalse_304
LifFalse_304:
	movl $0,%edx
	movl %edx,%eax
	jmp LifEnd_305
Ljoin_l418:
	jmp LifTrue_303
LifTrue_303:
	leal -4(%esp), %esp
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call isletter_49
Ljoin_l417:
	jmp LifEnd_305
LifEnd_305:
	movl $0,%edx
	cmpl %edx,%eax
	jne Ljoin_l413
Ljoin_l414:
	jmp Lloop_end_299
Lloop_end_299:
	leal 36(%esp), %edx
	movl $-12,%ecx
	addl %ecx,%edx
	movl $4,%ecx
	addl %ecx,%edx
	movl (%edx),%eax
	leal 36(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl 8(%esp),%edi
	leal 36(%esp), %esp
	ret
Ljoin_l413:
	jmp Lloop_body_307
Lloop_body_307:
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal -4(%esp), %esp
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl %eax,20(%esp)
	movl %edi,%eax
	leal 40(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call isletter_49
Ljoin_l412:
	call tig_chr
Ljoin_l409:
	leal -4(%esp), %esp
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	leal 40(%esp), %edi
	movl $-40,%ecx
	addl %ecx,%edi
	movl 24(%esp),%ecx
	movl %ecx,(%edi)
	call tig_concat
Ljoin_l406:
	leal 36(%esp), %edi
	movl $-12,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	call tig_getchar
Ljoin_l403:
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_306
Ljoin_l426:
	jmp Lloop_body_298
Lloop_body_298:
	call tig_getchar
Ljoin_l425:
	leal 36(%esp), %edi
	movl $-12,%edx
	addl %edx,%edi
	movl $8,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_297
.section .pcmap_data
Lstackdata_l446:
.long 1
.long 0xfffffff4
.section .pcmap
.long Ljoin_l438
.long Lframe_l447
.section .pcmap_data
Lframe_l447:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
.long Lframe_l448
.section .pcmap_data
Lframe_l448:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l430
.long Lframe_l449
.section .pcmap_data
Lframe_l449:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
.long Lframe_l450
.section .pcmap_data
Lframe_l450:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0
.long 0
.long 0x80000000
.long 0
.long getword_50_gc_data
.section .pcmap
.long Ljoin_l417
.long Lframe_l451
.section .pcmap_data
Lframe_l451:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
.long Lframe_l452
.section .pcmap_data
Lframe_l452:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
.long 0xffffffe4
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
.long Lframe_l453
.section .pcmap_data
Lframe_l453:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
.long 0xffffffe4
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
.long Lframe_l454
.section .pcmap_data
Lframe_l454:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
.long Lframe_l455
.section .pcmap_data
Lframe_l455:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
.long Lframe_l456
.section .pcmap_data
Lframe_l456:
.long 0xffffffdc
.long 0x80000004
.long 0xffffffe8
.long Lstackdata_l446
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
	leal -20(%esp), %esp
	leal 20(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l459:
Lproc_body_start_l458:
	leal 20(%esp), %edx
	movl %edi,4(%esp)
	movl $-8,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	leal Lgbl_289,%edi
	leal 20(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	leal 20(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl (%edi),%eax
	movl %ecx,8(%esp)
	call getword_50
Ljoin_l477:
	leal 20(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_312
Lloop_start_312:
	leal Cmm.global_area,%edi
	movl (%edi),%edi
	leal 20(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 20(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call tig_size
Ljoin_l474:
	leal Cmm.global_area,%ecx
	movl %edi,(%ecx)
	movl $0,%edi
	cmpl %edi,%eax
	jg Ljoin_l470
Ljoin_l471:
	jmp Lloop_end_309
Lloop_end_309:
	leal -4(%esp), %esp
	leal 24(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 24(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl $4,%ecx
	addl %ecx,%edi
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call tprint_48
Ljoin_l463:
	leal 20(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 20(%esp), %esp
	ret
Ljoin_l470:
	jmp Lloop_body_313
Lloop_body_313:
	leal -4(%esp), %esp
	leal 24(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 24(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl $4,%ecx
	addl %ecx,%edi
	leal 24(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	call add_word_47
Ljoin_l469:
	leal 20(%esp), %edi
	movl $-8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	call getword_50
Ljoin_l466:
	leal 20(%esp), %edi
	movl $-8,%edx
	addl %edx,%edi
	movl $4,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	jmp Lloop_start_312
.section .pcmap_data
Lstackdata_l482:
.long 1
.long 0xfffffff8
.section .pcmap
.long Ljoin_l477
.long Lframe_l483
.section .pcmap_data
Lframe_l483:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l482
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
.long 0xfffffff0
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
.long Ljoin_l474
.long Lframe_l484
.section .pcmap_data
Lframe_l484:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l482
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
.long 0xfffffff0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0x80000000
.long 0
.long main_51_gc_data
.section .pcmap
.long Ljoin_l463
.long Lframe_l485
.section .pcmap_data
Lframe_l485:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l482
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
.long 0xfffffff0
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
.long Ljoin_l469
.long Lframe_l486
.section .pcmap_data
Lframe_l486:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l482
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
.long 0xfffffff0
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
.long Ljoin_l466
.long Lframe_l487
.section .pcmap_data
Lframe_l487:
.long 0xffffffec
.long 0x80000004
.long 0xfffffff4
.long Lstackdata_l482
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
.long 0xfffffff0
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
	movl (%ecx),%ecx
Linitialize_continuations_l490:
Lproc_body_start_l489:
	leal 24(%esp), %edx
	movl %edi,(%esp)
	movl $-16,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl $0,%edi
	leal 24(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl $4,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	movl $0,%edi
	leal 24(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl $8,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	movl $1,%edi
	leal 24(%esp), %edx
	movl $-16,%eax
	addl %eax,%edx
	movl $12,%eax
	addl %eax,%edx
	movl %edi,(%edx)
	leal 24(%esp), %eax
	movl $-16,%edi
	addl %edi,%eax
	movl %ecx,4(%esp)
	call main_51
Ljoin_l494:
	movl $0,%eax
	leal 24(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 24(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l499:
.long 1
.long 0xfffffff0
.section .pcmap
.long Ljoin_l494
.long Lframe_l500
.section .pcmap_data
Lframe_l500:
.long 0xffffffe8
.long 0x80000004
.long 0xffffffec
.long Lstackdata_l499
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
.long 0xffffffe8
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

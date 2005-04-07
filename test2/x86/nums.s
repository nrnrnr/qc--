.globl GL_printInt8
.globl GL_printUInt8
.globl GL_test__nums__1
.globl GL_test__nums__2
.globl GL_test__nums__3
.globl GL_test__nums__4
.globl GL_test__nums__5
.globl GL_test__nums__6
.globl GL_test__nums__7
.globl nums_create_initial
.globl nums_extend_initial
.globl nums_main
.globl fun_printInt8
.globl fun_printUInt8
.globl fun_test__nums__1
.globl fun_test__nums__2
.globl fun_test__nums__3
.globl fun_test__nums__4
.globl fun_test__nums__5
.globl fun_test__nums__6
.globl fun_test__nums__7
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
GL_printInt8:
.skip 4, 0
GL_printUInt8:
.skip 4, 0
GL_test__nums__1:
.skip 4, 0
GL_test__nums__2:
.skip 4, 0
GL_test__nums__3:
.skip 4, 0
GL_test__nums__4:
.skip 4, 0
GL_test__nums__5:
.skip 4, 0
GL_test__nums__6:
.skip 4, 0
GL_test__nums__7:
.skip 4, 0
executed_nums_create_initial:
.long 0
executed_nums_extend_initial:
.long 0
executed_nums_main:
.long 0
.section .text
_C_nums_create_initial:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l26:
.Lproc_body_start_l25:
	movl %eax,(%esp)
	call nums_create_initial
.Lcall_successor_l30:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l36:
.long 0
.section .pcmap
.long .Lcall_successor_l30
.long .Lframe_l37
.section .pcmap_data
.Lframe_l37:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l36
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_nums_create_initial
nums_create_initial:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l39:
.Lproc_body_start_l38:
.Lbranch_target_l47:
	leal executed_nums_create_initial,%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .Lbranch_target_l43
.Lbranch_target_l41:
	movl $1,%ecx
	leal executed_nums_create_initial,%edx
	movl %ecx,(%edx)
	leal fun_printInt8,%ecx
	leal GL_printInt8,%edx
	movl %ecx,(%edx)
	leal fun_printUInt8,%ecx
	leal GL_printUInt8,%edx
	movl %ecx,(%edx)
	leal fun_test__nums__1,%ecx
	leal GL_test__nums__1,%edx
	movl %ecx,(%edx)
	leal fun_test__nums__2,%ecx
	leal GL_test__nums__2,%edx
	movl %ecx,(%edx)
	leal fun_test__nums__3,%ecx
	leal GL_test__nums__3,%edx
	movl %ecx,(%edx)
	leal fun_test__nums__4,%ecx
	leal GL_test__nums__4,%edx
	movl %ecx,(%edx)
	leal fun_test__nums__5,%ecx
	leal GL_test__nums__5,%edx
	movl %ecx,(%edx)
	leal fun_test__nums__6,%ecx
	leal GL_test__nums__6,%edx
	movl %ecx,(%edx)
	leal fun_test__nums__7,%ecx
	leal GL_test__nums__7,%edx
	movl %ecx,(%edx)
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.Lbranch_target_l43:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
.section .text
_C_nums_extend_initial:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l53:
.Lproc_body_start_l52:
	movl %eax,(%esp)
	call nums_extend_initial
.Lcall_successor_l57:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l63:
.long 0
.section .pcmap
.long .Lcall_successor_l57
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l63
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_nums_extend_initial
nums_extend_initial:
	movl %esp,%eax
	movl (%eax),%eax
.Linitialize_continuations_l66:
.Lproc_body_start_l65:
.Lbranch_target_l74:
	leal executed_nums_extend_initial,%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .Lbranch_target_l70
.Lbranch_target_l68:
	movl $1,%ecx
	leal executed_nums_extend_initial,%edx
	movl %ecx,(%edx)
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.Lbranch_target_l70:
	movl %esp,%ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	ret
.section .text
.section .text
_C_nums_main:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l80:
.Lproc_body_start_l79:
	movl %eax,(%esp)
	call nums_main
.Lcall_successor_l84:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l90:
.long 0
.section .pcmap
.long .Lcall_successor_l84
.long .Lframe_l91
.section .pcmap_data
.Lframe_l91:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l90
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_nums_main
nums_main:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l93:
.Lproc_body_start_l92:
.Lbranch_target_l129:
	leal executed_nums_main,%ecx
	movl (%ecx),%ecx
	movl $0,%edx
	cmpl %edx,%ecx
	jne .Lbranch_target_l124
.Lbranch_target_l122:
	movl $1,%ecx
	leal executed_nums_main,%edx
	movl %ecx,(%edx)
	movl %eax,(%esp)
	call prim491
.Lcall_successor_l121:
.Lbranch_target_l128:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l118
.Lbranch_target_l116:
	leal GL_test__nums__1,%eax
	movl (%eax),%eax
	call fun_test__nums__1
.Lcall_successor_l115:
	leal GL_test__nums__2,%eax
	movl (%eax),%eax
	call fun_test__nums__2
.Lcall_successor_l112:
	leal GL_test__nums__3,%eax
	movl (%eax),%eax
	call fun_test__nums__3
.Lcall_successor_l109:
	leal GL_test__nums__4,%eax
	movl (%eax),%eax
	call fun_test__nums__4
.Lcall_successor_l106:
	leal GL_test__nums__5,%eax
	movl (%eax),%eax
	call fun_test__nums__5
.Lcall_successor_l103:
	leal GL_test__nums__6,%eax
	movl (%eax),%eax
	call fun_test__nums__6
.Lcall_successor_l100:
	leal GL_test__nums__7,%eax
	movl (%eax),%eax
	call fun_test__nums__7
.Lcall_successor_l97:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.Lbranch_target_l118:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.Lbranch_target_l124:
	leal 4(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l131:
.long 0
.section .pcmap
.long .Lcall_successor_l121
.long .Lframe_l132
.section .pcmap_data
.Lframe_l132:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l131
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
.section .pcmap
.long .Lcall_successor_l115
.long .Lframe_l133
.section .pcmap_data
.Lframe_l133:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l131
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
.section .pcmap
.long .Lcall_successor_l112
.long .Lframe_l134
.section .pcmap_data
.Lframe_l134:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l131
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
.section .pcmap
.long .Lcall_successor_l109
.long .Lframe_l135
.section .pcmap_data
.Lframe_l135:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l131
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
.section .pcmap
.long .Lcall_successor_l106
.long .Lframe_l136
.section .pcmap_data
.Lframe_l136:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l131
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
.section .pcmap
.long .Lcall_successor_l103
.long .Lframe_l137
.section .pcmap_data
.Lframe_l137:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l131
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
.section .pcmap
.long .Lcall_successor_l100
.long .Lframe_l138
.section .pcmap_data
.Lframe_l138:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l131
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
.section .pcmap
.long .Lcall_successor_l97
.long .Lframe_l139
.section .pcmap_data
.Lframe_l139:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l131
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
.section .text
_C_fun_printInt8:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l141:
.Lproc_body_start_l140:
	leal -4(%esp), %esp
	leal 20(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,12(%esp)
	movl %ecx,%eax
	leal 20(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	leal 20(%esp), %edx
	movl %ecx,16(%esp)
	movl $-20,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call fun_printInt8
.Lcall_successor_l145:
	leal 16(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l151:
.long 0
.section .pcmap
.long .Lcall_successor_l145
.long .Lframe_l152
.section .pcmap_data
.Lframe_l152:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l151
.long 0
.long 1
.long 0
.long 1
.long 0xfffffff0
.long 0
.section .text
.long _C_fun_printInt8
fun_printInt8:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l154:
.Lproc_body_start_l153:
	movl %eax,32(%esp)
	call checkForInterrupts
.Lcall_successor_l164:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 36(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call prim546
.Lcall_successor_l161:
.Lbranch_target_l168:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l158
.Lbranch_target_l156:
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %esp
	ret
.Lbranch_target_l158:
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l171:
.long 0
.section .pcmap
.long .Lcall_successor_l164
.long .Lframe_l172
.section .pcmap_data
.Lframe_l172:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l171
.long 0
.long 3
.long 0
.long 1
.long 0xfffffff4
.long 0xffffffec
.long 0xffffffe4
.long 0
.section .pcmap
.long .Lcall_successor_l161
.long .Lframe_l173
.section .pcmap_data
.Lframe_l173:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l171
.long 0
.long 3
.long 0
.long 1
.long 0xfffffff4
.long 0xffffffec
.long 0xffffffe4
.long 0
.section .text
.section .text
_C_fun_printUInt8:
	leal -16(%esp), %esp
	leal 16(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 16(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 16(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l175:
.Lproc_body_start_l174:
	leal -4(%esp), %esp
	leal 20(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	movl %eax,12(%esp)
	movl %ecx,%eax
	leal 20(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	leal 20(%esp), %edx
	movl %ecx,16(%esp)
	movl $-20,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	call fun_printUInt8
.Lcall_successor_l179:
	leal 16(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 8(%esp),%ecx
	movl %ecx,(%eax)
	leal 16(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l185:
.long 0
.section .pcmap
.long .Lcall_successor_l179
.long .Lframe_l186
.section .pcmap_data
.Lframe_l186:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffff8
.long .Lstackdata_l185
.long 0
.long 1
.long 0
.long 1
.long 0xfffffff0
.long 0
.section .text
.long _C_fun_printUInt8
fun_printUInt8:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l188:
.Lproc_body_start_l187:
	movl %eax,32(%esp)
	call checkForInterrupts
.Lcall_successor_l198:
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-20,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 36(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call prim559
.Lcall_successor_l195:
.Lbranch_target_l202:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l192
.Lbranch_target_l190:
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %esp
	ret
.Lbranch_target_l192:
	leal 36(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l205:
.long 0
.section .pcmap
.long .Lcall_successor_l198
.long .Lframe_l206
.section .pcmap_data
.Lframe_l206:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l205
.long 0
.long 3
.long 0
.long 1
.long 0xfffffff4
.long 0xffffffec
.long 0xffffffe4
.long 0
.section .pcmap
.long .Lcall_successor_l195
.long .Lframe_l207
.section .pcmap_data
.Lframe_l207:
.long 0x80000008
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l205
.long 0
.long 3
.long 0
.long 1
.long 0xfffffff4
.long 0xffffffec
.long 0xffffffe4
.long 0
.section .text
.section .text
_C_fun_test__nums__1:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l209:
.Lproc_body_start_l208:
	movl %eax,(%esp)
	call fun_test__nums__1
.Lcall_successor_l213:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l219:
.long 0
.section .pcmap
.long .Lcall_successor_l213
.long .Lframe_l220
.section .pcmap_data
.Lframe_l220:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l219
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_fun_test__nums__1
fun_test__nums__1:
	leal -180(%esp), %esp
	leal 180(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l222:
.Lproc_body_start_l221:
	movl %eax,92(%esp)
	call checkForInterrupts
.Lcall_successor_l232:
	movl $2147483647,%eax
	movl $-2147483648,%ecx
	movl $-1,%edx
	movl %eax,96(%esp)
	movl $-1,%eax
	movl %eax,100(%esp)
	leal 180(%esp), %eax
	movl %eax,104(%esp)
	movl $-96,%eax
	movl %eax,108(%esp)
	movl 104(%esp),%eax
	movl %ecx,112(%esp)
	movl 108(%esp),%ecx
	addl %ecx,%eax
	movl 100(%esp),%ecx
	movl %ecx,(%eax)
	movl $2147483647,%eax
	leal 180(%esp), %ecx
	movl %eax,116(%esp)
	movl $-92,%eax
	addl %eax,%ecx
	movl 116(%esp),%eax
	movl %eax,(%ecx)
	movl $0,%eax
	leal 180(%esp), %ecx
	movl %eax,120(%esp)
	movl $-104,%eax
	addl %eax,%ecx
	movl 120(%esp),%eax
	movl %eax,(%ecx)
	movl $-2147483648,%eax
	leal 180(%esp), %ecx
	movl %eax,124(%esp)
	movl $-100,%eax
	addl %eax,%ecx
	movl 124(%esp),%eax
	movl %eax,(%ecx)
	movl $-1,%eax
	leal 180(%esp), %ecx
	movl %eax,128(%esp)
	movl $-112,%eax
	addl %eax,%ecx
	movl 128(%esp),%eax
	movl %eax,(%ecx)
	movl $-1,%eax
	leal 180(%esp), %ecx
	movl %eax,132(%esp)
	movl $-108,%eax
	addl %eax,%ecx
	movl 132(%esp),%eax
	movl %eax,(%ecx)
	movl 96(%esp),%eax
	movl 112(%esp),%ecx
	movl %eax,136(%esp)
	leal 180(%esp), %eax
	movl %eax,140(%esp)
	movl $-96,%eax
	movl %eax,144(%esp)
	movl 140(%esp),%eax
	movl %ecx,148(%esp)
	movl 144(%esp),%ecx
	addl %ecx,%eax
	leal 180(%esp), %ecx
	movl %eax,152(%esp)
	movl $-136,%eax
	addl %eax,%ecx
	movl 152(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 180(%esp), %eax
	movl $-104,%ecx
	addl %ecx,%eax
	leal 180(%esp), %ecx
	movl %eax,156(%esp)
	movl $-128,%eax
	addl %eax,%ecx
	movl 156(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 180(%esp), %eax
	movl $-112,%ecx
	addl %ecx,%eax
	leal 180(%esp), %ecx
	movl %eax,160(%esp)
	movl $-120,%eax
	addl %eax,%ecx
	movl 160(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal GL_printInt8,%eax
	movl (%eax),%eax
	leal GL_printUInt8,%ecx
	movl (%ecx),%ecx
	movl %eax,164(%esp)
	leal 180(%esp), %eax
	movl %eax,168(%esp)
	movl $-180,%eax
	movl %eax,172(%esp)
	movl 168(%esp),%eax
	movl %ecx,176(%esp)
	movl 172(%esp),%ecx
	addl %ecx,%eax
	movl 136(%esp),%ecx
	movl %ecx,(%eax)
	leal 180(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl 148(%esp),%ecx
	movl %ecx,(%eax)
	leal 180(%esp), %eax
	movl $-172,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 180(%esp), %eax
	movl $-136,%ecx
	addl %ecx,%eax
	leal 180(%esp), %ecx
	movl $-168,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 180(%esp), %eax
	movl $-128,%ecx
	addl %ecx,%eax
	leal 180(%esp), %ecx
	movl $-160,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 180(%esp), %eax
	movl $-120,%ecx
	addl %ecx,%eax
	leal 180(%esp), %ecx
	movl $-152,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 180(%esp), %eax
	movl $-144,%ecx
	addl %ecx,%eax
	movl 164(%esp),%ecx
	movl %ecx,(%eax)
	leal 180(%esp), %eax
	movl $-140,%ecx
	addl %ecx,%eax
	movl 176(%esp),%ecx
	movl %ecx,(%eax)
	call prim600
.Lcall_successor_l229:
.Lbranch_target_l236:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l226
.Lbranch_target_l224:
	leal 180(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal 180(%esp), %esp
	ret
.Lbranch_target_l226:
	leal 180(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal 180(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l239:
.long 0
.section .pcmap
.long .Lcall_successor_l232
.long .Lframe_l240
.section .pcmap_data
.Lframe_l240:
.long 0x80000004
.long 0xffffff4c
.long 0xffffffa8
.long .Lstackdata_l239
.long 0
.long 14
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffffa0
.long 0xffffff98
.long 0xffffff90
.long 0
.long 0
.long 0
.long 0xffffff78
.long 0xffffff80
.long 0xffffff88
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l229
.long .Lframe_l241
.section .pcmap_data
.Lframe_l241:
.long 0x80000004
.long 0xffffff4c
.long 0xffffffa8
.long .Lstackdata_l239
.long 0
.long 14
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffffa0
.long 0xffffff98
.long 0xffffff90
.long 0
.long 0
.long 0
.long 0xffffff78
.long 0xffffff80
.long 0xffffff88
.long 0
.long 0
.long 0
.section .text
.section .text
_C_fun_test__nums__2:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l243:
.Lproc_body_start_l242:
	movl %eax,(%esp)
	call fun_test__nums__2
.Lcall_successor_l247:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l253:
.long 0
.section .pcmap
.long .Lcall_successor_l247
.long .Lframe_l254
.section .pcmap_data
.Lframe_l254:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l253
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_fun_test__nums__2
fun_test__nums__2:
	leal -32(%esp), %esp
	leal 32(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l256:
.Lproc_body_start_l255:
	movl %eax,12(%esp)
	call checkForInterrupts
.Lcall_successor_l266:
	movl $200,%eax
	movl $2,%ecx
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $13,%ecx
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl $700,%eax
	addl %eax,%edx
	movl %edx,%eax
	movl $774,%ecx
	andl %ecx,%eax
	movl $123,%ecx
	orl %ecx,%eax
	movl $543,%ecx
	xorl %ecx,%eax
	notl %eax
	movl $34,%ecx
	xorl %ecx,%eax
	movl $12,%ecx
	shll %cl, %eax
	movl $4,%ecx
	shrl %cl, %eax
	movl $-16,%ecx
	movl %eax,16(%esp)
	leal 32(%esp), %eax
	movl %eax,20(%esp)
	movl $-32,%eax
	movl %eax,24(%esp)
	movl 20(%esp),%eax
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 32(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	call prim652
.Lcall_successor_l263:
.Lbranch_target_l270:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l260
.Lbranch_target_l258:
	leal 32(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %esp
	ret
.Lbranch_target_l260:
	leal 32(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 32(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l273:
.long 0
.section .pcmap
.long .Lcall_successor_l266
.long .Lframe_l274
.section .pcmap_data
.Lframe_l274:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l273
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
.section .pcmap
.long .Lcall_successor_l263
.long .Lframe_l275
.section .pcmap_data
.Lframe_l275:
.long 0x80000004
.long 0xffffffe0
.long 0xffffffec
.long .Lstackdata_l273
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
.section .text
_C_fun_test__nums__3:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l277:
.Lproc_body_start_l276:
	movl %eax,(%esp)
	call fun_test__nums__3
.Lcall_successor_l281:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l287:
.long 0
.section .pcmap
.long .Lcall_successor_l281
.long .Lframe_l288
.section .pcmap_data
.Lframe_l288:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l287
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_fun_test__nums__3
fun_test__nums__3:
	leal -36(%esp), %esp
	leal 36(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l290:
.Lproc_body_start_l289:
	movl %eax,32(%esp)
	call checkForInterrupts
.Lcall_successor_l300:
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1073741824,%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1080623104,%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074790400,%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074266112,%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 36(%esp), %ecx
	movl $-12,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1072693248,%eax
	leal 36(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 36(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fchs
	faddp
	fsubp
	fmulp
	fdivp
	leal 36(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 36(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 36(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call prim675
.Lcall_successor_l297:
.Lbranch_target_l304:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l294
.Lbranch_target_l292:
	leal 36(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 36(%esp), %esp
	ret
.Lbranch_target_l294:
	leal 36(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 36(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l307:
.long 0
.section .pcmap
.long .Lcall_successor_l300
.long .Lframe_l308
.section .pcmap_data
.Lframe_l308:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l307
.long 0
.long 2
.long 0
.long 1
.long 0xffffffec
.long 0xffffffe4
.long 0
.section .pcmap
.long .Lcall_successor_l297
.long .Lframe_l309
.section .pcmap_data
.Lframe_l309:
.long 0x80000004
.long 0xffffffdc
.long 0xfffffffc
.long .Lstackdata_l307
.long 0
.long 2
.long 0
.long 1
.long 0xffffffec
.long 0xffffffe4
.long 0
.section .text
.section .text
_C_fun_test__nums__4:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l311:
.Lproc_body_start_l310:
	movl %eax,(%esp)
	call fun_test__nums__4
.Lcall_successor_l315:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l321:
.long 0
.section .pcmap
.long .Lcall_successor_l315
.long .Lframe_l322
.section .pcmap_data
.Lframe_l322:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l321
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_fun_test__nums__4
fun_test__nums__4:
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l324:
.Lproc_body_start_l323:
	movl %eax,12(%esp)
	call checkForInterrupts
.Lcall_successor_l334:
	movl $1,%eax
	movl %eax,%ecx
	movl $1,%ecx
	movl %ecx,%edx
	movl $0,%edx
	movl %eax,16(%esp)
	movl $24,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	shll %cl, %eax
	movl $24,%ecx
	shrl %cl, %eax
	leal 40(%esp), %ecx
	movl %eax,28(%esp)
	movl $-40,%eax
	addl %eax,%ecx
	movl 28(%esp),%eax
	movl %eax,(%ecx)
	movl $24,%eax
	movl 24(%esp),%ecx
	movl %ecx,32(%esp)
	movl %eax,%ecx
	movl 32(%esp),%eax
	shll %cl, %eax
	movl $24,%ecx
	shrl %cl, %eax
	leal 40(%esp), %ecx
	movl %eax,36(%esp)
	movl $-36,%eax
	addl %eax,%ecx
	movl 36(%esp),%eax
	movl %eax,(%ecx)
	movl $24,%eax
	movl %eax,%ecx
	shll %cl, %edx
	movl $24,%eax
	movl %eax,%ecx
	shrl %cl, %edx
	leal 40(%esp), %eax
	movl $-32,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call prim711
.Lcall_successor_l331:
.Lbranch_target_l338:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l328
.Lbranch_target_l326:
	leal 40(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %esp
	ret
.Lbranch_target_l328:
	leal 40(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 12(%esp),%ecx
	movl %ecx,(%eax)
	leal 40(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l341:
.long 0
.section .pcmap
.long .Lcall_successor_l334
.long .Lframe_l342
.section .pcmap_data
.Lframe_l342:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l341
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
.long .Lcall_successor_l331
.long .Lframe_l343
.section .pcmap_data
.Lframe_l343:
.long 0x80000004
.long 0xffffffd8
.long 0xffffffe4
.long .Lstackdata_l341
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
.section .text
_C_fun_test__nums__5:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l345:
.Lproc_body_start_l344:
	movl %eax,(%esp)
	call fun_test__nums__5
.Lcall_successor_l349:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l355:
.long 0
.section .pcmap
.long .Lcall_successor_l349
.long .Lframe_l356
.section .pcmap_data
.Lframe_l356:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l355
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_fun_test__nums__5
fun_test__nums__5:
	leal -100(%esp), %esp
	leal 100(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l358:
.Lproc_body_start_l357:
	movl %eax,24(%esp)
	call checkForInterrupts
.Lcall_successor_l368:
	movl $5,%eax
	movl %eax,%ecx
	movl $16,%edx
	movl %ecx,28(%esp)
	movl %edx,%ecx
	movl 28(%esp),%edx
	shll %cl, %edx
	movl $16,%ecx
	shrl %cl, %edx
	movl $-1,%ecx
	movl %eax,32(%esp)
	movl %ecx,%eax
	movl %eax,36(%esp)
	movl $16,%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	shll %cl, %eax
	movl $16,%ecx
	sarl %cl, %eax
	movl %eax,%ecx
	movl %eax,48(%esp)
	movl $16,%eax
	movl %ecx,52(%esp)
	movl %eax,%ecx
	movl 52(%esp),%eax
	shll %cl, %eax
	movl $16,%ecx
	shrl %cl, %eax
	movl %eax,%ecx
	movl %eax,56(%esp)
	movl $24,%eax
	movl %ecx,60(%esp)
	movl %eax,%ecx
	movl 60(%esp),%eax
	shll %cl, %eax
	movl $24,%ecx
	sarl %cl, %eax
	movl 32(%esp),%ecx
	movl %eax,64(%esp)
	movl 44(%esp),%eax
	movl %eax,68(%esp)
	movl 48(%esp),%eax
	movl %eax,72(%esp)
	movl 56(%esp),%eax
	movl %eax,76(%esp)
	movl 64(%esp),%eax
	movl %eax,80(%esp)
	movl $16,%eax
	movl %ecx,84(%esp)
	movl %eax,%ecx
	movl 84(%esp),%eax
	shll %cl, %eax
	movl $16,%ecx
	shrl %cl, %eax
	leal 100(%esp), %ecx
	movl %eax,88(%esp)
	movl $-100,%eax
	addl %eax,%ecx
	movl 88(%esp),%eax
	movl %eax,(%ecx)
	leal 100(%esp), %eax
	movl $-96,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 100(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	movl $16,%eax
	movl 72(%esp),%ecx
	movl %ecx,92(%esp)
	movl %eax,%ecx
	movl 92(%esp),%eax
	shll %cl, %eax
	movl $16,%ecx
	shrl %cl, %eax
	leal 100(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 100(%esp), %eax
	movl $-84,%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	movl $24,%eax
	movl 80(%esp),%ecx
	movl %ecx,96(%esp)
	movl %eax,%ecx
	movl 96(%esp),%eax
	shll %cl, %eax
	movl $24,%ecx
	shrl %cl, %eax
	leal 100(%esp), %ecx
	movl $-80,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call prim754
.Lcall_successor_l365:
.Lbranch_target_l372:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l362
.Lbranch_target_l360:
	leal 100(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %esp
	ret
.Lbranch_target_l362:
	leal 100(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 100(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l375:
.long 0
.section .pcmap
.long .Lcall_successor_l368
.long .Lframe_l376
.section .pcmap_data
.Lframe_l376:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l375
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l365
.long .Lframe_l377
.section .pcmap_data
.Lframe_l377:
.long 0x80000004
.long 0xffffff9c
.long 0xffffffb4
.long .Lstackdata_l375
.long 0
.long 16
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
_C_fun_test__nums__6:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l379:
.Lproc_body_start_l378:
	movl %eax,(%esp)
	call fun_test__nums__6
.Lcall_successor_l383:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l389:
.long 0
.section .pcmap
.long .Lcall_successor_l383
.long .Lframe_l390
.section .pcmap_data
.Lframe_l390:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l389
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_fun_test__nums__6
fun_test__nums__6:
	leal -784(%esp), %esp
	leal 784(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l392:
.Lproc_body_start_l391:
	movl %eax,568(%esp)
	call checkForInterrupts
.Lcall_successor_l402:
	movl $1080033280,%eax
	leal 784(%esp), %ecx
	movl $-280,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %ecx
	movl $-280,%edx
	addl %edx,%ecx
	flds (%ecx)
	leal 784(%esp), %ecx
	movl $-384,%edx
	addl %edx,%ecx
	fstpl (%ecx)
	leal 784(%esp), %ecx
	movl $-384,%edx
	addl %edx,%ecx
	leal 784(%esp), %edx
	movl %eax,572(%esp)
	movl $-288,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal 784(%esp), %eax
	movl $-288,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-388,%ecx
	addl %ecx,%eax
	fstps (%eax)
	movl $1080033280,%eax
	leal 784(%esp), %ecx
	movl $-276,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	flds (%eax)
	fchs
	leal 784(%esp), %eax
	movl $-392,%ecx
	addl %ecx,%eax
	fnstcw 516(%esp)
	movzwl 516(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 514(%esp)
	movzwl 514(%esp),%edx
	andl $-3073,%edx
	movl %eax,576(%esp)
	movl $1,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,514(%esp)
	fldcw 514(%esp)
	movl 576(%esp),%eax
	fistpl (%eax)
	fnstcw 512(%esp)
	movzwl 512(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,512(%esp)
	fldcw 512(%esp)
	movl $1080033280,%eax
	leal 784(%esp), %ecx
	movl $-276,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	flds (%eax)
	fchs
	leal 784(%esp), %eax
	movl $-396,%ecx
	addl %ecx,%eax
	fnstcw 522(%esp)
	movzwl 522(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 520(%esp)
	movzwl 520(%esp),%edx
	andl $-3073,%edx
	movl %eax,580(%esp)
	movl $2,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,520(%esp)
	fldcw 520(%esp)
	movl 580(%esp),%eax
	fistpl (%eax)
	fnstcw 518(%esp)
	movzwl 518(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,518(%esp)
	fldcw 518(%esp)
	movl $1080033280,%eax
	leal 784(%esp), %ecx
	movl $-276,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	flds (%eax)
	fchs
	leal 784(%esp), %eax
	movl $-400,%ecx
	addl %ecx,%eax
	fnstcw 528(%esp)
	movzwl 528(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 526(%esp)
	movzwl 526(%esp),%edx
	andl $-3073,%edx
	movl %eax,584(%esp)
	movl $3,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,526(%esp)
	fldcw 526(%esp)
	movl 584(%esp),%eax
	fistpl (%eax)
	fnstcw 524(%esp)
	movzwl 524(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,524(%esp)
	fldcw 524(%esp)
	movl $1080033280,%eax
	leal 784(%esp), %ecx
	movl $-276,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	flds (%eax)
	fchs
	leal 784(%esp), %eax
	movl $-404,%ecx
	addl %ecx,%eax
	fnstcw 534(%esp)
	movzwl 534(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 532(%esp)
	movzwl 532(%esp),%edx
	andl $-3073,%edx
	movl %eax,588(%esp)
	movl $0,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,532(%esp)
	fldcw 532(%esp)
	movl 588(%esp),%eax
	fistpl (%eax)
	fnstcw 530(%esp)
	movzwl 530(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,530(%esp)
	fldcw 530(%esp)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074528256,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-408,%ecx
	addl %ecx,%eax
	fnstcw 548(%esp)
	movzwl 548(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 546(%esp)
	movzwl 546(%esp),%edx
	andl $-3073,%edx
	movl %eax,592(%esp)
	movl $1,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,546(%esp)
	fldcw 546(%esp)
	movl 592(%esp),%eax
	fistpl (%eax)
	fnstcw 544(%esp)
	movzwl 544(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,544(%esp)
	fldcw 544(%esp)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074528256,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-412,%ecx
	addl %ecx,%eax
	fnstcw 554(%esp)
	movzwl 554(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 552(%esp)
	movzwl 552(%esp),%edx
	andl $-3073,%edx
	movl %eax,596(%esp)
	movl $2,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,552(%esp)
	fldcw 552(%esp)
	movl 596(%esp),%eax
	fistpl (%eax)
	fnstcw 550(%esp)
	movzwl 550(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,550(%esp)
	fldcw 550(%esp)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074528256,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-416,%ecx
	addl %ecx,%eax
	fnstcw 560(%esp)
	movzwl 560(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 558(%esp)
	movzwl 558(%esp),%edx
	andl $-3073,%edx
	movl %eax,600(%esp)
	movl $3,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,558(%esp)
	fldcw 558(%esp)
	movl 600(%esp),%eax
	fistpl (%eax)
	fnstcw 556(%esp)
	movzwl 556(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,556(%esp)
	fldcw 556(%esp)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074528256,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-420,%ecx
	addl %ecx,%eax
	fnstcw 566(%esp)
	movzwl 566(%esp),%ecx
	shll $20, %ecx
	shrl $30, %ecx
	fnstcw 564(%esp)
	movzwl 564(%esp),%edx
	andl $-3073,%edx
	movl %eax,604(%esp)
	movl $0,%eax
	shll $10, %eax
	orl %eax,%edx
	movw %dx,564(%esp)
	fldcw 564(%esp)
	movl 604(%esp),%eax
	fistpl (%eax)
	fnstcw 562(%esp)
	movzwl 562(%esp),%eax
	andl $-3073,%eax
	shll $10, %ecx
	orl %ecx,%eax
	movw %ax,562(%esp)
	fldcw 562(%esp)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-428,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-424,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-436,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $1,%eax
	leal 784(%esp), %ecx
	movl $-444,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-440,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-428,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-296,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-296,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074528256,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fdivp
	leal 784(%esp), %eax
	movl $-452,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074528256,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fdivp
	leal 784(%esp), %eax
	movl $-460,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fchs
	leal 784(%esp), %eax
	movl $-468,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $1,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fchs
	leal 784(%esp), %eax
	movl $-476,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $1,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074528256,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fdivp
	leal 784(%esp), %eax
	movl $-484,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $1074528256,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fchs
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fdivp
	leal 784(%esp), %eax
	movl $-500,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fdivp
	leal 784(%esp), %eax
	movl $-492,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fmulp
	leal 784(%esp), %eax
	movl $-508,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	movl $1,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal 784(%esp), %ecx
	movl $-244,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 784(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fmulp
	leal 784(%esp), %eax
	movl $-516,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 784(%esp), %eax
	movl $-444,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-312,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-484,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-304,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
.Lbranch_target_l409:
	leal 784(%esp), %eax
	movl $-304,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-312,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz .Lbranch_target_l408
.Lbranch_target_l407:
	movl $0,%eax
	jmp .Lbranch_target_l406
.Lbranch_target_l408:
	movl $1,%eax
.Lbranch_target_l406:
	movl $24,%ecx
	shll %cl, %eax
	movl $24,%ecx
	sarl %cl, %eax
	leal 784(%esp), %ecx
	movl $-436,%edx
	addl %edx,%ecx
	leal 784(%esp), %edx
	movl %eax,608(%esp)
	movl $-328,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal 784(%esp), %eax
	movl $-452,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-320,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
.Lbranch_target_l413:
	leal 784(%esp), %eax
	movl $-320,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-328,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz .Lbranch_target_l412
.Lbranch_target_l411:
	movl $0,%eax
	jmp .Lbranch_target_l410
.Lbranch_target_l412:
	movl $1,%eax
.Lbranch_target_l410:
	movl $24,%ecx
	shll %cl, %eax
	movl $24,%ecx
	sarl %cl, %eax
	leal 784(%esp), %ecx
	movl $-444,%edx
	addl %edx,%ecx
	leal 784(%esp), %edx
	movl %eax,612(%esp)
	movl $-344,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal 784(%esp), %eax
	movl $-436,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-336,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
.Lbranch_target_l417:
	leal 784(%esp), %eax
	movl $-336,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-344,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz .Lbranch_target_l416
.Lbranch_target_l415:
	movl $0,%eax
	jmp .Lbranch_target_l414
.Lbranch_target_l416:
	movl $1,%eax
.Lbranch_target_l414:
	movl $24,%ecx
	shll %cl, %eax
	movl $24,%ecx
	sarl %cl, %eax
	leal 784(%esp), %ecx
	movl $-444,%edx
	addl %edx,%ecx
	leal 784(%esp), %edx
	movl %eax,616(%esp)
	movl $-360,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal 784(%esp), %eax
	movl $-444,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-352,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
.Lbranch_target_l421:
	leal 784(%esp), %eax
	movl $-352,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fchs
	leal 784(%esp), %eax
	movl $-360,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz .Lbranch_target_l420
.Lbranch_target_l419:
	movl $0,%eax
	jmp .Lbranch_target_l418
.Lbranch_target_l420:
	movl $1,%eax
.Lbranch_target_l418:
	movl $24,%ecx
	shll %cl, %eax
	movl $24,%ecx
	sarl %cl, %eax
	leal 784(%esp), %ecx
	movl $-444,%edx
	addl %edx,%ecx
	leal 784(%esp), %edx
	movl %eax,620(%esp)
	movl $-376,%eax
	addl %eax,%edx
	fildq (%ecx)
	fistpq (%edx)
	leal 784(%esp), %eax
	movl $-444,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-368,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
.Lbranch_target_l425:
	leal 784(%esp), %eax
	movl $-368,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 784(%esp), %eax
	movl $-376,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz .Lbranch_target_l424
.Lbranch_target_l423:
	movl $0,%eax
	jmp .Lbranch_target_l422
.Lbranch_target_l424:
	movl $1,%eax
.Lbranch_target_l422:
	movl $24,%ecx
	shll %cl, %eax
	movl $24,%ecx
	sarl %cl, %eax
	movl 572(%esp),%ecx
	leal 784(%esp), %edx
	movl %eax,624(%esp)
	movl $-384,%eax
	addl %eax,%edx
	leal 784(%esp), %eax
	movl %eax,628(%esp)
	movl $-620,%eax
	movl %eax,632(%esp)
	movl 628(%esp),%eax
	movl %ecx,636(%esp)
	movl 632(%esp),%ecx
	addl %ecx,%eax
	fildq (%edx)
	fistpq (%eax)
	leal 784(%esp), %eax
	movl $-388,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 784(%esp), %ecx
	movl $-392,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 784(%esp), %edx
	movl %eax,640(%esp)
	movl $-396,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 784(%esp), %edx
	movl %eax,644(%esp)
	movl $-400,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 784(%esp), %edx
	movl %eax,648(%esp)
	movl $-404,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 784(%esp), %edx
	movl %eax,652(%esp)
	movl $-408,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 784(%esp), %edx
	movl %eax,656(%esp)
	movl $-412,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 784(%esp), %edx
	movl %eax,660(%esp)
	movl $-416,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 784(%esp), %edx
	movl %eax,664(%esp)
	movl $-420,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 784(%esp), %edx
	movl %eax,668(%esp)
	movl $-428,%eax
	addl %eax,%edx
	leal 784(%esp), %eax
	movl %eax,672(%esp)
	movl $-612,%eax
	movl %eax,676(%esp)
	movl 672(%esp),%eax
	movl %ecx,680(%esp)
	movl 676(%esp),%ecx
	addl %ecx,%eax
	fildq (%edx)
	fistpq (%eax)
	leal 784(%esp), %eax
	movl $-436,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-604,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-444,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-596,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-452,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-588,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-460,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-580,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-468,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-572,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-476,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-564,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-484,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-556,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-492,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-548,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-500,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-540,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-508,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-532,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-516,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl $-524,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	movl 608(%esp),%eax
	movl 612(%esp),%ecx
	movl 616(%esp),%edx
	movl %eax,684(%esp)
	movl 620(%esp),%eax
	movl %eax,688(%esp)
	movl 624(%esp),%eax
	movl %eax,692(%esp)
	leal 784(%esp), %eax
	movl %eax,696(%esp)
	movl $-784,%eax
	movl %eax,700(%esp)
	movl 696(%esp),%eax
	movl %ecx,704(%esp)
	movl 700(%esp),%ecx
	addl %ecx,%eax
	movl 636(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-620,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,708(%esp)
	movl $-780,%eax
	addl %eax,%ecx
	movl 708(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-772,%ecx
	addl %ecx,%eax
	movl 640(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-768,%ecx
	addl %ecx,%eax
	movl 680(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-764,%ecx
	addl %ecx,%eax
	movl 644(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-760,%ecx
	addl %ecx,%eax
	movl 648(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-756,%ecx
	addl %ecx,%eax
	movl 652(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-752,%ecx
	addl %ecx,%eax
	movl 656(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-748,%ecx
	addl %ecx,%eax
	movl 660(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-744,%ecx
	addl %ecx,%eax
	movl 664(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-740,%ecx
	addl %ecx,%eax
	movl 668(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %eax
	movl $-612,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,712(%esp)
	movl $-736,%eax
	addl %eax,%ecx
	movl 712(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-604,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,716(%esp)
	movl $-728,%eax
	addl %eax,%ecx
	movl 716(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-596,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,720(%esp)
	movl $-720,%eax
	addl %eax,%ecx
	movl 720(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-588,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,724(%esp)
	movl $-712,%eax
	addl %eax,%ecx
	movl 724(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-580,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,728(%esp)
	movl $-704,%eax
	addl %eax,%ecx
	movl 728(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-572,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,732(%esp)
	movl $-696,%eax
	addl %eax,%ecx
	movl 732(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-564,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,736(%esp)
	movl $-688,%eax
	addl %eax,%ecx
	movl 736(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-556,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,740(%esp)
	movl $-680,%eax
	addl %eax,%ecx
	movl 740(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-548,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,744(%esp)
	movl $-672,%eax
	addl %eax,%ecx
	movl 744(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-540,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,748(%esp)
	movl $-664,%eax
	addl %eax,%ecx
	movl 748(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-532,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,752(%esp)
	movl $-656,%eax
	addl %eax,%ecx
	movl 752(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	leal 784(%esp), %eax
	movl $-524,%ecx
	addl %ecx,%eax
	leal 784(%esp), %ecx
	movl %eax,756(%esp)
	movl $-648,%eax
	addl %eax,%ecx
	movl 756(%esp),%eax
	fildq (%eax)
	fistpq (%ecx)
	movl $24,%eax
	movl 684(%esp),%ecx
	movl %ecx,760(%esp)
	movl %eax,%ecx
	movl 760(%esp),%eax
	shll %cl, %eax
	movl $24,%ecx
	shrl %cl, %eax
	leal 784(%esp), %ecx
	movl %eax,764(%esp)
	movl $-640,%eax
	addl %eax,%ecx
	movl 764(%esp),%eax
	movl %eax,(%ecx)
	movl $24,%eax
	movl 704(%esp),%ecx
	movl %ecx,768(%esp)
	movl %eax,%ecx
	movl 768(%esp),%eax
	shll %cl, %eax
	movl $24,%ecx
	shrl %cl, %eax
	leal 784(%esp), %ecx
	movl %eax,772(%esp)
	movl $-636,%eax
	addl %eax,%ecx
	movl 772(%esp),%eax
	movl %eax,(%ecx)
	movl $24,%eax
	movl %eax,%ecx
	shll %cl, %edx
	movl $24,%eax
	movl %eax,%ecx
	shrl %cl, %edx
	leal 784(%esp), %eax
	movl $-632,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	movl $24,%eax
	movl 688(%esp),%ecx
	movl %ecx,776(%esp)
	movl %eax,%ecx
	movl 776(%esp),%eax
	shll %cl, %eax
	movl $24,%ecx
	shrl %cl, %eax
	leal 784(%esp), %ecx
	movl $-628,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $24,%eax
	movl 692(%esp),%ecx
	movl %ecx,780(%esp)
	movl %eax,%ecx
	movl 780(%esp),%eax
	shll %cl, %eax
	movl $24,%ecx
	shrl %cl, %eax
	leal 784(%esp), %ecx
	movl $-624,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call prim963
.Lcall_successor_l399:
.Lbranch_target_l426:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l396
.Lbranch_target_l394:
	leal 784(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 568(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %esp
	ret
.Lbranch_target_l396:
	leal 784(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 568(%esp),%ecx
	movl %ecx,(%eax)
	leal 784(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l429:
.long 0
.section .pcmap
.long .Lcall_successor_l402
.long .Lframe_l430
.section .pcmap_data
.Lframe_l430:
.long 0x80000004
.long 0xfffffcf0
.long 0xffffff28
.long .Lstackdata_l429
.long 0
.long 69
.long 0
.long 1
.long 0
.long 0xfffffe80
.long 0xfffffe7c
.long 0xfffffe78
.long 0xfffffe74
.long 0xfffffe70
.long 0xfffffe6c
.long 0xfffffe68
.long 0xfffffe64
.long 0xfffffe60
.long 0xfffffe5c
.long 0xfffffe54
.long 0xfffffe4c
.long 0xfffffe44
.long 0xfffffe3c
.long 0xfffffe34
.long 0xfffffe2c
.long 0xfffffe24
.long 0xfffffe1c
.long 0xfffffe0c
.long 0xfffffe14
.long 0xfffffe04
.long 0xfffffdfc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0xfffffee0
.long 0xfffffed8
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffeb8
.long 0xfffffec0
.long 0xfffffea8
.long 0xfffffeb0
.long 0xfffffe98
.long 0xfffffea0
.long 0xfffffe88
.long 0xfffffe90
.long 0
.long 0xfffffd94
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffd9c
.long 0xfffffda4
.long 0xfffffdac
.long 0xfffffdb4
.long 0xfffffdbc
.long 0xfffffdc4
.long 0xfffffdcc
.long 0xfffffdd4
.long 0xfffffddc
.long 0xfffffde4
.long 0xfffffdec
.long 0xfffffdf4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l399
.long .Lframe_l431
.section .pcmap_data
.Lframe_l431:
.long 0x80000004
.long 0xfffffcf0
.long 0xffffff28
.long .Lstackdata_l429
.long 0
.long 69
.long 0
.long 1
.long 0
.long 0xfffffe80
.long 0xfffffe7c
.long 0xfffffe78
.long 0xfffffe74
.long 0xfffffe70
.long 0xfffffe6c
.long 0xfffffe68
.long 0xfffffe64
.long 0xfffffe60
.long 0xfffffe5c
.long 0xfffffe54
.long 0xfffffe4c
.long 0xfffffe44
.long 0xfffffe3c
.long 0xfffffe34
.long 0xfffffe2c
.long 0xfffffe24
.long 0xfffffe1c
.long 0xfffffe0c
.long 0xfffffe14
.long 0xfffffe04
.long 0xfffffdfc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0xfffffee0
.long 0xfffffed8
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffeb8
.long 0xfffffec0
.long 0xfffffea8
.long 0xfffffeb0
.long 0xfffffe98
.long 0xfffffea0
.long 0xfffffe88
.long 0xfffffe90
.long 0
.long 0xfffffd94
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffd9c
.long 0xfffffda4
.long 0xfffffdac
.long 0xfffffdb4
.long 0xfffffdbc
.long 0xfffffdc4
.long 0xfffffdcc
.long 0xfffffdd4
.long 0xfffffddc
.long 0xfffffde4
.long 0xfffffdec
.long 0xfffffdf4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
_C_fun_test__nums__7:
	leal -4(%esp), %esp
	leal 4(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l433:
.Lproc_body_start_l432:
	movl %eax,(%esp)
	call fun_test__nums__7
.Lcall_successor_l437:
	leal 4(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l443:
.long 0
.section .pcmap
.long .Lcall_successor_l437
.long .Lframe_l444
.section .pcmap_data
.Lframe_l444:
.long 0x80000004
.long 0xfffffffc
.long 0xfffffffc
.long .Lstackdata_l443
.long 0
.long 0
.long 0
.long 1
.long 0
.section .text
.long _C_fun_test__nums__7
fun_test__nums__7:
	leal -132(%esp), %esp
	leal 132(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l446:
.Lproc_body_start_l445:
	movl %eax,16(%esp)
	call checkForInterrupts
.Lcall_successor_l468:
	leal 132(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	leal 132(%esp), %ecx
	movl $-132,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 132(%esp), %eax
	movl $-4,%ecx
	addl %ecx,%eax
	leal 132(%esp), %ecx
	movl $-128,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call prim979
.Lcall_successor_l465:
	leal 132(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 132(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
.Lbranch_target_l472:
	leal fall_through,%edx
	movsbl (%edx),%edx
	movl %eax,20(%esp)
	movl $1,%eax
	cmpl %eax,%edx
	jne .Lbranch_target_l462
.Lbranch_target_l460:
	movl 20(%esp),%eax
	movl %eax,%edx
	movl %ecx,%eax
	movl %eax,24(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl %ecx,28(%esp)
	movl 24(%esp),%ecx
	idivl %ecx, %eax
	movl 20(%esp),%ecx
	movl %ecx,%edx
	movl %eax,32(%esp)
	movl 28(%esp),%eax
	negl %edx
	movl %eax,36(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 36(%esp),%ecx
	idivl %ecx, %eax
	movl 20(%esp),%ecx
	movl %ecx,%edx
	movl %eax,40(%esp)
	movl 28(%esp),%eax
	negl %eax
	movl %eax,44(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 44(%esp),%ecx
	idivl %ecx, %eax
	movl 20(%esp),%ecx
	movl %ecx,%edx
	movl %eax,48(%esp)
	movl 28(%esp),%eax
	negl %edx
	negl %eax
	movl %eax,52(%esp)
	movl %edx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 52(%esp),%ecx
	idivl %ecx, %eax
	movl 32(%esp),%ecx
	movl 40(%esp),%edx
	movl %eax,56(%esp)
	movl 48(%esp),%eax
	movl %eax,60(%esp)
	movl 56(%esp),%eax
	movl %eax,64(%esp)
	leal 132(%esp), %eax
	movl %eax,68(%esp)
	movl $-132,%eax
	movl %eax,72(%esp)
	movl 68(%esp),%eax
	movl %ecx,76(%esp)
	movl 72(%esp),%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-128,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 132(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-120,%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	call prim1029
.Lcall_successor_l459:
.Lbranch_target_l473:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l456
.Lbranch_target_l454:
	movl 20(%esp),%eax
	movl %eax,%ecx
	movl 28(%esp),%edx
	movl %edx,%eax
	movl %eax,80(%esp)
	movl %ecx,%eax
	movl %eax,%edx
	sarl $31, %edx
	movl 80(%esp),%ecx
	idivl %ecx, %eax
	movl 20(%esp),%eax
	movl %eax,%ecx
	movl 28(%esp),%eax
	negl %ecx
	movl %eax,84(%esp)
	movl %ecx,%eax
	movl %edx,88(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl 84(%esp),%ecx
	idivl %ecx, %eax
	movl 20(%esp),%eax
	movl %eax,%ecx
	movl 28(%esp),%eax
	negl %eax
	movl %eax,92(%esp)
	movl %ecx,%eax
	movl %edx,96(%esp)
	movl %eax,%edx
	sarl $31, %edx
	movl 92(%esp),%ecx
	idivl %ecx, %eax
	movl 20(%esp),%eax
	movl 28(%esp),%ecx
	negl %eax
	negl %ecx
	movl %edx,100(%esp)
	movl %eax,%edx
	sarl $31, %edx
	idivl %ecx, %eax
	movl 88(%esp),%eax
	movl 96(%esp),%ecx
	movl %eax,104(%esp)
	movl 100(%esp),%eax
	movl %eax,108(%esp)
	leal 132(%esp), %eax
	movl %eax,112(%esp)
	movl $-132,%eax
	movl %eax,116(%esp)
	movl 112(%esp),%eax
	movl %ecx,120(%esp)
	movl 116(%esp),%ecx
	addl %ecx,%eax
	movl 104(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-128,%ecx
	addl %ecx,%eax
	movl 120(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-124,%ecx
	addl %ecx,%eax
	movl 108(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %eax
	movl $-120,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call prim1042
.Lcall_successor_l453:
.Lbranch_target_l474:
	leal fall_through,%eax
	movsbl (%eax),%eax
	movl $1,%ecx
	cmpl %ecx,%eax
	jne .Lbranch_target_l450
.Lbranch_target_l448:
	leal 132(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %esp
	ret
.Lbranch_target_l450:
	leal 132(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %esp
	ret
.Lbranch_target_l456:
	leal 132(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %esp
	ret
.Lbranch_target_l462:
	leal 132(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 16(%esp),%ecx
	movl %ecx,(%eax)
	leal 132(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l477:
.long 2
.long 0xfffffff8
.long 0xfffffffc
.section .pcmap
.long .Lcall_successor_l468
.long .Lframe_l478
.section .pcmap_data
.Lframe_l478:
.long 0x80000004
.long 0xffffff7c
.long 0xffffff8c
.long .Lstackdata_l477
.long 0
.long 36
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l465
.long .Lframe_l479
.section .pcmap_data
.Lframe_l479:
.long 0x80000004
.long 0xffffff7c
.long 0xffffff8c
.long .Lstackdata_l477
.long 0
.long 36
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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
.long .Lcall_successor_l459
.long .Lframe_l480
.section .pcmap_data
.Lframe_l480:
.long 0x80000004
.long 0xffffff7c
.long 0xffffff8c
.long .Lstackdata_l477
.long 0
.long 36
.long 0
.long 1
.long 0xffffff90
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
.long .Lcall_successor_l453
.long .Lframe_l481
.section .pcmap_data
.Lframe_l481:
.long 0x80000004
.long 0xffffff7c
.long 0xffffff8c
.long .Lstackdata_l477
.long 0
.long 36
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
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
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

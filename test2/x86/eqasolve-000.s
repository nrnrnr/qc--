.globl _main
.globl _stdprint
.globl _stdputstr
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.text
.text
_main:
	leal -208(%esp), %esp
	movl %eax,8(%esp)
	movl $4,%ecx
	leal 208(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl %eax,12(%esp)
	nop
	leal 208(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl %ebx,(%esp)
initialize_continuations_l3:
	nop
	nop
	nop
	leal _i_18,%eax
	movl (%eax),%eax
	nop
	leal _osinit,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l92:
	nop
	nop
	nop
	leal -8(%esp), %esp
	movl $-180,%ecx
	leal 216(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $72,%ecx
	movl $-216,%edx
	leal 216(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $1,%ecx
	movl $-212,%edx
	leal 216(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	nop
	leal _xlbegin,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l89:
	nop
	nop
	nop
	nop
	movl $8,%ecx
	movl $-180,%edx
	leal 208(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal __setjmp,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l86:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l82
join_l83:
	nop
	leal _i_22,%eax
	movl (%eax),%eax
	nop
	leal _printf,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l81:
	nop
	nop
	nop
	nop
	nop
	nop
	leal _osfinish,%eax
	movl (%eax),%eax
	call %eax
join_l78:
	nop
	nop
	nop
	nop
	movl $1,%eax
	nop
	leal _exit,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l75:
	nop
	nop
	nop
	jmp _i_19
join_l82:
	jmp _i_19
_i_19:
	nop
	nop
	nop
	leal _xlinit,%eax
	movl (%eax),%eax
	call %eax
join_l72:
	nop
	nop
	nop
	nop
	movl $-180,%ecx
	leal 208(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal _xlend,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l69:
	nop
	nop
	nop
	leal -8(%esp), %esp
	movl $-180,%ecx
	leal 216(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal _true,%ecx
	movl (%ecx),%ecx
	movl $-212,%edx
	leal 216(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl $72,%ecx
	movl $-216,%edx
	leal 216(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	nop
	leal _xlbegin,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l66:
	nop
	nop
	nop
	nop
	movl $8,%ecx
	movl $-180,%edx
	leal 208(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal __setjmp,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l63:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l59
join_l60:
	movl $0,%ecx
	leal -8(%esp), %esp
	leal _i_26,%eax
	movl (%eax),%eax
	movl $-216,%edx
	leal 216(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $-212,%edx
	leal 216(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	nop
	leal _xlload,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l58:
	nop
	nop
	nop
	jmp _i_23
join_l59:
	jmp _i_23
_i_23:
	nop
	movl $8,%ecx
	movl $-180,%edx
	leal 208(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal __setjmp,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l55:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l51
join_l52:
	movl $1,%ebx
	jmp _i_33
_i_33:
	movl 8(%esp),%eax
	cmpl %eax,%ebx
	jl join_l42
join_l97:
	jmp _i_27
join_l42:
	jmp _i_30
_i_30:
	leal -8(%esp), %esp
	movl $2,%ecx
	movl %ebx,%eax
	shll %cl, %eax
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%ecx
	movl %ecx,28(%esp)
	movl $-216,%ecx
	leal 216(%esp), %edx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	movl %ecx,24(%esp)
	movl $-212,%ecx
	leal 216(%esp), %edx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	nop
	leal _xlload,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l50:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l46
join_l47:
	nop
	leal _i_36,%eax
	movl (%eax),%eax
	nop
	leal _xlfail,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l45:
	nop
	nop
	nop
	jmp _i_34
join_l46:
	jmp _i_34
_i_34:
_i_31:
	movl $1,%eax
	addl %eax,%ebx
	jmp _i_33
join_l51:
	jmp _i_27
_i_27:
	leal -4(%esp), %esp
	movl $-184,%ecx
	leal 212(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	movl $-212,%edx
	leal 212(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	nop
	leal _xlsave,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l41:
	nop
	nop
	nop
	jmp _i_38
_i_38:
	jmp _i_37
_i_37:
	nop
	movl $8,%ecx
	movl $-180,%edx
	leal 208(%esp), %eax
	addl %edx,%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal __setjmp,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l38:
	nop
	movl %eax,%ebx
	nop
	movl $0,%eax
	cmpl %eax,%ebx
	je join_l34
join_l35:
	movl $64,%eax
	cmpl %eax,%ebx
	jne join_l32
join_l33:
	nop
	leal _i_45,%eax
	movl (%eax),%eax
	nop
	leal _stdputstr,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l31:
	nop
	nop
	nop
	jmp _i_43
join_l32:
	jmp _i_43
_i_43:
	movl $0,%ecx
	movl $8,%edx
	leal _s_evalhook,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	movl $8,%edx
	leal _s_applyhook,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	addl %edx,%eax
	movl %ecx,(%eax)
	movl $0,%ecx
	leal _xldebug,%eax
	movl %ecx,(%eax)
	nop
	nop
	nop
	leal _xlflush,%eax
	movl (%eax),%eax
	call %eax
join_l28:
	nop
	nop
	nop
	jmp _i_40
join_l34:
	jmp _i_40
_i_40:
	leal -8(%esp), %esp
	movl $8,%ecx
	leal _s_stdin,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-184,%edx
	leal 216(%esp), %ecx
	addl %edx,%ecx
	movl $-216,%edx
	leal 216(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%ecx
	movl %ecx,(%ebx)
	movl $0,%ecx
	movl $-212,%edx
	leal 216(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	nop
	leal _xlread,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l25:
	nop
	nop
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l21
join_l22:
	jmp _i_39
_i_39:
	nop
	movl $-180,%ecx
	leal 208(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal _xlend,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l14:
	nop
	nop
	nop
	nop
	nop
	nop
	leal _osfinish,%eax
	movl (%eax),%eax
	call %eax
join_l11:
	nop
	nop
	nop
	nop
	movl $0,%eax
	nop
	leal _exit,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l8:
	nop
	nop
	nop
	nop
	movl $0,%eax
	movl $4,%edx
	leal 208(%esp), %ecx
	addl %edx,%ecx
	movl 4(%esp),%edx
	movl %edx,(%ecx)
	movl (%esp),%ebx
	leal 212(%esp), %esp
	ret
join_l21:
	jmp _i_46
_i_46:
	nop
	movl $-184,%ecx
	leal 208(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	nop
	leal _xleval,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l20:
	nop
	nop
	movl $-184,%edx
	leal 208(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	nop
	movl $-184,%ecx
	leal 208(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	nop
	leal _stdprint,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l17:
	nop
	nop
	nop
	jmp _i_38
_stdprint:
	leal -20(%esp), %esp
	movl %eax,16(%esp)
	nop
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
initialize_continuations_l100:
	leal -8(%esp), %esp
	movl $8,%ecx
	leal _s_stdout,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-28,%ecx
	movl %ecx,16(%esp)
	leal 28(%esp), %ecx
	movl %ecx,20(%esp)
	movl 16(%esp),%ecx
	movl 20(%esp),%edx
	addl %ecx,%edx
	movl %edx,20(%esp)
	movl 20(%esp),%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $1,%ecx
	movl %ecx,12(%esp)
	movl $-24,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	nop
	leal _xlprint,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l107:
	nop
	nop
	nop
	nop
	movl $8,%ecx
	leal _s_stdout,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal _xlterpri,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l104:
	nop
	nop
	nop
_i_48:
	nop
	nop
	movl $0,%ecx
	leal 20(%esp), %eax
	addl %ecx,%eax
	movl (%esp),%ecx
	movl %ecx,(%eax)
	leal 20(%esp), %esp
	ret
_stdputstr:
	leal -8(%esp), %esp
	movl %eax,%ecx
	nop
	leal 8(%esp), %eax
	movl (%eax),%eax
	movl %eax,4(%esp)
	movl %ebx,(%esp)
initialize_continuations_l114:
	leal -4(%esp), %esp
	movl $8,%edx
	leal _s_stdout,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	addl %edx,%eax
	movl (%eax),%eax
	movl $-12,%edx
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	nop
	leal _xlputstr,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l118:
	nop
	nop
	nop
_i_49:
	nop
	nop
	movl $0,%ecx
	leal 8(%esp), %eax
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	movl (%esp),%ebx
	leal 8(%esp), %esp
	ret
.data
_i_45:
.byte 91
.byte 32
.byte 98
.byte 97
.byte 99
.byte 107
.byte 32
.byte 116
.byte 111
.byte 32
.byte 116
.byte 104
.byte 101
.byte 32
.byte 116
.byte 111
.byte 112
.byte 32
.byte 108
.byte 101
.byte 118
.byte 101
.byte 108
.byte 32
.byte 93
.byte 10
.byte 0
_i_36:
.byte 99
.byte 97
.byte 110
.byte 39
.byte 116
.byte 32
.byte 108
.byte 111
.byte 97
.byte 100
.byte 32
.byte 102
.byte 105
.byte 108
.byte 101
.byte 0
_i_26:
.byte 105
.byte 110
.byte 105
.byte 116
.byte 46
.byte 108
.byte 115
.byte 112
.byte 0
_i_22:
.byte 102
.byte 97
.byte 116
.byte 97
.byte 108
.byte 32
.byte 105
.byte 110
.byte 105
.byte 116
.byte 105
.byte 97
.byte 108
.byte 105
.byte 122
.byte 97
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 101
.byte 114
.byte 114
.byte 111
.byte 114
.byte 10
.byte 0
_i_18:
.byte 88
.byte 76
.byte 73
.byte 83
.byte 80
.byte 32
.byte 118
.byte 101
.byte 114
.byte 115
.byte 105
.byte 111
.byte 110
.byte 32
.byte 49
.byte 46
.byte 54
.byte 44
.byte 32
.byte 67
.byte 111
.byte 112
.byte 121
.byte 114
.byte 105
.byte 103
.byte 104
.byte 116
.byte 32
.byte 40
.byte 99
.byte 41
.byte 32
.byte 49
.byte 57
.byte 56
.byte 53
.byte 44
.byte 32
.byte 98
.byte 121
.byte 32
.byte 68
.byte 97
.byte 118
.byte 105
.byte 100
.byte 32
.byte 66
.byte 101
.byte 116
.byte 122
.byte 0

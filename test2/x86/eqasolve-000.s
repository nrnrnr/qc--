.globl _main
.globl _stdprint
.globl _stdputstr
.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.bogus
.text
_main:
	leal -184(%esp), %esp
	movl $4,%ecx
	leal 184(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	nop
	leal 184(%esp), %eax
	movl (%eax),%eax
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
	leal 192(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $72,%ebx
	movl $-192,%edx
	leal 192(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	movl $1,%ebx
	movl $-188,%edx
	leal 192(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	nop
	leal _xlbegin,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l89:
	nop
	nop
	nop
	nop
	movl $8,%edx
	movl $-180,%ecx
	leal 184(%esp), %eax
	addl %ecx,%eax
	addl %edx,%eax
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
	leal 184(%esp), %eax
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
	leal 192(%esp), %eax
	addl %ecx,%eax
	movl (%eax),%eax
	leal _true,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ebx
	movl $-188,%edx
	leal 192(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	movl $72,%ebx
	movl $-192,%edx
	leal 192(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	nop
	leal _xlbegin,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l66:
	nop
	nop
	nop
	nop
	movl $8,%edx
	movl $-180,%ecx
	leal 184(%esp), %eax
	addl %ecx,%eax
	addl %edx,%eax
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
	movl $-192,%ebx
	leal 192(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	movl $-188,%ebx
	leal 192(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	nop
	leal _xlload,%ecx
	movl (%ecx),%ecx
	call %ecx
join_l58:
	nop
	nop
	nop
_i_23:
	nop
	movl $8,%edx
	movl $-180,%ecx
	leal 184(%esp), %eax
	addl %ecx,%eax
	addl %edx,%eax
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
	movl $1,%eax
	jmp _i_33_
_i_33_:
join_l51:
	jmp _i_27_
_i_27_:
join_l59:
	jmp _i_23_
_i_23_:
join_l82:
	jmp _i_19_
_i_19_:
_stdprint:
	leal -20(%esp), %esp
	movl %eax,16(%esp)
	nop
	leal 20(%esp), %eax
	movl (%eax),%eax
	movl %eax,(%esp)
initialize_continuations_l98:
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
join_l105:
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
join_l102:
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
initialize_continuations_l111:
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
join_l115:
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

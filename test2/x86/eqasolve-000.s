.globl _main
.globl _stdprint
.globl _stdputstr
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.globl Cmm_stack_growth
.section .data
.align 4
Cmm_stack_growth:
.long 0xffffffff
.section .text
.section .text
_main:
	leal -256(%esp), %esp
	leal 256(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 256(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l5:
.Lproc_body_start_l4:
	movl %eax,(%esp)
	leal _i_18,%eax
	movl (%eax),%eax
	movl %ecx,4(%esp)
	leal _osinit,%ecx
	movl (%ecx),%ecx
	movl %edx,8(%esp)
	call *%ecx
.Lcall_successor_l92:
	leal -8(%esp), %esp
	leal 264(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $72,%ecx
	leal 264(%esp), %edx
	movl %ecx,20(%esp)
	movl $-264,%ecx
	addl %ecx,%edx
	movl 20(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%ecx
	leal 264(%esp), %edx
	movl %ecx,24(%esp)
	movl $-260,%ecx
	addl %ecx,%edx
	movl 24(%esp),%ecx
	movl %ecx,(%edx)
	leal _xlbegin,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l89:
	leal 256(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal __setjmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l86:
.Lbranch_target_l83:
.Lbranch_target_l103:
	movl $0,%ecx
	cmpl %ecx,%eax
	je _i_19
.Lbranch_target_l82:
	leal _i_22,%eax
	movl (%eax),%eax
	leal _printf,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l81:
	leal _osfinish,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l78:
	movl $1,%eax
	leal _exit,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l75:
_i_19:
	leal _xlinit,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l72:
	leal 256(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal _xlend,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l69:
	leal -8(%esp), %esp
	leal 264(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal _true,%ecx
	movl (%ecx),%ecx
	leal 264(%esp), %edx
	movl %ecx,28(%esp)
	movl $-260,%ecx
	addl %ecx,%edx
	movl 28(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	movl $72,%ecx
	leal 264(%esp), %edx
	movl %ecx,32(%esp)
	movl $-264,%ecx
	addl %ecx,%edx
	movl 32(%esp),%ecx
	movl %ecx,(%edx)
	leal _xlbegin,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l66:
	leal 256(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal __setjmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l63:
.Lbranch_target_l60:
.Lbranch_target_l102:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_23
.Lbranch_target_l59:
	movl $0,%eax
	leal -8(%esp), %esp
	leal _i_26,%ecx
	movl (%ecx),%ecx
	movl %eax,36(%esp)
	movl %ecx,%eax
	leal 264(%esp), %ecx
	movl $-264,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal 264(%esp), %ecx
	movl %ecx,40(%esp)
	movl $-260,%ecx
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	movl 44(%esp),%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	leal _xlload,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l58:
_i_23:
	leal 256(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal __setjmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l55:
.Lbranch_target_l52:
.Lbranch_target_l101:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_27
.Lbranch_target_l51:
	movl $1,%eax
_i_33:
.Lbranch_target_l42:
.Lbranch_target_l99:
	movl (%esp),%ecx
	cmpl %ecx,%eax
	jl _i_30
	jmp _i_27
_i_30:
	leal -8(%esp), %esp
	movl $2,%edx
	movl %eax,60(%esp)
	movl %edx,%ecx
	shll %cl, %eax
	movl 12(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%edx
	leal 264(%esp), %ecx
	movl %ecx,64(%esp)
	movl $-264,%ecx
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	movl %edx,72(%esp)
	movl 68(%esp),%edx
	addl %edx,%ecx
	movl 72(%esp),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	leal 264(%esp), %edx
	movl %ecx,76(%esp)
	movl $-260,%ecx
	addl %ecx,%edx
	movl 76(%esp),%ecx
	movl %ecx,(%edx)
	leal _xlload,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l50:
.Lbranch_target_l47:
.Lbranch_target_l100:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_34
.Lbranch_target_l46:
	leal _i_36,%eax
	movl (%eax),%eax
	leal _xlfail,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l45:
_i_34:
_i_31:
	movl $1,%eax
	movl 52(%esp),%ecx
	addl %eax,%ecx
.L_i_33_l104:
	movl %ecx,%eax
	jmp _i_33
_i_27:
	leal -4(%esp), %esp
	leal 260(%esp), %eax
	movl $-184,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $0,%ecx
	leal 260(%esp), %edx
	movl %ecx,44(%esp)
	movl $-260,%ecx
	addl %ecx,%edx
	movl 44(%esp),%ecx
	movl %ecx,(%edx)
	leal _xlsave,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l41:
_i_38:
_i_37:
	leal 256(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal __setjmp,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l38:
	movl %eax,%ecx
.Lbranch_target_l35:
.Lbranch_target_l98:
	movl $0,%edx
	cmpl %edx,%eax
	je _i_40
.Lbranch_target_l34:
.Lbranch_target_l97:
	movl $64,%eax
	cmpl %eax,%ecx
	jne _i_43
.Lbranch_target_l33:
	leal _i_45,%eax
	movl (%eax),%eax
	leal _stdputstr,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l32:
_i_43:
	movl $0,%eax
	leal _s_evalhook,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal _s_applyhook,%ecx
	movl (%ecx),%ecx
	movl (%ecx),%ecx
	movl $8,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal _xldebug,%ecx
	movl %eax,(%ecx)
	leal _xlflush,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l29:
_i_40:
	leal -8(%esp), %esp
	leal _s_stdin,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 264(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	leal 264(%esp), %edx
	movl %ecx,52(%esp)
	movl $-264,%ecx
	addl %ecx,%edx
	movl 52(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edx)
	movl $0,%ecx
	leal 264(%esp), %edx
	movl %ecx,56(%esp)
	movl $-260,%ecx
	addl %ecx,%edx
	movl 56(%esp),%ecx
	movl %ecx,(%edx)
	leal _xlread,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l26:
.Lbranch_target_l23:
.Lbranch_target_l96:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne _i_46
_i_39:
	leal 256(%esp), %eax
	movl $-180,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal _xlend,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l16:
	leal _osfinish,%eax
	movl (%eax),%eax
	call *%eax
.Lcall_successor_l13:
	movl $0,%eax
	leal _exit,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l10:
	movl $0,%eax
	leal 256(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl 8(%esp),%edx
	movl %edx,(%ecx)
	leal 260(%esp), %esp
	ret
_i_46:
	leal 256(%esp), %eax
	movl $-184,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal _xleval,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l22:
	leal 256(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 256(%esp), %eax
	movl $-184,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	leal _stdprint,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l19:
	jmp _i_38
.section .pcmap_data
.Lstackdata_l106:
.long 2
.long 0xffffff48
.long 0xffffff4c
.section .pcmap
.long .Lcall_successor_l92
.long .Lframe_l107
.section .pcmap_data
.Lframe_l107:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l89
.long .Lframe_l108
.section .pcmap_data
.Lframe_l108:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l86
.long .Lframe_l109
.section .pcmap_data
.Lframe_l109:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l81
.long .Lframe_l110
.section .pcmap_data
.Lframe_l110:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l78
.long .Lframe_l111
.section .pcmap_data
.Lframe_l111:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l75
.long .Lframe_l112
.section .pcmap_data
.Lframe_l112:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l72
.long .Lframe_l113
.section .pcmap_data
.Lframe_l113:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l69
.long .Lframe_l114
.section .pcmap_data
.Lframe_l114:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l66
.long .Lframe_l115
.section .pcmap_data
.Lframe_l115:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l63
.long .Lframe_l116
.section .pcmap_data
.Lframe_l116:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l58
.long .Lframe_l117
.section .pcmap_data
.Lframe_l117:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l55
.long .Lframe_l118
.section .pcmap_data
.Lframe_l118:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0
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
.long .Lcall_successor_l50
.long .Lframe_l119
.section .pcmap_data
.Lframe_l119:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0xffffff34
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
.long .Lcall_successor_l45
.long .Lframe_l120
.section .pcmap_data
.Lframe_l120:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
.long 0
.long 1
.long 0xffffff00
.long 0xffffff04
.long 0xffffff34
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
.long .Lcall_successor_l41
.long .Lframe_l121
.section .pcmap_data
.Lframe_l121:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .pcmap
.long .Lcall_successor_l38
.long .Lframe_l122
.section .pcmap_data
.Lframe_l122:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .pcmap
.long .Lcall_successor_l32
.long .Lframe_l123
.section .pcmap_data
.Lframe_l123:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .pcmap
.long .Lcall_successor_l29
.long .Lframe_l124
.section .pcmap_data
.Lframe_l124:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .pcmap
.long .Lcall_successor_l26
.long .Lframe_l125
.section .pcmap_data
.Lframe_l125:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .pcmap
.long .Lcall_successor_l16
.long .Lframe_l126
.section .pcmap_data
.Lframe_l126:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l127
.section .pcmap_data
.Lframe_l127:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l128
.section .pcmap_data
.Lframe_l128:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .pcmap
.long .Lcall_successor_l22
.long .Lframe_l129
.section .pcmap_data
.Lframe_l129:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .pcmap
.long .Lcall_successor_l19
.long .Lframe_l130
.section .pcmap_data
.Lframe_l130:
.long 0x80000008
.long 0xffffff00
.long 0xffffff08
.long .Lstackdata_l106
.long 0
.long 11
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
.section .text
_stdprint:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l132:
.Lproc_body_start_l131:
	leal -8(%esp), %esp
	leal _s_stdout,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl %eax,8(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 20(%esp), %edx
	movl %ecx,12(%esp)
	movl $-20,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%ecx
	leal 20(%esp), %edx
	movl %ecx,16(%esp)
	movl $-16,%ecx
	addl %ecx,%edx
	movl 16(%esp),%ecx
	movl %ecx,(%edx)
	leal _xlprint,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l139:
	leal _s_stdout,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal _xlterpri,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l136:
_i_48:
	leal 12(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 12(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l144:
.long 0
.section .pcmap
.long .Lcall_successor_l139
.long .Lframe_l145
.section .pcmap_data
.Lframe_l145:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff8
.long .Lstackdata_l144
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .pcmap
.long .Lcall_successor_l136
.long .Lframe_l146
.section .pcmap_data
.Lframe_l146:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffff8
.long .Lstackdata_l144
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
_stdputstr:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%ecx
.Linitialize_continuations_l148:
.Lproc_body_start_l147:
	leal -4(%esp), %esp
	leal _s_stdout,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl %eax,4(%esp)
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 12(%esp), %edx
	movl %ecx,8(%esp)
	movl $-12,%ecx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal _xlputstr,%ecx
	movl (%ecx),%ecx
	call *%ecx
.Lcall_successor_l152:
_i_49:
	leal 8(%esp), %eax
	movl $0,%ecx
	addl %ecx,%eax
	movl 4(%esp),%ecx
	movl %ecx,(%eax)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l157:
.long 0
.section .pcmap
.long .Lcall_successor_l152
.long .Lframe_l158
.section .pcmap_data
.Lframe_l158:
.long 0x80000004
.long 0xfffffff8
.long 0xfffffffc
.long .Lstackdata_l157
.long 0
.long 1
.long 0
.long 1
.long 0
.long 0
.section .text
.section .data
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

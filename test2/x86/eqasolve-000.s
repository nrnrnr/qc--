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
	leal -216(%esp), %esp
	leal 216(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 216(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl %edi,(%esp)
	leal _i_18,%edi
	movl (%edi),%edi
	movl %eax,4(%esp)
	movl %edi,%eax
	leal _osinit,%edi
	movl (%edi),%edi
	movl %edx,12(%esp)
	movl %ecx,8(%esp)
	call *%edi
Ljoin_l95:
	leal -8(%esp), %esp
	leal 224(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $72,%edi
	leal 224(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	movl $1,%edi
	leal 224(%esp), %ecx
	movl $-220,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal _xlbegin,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l92:
	leal 216(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal __setjmp,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l89:
	movl $0,%edi
	cmpl %edi,%eax
	je Ljoin_l85
Ljoin_l86:
	leal _i_22,%edi
	movl (%edi),%eax
	leal _printf,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l84:
	leal _osfinish,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l81:
	movl $1,%eax
	leal _exit,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l78:
	jmp _i_19
Ljoin_l85:
	jmp _i_19
_i_19:
	leal _xlinit,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l75:
	leal 216(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal _xlend,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l72:
	leal -8(%esp), %esp
	leal 224(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal _true,%edi
	movl (%edi),%edi
	leal 224(%esp), %ecx
	movl $-220,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	movl $72,%edi
	leal 224(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal _xlbegin,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l69:
	leal 216(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal __setjmp,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l66:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l62
Ljoin_l63:
	movl $0,%edi
	leal -8(%esp), %esp
	leal _i_26,%ecx
	movl (%ecx),%eax
	leal 224(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal 224(%esp), %ecx
	movl $-220,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal _xlload,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l61:
	jmp _i_23
Ljoin_l62:
	jmp _i_23
_i_23:
	leal 216(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal __setjmp,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l58:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l54
Ljoin_l55:
	movl $1,%edi
	jmp _i_33
_i_33:
	movl 4(%esp),%ecx
	cmpl %ecx,%edi
	jl Ljoin_l45
Ljoin_l100:
	jmp _i_27
Ljoin_l45:
	jmp _i_30
_i_30:
	leal -8(%esp), %esp
	movl $2,%edx
	movl %edi,%eax
	movl %edx,%ecx
	shll %cl, %eax
	movl 16(%esp),%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	movl $1,%edx
	movl %edi,24(%esp)
	leal 224(%esp), %edi
	movl %edi,28(%esp)
	movl $-224,%edi
	movl %edi,32(%esp)
	movl 28(%esp),%edi
	movl %esi,36(%esp)
	movl 32(%esp),%esi
	addl %esi,%edi
	movl %edx,(%edi)
	movl $0,%edi
	leal 224(%esp), %esi
	movl $-220,%edx
	addl %edx,%esi
	movl %edi,(%esi)
	leal _xlload,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l53:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l49
Ljoin_l50:
	leal _i_36,%edi
	movl (%edi),%eax
	leal _xlfail,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l48:
	jmp _i_34
Ljoin_l49:
	jmp _i_34
_i_34:
_i_31:
	movl $1,%edi
	movl 16(%esp),%esi
	addl %edi,%esi
	movl %esi,%edi
	movl 28(%esp),%esi
	jmp _i_33
Ljoin_l54:
	jmp _i_27
_i_27:
	leal -4(%esp), %esp
	leal 220(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $0,%edi
	leal 220(%esp), %ecx
	movl $-220,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal _xlsave,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l44:
	jmp _i_38
_i_38:
	jmp _i_37
_i_37:
	leal 216(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal __setjmp,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l41:
	movl %eax,%edi
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l37
Ljoin_l38:
	movl $64,%ecx
	cmpl %ecx,%edi
	jne Ljoin_l35
Ljoin_l36:
	leal _i_45,%edi
	movl (%edi),%eax
	leal _stdputstr,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l34:
	jmp _i_43
Ljoin_l35:
	jmp _i_43
_i_43:
	movl $0,%edi
	leal _s_evalhook,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	movl $0,%edi
	leal _s_applyhook,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	movl $8,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	movl $0,%edi
	leal _xldebug,%eax
	movl %edi,(%eax)
	leal _xlflush,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l31:
	jmp _i_40
Ljoin_l37:
	jmp _i_40
_i_40:
	leal -8(%esp), %esp
	leal _s_stdin,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal 224(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	leal 224(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	movl $0,%edi
	leal 224(%esp), %ecx
	movl $-220,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal _xlread,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l28:
	movl $0,%edi
	cmpl %edi,%eax
	jne Ljoin_l24
Ljoin_l25:
	jmp _i_39
_i_39:
	leal 216(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal _xlend,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l17:
	leal _osfinish,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l14:
	movl $0,%eax
	leal _exit,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l11:
	movl $0,%eax
	leal 216(%esp), %edx
	movl $4,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 220(%esp), %esp
	ret
Ljoin_l24:
	jmp _i_46
_i_46:
	leal 216(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl (%edi),%eax
	leal _xleval,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l23:
	leal 216(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 216(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	movl (%edi),%eax
	leal _stdprint,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l20:
	jmp _i_38
.section .pcmap_data
Lstackdata_l101:
.long 2
.long 0xffffff48
.long 0xffffff4c
.section .pcmap
.long Ljoin_l95
.long Lframe_l102
.section .pcmap_data
Lframe_l102:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l92
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l89
.long Lframe_l104
.section .pcmap_data
Lframe_l104:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l84
.long Lframe_l105
.section .pcmap_data
Lframe_l105:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l81
.long Lframe_l106
.section .pcmap_data
Lframe_l106:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l78
.long Lframe_l107
.section .pcmap_data
Lframe_l107:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l75
.long Lframe_l108
.section .pcmap_data
Lframe_l108:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l72
.long Lframe_l109
.section .pcmap_data
Lframe_l109:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l69
.long Lframe_l110
.section .pcmap_data
Lframe_l110:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l66
.long Lframe_l111
.section .pcmap_data
Lframe_l111:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l61
.long Lframe_l112
.section .pcmap_data
Lframe_l112:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l58
.long Lframe_l113
.section .pcmap_data
Lframe_l113:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
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
.long Ljoin_l53
.long Lframe_l114
.section .pcmap_data
Lframe_l114:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 2
.long 11
.long 0
.long 1
.long 10
.long 0xffffff44
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff38
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
.long Ljoin_l48
.long Lframe_l115
.section .pcmap_data
Lframe_l115:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 2
.long 11
.long 0
.long 1
.long 10
.long 0xffffff44
.long 11
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff38
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
.long Ljoin_l44
.long Lframe_l116
.section .pcmap_data
Lframe_l116:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .pcmap
.long Ljoin_l41
.long Lframe_l117
.section .pcmap_data
Lframe_l117:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .pcmap
.long Ljoin_l34
.long Lframe_l118
.section .pcmap_data
Lframe_l118:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .pcmap
.long Ljoin_l31
.long Lframe_l119
.section .pcmap_data
Lframe_l119:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .pcmap
.long Ljoin_l28
.long Lframe_l120
.section .pcmap_data
Lframe_l120:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .pcmap
.long Ljoin_l17
.long Lframe_l121
.section .pcmap_data
Lframe_l121:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .pcmap
.long Ljoin_l14
.long Lframe_l122
.section .pcmap_data
Lframe_l122:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .pcmap
.long Ljoin_l11
.long Lframe_l123
.section .pcmap_data
Lframe_l123:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .pcmap
.long Ljoin_l23
.long Lframe_l124
.section .pcmap_data
Lframe_l124:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .pcmap
.long Ljoin_l20
.long Lframe_l125
.section .pcmap_data
Lframe_l125:
.long 0x80000008
.long 0xffffff28
.long 0xffffff34
.long Lstackdata_l101
.long 1
.long 11
.long 0
.long 1
.long 11
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
.section .text
_stdprint:
	leal -16(%esp), %esp
	leal 16(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l128:
Lproc_body_start_l127:
	leal -8(%esp), %esp
	leal _s_stdout,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl %edi,8(%esp)
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl %eax,12(%esp)
	movl %edi,%eax
	leal 24(%esp), %edi
	movl $-24,%edx
	addl %edx,%edi
	movl 12(%esp),%edx
	movl %edx,(%edi)
	movl $1,%edi
	leal 24(%esp), %edx
	movl %edi,16(%esp)
	movl $-20,%edi
	addl %edi,%edx
	movl 16(%esp),%edi
	movl %edi,(%edx)
	leal _xlprint,%edi
	movl (%edi),%edi
	movl %ecx,20(%esp)
	call *%edi
Ljoin_l135:
	leal _s_stdout,%edi
	movl (%edi),%edi
	movl (%edi),%edi
	movl $8,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal _xlterpri,%edi
	movl (%edi),%edi
	call *%edi
Ljoin_l132:
_i_48:
	leal 16(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 12(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 16(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l140:
.long 0
.section .pcmap
.long Ljoin_l135
.long Lframe_l141
.section .pcmap_data
Lframe_l141:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long Lstackdata_l140
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.section .pcmap
.long Ljoin_l132
.long Lframe_l142
.section .pcmap_data
Lframe_l142:
.long 0x80000004
.long 0xfffffff0
.long 0xfffffffc
.long Lstackdata_l140
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff0
.long 0
.long 0
.section .text
_stdputstr:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l145:
Lproc_body_start_l144:
	leal -4(%esp), %esp
	leal _s_stdout,%edx
	movl (%edx),%edx
	movl (%edx),%edx
	movl %edi,4(%esp)
	movl $8,%edi
	addl %edi,%edx
	movl (%edx),%edi
	movl %eax,8(%esp)
	movl %edi,%eax
	leal 16(%esp), %edi
	movl $-16,%edx
	addl %edx,%edi
	movl 8(%esp),%edx
	movl %edx,(%edi)
	leal _xlputstr,%edi
	movl (%edi),%edi
	movl %ecx,12(%esp)
	call *%edi
Ljoin_l149:
_i_49:
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl (%esp),%edi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l154:
.long 0
.section .pcmap
.long Ljoin_l149
.long Lframe_l155
.section .pcmap_data
Lframe_l155:
.long 0x80000004
.long 0xfffffff4
.long 0xfffffffc
.long Lstackdata_l154
.long 1
.long 1
.long 0
.long 1
.long 11
.long 0xfffffff4
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

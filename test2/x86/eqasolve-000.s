.globl _main
.globl _stdprint
.globl _stdputstr
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .text
.section .text
_main:
	leal -208(%esp), %esp
	movl $4,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	leal 208(%esp), %edx
	movl (%edx),%edx
Linitialize_continuations_l6:
Lproc_body_start_l5:
	movl %eax,(%esp)
	leal _i_18,%eax
	movl (%eax),%eax
	movl %ecx,4(%esp)
	leal _osinit,%ecx
	movl (%ecx),%ecx
	movl %edx,8(%esp)
	call *%ecx
Ljoin_l95:
	leal -8(%esp), %esp
	movl $-180,%eax
	leal 216(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $72,%ecx
	movl $-216,%edx
	movl %ebx,20(%esp)
	leal 216(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	movl $1,%ecx
	movl $-212,%ebx
	leal 216(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal _xlbegin,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l92:
	movl $8,%eax
	movl $-180,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal __setjmp,%edx
	movl (%edx),%ecx
	call *%ecx
Ljoin_l89:
	movl $0,%ecx
	cmpl %ecx,%eax
	je Ljoin_l85
Ljoin_l86:
	leal _i_22,%eax
	movl (%eax),%eax
	leal _printf,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l84:
	leal _osfinish,%eax
	movl (%eax),%ecx
	call *%ecx
Ljoin_l81:
	movl $1,%eax
	leal _exit,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l78:
	jmp _i_19
Ljoin_l85:
	jmp _i_19
_i_19:
	leal _xlinit,%eax
	movl (%eax),%ecx
	call *%ecx
Ljoin_l75:
	movl $-180,%eax
	leal 208(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal _xlend,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l72:
	leal -8(%esp), %esp
	movl $-180,%eax
	leal 216(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal _true,%ecx
	movl (%ecx),%edx
	movl $-212,%ecx
	leal 216(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl $72,%ecx
	movl $-216,%ebx
	leal 216(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal _xlbegin,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l69:
	movl $8,%eax
	movl $-180,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal __setjmp,%edx
	movl (%edx),%ecx
	call *%ecx
Ljoin_l66:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l62
Ljoin_l63:
	movl $0,%eax
	leal -8(%esp), %esp
	leal _i_26,%ecx
	movl (%ecx),%edx
	movl %eax,24(%esp)
	movl %edx,%eax
	movl $-216,%edx
	leal 216(%esp), %ecx
	addl %edx,%ecx
	movl 24(%esp),%edx
	movl %edx,(%ecx)
	movl $-212,%ecx
	leal 216(%esp), %ebx
	addl %ecx,%ebx
	movl %edx,(%ebx)
	leal _xlload,%edx
	movl (%edx),%ebx
	call *%ebx
Ljoin_l61:
	jmp _i_23
Ljoin_l62:
	jmp _i_23
_i_23:
	movl $8,%eax
	movl $-180,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal __setjmp,%edx
	movl (%edx),%ecx
	call *%ecx
Ljoin_l58:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l54
Ljoin_l55:
	movl $1,%eax
	jmp _i_33
_i_33:
	movl (%esp),%ecx
	cmpl %ecx,%eax
	jl Ljoin_l45
Ljoin_l100:
	jmp _i_27
Ljoin_l45:
	jmp _i_30
_i_30:
	leal -8(%esp), %esp
	movl $2,%ebx
	movl %eax,%edx
	movl %ebx,%ecx
	shll %cl, %edx
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl (%edx),%ebx
	movl %eax,28(%esp)
	movl %ebx,%eax
	movl $1,%ebx
	movl $-216,%edx
	leal 216(%esp), %ecx
	addl %edx,%ecx
	movl %ebx,(%ecx)
	movl $0,%ecx
	movl $-212,%ebx
	leal 216(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal _xlload,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l53:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l49
Ljoin_l50:
	leal _i_36,%eax
	movl (%eax),%eax
	leal _xlfail,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l48:
	jmp _i_34
Ljoin_l49:
	jmp _i_34
_i_34:
_i_31:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	jmp _i_33
Ljoin_l54:
	jmp _i_27
_i_27:
	leal -4(%esp), %esp
	movl $-184,%ecx
	leal 212(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%ecx
	movl %ecx,%eax
	movl $0,%ecx
	movl $-212,%edx
	leal 212(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal _xlsave,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l44:
	jmp _i_38
_i_38:
	jmp _i_37
_i_37:
	movl $8,%eax
	movl $-180,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal __setjmp,%edx
	movl (%edx),%ecx
	call *%ecx
Ljoin_l41:
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	je Ljoin_l37
Ljoin_l38:
	movl $64,%eax
	cmpl %eax,%ecx
	jne Ljoin_l35
Ljoin_l36:
	leal _i_45,%eax
	movl (%eax),%ecx
	movl %ecx,%eax
	leal _stdputstr,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l34:
	jmp _i_43
Ljoin_l35:
	jmp _i_43
_i_43:
	movl $0,%eax
	movl $8,%ecx
	leal _s_evalhook,%edx
	movl (%edx),%ebx
	movl (%ebx),%edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $8,%edx
	leal _s_applyhook,%ecx
	movl (%ecx),%ebx
	movl (%ebx),%ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	leal _xldebug,%ecx
	movl %eax,(%ecx)
	leal _xlflush,%eax
	movl (%eax),%ecx
	call *%ecx
Ljoin_l31:
	jmp _i_40
Ljoin_l37:
	jmp _i_40
_i_40:
	leal -8(%esp), %esp
	movl $8,%eax
	leal _s_stdin,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $-184,%ecx
	leal 216(%esp), %edx
	addl %ecx,%edx
	movl $-216,%ecx
	leal 216(%esp), %ebx
	addl %ecx,%ebx
	movl (%edx),%ecx
	movl %ecx,(%ebx)
	movl $0,%ecx
	movl $-212,%ebx
	leal 216(%esp), %edx
	addl %ebx,%edx
	movl %ecx,(%edx)
	leal _xlread,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l28:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne Ljoin_l24
Ljoin_l25:
	jmp _i_39
_i_39:
	movl $-180,%eax
	leal 208(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal _xlend,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l17:
	leal _osfinish,%eax
	movl (%eax),%ecx
	call *%ecx
Ljoin_l14:
	movl $0,%eax
	leal _exit,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l11:
	movl $0,%eax
	movl $4,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebx
	leal 212(%esp), %esp
	ret
Ljoin_l24:
	jmp _i_46
_i_46:
	movl $-184,%ebx
	leal 208(%esp), %ecx
	addl %ebx,%ecx
	movl (%ecx),%ebx
	movl (%ebx),%eax
	leal _xleval,%ebx
	movl (%ebx),%ecx
	call *%ecx
Ljoin_l23:
	movl $-184,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-184,%eax
	leal 208(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl (%eax),%eax
	leal _stdprint,%edx
	movl (%edx),%ecx
	call *%ecx
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
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l92
.long Lframe_l103
.section .pcmap_data
Lframe_l103:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l89
.long Lframe_l104
.section .pcmap_data
Lframe_l104:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l84
.long Lframe_l105
.section .pcmap_data
Lframe_l105:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l81
.long Lframe_l106
.section .pcmap_data
Lframe_l106:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l78
.long Lframe_l107
.section .pcmap_data
Lframe_l107:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l75
.long Lframe_l108
.section .pcmap_data
Lframe_l108:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l72
.long Lframe_l109
.section .pcmap_data
Lframe_l109:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l69
.long Lframe_l110
.section .pcmap_data
Lframe_l110:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l66
.long Lframe_l111
.section .pcmap_data
Lframe_l111:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l61
.long Lframe_l112
.section .pcmap_data
Lframe_l112:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l58
.long Lframe_l113
.section .pcmap_data
Lframe_l113:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
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
.long 0x80000000
.section .pcmap
.long Ljoin_l53
.long Lframe_l114
.section .pcmap_data
Lframe_l114:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
.long 0xffffff34
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l48
.long Lframe_l115
.section .pcmap_data
Lframe_l115:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0xffffff30
.long 0xffffff34
.long 0xffffff44
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l44
.long Lframe_l116
.section .pcmap_data
Lframe_l116:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .pcmap
.long Ljoin_l41
.long Lframe_l117
.section .pcmap_data
Lframe_l117:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .pcmap
.long Ljoin_l34
.long Lframe_l118
.section .pcmap_data
Lframe_l118:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .pcmap
.long Ljoin_l31
.long Lframe_l119
.section .pcmap_data
Lframe_l119:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .pcmap
.long Ljoin_l28
.long Lframe_l120
.section .pcmap_data
Lframe_l120:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .pcmap
.long Ljoin_l17
.long Lframe_l121
.section .pcmap_data
Lframe_l121:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .pcmap
.long Ljoin_l14
.long Lframe_l122
.section .pcmap_data
Lframe_l122:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .pcmap
.long Ljoin_l11
.long Lframe_l123
.section .pcmap_data
Lframe_l123:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .pcmap
.long Ljoin_l23
.long Lframe_l124
.section .pcmap_data
Lframe_l124:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .pcmap
.long Ljoin_l20
.long Lframe_l125
.section .pcmap_data
Lframe_l125:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long Lstackdata_l101
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xffffff3c
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
.long 0x80000000
.section .text
_stdprint:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l128:
Lproc_body_start_l127:
	leal -8(%esp), %esp
	movl $8,%ecx
	movl %eax,8(%esp)
	leal _s_stdout,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-20,%ecx
	movl %edx,12(%esp)
	leal 20(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl $1,%ecx
	movl $-16,%edx
	movl %ebx,16(%esp)
	leal 20(%esp), %ebx
	addl %edx,%ebx
	movl %ecx,(%ebx)
	leal _xlprint,%ecx
	movl (%ecx),%ebx
	call *%ebx
Ljoin_l135:
	movl $8,%eax
	leal _s_stdout,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal _xlterpri,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l132:
_i_48:
	movl $0,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l140:
.long 0
.section .pcmap
.long Ljoin_l135
.long Lframe_l141
.section .pcmap_data
Lframe_l141:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffff8
.long Lstackdata_l140
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l132
.long Lframe_l142
.section .pcmap_data
Lframe_l142:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffff8
.long Lstackdata_l140
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000001
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0x80000000
.section .text
_stdputstr:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%edx
Linitialize_continuations_l145:
Lproc_body_start_l144:
	leal -4(%esp), %esp
	movl $8,%ecx
	movl %eax,4(%esp)
	leal _s_stdout,%eax
	movl (%eax),%eax
	movl (%eax),%eax
	addl %ecx,%eax
	movl (%eax),%eax
	movl $-12,%ecx
	movl %edx,8(%esp)
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl 4(%esp),%ecx
	movl %ecx,(%edx)
	leal _xlputstr,%ecx
	movl (%ecx),%edx
	call *%edx
Ljoin_l149:
_i_49:
	movl $0,%eax
	leal 8(%esp), %ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l154:
.long 0
.section .pcmap
.long Ljoin_l149
.long Lframe_l155
.section .pcmap_data
Lframe_l155:
.long 0xfffffff8
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l154
.long 0x80000008
.long 0x80000001
.long 0x80000000
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
.long 0x80000000
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

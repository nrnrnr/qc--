.globl _main
.globl _stdprint
.globl _stdputstr
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
initialize_continuations_l3:
	movl %eax,(%esp)
	leal _i_18,%eax
	movl (%eax),%eax
	movl %ecx,4(%esp)
	leal _osinit,%ecx
	movl (%ecx),%ecx
	movl %edx,8(%esp)
	call *%ecx
join_l92:
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
join_l89:
	movl $8,%eax
	movl $-180,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal __setjmp,%edx
	movl (%edx),%ecx
	call *%ecx
join_l86:
	movl $0,%ecx
	cmpl %ecx,%eax
	je join_l82
join_l83:
	leal _i_22,%eax
	movl (%eax),%eax
	leal _printf,%ecx
	movl (%ecx),%edx
	call *%edx
join_l81:
	leal _osfinish,%eax
	movl (%eax),%ecx
	call *%ecx
join_l78:
	movl $1,%eax
	leal _exit,%ecx
	movl (%ecx),%edx
	call *%edx
join_l75:
	jmp _i_19
join_l82:
	jmp _i_19
_i_19:
	leal _xlinit,%eax
	movl (%eax),%ecx
	call *%ecx
join_l72:
	movl $-180,%eax
	leal 208(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal _xlend,%ecx
	movl (%ecx),%edx
	call *%edx
join_l69:
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
join_l66:
	movl $8,%eax
	movl $-180,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	addl %eax,%edx
	movl (%edx),%eax
	leal __setjmp,%edx
	movl (%edx),%ecx
	call *%ecx
join_l63:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l59
join_l60:
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
join_l58:
	jmp _i_23
join_l59:
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
join_l55:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l51
join_l52:
	movl $1,%eax
	jmp _i_33
_i_33:
	movl (%esp),%ecx
	cmpl %ecx,%eax
	jl join_l42
join_l97:
	jmp _i_27
join_l42:
	jmp _i_30
_i_30:
	leal -8(%esp), %esp
	movl $2,%ebx
	movl %eax,%edx
	movl %ecx,8(%esp)
	movl %ebx,%ecx
	shll %cl, %edx
	movl 12(%esp),%ecx
	addl %ecx,%edx
	movl (%edx),%ebx
	movl %eax,28(%esp)
	movl %ebx,%eax
	movl $1,%ebx
	movl $-216,%edx
	movl %ecx,12(%esp)
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
join_l50:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l46
join_l47:
	leal _i_36,%eax
	movl (%eax),%eax
	leal _xlfail,%ecx
	movl (%ecx),%edx
	call *%edx
join_l45:
	jmp _i_34
join_l46:
	jmp _i_34
_i_34:
_i_31:
	movl $1,%eax
	movl 20(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	jmp _i_33
join_l51:
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
join_l41:
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
join_l38:
	movl %eax,%ecx
	movl $0,%edx
	cmpl %edx,%eax
	je join_l34
join_l35:
	movl $64,%eax
	cmpl %eax,%ecx
	jne join_l32
join_l33:
	leal _i_45,%eax
	movl (%eax),%ecx
	movl %ecx,%eax
	leal _stdputstr,%ecx
	movl (%ecx),%edx
	call *%edx
join_l31:
	jmp _i_43
join_l32:
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
join_l28:
	jmp _i_40
join_l34:
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
join_l25:
	movl $0,%ecx
	cmpl %ecx,%eax
	jne join_l21
join_l22:
	jmp _i_39
_i_39:
	movl $-180,%eax
	leal 208(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal _xlend,%ecx
	movl (%ecx),%edx
	call *%edx
join_l14:
	leal _osfinish,%eax
	movl (%eax),%ecx
	call *%ecx
join_l11:
	movl $0,%eax
	leal _exit,%ecx
	movl (%ecx),%edx
	call *%edx
join_l8:
	movl $0,%eax
	movl $4,%ecx
	leal 208(%esp), %edx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 12(%esp),%ebx
	leal 212(%esp), %esp
	ret
join_l21:
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
join_l20:
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
join_l17:
	jmp _i_38
.section .pcmap_data
stackdata_l98:
.long 2
.long 0xffffff48
.long 0xffffff4c
.section .pcmap
.long join_l92
.long frame_l99
.section .pcmap_data
frame_l99:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l89
.long frame_l100
.section .pcmap_data
frame_l100:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l86
.long frame_l101
.section .pcmap_data
frame_l101:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l81
.long frame_l102
.section .pcmap_data
frame_l102:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l78
.long frame_l103
.section .pcmap_data
frame_l103:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l75
.long frame_l104
.section .pcmap_data
frame_l104:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l72
.long frame_l105
.section .pcmap_data
frame_l105:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l69
.long frame_l106
.section .pcmap_data
frame_l106:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l66
.long frame_l107
.section .pcmap_data
frame_l107:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l63
.long frame_l108
.section .pcmap_data
frame_l108:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l58
.long frame_l109
.section .pcmap_data
frame_l109:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l55
.long frame_l110
.section .pcmap_data
frame_l110:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l50
.long frame_l111
.section .pcmap_data
frame_l111:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l45
.long frame_l112
.section .pcmap_data
frame_l112:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l41
.long frame_l113
.section .pcmap_data
frame_l113:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l38
.long frame_l114
.section .pcmap_data
frame_l114:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l31
.long frame_l115
.section .pcmap_data
frame_l115:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l28
.long frame_l116
.section .pcmap_data
frame_l116:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l25
.long frame_l117
.section .pcmap_data
frame_l117:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l20
.long frame_l118
.section .pcmap_data
frame_l118:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l17
.long frame_l119
.section .pcmap_data
frame_l119:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l14
.long frame_l120
.section .pcmap_data
frame_l120:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l11
.long frame_l121
.section .pcmap_data
frame_l121:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .pcmap
.long join_l8
.long frame_l122
.section .pcmap_data
frame_l122:
.long 0xffffff30
.long 0x80000008
.long 0xffffff38
.long stackdata_l98
.long 0x80000008
.long 0x8000000b
.long 0x80000000
.long 0x80000000
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
.section .text
_stdprint:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l125:
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
join_l132:
	movl $8,%eax
	leal _s_stdout,%ecx
	movl (%ecx),%edx
	movl (%edx),%ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	leal _xlterpri,%ecx
	movl (%ecx),%edx
	call *%edx
join_l129:
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
stackdata_l137:
.long 0
.section .pcmap
.long join_l132
.long frame_l138
.section .pcmap_data
frame_l138:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffff8
.long stackdata_l137
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .pcmap
.long join_l129
.long frame_l139
.section .pcmap_data
frame_l139:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffff8
.long stackdata_l137
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0xfffffffc
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.section .text
_stdputstr:
	leal -8(%esp), %esp
	leal 8(%esp), %ecx
	movl (%ecx),%edx
initialize_continuations_l142:
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
join_l146:
_i_49:
	movl $0,%eax
	leal 8(%esp), %ecx
	addl %eax,%ecx
	movl 4(%esp),%eax
	movl %eax,(%ecx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l151:
.long 0
.section .pcmap
.long join_l146
.long frame_l152
.section .pcmap_data
frame_l152:
.long 0xfffffff8
.long 0x80000004
.long 0xfffffffc
.long stackdata_l151
.long 0x80000008
.long 0x80000001
.long 0x80000000
.long 0x80000000
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
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

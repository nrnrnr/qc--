.globl main
.globl f
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
.section .text
main:
	leal -112(%esp), %esp
	leal 112(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	leal 112(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 112(%esp), %edx
	movl (%edx),%edx
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
.Lbranch_target_l35:
.Lbranch_target_l45:
	movl %eax,28(%esp)
	movl $1,%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	jg L.2
.Lbranch_target_l34:
	leal f_4,%eax
	leal 112(%esp), %ecx
	movl %eax,52(%esp)
	movl $-100,%eax
	addl %eax,%ecx
	movl 52(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
.LL.3_l46:
	movl %edx,48(%esp)
	jmp L.3
L.2:
	movl $4,%eax
	movl 32(%esp),%ecx
	addl %eax,%ecx
	leal 112(%esp), %eax
	movl %eax,36(%esp)
	movl $-112,%eax
	movl %eax,40(%esp)
	movl 36(%esp),%eax
	movl %ecx,44(%esp)
	movl 40(%esp),%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	movl %edx,48(%esp)
	call atof
.Lcall_successor_l33:
	leal 112(%esp), %eax
	movl $-96,%ecx
	addl %ecx,%eax
	fstps (%eax)
	leal f_5,%eax
	flds (%eax)
	leal 112(%esp), %eax
	movl $-96,%ecx
	addl %ecx,%eax
	flds (%eax)
	fdivp
	leal 112(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	fstps (%eax)
L.3:
	movl $0,%eax
L.6:
	movl $1,%ecx
	movl %eax,%edx
	addl %ecx,%edx
	leal f_4,%ecx
	movl %eax,56(%esp)
	movl $2,%eax
	movl %eax,60(%esp)
	movl 56(%esp),%eax
	movl %ecx,64(%esp)
	movl 60(%esp),%ecx
	shll %cl, %eax
	leal f,%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
L.7:
.Lbranch_target_l30:
.Lbranch_target_l44:
	movl $127,%eax
	cmpl %eax,%edx
.Lbranch_target_l48:
	jle .LL.6_l47
.Lbranch_target_l29:
	movl $0,%eax
L.11:
	movl %eax,68(%esp)
	call getchar
.Lcall_successor_l28:
	movl %eax,%ecx
.Lbranch_target_l25:
.Lbranch_target_l43:
	movl $-1,%edx
	cmpl %edx,%eax
	jne L.10
.Lbranch_target_l24:
	leal i_14,%eax
	leal 112(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l23:
	movl $0,%eax
L.15:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal f,%ecx
	addl %ecx,%edx
	leal 112(%esp), %ecx
	movl %eax,76(%esp)
	movl $-92,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
.Lbranch_target_l20:
.Lbranch_target_l42:
	leal f_4,%eax
	flds (%eax)
	leal 112(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz L.19
.Lbranch_target_l19:
.Lbranch_target_l41:
	leal 112(%esp), %eax
	movl $-88,%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-88,%edx
	addl %edx,%eax
	fildl (%eax)
	leal 112(%esp), %eax
	movl $-92,%edx
	addl %edx,%eax
	flds (%eax)
	fdivp
	leal 112(%esp), %eax
	movl $-100,%edx
	addl %edx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.19
.Lbranch_target_l18:
.Lbranch_target_l40:
	movl $32,%eax
	movl 76(%esp),%edx
	cmpl %eax,%edx
	jg L.21
.Lbranch_target_l17:
	leal i_23,%eax
	movl %eax,92(%esp)
	leal 112(%esp), %eax
	movl %eax,96(%esp)
	movl $-112,%eax
	movl %eax,100(%esp)
	movl 96(%esp),%eax
	movl 100(%esp),%ecx
	addl %ecx,%eax
	movl 92(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l16:
	jmp L.22
L.21:
	leal i_24,%eax
	movl %eax,80(%esp)
	leal 112(%esp), %eax
	movl %eax,84(%esp)
	movl $-112,%eax
	movl %eax,88(%esp)
	movl 84(%esp),%eax
	movl 88(%esp),%ecx
	addl %ecx,%eax
	movl 80(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Lcall_successor_l13:
L.22:
	leal 112(%esp), %eax
	movl $-88,%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-88,%edx
	addl %edx,%eax
	fildl (%eax)
	movl $2,%eax
	movl %eax,104(%esp)
	movl 76(%esp),%edx
	movl %edx,%eax
	movl 104(%esp),%ecx
	shll %cl, %eax
	leal f,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal f_5,%eax
	flds (%eax)
	fmulp
	fdivp
	leal 112(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal i_25,%eax
	leal 112(%esp), %ecx
	movl %eax,108(%esp)
	movl $-112,%eax
	addl %eax,%ecx
	movl 108(%esp),%eax
	movl %eax,(%ecx)
	call printf
.Lcall_successor_l10:
L.19:
L.16:
	movl $1,%eax
	movl 76(%esp),%ecx
	addl %eax,%ecx
.Lbranch_target_l7:
.Lbranch_target_l39:
	movl $127,%eax
	cmpl %eax,%ecx
.Lbranch_target_l51:
	jle .LL.15_l50
.Lbranch_target_l6:
	movl $0,%eax
	leal 112(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 112(%esp), %esp
	ret
.LL.15_l50:
	movl %ecx,%eax
	jmp L.15
L.10:
	movl $2,%eax
	movl %ecx,72(%esp)
	movl %eax,%ecx
	movl 72(%esp),%eax
	shll %cl, %eax
	leal f,%ecx
	addl %ecx,%eax
	leal f_13,%ecx
	flds (%ecx)
	flds (%eax)
	faddp
	fstps (%eax)
	movl $1,%eax
	movl 68(%esp),%ecx
	addl %eax,%ecx
.LL.11_l49:
	movl %ecx,%eax
	jmp L.11
.LL.6_l47:
	movl %edx,%eax
	jmp L.6
.section .pcmap_data
.Lstackdata_l55:
.long 0
.section .pcmap
.long .Lcall_successor_l33
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l55
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff9c
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0xffffffa4
.long 0
.section .pcmap
.long .Lcall_successor_l28
.long .Lframe_l57
.section .pcmap_data
.Lframe_l57:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l55
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0xffffff9c
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0xffffffa4
.long 0
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l55
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffffd4
.long 0
.long 0xffffff9c
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0xffffffa4
.long 0
.section .pcmap
.long .Lcall_successor_l16
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l55
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0xffffffdc
.long 0xffffffd4
.long 0
.long 0xffffff9c
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0xffffffa4
.long 0
.section .pcmap
.long .Lcall_successor_l13
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l55
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0xffffffdc
.long 0xffffffd4
.long 0
.long 0xffffff9c
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0xffffffa4
.long 0
.section .pcmap
.long .Lcall_successor_l10
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l55
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0xffffffdc
.long 0xffffffd4
.long 0
.long 0xffffff9c
.long 0xffffffa0
.long 0
.long 0
.long 0
.long 0xffffffa4
.long 0
.section .text
.section .bss
.align 4
f:
.skip 512, 0
.section .data
i_25:
.byte 9
.byte 37
.byte 46
.byte 49
.byte 102
.byte 10
.byte 0
i_24:
.byte 37
.byte 99
.byte 0
i_23:
.byte 37
.byte 48
.byte 51
.byte 111
.byte 0
i_14:
.byte 99
.byte 104
.byte 97
.byte 114
.byte 9
.byte 102
.byte 114
.byte 101
.byte 113
.byte 10
.byte 0
.align 4
f_13:
.long 0x3f800000
.align 4
f_5:
.long 0x42c80000
.align 4
f_4:
.long 0

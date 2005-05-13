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
	leal -40(%esp), %esp
	leal 40(%esp), %eax
	movl $4,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	leal 40(%esp), %edx
	movl $8,%eax
	addl %eax,%edx
	movl (%edx),%eax
	leal 40(%esp), %edx
	movl (%edx),%edx
	movl %edx,36(%esp)
	movl %edi,32(%esp)
	movl %esi,28(%esp)
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
.Lbranch_target_l37:
	movl $1,%edx
	cmpl %edx,%ecx
	jg L.2
.Lbranch_target_l30:
	leal f_4,%ecx
	leal 40(%esp), %eax
	movl $-28,%edx
	addl %edx,%eax
	movl (%ecx),%ecx
	movl %ecx,(%eax)
	jmp L.3
L.2:
	movl $4,%ecx
	addl %ecx,%eax
	leal 40(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	call atof
.Lcall_successor_l29:
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fstps (%eax)
	leal f_5,%eax
	flds (%eax)
	leal 40(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	flds (%eax)
	fdivp
	leal 40(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	fstps (%eax)
L.3:
	movl $0,%esi
L.6:
	movl %esi,%eax
	movl $1,%ecx
	movl %eax,%esi
	addl %ecx,%esi
	leal f_4,%edx
	movl $2,%ecx
	shll %cl, %eax
	leal f,%ecx
	addl %ecx,%eax
	movl (%edx),%ecx
	movl %ecx,(%eax)
L.7:
.Lbranch_target_l38:
	movl $127,%eax
	cmpl %eax,%esi
	jle L.6
.Lbranch_target_l26:
	movl $0,%edi
L.11:
	call getchar
.Lcall_successor_l25:
.Lbranch_target_l34:
	movl $-1,%ecx
	cmpl %ecx,%eax
	jne L.10
.Lbranch_target_l22:
	leal i_14,%ecx
	leal 40(%esp), %eax
	movl $-40,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l21:
	movl $0,%esi
L.15:
	movl $2,%ecx
	movl %esi,%edx
	shll %cl, %edx
	leal f,%eax
	addl %eax,%edx
	leal 40(%esp), %ecx
	movl $-20,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
.Lbranch_target_l39:
	leal f_4,%eax
	flds (%eax)
	leal 40(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz L.19
.Lbranch_target_l18:
.Lbranch_target_l35:
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 40(%esp), %eax
	movl $-20,%ecx
	addl %ecx,%eax
	flds (%eax)
	fdivp
	leal 40(%esp), %eax
	movl $-28,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja L.19
.Lbranch_target_l17:
.Lbranch_target_l36:
	movl $32,%eax
	cmpl %eax,%esi
	jg L.21
.Lbranch_target_l16:
	leal i_23,%eax
	leal 40(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call printf
.Lcall_successor_l15:
	jmp L.22
L.21:
	leal i_24,%eax
	leal 40(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %esi,(%eax)
	call printf
.Lcall_successor_l12:
L.22:
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	leal 40(%esp), %eax
	movl $-16,%ecx
	addl %ecx,%eax
	fildl (%eax)
	movl $2,%ecx
	movl %esi,%eax
	shll %cl, %eax
	leal f,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal f_5,%eax
	flds (%eax)
	fmulp
	fdivp
	leal 40(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal i_25,%eax
	leal 40(%esp), %edx
	movl $-40,%ecx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
.Lcall_successor_l9:
L.19:
L.16:
	movl $1,%eax
	addl %eax,%esi
.Lbranch_target_l40:
	movl $127,%eax
	cmpl %eax,%esi
	jle L.15
.Lbranch_target_l6:
	movl $0,%eax
	leal 40(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 36(%esp),%edx
	movl %edx,(%ecx)
	movl 32(%esp),%edi
	movl 28(%esp),%esi
	leal 40(%esp), %esp
	ret
L.10:
	movl $2,%ecx
	shll %cl, %eax
	leal f,%ecx
	addl %ecx,%eax
	leal f_13,%ecx
	flds (%ecx)
	flds (%eax)
	faddp
	fstps (%eax)
	movl $1,%eax
	addl %eax,%edi
	jmp L.11
.section .pcmap_data
.Lstackdata_l44:
.long 0
.section .pcmap
.long .Lcall_successor_l29
.long .Lframe_l45
.section .pcmap_data
.Lframe_l45:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l44
.long 2
.long 11
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.section .pcmap
.long .Lcall_successor_l25
.long .Lframe_l46
.section .pcmap_data
.Lframe_l46:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l44
.long 2
.long 11
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.section .pcmap
.long .Lcall_successor_l21
.long .Lframe_l47
.section .pcmap_data
.Lframe_l47:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l44
.long 2
.long 11
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0x4000000b
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.section .pcmap
.long .Lcall_successor_l15
.long .Lframe_l48
.section .pcmap_data
.Lframe_l48:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l44
.long 2
.long 11
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0x4000000a
.long 0x4000000b
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.section .pcmap
.long .Lcall_successor_l12
.long .Lframe_l49
.section .pcmap_data
.Lframe_l49:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l44
.long 2
.long 11
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0x4000000a
.long 0x4000000b
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0xffffffec
.long 0
.section .pcmap
.long .Lcall_successor_l9
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000004
.long 0xffffffd8
.long 0xfffffffc
.long .Lstackdata_l44
.long 2
.long 11
.long 0
.long 1
.long 11
.long 0xfffffff8
.long 10
.long 0xfffffff4
.long 0
.long 0
.long 0x4000000a
.long 0x4000000b
.long 0
.long 0xffffffe4
.long 0xffffffe8
.long 0
.long 0
.long 0
.long 0xffffffec
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

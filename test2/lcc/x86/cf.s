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
.Linitialize_continuations_l4:
.Lproc_body_start_l3:
	movl %eax,28(%esp)
	movl $1,%eax
	movl %ecx,32(%esp)
	movl 28(%esp),%ecx
	cmpl %eax,%ecx
	jg .Ljoin_l37
.Ljoin_l38:
	leal f_4,%eax
	leal 112(%esp), %ecx
	movl %eax,52(%esp)
	movl $-100,%eax
	addl %eax,%ecx
	movl 52(%esp),%eax
	movl (%eax),%eax
	movl %eax,(%ecx)
	jmp L.3
.Ljoin_l37:
	jmp L.2
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
.Ljoin_l36:
	leal 112(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	fstps (%eax)
	leal f_5,%eax
	flds (%eax)
	leal 112(%esp), %eax
	movl $-92,%ecx
	addl %ecx,%eax
	flds (%eax)
	fdivp
	leal 112(%esp), %eax
	movl $-100,%ecx
	addl %ecx,%eax
	fstps (%eax)
	movl 48(%esp),%edx
	jmp L.3
L.3:
	movl $0,%eax
	jmp L.6
L.6:
	movl $1,%ecx
	movl %eax,56(%esp)
	addl %ecx,%eax
	leal f_4,%ecx
	movl %eax,60(%esp)
	movl $2,%eax
	movl %eax,64(%esp)
	movl 56(%esp),%eax
	movl %ecx,68(%esp)
	movl 64(%esp),%ecx
	shll %cl, %eax
	leal f,%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl (%ecx),%ecx
	movl %ecx,(%eax)
L.7:
	movl $127,%eax
	movl 60(%esp),%ecx
	cmpl %eax,%ecx
	jle .Ljoin_l32
.Ljoin_l33:
	movl $0,%eax
	jmp L.11
L.11:
	movl %edx,48(%esp)
	movl %eax,72(%esp)
	call getchar
.Ljoin_l31:
	movl %eax,%ecx
	movl $-1,%edx
	cmpl %edx,%eax
	jne .Ljoin_l27
.Ljoin_l28:
	leal i_14,%eax
	leal 112(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
.Ljoin_l26:
	movl $0,%eax
	jmp L.15
L.15:
	movl $2,%ecx
	movl %eax,%edx
	shll %cl, %edx
	leal f,%ecx
	addl %ecx,%edx
	leal 112(%esp), %ecx
	movl %eax,60(%esp)
	movl $-96,%eax
	addl %eax,%ecx
	movl (%edx),%eax
	movl %eax,(%ecx)
	leal f_4,%eax
	flds (%eax)
	leal 112(%esp), %eax
	movl $-96,%ecx
	addl %ecx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	andb $69,%ah
	xorb $64,%ah
	jz .Ljoin_l22
.Ljoin_l23:
	leal 112(%esp), %eax
	movl $-88,%ecx
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-88,%edx
	addl %edx,%eax
	fildl (%eax)
	leal 112(%esp), %eax
	movl $-96,%edx
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
	ja .Ljoin_l20
.Ljoin_l21:
	movl $32,%eax
	movl 60(%esp),%edx
	cmpl %eax,%edx
	jg .Ljoin_l18
.Ljoin_l19:
	leal i_23,%eax
	movl %eax,88(%esp)
	leal 112(%esp), %eax
	movl %eax,92(%esp)
	movl $-112,%eax
	movl %eax,96(%esp)
	movl 92(%esp),%eax
	movl 96(%esp),%ecx
	addl %ecx,%eax
	movl 88(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Ljoin_l17:
	jmp L.22
.Ljoin_l18:
	jmp L.21
L.21:
	leal i_24,%eax
	movl %eax,76(%esp)
	leal 112(%esp), %eax
	movl %eax,80(%esp)
	movl $-112,%eax
	movl %eax,84(%esp)
	movl 80(%esp),%eax
	movl 84(%esp),%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-108,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	call printf
.Ljoin_l14:
	jmp L.22
L.22:
	leal 112(%esp), %eax
	movl $-88,%ecx
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	leal 112(%esp), %eax
	movl $-88,%edx
	addl %edx,%eax
	fildl (%eax)
	movl $2,%eax
	movl %eax,100(%esp)
	movl 60(%esp),%edx
	movl %edx,%eax
	movl 100(%esp),%ecx
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
	movl %eax,104(%esp)
	movl $-112,%eax
	addl %eax,%ecx
	movl 104(%esp),%eax
	movl %eax,(%ecx)
	call printf
.Ljoin_l11:
	movl 72(%esp),%ecx
	jmp L.19
.Ljoin_l20:
	jmp L.19
.Ljoin_l22:
	jmp .Ljoin_l42
.Ljoin_l42:
	movl 72(%esp),%ecx
	jmp L.19
L.19:
L.16:
	movl $1,%eax
	movl 60(%esp),%edx
	addl %eax,%edx
	movl $127,%eax
	cmpl %eax,%edx
	jle .Ljoin_l7
.Ljoin_l8:
	movl $0,%eax
	leal 112(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 48(%esp),%edx
	movl %edx,(%ecx)
	leal 112(%esp), %esp
	ret
.Ljoin_l7:
	jmp .Ljoin_l44
.Ljoin_l44:
	movl %edx,%eax
	jmp L.15
.Ljoin_l27:
	jmp L.10
L.10:
	movl $2,%eax
	movl %ecx,108(%esp)
	movl %eax,%ecx
	movl 108(%esp),%eax
	shll %cl, %eax
	leal f,%ecx
	addl %ecx,%eax
	leal f_13,%ecx
	flds (%ecx)
	flds (%eax)
	faddp
	fstps (%eax)
	movl $1,%eax
	movl 72(%esp),%ecx
	addl %eax,%ecx
	movl %ecx,%eax
	movl 48(%esp),%edx
	jmp L.11
.Ljoin_l32:
	jmp .Ljoin_l43
.Ljoin_l43:
	movl %ecx,%eax
	jmp L.6
.section .pcmap_data
.Lstackdata_l48:
.long 0
.section .pcmap
.long .Ljoin_l36
.long .Lframe_l49
.section .pcmap_data
.Lframe_l49:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l48
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
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0xffffffa0
.long 0
.section .pcmap
.long .Ljoin_l31
.long .Lframe_l50
.section .pcmap_data
.Lframe_l50:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l48
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffffd8
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0xffffffa0
.long 0
.section .pcmap
.long .Ljoin_l26
.long .Lframe_l51
.section .pcmap_data
.Lframe_l51:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l48
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0
.long 0xffffffd8
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0xffffffa0
.long 0
.section .pcmap
.long .Ljoin_l17
.long .Lframe_l52
.section .pcmap_data
.Lframe_l52:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l48
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0xffffffcc
.long 0xffffffd8
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0xffffffa0
.long 0
.section .pcmap
.long .Ljoin_l14
.long .Lframe_l53
.section .pcmap_data
.Lframe_l53:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l48
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0xffffffcc
.long 0xffffffd8
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0xffffffa0
.long 0
.section .pcmap
.long .Ljoin_l11
.long .Lframe_l54
.section .pcmap_data
.Lframe_l54:
.long 0x80000004
.long 0xffffff90
.long 0xffffffc0
.long .Lstackdata_l48
.long 0
.long 11
.long 0
.long 1
.long 0
.long 0
.long 0xffffffcc
.long 0xffffffd8
.long 0
.long 0xffffff9c
.long 0xffffffa4
.long 0
.long 0
.long 0
.long 0xffffffa0
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

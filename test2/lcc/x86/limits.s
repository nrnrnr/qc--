.globl main
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
	leal -80(%esp), %esp
	leal 80(%esp), %eax
	movl (%eax),%eax
.Linitialize_continuations_l3:
.Lproc_body_start_l2:
	movl $255,%ecx
	leal i_2,%edx
	movl %eax,12(%esp)
	leal 80(%esp), %eax
	movl %eax,16(%esp)
	movl $-80,%eax
	movl %eax,20(%esp)
	movl 16(%esp),%eax
	movl %ecx,24(%esp)
	movl 20(%esp),%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 24(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l47:
	movl $65535,%eax
	leal i_3,%ecx
	leal 80(%esp), %edx
	movl %eax,28(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 28(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l44:
	movl $-1,%eax
	leal i_4,%ecx
	leal 80(%esp), %edx
	movl %eax,32(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 32(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l41:
	movl $-1,%eax
	leal i_5,%ecx
	leal 80(%esp), %edx
	movl %eax,36(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 36(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l38:
	movl $127,%eax
	leal i_6,%ecx
	leal 80(%esp), %edx
	movl %eax,40(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 40(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l35:
	movl $127,%eax
	leal i_7,%ecx
	leal 80(%esp), %edx
	movl %eax,44(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 44(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l32:
	movl $32767,%eax
	leal i_8,%ecx
	leal 80(%esp), %edx
	movl %eax,48(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 48(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l29:
	movl $2147483647,%eax
	leal i_9,%ecx
	leal 80(%esp), %edx
	movl %eax,52(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 52(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l26:
	movl $2147483647,%eax
	leal i_10,%ecx
	leal 80(%esp), %edx
	movl %eax,56(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 56(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l23:
	movl $-128,%eax
	leal i_11,%ecx
	leal 80(%esp), %edx
	movl %eax,60(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 60(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l20:
	movl $-128,%eax
	leal i_12,%ecx
	leal 80(%esp), %edx
	movl %eax,64(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 64(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l17:
	movl $-32768,%eax
	leal i_13,%ecx
	leal 80(%esp), %edx
	movl %eax,68(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 68(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l14:
	movl $-2147483648,%eax
	leal i_14,%ecx
	leal 80(%esp), %edx
	movl %eax,72(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 72(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l11:
	movl $-2147483648,%eax
	leal i_15,%ecx
	leal 80(%esp), %edx
	movl %eax,76(%esp)
	movl $-80,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 80(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	movl 76(%esp),%ecx
	movl %ecx,(%eax)
	leal 80(%esp), %eax
	movl $-72,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	call printf
.Lcall_successor_l8:
	movl $0,%eax
	leal 80(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl 12(%esp),%edx
	movl %edx,(%ecx)
	leal 80(%esp), %esp
	ret
.section .pcmap_data
.Lstackdata_l54:
.long 0
.section .pcmap
.long .Lcall_successor_l47
.long .Lframe_l55
.section .pcmap_data
.Lframe_l55:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l44
.long .Lframe_l56
.section .pcmap_data
.Lframe_l56:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l41
.long .Lframe_l57
.section .pcmap_data
.Lframe_l57:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l38
.long .Lframe_l58
.section .pcmap_data
.Lframe_l58:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l35
.long .Lframe_l59
.section .pcmap_data
.Lframe_l59:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l32
.long .Lframe_l60
.section .pcmap_data
.Lframe_l60:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l29
.long .Lframe_l61
.section .pcmap_data
.Lframe_l61:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l26
.long .Lframe_l62
.section .pcmap_data
.Lframe_l62:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l23
.long .Lframe_l63
.section .pcmap_data
.Lframe_l63:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l20
.long .Lframe_l64
.section .pcmap_data
.Lframe_l64:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l17
.long .Lframe_l65
.section .pcmap_data
.Lframe_l65:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l14
.long .Lframe_l66
.section .pcmap_data
.Lframe_l66:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l11
.long .Lframe_l67
.section .pcmap_data
.Lframe_l67:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .pcmap
.long .Lcall_successor_l8
.long .Lframe_l68
.section .pcmap_data
.Lframe_l68:
.long 0x80000004
.long 0xffffffb0
.long 0xffffffbc
.long .Lstackdata_l54
.long 0
.long 14
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
.section .text
.section .data
i_15:
.byte 76
.byte 79
.byte 78
.byte 71
.byte 95
.byte 77
.byte 73
.byte 78
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 108
.byte 120
.byte 61
.byte 37
.byte 108
.byte 100
.byte 10
.byte 0
i_14:
.byte 73
.byte 78
.byte 84
.byte 95
.byte 77
.byte 73
.byte 78
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_13:
.byte 83
.byte 72
.byte 82
.byte 84
.byte 95
.byte 77
.byte 73
.byte 78
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_12:
.byte 83
.byte 67
.byte 72
.byte 65
.byte 82
.byte 95
.byte 77
.byte 73
.byte 78
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_11:
.byte 67
.byte 72
.byte 65
.byte 82
.byte 95
.byte 77
.byte 73
.byte 78
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_10:
.byte 76
.byte 79
.byte 78
.byte 71
.byte 95
.byte 77
.byte 65
.byte 88
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 108
.byte 120
.byte 61
.byte 37
.byte 108
.byte 100
.byte 10
.byte 0
i_9:
.byte 73
.byte 78
.byte 84
.byte 95
.byte 77
.byte 65
.byte 88
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_8:
.byte 83
.byte 72
.byte 82
.byte 84
.byte 95
.byte 77
.byte 65
.byte 88
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_7:
.byte 83
.byte 67
.byte 72
.byte 65
.byte 82
.byte 95
.byte 77
.byte 65
.byte 88
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_6:
.byte 67
.byte 72
.byte 65
.byte 82
.byte 95
.byte 77
.byte 65
.byte 88
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_5:
.byte 85
.byte 76
.byte 79
.byte 78
.byte 71
.byte 95
.byte 77
.byte 65
.byte 88
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 108
.byte 120
.byte 61
.byte 37
.byte 108
.byte 100
.byte 10
.byte 0
i_4:
.byte 85
.byte 73
.byte 78
.byte 84
.byte 95
.byte 77
.byte 65
.byte 88
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_3:
.byte 85
.byte 83
.byte 72
.byte 82
.byte 84
.byte 95
.byte 77
.byte 65
.byte 88
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
i_2:
.byte 85
.byte 67
.byte 72
.byte 65
.byte 82
.byte 95
.byte 77
.byte 65
.byte 88
.byte 58
.byte 9
.byte 37
.byte 48
.byte 56
.byte 120
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0

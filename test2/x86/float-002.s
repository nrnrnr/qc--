.globl main
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section .text
main:
	leal -24(%esp), %esp
	movl $4,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l4:
proc_body_start_l3:
	leal pinf64,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $-12,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $2146435072,%eax
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%eax
	leal 24(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	movl $-20,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call printf
join_l29:
	leal pinf32,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $2139095040,%eax
	movl $-4,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-4,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	flds (%ecx)
	movl $-20,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call printf
join_l26:
	leal minf64,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $-12,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-1048576,%eax
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%eax
	leal 24(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	movl $-20,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call printf
join_l23:
	leal minf32,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-8388608,%eax
	movl $-4,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-4,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	flds (%ecx)
	movl $-20,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call printf
join_l20:
	leal pzero64,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $-12,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $0,%eax
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%eax
	leal 24(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	movl $-20,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call printf
join_l17:
	leal pzero32,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $-4,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-4,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	flds (%ecx)
	movl $-20,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call printf
join_l14:
	leal mzero64,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $0,%eax
	movl $-12,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-2147483648,%eax
	movl $-8,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-12,%eax
	leal 24(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	movl $-20,%edx
	leal 24(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	call printf
join_l11:
	leal mzero32,%eax
	movl $-24,%ecx
	leal 24(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-2147483648,%eax
	movl $-4,%edx
	leal 24(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	movl $-4,%eax
	leal 24(%esp), %ecx
	addl %eax,%ecx
	flds (%ecx)
	movl $-20,%ecx
	leal 24(%esp), %eax
	addl %ecx,%eax
	fstpl (%eax)
	call printf
join_l8:
	movl $0,%eax
	leal 24(%esp), %esp
	ret
.section .pcmap_data
stackdata_l36:
.long 0
.section .pcmap
.long join_l29
.long frame_l37
.section .pcmap_data
frame_l37:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l36
.long 0x80000008
.long 0x80000002
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
.long 0
.section .pcmap
.long join_l26
.long frame_l38
.section .pcmap_data
frame_l38:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l36
.long 0x80000008
.long 0x80000002
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
.long 0
.section .pcmap
.long join_l23
.long frame_l39
.section .pcmap_data
frame_l39:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l36
.long 0x80000008
.long 0x80000002
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
.long 0
.section .pcmap
.long join_l20
.long frame_l40
.section .pcmap_data
frame_l40:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l36
.long 0x80000008
.long 0x80000002
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
.long 0
.section .pcmap
.long join_l17
.long frame_l41
.section .pcmap_data
frame_l41:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l36
.long 0x80000008
.long 0x80000002
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
.long 0
.section .pcmap
.long join_l14
.long frame_l42
.section .pcmap_data
frame_l42:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l36
.long 0x80000008
.long 0x80000002
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
.long 0
.section .pcmap
.long join_l11
.long frame_l43
.section .pcmap_data
frame_l43:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l36
.long 0x80000008
.long 0x80000002
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
.long 0
.section .pcmap
.long join_l8
.long frame_l44
.section .pcmap_data
frame_l44:
.long 0xffffffe8
.long 0x80000004
.long 0x80000000
.long stackdata_l36
.long 0x80000008
.long 0x80000002
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
.long 0
.section .text
.section .data
pinf64:
.byte 54
.byte 52
.byte 45
.byte 98
.byte 105
.byte 116
.byte 32
.byte 112
.byte 105
.byte 110
.byte 102
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
pinf32:
.byte 51
.byte 50
.byte 45
.byte 98
.byte 105
.byte 116
.byte 32
.byte 112
.byte 105
.byte 110
.byte 102
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
minf64:
.byte 54
.byte 52
.byte 45
.byte 98
.byte 105
.byte 116
.byte 32
.byte 109
.byte 105
.byte 110
.byte 102
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
minf32:
.byte 51
.byte 50
.byte 45
.byte 98
.byte 105
.byte 116
.byte 32
.byte 109
.byte 105
.byte 110
.byte 102
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
pzero64:
.byte 54
.byte 52
.byte 45
.byte 98
.byte 105
.byte 116
.byte 32
.byte 112
.byte 122
.byte 101
.byte 114
.byte 111
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
pzero32:
.byte 51
.byte 50
.byte 45
.byte 98
.byte 105
.byte 116
.byte 32
.byte 112
.byte 122
.byte 101
.byte 114
.byte 111
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
mzero64:
.byte 54
.byte 52
.byte 45
.byte 98
.byte 105
.byte 116
.byte 32
.byte 109
.byte 122
.byte 101
.byte 114
.byte 111
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
mzero32:
.byte 51
.byte 50
.byte 45
.byte 98
.byte 105
.byte 116
.byte 32
.byte 109
.byte 122
.byte 101
.byte 114
.byte 111
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0

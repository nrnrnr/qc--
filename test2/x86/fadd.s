.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc
.section .data
/* memory for global registers */
Cmm.globalsig.bcPDWKVXdYZZBPSFTVVJOBXQNc:
Cmm.global_area:
.section .data
.align 4
x:
.long 0x40400000
y:
.long 0x3e10fcf8
z:
.skip 4, 0
fmt:
.byte 37
.byte 102
.byte 32
.byte 43
.byte 32
.byte 37
.byte 102
.byte 32
.byte 61
.byte 32
.byte 37
.byte 102
.byte 10
.byte 0
.section .text
main:
	leal -28(%esp), %esp
Linitialize_continuations_l4:
Lproc_body_start_l3:
	leal y,%eax
	flds (%eax)
	leal x,%eax
	flds (%eax)
	faddp
	leal z,%eax
	fstps (%eax)
	leal fmt,%eax
	movl $-28,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal x,%eax
	flds (%eax)
	movl $-24,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	fstpl (%edx)
	leal y,%edx
	flds (%edx)
	movl $-16,%edx
	leal 28(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	leal z,%eax
	flds (%eax)
	movl $-8,%eax
	leal 28(%esp), %edx
	addl %eax,%edx
	fstpl (%edx)
	call printf
Ljoin_l8:
	leal 28(%esp), %eax
	movl $0,%ecx
	leal 28(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 28(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l15:
.long 0
.section .pcmap
.long Ljoin_l8
.long Lframe_l16
.section .pcmap_data
Lframe_l16:
.long 0xffffffe4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l15
.long 0x80000008
.long 0x80000000
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
.long 0x80000000
.section .text

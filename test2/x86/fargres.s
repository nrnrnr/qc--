.globl main
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
main:
	leal -16(%esp), %esp
	movl $4,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $12,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l4:
proc_body_start_l3:
	movl $1084227584,%eax
	movl $-16,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call doubleme
join_l11:
	movl $-4,%eax
	leal 16(%esp), %ecx
	addl %eax,%ecx
	fstps (%ecx)
	leal str,%ecx
	movl $-16,%eax
	leal 16(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-4,%ecx
	leal 16(%esp), %edx
	addl %ecx,%edx
	flds (%edx)
	movl $-12,%edx
	leal 16(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	call printf
join_l8:
	movl $0,%eax
	leal 16(%esp), %esp
	ret
.section .pcmap_data
stackdata_l18:
.long 0
.section .pcmap
.long join_l11
.long frame_l19
.section .pcmap_data
frame_l19:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l18
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0
.long 0xfffffffc
.section .pcmap
.long join_l8
.long frame_l20
.section .pcmap_data
frame_l20:
.long 0xfffffff0
.long 0x80000004
.long 0x80000000
.long stackdata_l18
.long 0x80000008
.long 0x80000005
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
.long 0
.long 0
.long 0xfffffffc
.section .text
.section .data
str:
.byte 84
.byte 104
.byte 101
.byte 32
.byte 118
.byte 97
.byte 108
.byte 117
.byte 101
.byte 32
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 101
.byte 100
.byte 32
.byte 119
.byte 97
.byte 115
.byte 32
.byte 37
.byte 102
.byte 32
.byte 40
.byte 115
.byte 104
.byte 111
.byte 117
.byte 108
.byte 100
.byte 32
.byte 98
.byte 101
.byte 32
.byte 49
.byte 48
.byte 46
.byte 48
.byte 41
.byte 10
.byte 0

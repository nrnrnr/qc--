.globl main
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .text
main:
	leal -8(%esp), %esp
	movl $4,%eax
	leal 8(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 8(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
initialize_continuations_l4:
proc_body_start_l3:
	movl $1,%eax
	movl $-1067450368,%eax
	movl $-4,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-4,%eax
	leal 8(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-4,%edx
	leal 8(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-4,%eax
	leal 8(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	movl $1,%edx
	cmpl %edx,%eax
	je join_l9
join_l16:
	jmp join_l9
join_l9:
	leal fmt,%eax
	movl $-8,%edx
	leal 8(%esp), %ecx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
join_l8:
	leal 8(%esp), %eax
	movl $0,%ecx
	leal 8(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 8(%esp), %esp
	ret
.section .pcmap_data
stackdata_l17:
.long 0
.section .pcmap
.long join_l8
.long frame_l18
.section .pcmap_data
frame_l18:
.long 0xfffffff8
.long 0x80000004
.long 0x80000000
.long stackdata_l17
.long 0x80000008
.long 0x80000003
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
.section .text
.section .data
fmt:
.byte 68
.byte 105
.byte 115
.byte 106
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 44
.byte 32
.byte 99
.byte 111
.byte 110
.byte 118
.byte 101
.byte 114
.byte 115
.byte 105
.byte 111
.byte 110
.byte 44
.byte 32
.byte 101
.byte 109
.byte 112
.byte 116
.byte 121
.byte 32
.byte 105
.byte 102
.byte 45
.byte 98
.byte 111
.byte 100
.byte 121
.byte 58
.byte 32
.byte 119
.byte 111
.byte 114
.byte 107
.byte 115
.byte 46
.byte 10
.byte 0

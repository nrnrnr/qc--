.globl print
.globl main
.globl P
.globl p
.globl D
.globl d
.globl f
.globl L
.globl I
.globl S
.globl C
.globl l
.globl i
.globl s
.globl c
.globl Cmm.global_area
.globl Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI
.section .data
/* memory for global registers */
Cmm.globalsig.LPcHEVFbOZHbAHHMQTLHQeIQVI:
Cmm.global_area:
.section .data
.section .text
print:
	leal -60(%esp), %esp
Linitialize_continuations_l5:
Lproc_body_start_l4:
	leal i_2,%eax
	leal 60(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal c,%eax
	movsbl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal s,%eax
	movswl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal i,%eax
	leal 60(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal l,%eax
	leal 60(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal C,%eax
	movzbl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal S,%eax
	movzwl (%eax),%eax
	leal 60(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal I,%eax
	leal 60(%esp), %ecx
	movl $-32,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal L,%eax
	leal 60(%esp), %ecx
	movl $-28,%edx
	addl %edx,%ecx
	movl (%eax),%eax
	movl %eax,(%ecx)
	leal f,%eax
	flds (%eax)
	leal 60(%esp), %eax
	movl $-24,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal d,%eax
	leal 60(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal D,%eax
	leal 60(%esp), %ecx
	movl $-8,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call printf
Ljoin_l9:
L.1:
	leal 60(%esp), %edx
	leal 60(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 60(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l16:
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l17
.section .pcmap_data
Lframe_l17:
.long 0xffffffc4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l16
.long 8
.long 0
.long 0
.long 1
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
main:
	leal -300(%esp), %esp
Linitialize_continuations_l20:
Lproc_body_start_l19:
	leal c,%ecx
	movl $1,%eax
	movb %al,(%ecx)
	movsbl (%ecx),%eax
	leal s,%ecx
	movl %eax,252(%esp)
	movw %ax,(%ecx)
	leal i,%ecx
	movl 252(%esp),%eax
	movl %eax,(%ecx)
	leal l,%ecx
	movl %eax,(%ecx)
	movl %eax,%ecx
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl 252(%esp),%ecx
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 300(%esp), %eax
	movl $-300,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 300(%esp), %eax
	movl $-300,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 300(%esp), %eax
	movl $-300,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
Ljoin_l79:
	leal s,%ecx
	movl $2,%eax
	movw %ax,(%ecx)
	movswl (%ecx),%eax
	leal c,%ecx
	movl %eax,256(%esp)
	movb %al,(%ecx)
	leal i,%ecx
	movl 256(%esp),%eax
	movl %eax,(%ecx)
	leal l,%ecx
	movl %eax,(%ecx)
	movl %eax,%ecx
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl 256(%esp),%ecx
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 300(%esp), %eax
	movl $-292,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 300(%esp), %eax
	movl $-292,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 300(%esp), %eax
	movl $-292,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
Ljoin_l76:
	leal i,%ecx
	movl $3,%edx
	movl %edx,(%ecx)
	movl (%ecx),%eax
	leal c,%ecx
	movl %eax,260(%esp)
	movb %al,(%ecx)
	leal s,%ecx
	movl 260(%esp),%eax
	movw %ax,(%ecx)
	leal l,%ecx
	movl 260(%esp),%eax
	movl %eax,(%ecx)
	movl %eax,%ecx
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl 260(%esp),%ecx
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 300(%esp), %eax
	movl $-284,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 300(%esp), %eax
	movl $-284,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 300(%esp), %eax
	movl $-284,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
Ljoin_l73:
	leal l,%ecx
	movl $4,%edx
	movl %edx,(%ecx)
	movl (%ecx),%eax
	leal c,%ecx
	movl %eax,264(%esp)
	movb %al,(%ecx)
	leal s,%ecx
	movl 264(%esp),%eax
	movw %ax,(%ecx)
	leal i,%ecx
	movl 264(%esp),%eax
	movl %eax,(%ecx)
	movl %eax,%ecx
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl 264(%esp),%ecx
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 300(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 300(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 300(%esp), %eax
	movl $-276,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
Ljoin_l70:
	leal C,%ecx
	movl $5,%eax
	movb %al,(%ecx)
	movzbl (%ecx),%eax
	leal c,%ecx
	movl %eax,268(%esp)
	movb %al,(%ecx)
	leal s,%ecx
	movl 268(%esp),%eax
	movw %ax,(%ecx)
	leal i,%ecx
	movl 268(%esp),%eax
	movl %eax,(%ecx)
	leal l,%ecx
	movl %eax,(%ecx)
	movl %eax,%ecx
	leal S,%edx
	movl %ecx,%eax
	movw %ax,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl 268(%esp),%ecx
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 300(%esp), %eax
	movl $-268,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 300(%esp), %eax
	movl $-268,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 300(%esp), %eax
	movl $-268,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
Ljoin_l67:
	leal S,%ecx
	movl $6,%eax
	movw %ax,(%ecx)
	movzwl (%ecx),%eax
	leal c,%ecx
	movl %eax,272(%esp)
	movb %al,(%ecx)
	leal s,%ecx
	movl 272(%esp),%eax
	movw %ax,(%ecx)
	leal i,%ecx
	movl 272(%esp),%eax
	movl %eax,(%ecx)
	leal l,%ecx
	movl %eax,(%ecx)
	movl %eax,%ecx
	leal C,%edx
	movl %ecx,%eax
	movb %al,(%edx)
	leal I,%eax
	movl %ecx,(%eax)
	leal L,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl 272(%esp),%ecx
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 300(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 300(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 300(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 300(%esp), %eax
	movl $-260,%ecx
	addl %ecx,%eax
	leal D,%ecx
	fildq (%eax)
	fistpq (%ecx)
	call print
Ljoin_l64:
	leal I,%edx
	movl $7,%ecx
	movl %ecx,(%edx)
	movl (%edx),%eax
	movl %eax,%edx
	leal c,%ecx
	movl %eax,276(%esp)
	movl %edx,%eax
	movb %al,(%ecx)
	leal s,%ecx
	movl %edx,%eax
	movw %ax,(%ecx)
	leal i,%ecx
	movl %edx,(%ecx)
	leal l,%ecx
	movl %edx,(%ecx)
	leal C,%edx
	movl 276(%esp),%eax
	movb %al,(%edx)
	leal S,%edx
	movl 276(%esp),%eax
	movw %ax,(%edx)
	leal L,%eax
	movl 276(%esp),%edx
	movl %edx,(%eax)
	movl $1,%eax
	movl %edx,%ecx
	andl %eax,%ecx
	leal 300(%esp), %eax
	movl %edi,280(%esp)
	movl $-52,%edi
	addl %edi,%eax
	movl %ecx,(%eax)
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	fildl (%edi)
	movl $1,%ecx
	shrl %cl, %edx
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	movl %edx,(%edi)
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	fildl (%edi)
	leal f_4,%edi
	fldl (%edi)
	fmulp
	faddp
	leal 300(%esp), %edi
	movl $-252,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 300(%esp), %edi
	movl $-252,%eax
	addl %eax,%edi
	fldl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 300(%esp), %edi
	movl $-252,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 300(%esp), %edi
	movl $-252,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l61:
	leal L,%edi
	movl $8,%edx
	movl %edx,(%edi)
	movl (%edi),%eax
	movl %eax,%edi
	leal c,%edx
	movl %eax,284(%esp)
	movl %edi,%eax
	movb %al,(%edx)
	leal s,%edx
	movl %edi,%eax
	movw %ax,(%edx)
	leal i,%edx
	movl %edi,(%edx)
	leal l,%edx
	movl %edi,(%edx)
	leal C,%edi
	movl 284(%esp),%eax
	movb %al,(%edi)
	leal S,%edi
	movl 284(%esp),%eax
	movw %ax,(%edi)
	movzwl (%edi),%edi
	leal I,%eax
	movl %edi,(%eax)
	movl $1,%edi
	movl 284(%esp),%eax
	movl %eax,%edx
	andl %edi,%edx
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl %edx,(%edi)
	leal 300(%esp), %edi
	movl $-52,%edx
	addl %edx,%edi
	fildl (%edi)
	movl $1,%ecx
	shrl %cl, %eax
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	fildl (%edi)
	leal f_4,%edi
	fldl (%edi)
	fmulp
	faddp
	leal 300(%esp), %edi
	movl $-244,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 300(%esp), %edi
	movl $-244,%eax
	addl %eax,%edi
	fldl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 300(%esp), %edi
	movl $-244,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 300(%esp), %edi
	movl $-244,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l58:
	leal f,%edi
	leal f_5,%ecx
	movl (%ecx),%ecx
	movl %ecx,(%edi)
	leal 300(%esp), %ecx
	movl $-236,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 300(%esp), %edi
	movl $-236,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal c,%edi
	movl %eax,288(%esp)
	movb %al,(%edi)
	leal s,%edi
	movl 288(%esp),%eax
	movw %ax,(%edi)
	leal i,%edi
	movl 288(%esp),%ecx
	movl %ecx,(%edi)
	leal l,%edi
	movl %ecx,(%edi)
	leal f_9,%edi
	leal 300(%esp), %ecx
	movl $-232,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 300(%esp), %edi
	movl $-236,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-232,%ecx
	addl %ecx,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l54
Ljoin_l55:
	leal 300(%esp), %edi
	movl $-232,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-236,%ecx
	addl %ecx,%edi
	flds (%edi)
	fsubp
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.8
Ljoin_l54:
	jmp L.7
L.7:
	leal 300(%esp), %edi
	movl $-236,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.8
L.8:
	leal C,%edi
	movb %al,(%edi)
	leal f,%edi
	leal 300(%esp), %ecx
	movl $-228,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal f_9,%edi
	leal 300(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 300(%esp), %edi
	movl $-228,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-224,%ecx
	addl %ecx,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l52
Ljoin_l53:
	leal 300(%esp), %edi
	movl $-224,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-228,%ecx
	addl %ecx,%edi
	flds (%edi)
	fsubp
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.12
Ljoin_l52:
	jmp L.11
L.11:
	leal 300(%esp), %edi
	movl $-228,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.12
L.12:
	leal S,%edi
	movw %ax,(%edi)
	leal f,%edi
	leal 300(%esp), %ecx
	movl $-220,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal f_9,%edi
	leal 300(%esp), %ecx
	movl $-216,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 300(%esp), %edi
	movl $-220,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-216,%ecx
	addl %ecx,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l50
Ljoin_l51:
	leal 300(%esp), %ecx
	movl $-216,%edx
	addl %edx,%ecx
	flds (%ecx)
	leal 300(%esp), %ecx
	movl $-220,%edx
	addl %edx,%ecx
	flds (%ecx)
	fsubp
	leal 300(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	fistpl (%ecx)
	leal 300(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%ecx),%edi
	movl $-2147483648,%ecx
	addl %ecx,%edi
	jmp L.15
Ljoin_l50:
	jmp L.14
L.14:
	leal 300(%esp), %edi
	movl $-220,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	jmp L.15
L.15:
	leal I,%ecx
	movl %edi,(%ecx)
	leal f,%edi
	leal 300(%esp), %ecx
	movl $-212,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal f_9,%edi
	leal 300(%esp), %ecx
	movl $-208,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 300(%esp), %edi
	movl $-212,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-208,%ecx
	addl %ecx,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l48
Ljoin_l49:
	leal 300(%esp), %eax
	movl $-208,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 300(%esp), %eax
	movl $-212,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl (%eax),%edi
	movl $-2147483648,%eax
	addl %eax,%edi
	jmp L.18
Ljoin_l48:
	jmp L.17
L.17:
	leal 300(%esp), %edi
	movl $-212,%eax
	addl %eax,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	movl (%edi),%edi
	jmp L.18
L.18:
	leal L,%eax
	movl %edi,(%eax)
	leal f,%edi
	flds (%edi)
	leal 300(%esp), %edi
	movl $-204,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 300(%esp), %edi
	movl $-204,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 300(%esp), %edi
	movl $-204,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l47:
	leal d,%edi
	leal f_19,%ecx
	fildq (%ecx)
	fistpq (%edi)
	leal 300(%esp), %ecx
	movl $-196,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-196,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal c,%edi
	movl %eax,292(%esp)
	movb %al,(%edi)
	leal s,%edi
	movl 292(%esp),%eax
	movw %ax,(%edi)
	leal i,%edi
	movl 292(%esp),%ecx
	movl %ecx,(%edi)
	leal l,%edi
	movl %ecx,(%edi)
	leal f_23,%edi
	leal 300(%esp), %ecx
	movl $-188,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-196,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-188,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l43
Ljoin_l44:
	leal 300(%esp), %edi
	movl $-188,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-196,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fsubp
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.22
Ljoin_l43:
	jmp L.21
L.21:
	leal 300(%esp), %edi
	movl $-196,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.22
L.22:
	leal C,%edi
	movb %al,(%edi)
	leal d,%edi
	leal 300(%esp), %ecx
	movl $-180,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_23,%edi
	leal 300(%esp), %ecx
	movl $-172,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-172,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l41
Ljoin_l42:
	leal 300(%esp), %edi
	movl $-172,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fsubp
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.26
Ljoin_l41:
	jmp L.25
L.25:
	leal 300(%esp), %edi
	movl $-180,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.26
L.26:
	leal S,%edi
	movw %ax,(%edi)
	leal d,%edi
	leal 300(%esp), %ecx
	movl $-164,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_23,%edi
	leal 300(%esp), %ecx
	movl $-156,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-164,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-156,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l39
Ljoin_l40:
	leal 300(%esp), %ecx
	movl $-156,%edx
	addl %edx,%ecx
	fldl (%ecx)
	leal 300(%esp), %ecx
	movl $-164,%edx
	addl %edx,%ecx
	fldl (%ecx)
	fsubp
	leal 300(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	fistpl (%ecx)
	leal 300(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%ecx),%edi
	movl $-2147483648,%ecx
	addl %ecx,%edi
	jmp L.29
Ljoin_l39:
	jmp L.28
L.28:
	leal 300(%esp), %edi
	movl $-164,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	jmp L.29
L.29:
	leal I,%ecx
	movl %edi,(%ecx)
	leal d,%edi
	leal 300(%esp), %ecx
	movl $-148,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_23,%edi
	leal 300(%esp), %ecx
	movl $-140,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-148,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-140,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l37
Ljoin_l38:
	leal 300(%esp), %eax
	movl $-140,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 300(%esp), %eax
	movl $-148,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl (%eax),%edi
	movl $-2147483648,%eax
	addl %eax,%edi
	jmp L.32
Ljoin_l37:
	jmp L.31
L.31:
	leal 300(%esp), %edi
	movl $-148,%eax
	addl %eax,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	movl (%edi),%edi
	jmp L.32
L.32:
	leal L,%eax
	movl %edi,(%eax)
	leal d,%edi
	leal 300(%esp), %eax
	movl $-132,%ecx
	addl %ecx,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 300(%esp), %edi
	movl $-132,%eax
	addl %eax,%edi
	fldl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 300(%esp), %edi
	movl $-132,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l36:
	leal D,%edi
	leal f_33,%ecx
	fildq (%ecx)
	fistpq (%edi)
	leal 300(%esp), %ecx
	movl $-124,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-124,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal c,%edi
	movl %eax,296(%esp)
	movb %al,(%edi)
	leal s,%edi
	movl 296(%esp),%eax
	movw %ax,(%edi)
	leal i,%edi
	movl 296(%esp),%ecx
	movl %ecx,(%edi)
	leal l,%edi
	movl %ecx,(%edi)
	leal f_37,%edi
	leal 300(%esp), %ecx
	movl $-116,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-124,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-116,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l32
Ljoin_l33:
	leal 300(%esp), %edi
	movl $-116,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-124,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fsubp
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.36
Ljoin_l32:
	jmp L.35
L.35:
	leal 300(%esp), %edi
	movl $-124,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.36
L.36:
	leal C,%edi
	movb %al,(%edi)
	leal D,%edi
	leal 300(%esp), %ecx
	movl $-108,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_37,%edi
	leal 300(%esp), %ecx
	movl $-100,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-108,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-100,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l30
Ljoin_l31:
	leal 300(%esp), %edi
	movl $-100,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-108,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fsubp
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.40
Ljoin_l30:
	jmp L.39
L.39:
	leal 300(%esp), %edi
	movl $-108,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.40
L.40:
	leal S,%edi
	movw %ax,(%edi)
	leal D,%edi
	leal 300(%esp), %ecx
	movl $-92,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_37,%edi
	leal 300(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-92,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-84,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l28
Ljoin_l29:
	leal 300(%esp), %ecx
	movl $-84,%edx
	addl %edx,%ecx
	fldl (%ecx)
	leal 300(%esp), %ecx
	movl $-92,%edx
	addl %edx,%ecx
	fldl (%ecx)
	fsubp
	leal 300(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	fistpl (%ecx)
	leal 300(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%ecx),%edi
	movl $-2147483648,%ecx
	addl %ecx,%edi
	jmp L.43
Ljoin_l28:
	jmp L.42
L.42:
	leal 300(%esp), %edi
	movl $-92,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	jmp L.43
L.43:
	leal I,%ecx
	movl %edi,(%ecx)
	leal D,%edi
	leal 300(%esp), %ecx
	movl $-76,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_37,%edi
	leal 300(%esp), %ecx
	movl $-68,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 300(%esp), %edi
	movl $-76,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-68,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l26
Ljoin_l27:
	leal 300(%esp), %eax
	movl $-68,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 300(%esp), %eax
	movl $-76,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 300(%esp), %eax
	movl $-52,%ecx
	addl %ecx,%eax
	movl (%eax),%edi
	movl $-2147483648,%eax
	addl %eax,%edi
	jmp L.46
Ljoin_l26:
	jmp L.45
L.45:
	leal 300(%esp), %edi
	movl $-76,%eax
	addl %eax,%edi
	fldl (%edi)
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	fistpl (%edi)
	leal 300(%esp), %edi
	movl $-52,%eax
	addl %eax,%edi
	movl (%edi),%edi
	jmp L.46
L.46:
	leal L,%eax
	movl %edi,(%eax)
	leal D,%edi
	leal 300(%esp), %eax
	movl $-60,%ecx
	addl %ecx,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 300(%esp), %edi
	movl $-60,%eax
	addl %eax,%edi
	fldl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 300(%esp), %edi
	movl $-60,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l25:
	leal p,%edx
	movl $0,%ecx
	movl %ecx,(%edx)
	movl %ecx,(%edx)
	movl %ecx,(%edx)
	movl %ecx,(%edx)
	leal P,%ecx
	movl (%ecx),%edi
	movl %edi,(%edx)
	movl $0,%edi
	movl %edi,(%ecx)
	movl %edi,(%ecx)
	movl %edi,(%ecx)
	movl %edi,(%ecx)
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl $0,%eax
	leal 300(%esp), %edx
	leal 300(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 280(%esp),%edi
	leal 300(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l86:
.long 0
.section .pcmap
.long Ljoin_l79
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
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
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l76
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
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
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l73
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
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
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l70
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
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
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l67
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
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
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l64
.long Lframe_l92
.section .pcmap_data
Lframe_l92:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
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
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l61
.long Lframe_l93
.section .pcmap_data
Lframe_l93:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l58
.long Lframe_l94
.section .pcmap_data
Lframe_l94:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l47
.long Lframe_l95
.section .pcmap_data
Lframe_l95:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l36
.long Lframe_l96
.section .pcmap_data
Lframe_l96:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l25
.long Lframe_l97
.section .pcmap_data
Lframe_l97:
.long 0xfffffed4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 8
.long 82
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xffffffec
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0
.long 0
.long 0xfffffedc
.long 0
.long 0
.long 0
.long 0xfffffee4
.long 0
.long 0
.long 0
.long 0xfffffeec
.long 0
.long 0
.long 0
.long 0xfffffef4
.long 0
.long 0
.long 0
.long 0xfffffefc
.long 0
.long 0
.long 0
.long 0xffffff04
.long 0
.long 0
.long 0
.long 0
.long 0xffffff0c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff14
.long 0
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0xffffff34
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff3c
.long 0
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0xffffff64
.long 0xffffff6c
.long 0xffffff74
.long 0xffffff7c
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff84
.long 0
.long 0xffffff8c
.long 0xffffff94
.long 0xffffff9c
.long 0xffffffa4
.long 0xffffffac
.long 0xffffffb4
.long 0xffffffbc
.long 0xffffffc4
.long 0
.long 0
.long 0
.long 0
.long 0
.section .text
.section .bss
.align 4
P:
.skip 4, 0
.align 4
p:
.skip 4, 0
.align 4
D:
.skip 8, 0
.align 4
d:
.skip 8, 0
.align 4
f:
.skip 4, 0
.align 4
L:
.skip 4, 0
.align 4
I:
.skip 4, 0
.align 2
S:
.skip 2, 0
C:
.skip 1, 0
.align 4
l:
.skip 4, 0
.align 4
i:
.skip 4, 0
.align 2
s:
.skip 2, 0
c:
.skip 1, 0
.section .data
.align 4
f_37:
.long 0
.long 0x41e00000
.align 4
f_33:
.long 0
.long 0x40260000
.align 4
f_23:
.long 0
.long 0x41e00000
.align 4
f_19:
.long 0
.long 0x40240000
.align 4
f_9:
.long 0x4f000000
.align 4
f_5:
.long 0x41100000
.align 4
f_4:
.long 0
.long 0x40000000
i_2:
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 100
.byte 32
.byte 37
.byte 108
.byte 100
.byte 32
.byte 37
.byte 117
.byte 32
.byte 37
.byte 117
.byte 32
.byte 37
.byte 117
.byte 32
.byte 37
.byte 108
.byte 117
.byte 32
.byte 37
.byte 102
.byte 32
.byte 37
.byte 102
.byte 32
.byte 37
.byte 108
.byte 102
.byte 10
.byte 0

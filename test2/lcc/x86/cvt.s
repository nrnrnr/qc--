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
	leal -68(%esp), %esp
	leal 68(%esp), %eax
	movl (%eax),%eax
Linitialize_continuations_l5:
Lproc_body_start_l4:
	leal i_2,%ecx
	leal 68(%esp), %edx
	movl %edi,60(%esp)
	movl $-68,%edi
	addl %edi,%edx
	movl %ecx,(%edx)
	leal c,%edi
	movsbl (%edi),%edi
	leal 68(%esp), %ecx
	movl $-64,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal s,%edi
	movswl (%edi),%edi
	leal 68(%esp), %ecx
	movl $-60,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal i,%edi
	leal 68(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal l,%edi
	leal 68(%esp), %ecx
	movl $-52,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal C,%edi
	movzbl (%edi),%edi
	leal 68(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal S,%edi
	movzwl (%edi),%edi
	leal 68(%esp), %ecx
	movl $-44,%edx
	addl %edx,%ecx
	movl %edi,(%ecx)
	leal I,%edi
	leal 68(%esp), %ecx
	movl $-40,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal L,%edi
	leal 68(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal f,%edi
	flds (%edi)
	leal 68(%esp), %edi
	movl $-32,%ecx
	addl %ecx,%edi
	fstpl (%edi)
	leal d,%edi
	leal 68(%esp), %ecx
	movl $-24,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal D,%edi
	leal 68(%esp), %ecx
	movl $-16,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	movl %eax,64(%esp)
	call printf
Ljoin_l9:
L.1:
	leal 68(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 64(%esp),%ecx
	movl %ecx,(%edx)
	movl 60(%esp),%edi
	leal 68(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l16:
.long 0
.section .pcmap
.long Ljoin_l9
.long Lframe_l17
.section .pcmap_data
Lframe_l17:
.long 0x80000004
.long 0xffffffbc
.long 0xfffffffc
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
.long 0xfffffff8
.long 0
.section .text
main:
	leal -304(%esp), %esp
	leal 304(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l20:
Lproc_body_start_l19:
	leal c,%edx
	movl $1,%eax
	movb %al,(%edx)
	movsbl (%edx),%eax
	leal s,%edx
	movl %eax,252(%esp)
	movw %ax,(%edx)
	leal i,%edx
	movl 252(%esp),%eax
	movl %eax,(%edx)
	leal l,%edx
	movl %eax,(%edx)
	movl %eax,%edx
	movl %edi,256(%esp)
	leal C,%edi
	movl %edx,%eax
	movb %al,(%edi)
	leal S,%edi
	movl %edx,%eax
	movw %ax,(%edi)
	leal I,%edi
	movl %edx,(%edi)
	leal L,%edi
	movl %edx,(%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl 252(%esp),%eax
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%edx
	addl %edx,%edi
	fildl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-56,%edx
	addl %edx,%edi
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fildl (%edi)
	leal 304(%esp), %edi
	movl $-304,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 304(%esp), %edi
	movl $-304,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-304,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	movl %ecx,260(%esp)
	call print
Ljoin_l79:
	leal s,%edi
	movl $2,%eax
	movw %ax,(%edi)
	movswl (%edi),%eax
	leal c,%edi
	movl %eax,264(%esp)
	movb %al,(%edi)
	leal i,%edi
	movl 264(%esp),%eax
	movl %eax,(%edi)
	leal l,%edi
	movl %eax,(%edi)
	movl %eax,%edi
	leal C,%ecx
	movl %edi,%eax
	movb %al,(%ecx)
	leal S,%ecx
	movl %edi,%eax
	movw %ax,(%ecx)
	leal I,%eax
	movl %edi,(%eax)
	leal L,%eax
	movl %edi,(%eax)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl 264(%esp),%eax
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fildl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fildl (%edi)
	leal 304(%esp), %edi
	movl $-296,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 304(%esp), %edi
	movl $-296,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-296,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l76:
	leal i,%edi
	movl $3,%ecx
	movl %ecx,(%edi)
	movl (%edi),%eax
	leal c,%edi
	movl %eax,268(%esp)
	movb %al,(%edi)
	leal s,%edi
	movl 268(%esp),%eax
	movw %ax,(%edi)
	leal l,%edi
	movl 268(%esp),%eax
	movl %eax,(%edi)
	movl %eax,%edi
	leal C,%ecx
	movl %edi,%eax
	movb %al,(%ecx)
	leal S,%ecx
	movl %edi,%eax
	movw %ax,(%ecx)
	leal I,%eax
	movl %edi,(%eax)
	leal L,%eax
	movl %edi,(%eax)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl 268(%esp),%eax
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fildl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fildl (%edi)
	leal 304(%esp), %edi
	movl $-288,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 304(%esp), %edi
	movl $-288,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-288,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l73:
	leal l,%edi
	movl $4,%ecx
	movl %ecx,(%edi)
	movl (%edi),%eax
	leal c,%edi
	movl %eax,272(%esp)
	movb %al,(%edi)
	leal s,%edi
	movl 272(%esp),%eax
	movw %ax,(%edi)
	leal i,%edi
	movl 272(%esp),%eax
	movl %eax,(%edi)
	movl %eax,%edi
	leal C,%ecx
	movl %edi,%eax
	movb %al,(%ecx)
	leal S,%ecx
	movl %edi,%eax
	movw %ax,(%ecx)
	leal I,%eax
	movl %edi,(%eax)
	leal L,%eax
	movl %edi,(%eax)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl 272(%esp),%eax
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fildl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fildl (%edi)
	leal 304(%esp), %edi
	movl $-280,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 304(%esp), %edi
	movl $-280,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-280,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l70:
	leal C,%edi
	movl $5,%eax
	movb %al,(%edi)
	movzbl (%edi),%eax
	leal c,%edi
	movl %eax,276(%esp)
	movb %al,(%edi)
	leal s,%edi
	movl 276(%esp),%eax
	movw %ax,(%edi)
	leal i,%edi
	movl 276(%esp),%eax
	movl %eax,(%edi)
	leal l,%edi
	movl %eax,(%edi)
	movl %eax,%edi
	leal S,%ecx
	movl %edi,%eax
	movw %ax,(%ecx)
	leal I,%eax
	movl %edi,(%eax)
	leal L,%eax
	movl %edi,(%eax)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl 276(%esp),%eax
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fildl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fildl (%edi)
	leal 304(%esp), %edi
	movl $-272,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 304(%esp), %edi
	movl $-272,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-272,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l67:
	leal S,%edi
	movl $6,%eax
	movw %ax,(%edi)
	movzwl (%edi),%eax
	leal c,%edi
	movl %eax,280(%esp)
	movb %al,(%edi)
	leal s,%edi
	movl 280(%esp),%eax
	movw %ax,(%edi)
	leal i,%edi
	movl 280(%esp),%eax
	movl %eax,(%edi)
	leal l,%edi
	movl %eax,(%edi)
	movl %eax,%edi
	leal C,%ecx
	movl %edi,%eax
	movb %al,(%ecx)
	leal I,%eax
	movl %edi,(%eax)
	leal L,%eax
	movl %edi,(%eax)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl 280(%esp),%eax
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fildl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fildl (%edi)
	leal 304(%esp), %edi
	movl $-264,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 304(%esp), %edi
	movl $-264,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-264,%eax
	addl %eax,%edi
	leal D,%eax
	fildq (%edi)
	fistpq (%eax)
	call print
Ljoin_l64:
	leal I,%edi
	movl $7,%edx
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
	leal L,%edi
	movl 284(%esp),%eax
	movl %eax,(%edi)
	movl $1,%edi
	movl %eax,%edx
	andl %edi,%edx
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %edx,(%edi)
	leal 304(%esp), %edi
	movl $-56,%edx
	addl %edx,%edi
	fildl (%edi)
	movl $1,%ecx
	shrl %cl, %eax
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fildl (%edi)
	leal f_4,%edi
	fldl (%edi)
	fmulp
	faddp
	leal 304(%esp), %edi
	movl $-256,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 304(%esp), %edi
	movl $-256,%eax
	addl %eax,%edi
	fldl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-256,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-256,%eax
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
	movl %eax,288(%esp)
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
	movl 288(%esp),%eax
	movb %al,(%edi)
	leal S,%edi
	movl 288(%esp),%eax
	movw %ax,(%edi)
	movzwl (%edi),%edi
	leal I,%eax
	movl %edi,(%eax)
	movl $1,%edi
	movl 288(%esp),%eax
	movl %eax,%edx
	andl %edi,%edx
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %edx,(%edi)
	leal 304(%esp), %edi
	movl $-56,%edx
	addl %edx,%edi
	fildl (%edi)
	movl $1,%ecx
	shrl %cl, %eax
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl %eax,(%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fildl (%edi)
	leal f_4,%edi
	fldl (%edi)
	fmulp
	faddp
	leal 304(%esp), %edi
	movl $-248,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 304(%esp), %edi
	movl $-248,%eax
	addl %eax,%edi
	fldl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-248,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-248,%eax
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
	leal 304(%esp), %ecx
	movl $-240,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 304(%esp), %edi
	movl $-240,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
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
	leal f_9,%edi
	leal 304(%esp), %ecx
	movl $-236,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 304(%esp), %edi
	movl $-240,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-236,%ecx
	addl %ecx,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l54
Ljoin_l55:
	leal 304(%esp), %edi
	movl $-236,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-240,%ecx
	addl %ecx,%edi
	flds (%edi)
	fsubp
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.8
Ljoin_l54:
	jmp L.7
L.7:
	leal 304(%esp), %edi
	movl $-240,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.8
L.8:
	leal C,%edi
	movb %al,(%edi)
	leal f,%edi
	leal 304(%esp), %ecx
	movl $-232,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal f_9,%edi
	leal 304(%esp), %ecx
	movl $-228,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 304(%esp), %edi
	movl $-232,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-228,%ecx
	addl %ecx,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l52
Ljoin_l53:
	leal 304(%esp), %edi
	movl $-228,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-232,%ecx
	addl %ecx,%edi
	flds (%edi)
	fsubp
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.12
Ljoin_l52:
	jmp L.11
L.11:
	leal 304(%esp), %edi
	movl $-232,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.12
L.12:
	leal S,%edi
	movw %ax,(%edi)
	leal f,%edi
	leal 304(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal f_9,%edi
	leal 304(%esp), %ecx
	movl $-220,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 304(%esp), %edi
	movl $-224,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-220,%ecx
	addl %ecx,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l50
Ljoin_l51:
	leal 304(%esp), %ecx
	movl $-220,%edx
	addl %edx,%ecx
	flds (%ecx)
	leal 304(%esp), %ecx
	movl $-224,%edx
	addl %edx,%ecx
	flds (%ecx)
	fsubp
	leal 304(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	fistpl (%ecx)
	leal 304(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%ecx),%edi
	movl $-2147483648,%ecx
	addl %ecx,%edi
	jmp L.15
Ljoin_l50:
	jmp L.14
L.14:
	leal 304(%esp), %edi
	movl $-224,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	jmp L.15
L.15:
	leal I,%ecx
	movl %edi,(%ecx)
	leal f,%edi
	leal 304(%esp), %ecx
	movl $-216,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal f_9,%edi
	leal 304(%esp), %ecx
	movl $-212,%edx
	addl %edx,%ecx
	movl (%edi),%edi
	movl %edi,(%ecx)
	leal 304(%esp), %edi
	movl $-216,%ecx
	addl %ecx,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-212,%ecx
	addl %ecx,%edi
	flds (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l48
Ljoin_l49:
	leal 304(%esp), %eax
	movl $-212,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 304(%esp), %eax
	movl $-216,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 304(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 304(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl (%eax),%edi
	movl $-2147483648,%eax
	addl %eax,%edi
	jmp L.18
Ljoin_l48:
	jmp L.17
L.17:
	leal 304(%esp), %edi
	movl $-216,%eax
	addl %eax,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl (%edi),%edi
	jmp L.18
L.18:
	leal L,%eax
	movl %edi,(%eax)
	leal f,%edi
	flds (%edi)
	leal 304(%esp), %edi
	movl $-208,%eax
	addl %eax,%edi
	fstpl (%edi)
	leal 304(%esp), %edi
	movl $-208,%eax
	addl %eax,%edi
	leal d,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-208,%eax
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
	leal 304(%esp), %ecx
	movl $-200,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-200,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
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
	leal f_23,%edi
	leal 304(%esp), %ecx
	movl $-192,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-200,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-192,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l43
Ljoin_l44:
	leal 304(%esp), %edi
	movl $-192,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-200,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fsubp
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.22
Ljoin_l43:
	jmp L.21
L.21:
	leal 304(%esp), %edi
	movl $-200,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.22
L.22:
	leal C,%edi
	movb %al,(%edi)
	leal d,%edi
	leal 304(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_23,%edi
	leal 304(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-176,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l41
Ljoin_l42:
	leal 304(%esp), %edi
	movl $-176,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fsubp
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.26
Ljoin_l41:
	jmp L.25
L.25:
	leal 304(%esp), %edi
	movl $-184,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.26
L.26:
	leal S,%edi
	movw %ax,(%edi)
	leal d,%edi
	leal 304(%esp), %ecx
	movl $-168,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_23,%edi
	leal 304(%esp), %ecx
	movl $-160,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-168,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-160,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l39
Ljoin_l40:
	leal 304(%esp), %ecx
	movl $-160,%edx
	addl %edx,%ecx
	fldl (%ecx)
	leal 304(%esp), %ecx
	movl $-168,%edx
	addl %edx,%ecx
	fldl (%ecx)
	fsubp
	leal 304(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	fistpl (%ecx)
	leal 304(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%ecx),%edi
	movl $-2147483648,%ecx
	addl %ecx,%edi
	jmp L.29
Ljoin_l39:
	jmp L.28
L.28:
	leal 304(%esp), %edi
	movl $-168,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	jmp L.29
L.29:
	leal I,%ecx
	movl %edi,(%ecx)
	leal d,%edi
	leal 304(%esp), %ecx
	movl $-152,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_23,%edi
	leal 304(%esp), %ecx
	movl $-144,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-152,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-144,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l37
Ljoin_l38:
	leal 304(%esp), %eax
	movl $-144,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 304(%esp), %eax
	movl $-152,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 304(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 304(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl (%eax),%edi
	movl $-2147483648,%eax
	addl %eax,%edi
	jmp L.32
Ljoin_l37:
	jmp L.31
L.31:
	leal 304(%esp), %edi
	movl $-152,%eax
	addl %eax,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl (%edi),%edi
	jmp L.32
L.32:
	leal L,%eax
	movl %edi,(%eax)
	leal d,%edi
	leal 304(%esp), %eax
	movl $-136,%ecx
	addl %ecx,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-136,%eax
	addl %eax,%edi
	fldl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-136,%eax
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
	leal 304(%esp), %ecx
	movl $-128,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-128,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	leal c,%edi
	movl %eax,300(%esp)
	movb %al,(%edi)
	leal s,%edi
	movl 300(%esp),%eax
	movw %ax,(%edi)
	leal i,%edi
	movl 300(%esp),%ecx
	movl %ecx,(%edi)
	leal l,%edi
	movl %ecx,(%edi)
	leal f_37,%edi
	leal 304(%esp), %ecx
	movl $-120,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-128,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-120,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l32
Ljoin_l33:
	leal 304(%esp), %edi
	movl $-120,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-128,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fsubp
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.36
Ljoin_l32:
	jmp L.35
L.35:
	leal 304(%esp), %edi
	movl $-128,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.36
L.36:
	leal C,%edi
	movb %al,(%edi)
	leal D,%edi
	leal 304(%esp), %ecx
	movl $-112,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_37,%edi
	leal 304(%esp), %ecx
	movl $-104,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-112,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-104,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l30
Ljoin_l31:
	leal 304(%esp), %edi
	movl $-104,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-112,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fsubp
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	movl $-2147483648,%edi
	addl %edi,%eax
	jmp L.40
Ljoin_l30:
	jmp L.39
L.39:
	leal 304(%esp), %edi
	movl $-112,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%eax
	jmp L.40
L.40:
	leal S,%edi
	movw %ax,(%edi)
	leal D,%edi
	leal 304(%esp), %ecx
	movl $-96,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_37,%edi
	leal 304(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-96,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-88,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l28
Ljoin_l29:
	leal 304(%esp), %ecx
	movl $-88,%edx
	addl %edx,%ecx
	fldl (%ecx)
	leal 304(%esp), %ecx
	movl $-96,%edx
	addl %edx,%ecx
	fldl (%ecx)
	fsubp
	leal 304(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	fistpl (%ecx)
	leal 304(%esp), %ecx
	movl $-56,%edx
	addl %edx,%ecx
	movl (%ecx),%edi
	movl $-2147483648,%ecx
	addl %ecx,%edi
	jmp L.43
Ljoin_l28:
	jmp L.42
L.42:
	leal 304(%esp), %edi
	movl $-96,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%ecx
	addl %ecx,%edi
	movl (%edi),%edi
	jmp L.43
L.43:
	leal I,%ecx
	movl %edi,(%ecx)
	leal D,%edi
	leal 304(%esp), %ecx
	movl $-80,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal f_37,%edi
	leal 304(%esp), %ecx
	movl $-72,%edx
	addl %edx,%ecx
	fildq (%edi)
	fistpq (%ecx)
	leal 304(%esp), %edi
	movl $-80,%ecx
	addl %ecx,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-72,%ecx
	addl %ecx,%edi
	fldl (%edi)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l26
Ljoin_l27:
	leal 304(%esp), %eax
	movl $-72,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 304(%esp), %eax
	movl $-80,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fsubp
	leal 304(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 304(%esp), %eax
	movl $-56,%ecx
	addl %ecx,%eax
	movl (%eax),%edi
	movl $-2147483648,%eax
	addl %eax,%edi
	jmp L.46
Ljoin_l26:
	jmp L.45
L.45:
	leal 304(%esp), %edi
	movl $-80,%eax
	addl %eax,%edi
	fldl (%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	fistpl (%edi)
	leal 304(%esp), %edi
	movl $-56,%eax
	addl %eax,%edi
	movl (%edi),%edi
	jmp L.46
L.46:
	leal L,%eax
	movl %edi,(%eax)
	leal D,%edi
	leal 304(%esp), %eax
	movl $-64,%ecx
	addl %ecx,%eax
	fildq (%edi)
	fistpq (%eax)
	leal 304(%esp), %edi
	movl $-64,%eax
	addl %eax,%edi
	fldl (%edi)
	leal f,%edi
	fstps (%edi)
	leal 304(%esp), %edi
	movl $-64,%eax
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
	leal 304(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 260(%esp),%ecx
	movl %ecx,(%edx)
	movl 256(%esp),%edi
	leal 304(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l86:
.long 0
.section .pcmap
.long Ljoin_l79
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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
.long 0x80000004
.long 0xfffffed0
.long 0xffffffd4
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
.long 0xffffffd0
.long 0
.long 0
.long 0
.long 0xfffffed0
.long 0
.long 0
.long 0
.long 0xfffffed8
.long 0
.long 0
.long 0
.long 0xfffffee0
.long 0
.long 0
.long 0
.long 0xfffffee8
.long 0
.long 0
.long 0
.long 0xfffffef0
.long 0
.long 0
.long 0
.long 0xfffffef8
.long 0
.long 0
.long 0
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff10
.long 0
.long 0xffffff14
.long 0xffffff18
.long 0xffffff1c
.long 0xffffff20
.long 0xffffff24
.long 0xffffff28
.long 0xffffff2c
.long 0xffffff30
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff38
.long 0
.long 0xffffff40
.long 0xffffff48
.long 0xffffff50
.long 0xffffff58
.long 0xffffff60
.long 0xffffff68
.long 0xffffff70
.long 0xffffff78
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff80
.long 0
.long 0xffffff88
.long 0xffffff90
.long 0xffffff98
.long 0xffffffa0
.long 0xffffffa8
.long 0xffffffb0
.long 0xffffffb8
.long 0xffffffc0
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

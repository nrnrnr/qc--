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
	movl $-60,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal c,%eax
	movsbl (%eax),%edx
	movl $-56,%eax
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal s,%ecx
	movswl (%ecx),%edx
	movl $-52,%ecx
	leal 60(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	leal i,%eax
	movl $-48,%edx
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal l,%ecx
	movl $-44,%edx
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	leal C,%eax
	movzbl (%eax),%edx
	movl $-40,%eax
	leal 60(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	leal S,%ecx
	movzwl (%ecx),%edx
	movl $-36,%ecx
	leal 60(%esp), %eax
	addl %ecx,%eax
	movl %edx,(%eax)
	leal I,%eax
	movl $-32,%edx
	leal 60(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal L,%ecx
	movl $-28,%edx
	leal 60(%esp), %eax
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	leal f,%eax
	flds (%eax)
	movl $-24,%eax
	leal 60(%esp), %edx
	addl %eax,%edx
	fstpl (%edx)
	leal d,%edx
	movl $-16,%eax
	leal 60(%esp), %ecx
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
	leal D,%ecx
	movl $-8,%edx
	leal 60(%esp), %eax
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	call printf
Ljoin_l9:
L.1:
	leal 60(%esp), %eax
	movl $0,%ecx
	leal 60(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
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
main:
	leal -404(%esp), %esp
Linitialize_continuations_l20:
Lproc_body_start_l19:
	leal c,%ecx
	movl $1,%eax
	movb %al,(%ecx)
	movsbl (%ecx),%eax
	leal s,%ecx
	movl %eax,252(%esp)
	movw %ax,(%ecx)
	leal i,%eax
	movl 252(%esp),%ecx
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	movl %ecx,%eax
	leal C,%edx
	movl %eax,256(%esp)
	movb %al,(%edx)
	leal S,%eax
	movl %eax,260(%esp)
	movl 256(%esp),%eax
	movl 260(%esp),%edx
	movw %ax,(%edx)
	leal I,%eax
	movl 256(%esp),%edx
	movl %edx,(%eax)
	leal L,%eax
	movl %edx,(%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-404,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-404,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-404,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	call print
Ljoin_l79:
	leal s,%eax
	movl $2,%ecx
	movl %eax,264(%esp)
	movl %ecx,%eax
	movl 264(%esp),%ecx
	movw %ax,(%ecx)
	movswl (%ecx),%eax
	leal c,%ecx
	movl %eax,268(%esp)
	movb %al,(%ecx)
	leal i,%eax
	movl 268(%esp),%ecx
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	movl %ecx,%eax
	leal C,%edx
	movl %eax,272(%esp)
	movb %al,(%edx)
	leal S,%eax
	movl %eax,276(%esp)
	movl 272(%esp),%eax
	movl 276(%esp),%edx
	movw %ax,(%edx)
	leal I,%eax
	movl 272(%esp),%edx
	movl %edx,(%eax)
	leal L,%eax
	movl %edx,(%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-396,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-396,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-396,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	call print
Ljoin_l76:
	leal i,%eax
	movl $3,%ecx
	movl %ecx,(%eax)
	movl (%eax),%eax
	leal c,%ecx
	movl %eax,280(%esp)
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,284(%esp)
	movl 280(%esp),%eax
	movl 284(%esp),%ecx
	movw %ax,(%ecx)
	leal l,%eax
	movl 280(%esp),%ecx
	movl %ecx,(%eax)
	movl %ecx,%eax
	leal C,%edx
	movl %eax,288(%esp)
	movb %al,(%edx)
	leal S,%eax
	movl %eax,292(%esp)
	movl 288(%esp),%eax
	movl 292(%esp),%edx
	movw %ax,(%edx)
	leal I,%eax
	movl 288(%esp),%edx
	movl %edx,(%eax)
	leal L,%eax
	movl %edx,(%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-388,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-388,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-388,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	call print
Ljoin_l73:
	leal l,%eax
	movl $4,%ecx
	movl %ecx,(%eax)
	movl (%eax),%eax
	leal c,%ecx
	movl %eax,296(%esp)
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,300(%esp)
	movl 296(%esp),%eax
	movl 300(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl 296(%esp),%ecx
	movl %ecx,(%eax)
	movl %ecx,%eax
	leal C,%edx
	movl %eax,304(%esp)
	movb %al,(%edx)
	leal S,%eax
	movl %eax,308(%esp)
	movl 304(%esp),%eax
	movl 308(%esp),%edx
	movw %ax,(%edx)
	leal I,%eax
	movl 304(%esp),%edx
	movl %edx,(%eax)
	leal L,%eax
	movl %edx,(%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-380,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-380,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-380,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	call print
Ljoin_l70:
	leal C,%eax
	movl $5,%ecx
	movl %eax,312(%esp)
	movl %ecx,%eax
	movl 312(%esp),%ecx
	movb %al,(%ecx)
	movzbl (%ecx),%eax
	leal c,%ecx
	movl %eax,316(%esp)
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,320(%esp)
	movl 316(%esp),%eax
	movl 320(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl 316(%esp),%ecx
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	movl %ecx,%eax
	leal S,%edx
	movl %eax,324(%esp)
	movw %ax,(%edx)
	leal I,%eax
	movl 324(%esp),%edx
	movl %edx,(%eax)
	leal L,%eax
	movl %edx,(%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-372,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-372,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-372,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	call print
Ljoin_l67:
	leal S,%eax
	movl $6,%ecx
	movl %eax,328(%esp)
	movl %ecx,%eax
	movl 328(%esp),%ecx
	movw %ax,(%ecx)
	movzwl (%ecx),%eax
	leal c,%ecx
	movl %eax,332(%esp)
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,336(%esp)
	movl 332(%esp),%eax
	movl 336(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl 332(%esp),%ecx
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	movl %ecx,%eax
	leal C,%edx
	movl %eax,340(%esp)
	movb %al,(%edx)
	leal I,%eax
	movl 340(%esp),%edx
	movl %edx,(%eax)
	leal L,%eax
	movl %edx,(%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl %ecx,(%edx)
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $-364,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fstpl (%ecx)
	movl $-364,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal d,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-364,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	leal D,%ecx
	fildq (%edx)
	fistpq (%ecx)
	call print
Ljoin_l64:
	leal I,%eax
	movl $7,%ecx
	movl %ecx,(%eax)
	movl (%eax),%eax
	movl %eax,%ecx
	leal c,%edx
	movl %eax,344(%esp)
	movl %ecx,%eax
	movb %al,(%edx)
	leal s,%eax
	movl %eax,348(%esp)
	movl %ecx,%eax
	movl 348(%esp),%edx
	movw %ax,(%edx)
	leal i,%eax
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal C,%eax
	movl %eax,352(%esp)
	movl 344(%esp),%eax
	movl 352(%esp),%ecx
	movb %al,(%ecx)
	leal S,%eax
	movl %eax,356(%esp)
	movl 344(%esp),%eax
	movl 356(%esp),%ecx
	movw %ax,(%ecx)
	leal L,%eax
	movl 344(%esp),%ecx
	movl %ecx,(%eax)
	movl $1,%eax
	movl %ecx,%edx
	andl %eax,%edx
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $1,%ecx
	movl 344(%esp),%eax
	shrl %cl, %eax
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fildl (%edx)
	leal f_4,%edx
	fldl (%edx)
	fmulp
	faddp
	movl $-356,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	movl $-356,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	leal f,%edx
	fstps (%edx)
	movl $-356,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	leal d,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $-356,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	leal D,%edx
	fildq (%eax)
	fistpq (%edx)
	call print
Ljoin_l61:
	leal L,%eax
	movl $8,%ecx
	movl %ecx,(%eax)
	movl (%eax),%eax
	movl %eax,%ecx
	leal c,%edx
	movl %eax,360(%esp)
	movl %ecx,%eax
	movb %al,(%edx)
	leal s,%eax
	movl %eax,364(%esp)
	movl %ecx,%eax
	movl 364(%esp),%edx
	movw %ax,(%edx)
	leal i,%eax
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal C,%eax
	movl %eax,368(%esp)
	movl 360(%esp),%eax
	movl 368(%esp),%ecx
	movb %al,(%ecx)
	leal S,%eax
	movl %eax,372(%esp)
	movl 360(%esp),%eax
	movl 372(%esp),%ecx
	movw %ax,(%ecx)
	movzwl (%ecx),%eax
	leal I,%ecx
	movl %eax,(%ecx)
	movl $1,%eax
	movl 360(%esp),%ecx
	movl %ecx,%edx
	andl %eax,%edx
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl %edx,(%ecx)
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildl (%edx)
	movl $1,%ecx
	movl 360(%esp),%eax
	shrl %cl, %eax
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fildl (%edx)
	leal f_4,%edx
	fldl (%edx)
	fmulp
	faddp
	movl $-348,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fstpl (%eax)
	movl $-348,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	leal f,%edx
	fstps (%edx)
	movl $-348,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	leal d,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $-348,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	leal D,%edx
	fildq (%eax)
	fistpq (%edx)
	call print
Ljoin_l58:
	leal f,%eax
	leal f_5,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $-340,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	movl $-340,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	flds (%edx)
	movl $-156,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fistpl (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	movl (%edx),%eax
	leal c,%edx
	movl %eax,376(%esp)
	movb %al,(%edx)
	leal s,%eax
	movl %eax,380(%esp)
	movl 376(%esp),%eax
	movl 380(%esp),%edx
	movw %ax,(%edx)
	leal i,%eax
	movl 376(%esp),%edx
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	leal f_9,%eax
	movl $-336,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	movl $-340,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	flds (%edx)
	movl $-336,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	flds (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l54
Ljoin_l55:
	movl $-2147483648,%ecx
	movl $-336,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	flds (%eax)
	movl $-340,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	fsubp
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.8
Ljoin_l54:
	jmp L.7
L.7:
	movl $-340,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	flds (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.8
L.8:
	leal C,%ecx
	movb %al,(%ecx)
	leal f,%eax
	movl $-332,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal f_9,%ecx
	movl $-328,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $-332,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-328,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l52
Ljoin_l53:
	movl $-2147483648,%edx
	movl $-328,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	flds (%eax)
	movl $-332,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	flds (%ecx)
	fsubp
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %edx,%eax
	jmp L.12
Ljoin_l52:
	jmp L.11
L.11:
	movl $-332,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp L.12
L.12:
	leal S,%edx
	movw %ax,(%edx)
	leal f,%eax
	movl $-324,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal f_9,%ecx
	movl $-320,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $-324,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-320,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l50
Ljoin_l51:
	movl $-2147483648,%edx
	movl $-320,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	flds (%eax)
	movl $-324,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	flds (%ecx)
	fsubp
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %edx,%eax
	jmp L.15
Ljoin_l50:
	jmp L.14
L.14:
	movl $-324,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp L.15
L.15:
	leal I,%edx
	movl %eax,(%edx)
	leal f,%eax
	movl $-316,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal f_9,%ecx
	movl $-312,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $-316,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-312,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l48
Ljoin_l49:
	movl $-2147483648,%edx
	movl $-312,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	flds (%eax)
	movl $-316,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	flds (%ecx)
	fsubp
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	addl %edx,%eax
	jmp L.18
Ljoin_l48:
	jmp L.17
L.17:
	movl $-316,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	flds (%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	jmp L.18
L.18:
	leal L,%edx
	movl %eax,(%edx)
	leal f,%eax
	flds (%eax)
	movl $-308,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fstpl (%edx)
	movl $-308,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	leal d,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $-308,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	leal D,%edx
	fildq (%eax)
	fistpq (%edx)
	call print
Ljoin_l47:
	leal d,%eax
	leal f_19,%ecx
	fildq (%ecx)
	fistpq (%eax)
	movl $-300,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $-300,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fistpl (%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal c,%eax
	movl %eax,384(%esp)
	movl %edx,%eax
	movl 384(%esp),%ecx
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,388(%esp)
	movl %edx,%eax
	movl 388(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	leal f_23,%eax
	movl $-292,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	movl $-300,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fldl (%eax)
	movl $-292,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l43
Ljoin_l44:
	movl $-2147483648,%ecx
	movl $-292,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-300,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	fsubp
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.22
Ljoin_l43:
	jmp L.21
L.21:
	movl $-300,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.22
L.22:
	leal C,%ecx
	movb %al,(%ecx)
	leal d,%eax
	movl $-284,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal f_23,%edx
	movl $-276,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-284,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-276,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l41
Ljoin_l42:
	movl $-2147483648,%ecx
	movl $-276,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-284,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	fsubp
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.26
Ljoin_l41:
	jmp L.25
L.25:
	movl $-284,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.26
L.26:
	leal S,%ecx
	movw %ax,(%ecx)
	leal d,%eax
	movl $-268,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal f_23,%edx
	movl $-260,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-268,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-260,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l39
Ljoin_l40:
	movl $-2147483648,%ecx
	movl $-260,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-268,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	fsubp
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.29
Ljoin_l39:
	jmp L.28
L.28:
	movl $-268,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.29
L.29:
	leal I,%ecx
	movl %eax,(%ecx)
	leal d,%eax
	movl $-252,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal f_23,%edx
	movl $-244,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-252,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-244,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l37
Ljoin_l38:
	movl $-2147483648,%ecx
	movl $-244,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-252,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	fsubp
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.32
Ljoin_l37:
	jmp L.31
L.31:
	movl $-252,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.32
L.32:
	leal L,%ecx
	movl %eax,(%ecx)
	leal d,%eax
	movl $-236,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $-236,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	movl $-236,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	leal D,%eax
	fildq (%edx)
	fistpq (%eax)
	call print
Ljoin_l36:
	leal D,%eax
	leal f_33,%ecx
	fildq (%ecx)
	fistpq (%eax)
	movl $-228,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $-228,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fistpl (%edx)
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	movl (%eax),%edx
	leal c,%eax
	movl %eax,392(%esp)
	movl %edx,%eax
	movl 392(%esp),%ecx
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,396(%esp)
	movl %edx,%eax
	movl 396(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl %edx,(%eax)
	leal l,%eax
	movl %edx,(%eax)
	leal f_37,%eax
	movl $-220,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	movl $-228,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fldl (%eax)
	movl $-220,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l32
Ljoin_l33:
	movl $-2147483648,%ecx
	movl $-220,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-228,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	fsubp
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.36
Ljoin_l32:
	jmp L.35
L.35:
	movl $-228,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.36
L.36:
	leal C,%ecx
	movb %al,(%ecx)
	leal D,%eax
	movl $-212,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal f_37,%edx
	movl $-204,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-212,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-204,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l30
Ljoin_l31:
	movl $-2147483648,%ecx
	movl $-204,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-212,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	fsubp
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.40
Ljoin_l30:
	jmp L.39
L.39:
	movl $-212,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.40
L.40:
	leal S,%ecx
	movw %ax,(%ecx)
	leal D,%eax
	movl $-196,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal f_37,%edx
	movl $-188,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-196,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-188,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l28
Ljoin_l29:
	movl $-2147483648,%ecx
	movl $-188,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-196,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	fsubp
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.43
Ljoin_l28:
	jmp L.42
L.42:
	movl $-196,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.43
L.43:
	leal I,%ecx
	movl %eax,(%ecx)
	leal D,%eax
	movl $-180,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal f_37,%edx
	movl $-172,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fildq (%edx)
	fistpq (%ecx)
	movl $-180,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fldl (%edx)
	movl $-172,%edx
	leal 404(%esp), %ecx
	addl %edx,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l26
Ljoin_l27:
	movl $-2147483648,%ecx
	movl $-172,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	movl $-180,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	fldl (%edx)
	fsubp
	movl $-156,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	movl (%edx),%eax
	addl %ecx,%eax
	jmp L.46
Ljoin_l26:
	jmp L.45
L.45:
	movl $-180,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	fldl (%ecx)
	movl $-156,%ecx
	leal 404(%esp), %eax
	addl %ecx,%eax
	fistpl (%eax)
	movl $-156,%eax
	leal 404(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	jmp L.46
L.46:
	leal L,%ecx
	movl %eax,(%ecx)
	leal D,%eax
	movl $-164,%ecx
	leal 404(%esp), %edx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	movl $-164,%edx
	leal 404(%esp), %eax
	addl %edx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	movl $-164,%eax
	leal 404(%esp), %edx
	addl %eax,%edx
	leal d,%eax
	fildq (%edx)
	fistpq (%eax)
	call print
Ljoin_l25:
	leal p,%eax
	movl $0,%ecx
	movl %ecx,(%eax)
	movl %ecx,(%eax)
	movl %ecx,(%eax)
	movl %ecx,(%eax)
	leal P,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	movl $0,%edx
	movl %edx,(%ecx)
	movl %edx,(%ecx)
	movl %edx,(%ecx)
	movl %edx,(%ecx)
	movl (%eax),%edx
	movl %edx,(%ecx)
	movl $0,%ecx
	movl %ecx,%eax
	leal 404(%esp), %ecx
	movl $0,%edx
	movl %ebx,400(%esp)
	leal 404(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 400(%esp),%ebx
	leal 404(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l86:
.long 0
.section .pcmap
.long Ljoin_l79
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l76
.long Lframe_l88
.section .pcmap_data
Lframe_l88:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l73
.long Lframe_l89
.section .pcmap_data
Lframe_l89:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l70
.long Lframe_l90
.section .pcmap_data
Lframe_l90:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l67
.long Lframe_l91
.section .pcmap_data
Lframe_l91:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l64
.long Lframe_l92
.section .pcmap_data
Lframe_l92:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l61
.long Lframe_l93
.section .pcmap_data
Lframe_l93:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l58
.long Lframe_l94
.section .pcmap_data
Lframe_l94:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l47
.long Lframe_l95
.section .pcmap_data
Lframe_l95:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l36
.long Lframe_l96
.section .pcmap_data
Lframe_l96:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
.section .pcmap
.long Ljoin_l25
.long Lframe_l97
.section .pcmap_data
Lframe_l97:
.long 0xfffffe6c
.long 0x80000004
.long 0x80000000
.long Lstackdata_l86
.long 0x80000008
.long 0x80000052
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
.long 0
.long 0
.long 0
.long 0xfffffe6c
.long 0
.long 0
.long 0
.long 0xfffffe74
.long 0
.long 0
.long 0
.long 0xfffffe7c
.long 0
.long 0
.long 0
.long 0xfffffe84
.long 0
.long 0
.long 0
.long 0xfffffe8c
.long 0
.long 0
.long 0
.long 0xfffffe94
.long 0
.long 0
.long 0
.long 0xfffffe9c
.long 0
.long 0
.long 0
.long 0
.long 0xfffffea4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffeac
.long 0
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0xfffffebc
.long 0xfffffec0
.long 0xfffffec4
.long 0xfffffec8
.long 0xfffffecc
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffed4
.long 0
.long 0xfffffedc
.long 0xfffffee4
.long 0xfffffeec
.long 0xfffffef4
.long 0xfffffefc
.long 0xffffff04
.long 0xffffff0c
.long 0xffffff14
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff1c
.long 0
.long 0xffffff24
.long 0xffffff2c
.long 0xffffff34
.long 0xffffff3c
.long 0xffffff44
.long 0xffffff4c
.long 0xffffff54
.long 0xffffff5c
.long 0
.long 0
.long 0
.long 0
.long 0x80000000
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

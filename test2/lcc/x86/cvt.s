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
	movsbl (%eax),%ecx
	leal 60(%esp), %eax
	movl $-56,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal s,%eax
	movswl (%eax),%ecx
	leal 60(%esp), %eax
	movl $-52,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal i,%eax
	leal 60(%esp), %ecx
	movl $-48,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal l,%ecx
	leal 60(%esp), %edx
	movl $-44,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal C,%eax
	movzbl (%eax),%edx
	leal 60(%esp), %eax
	movl $-40,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal S,%eax
	movzwl (%eax),%edx
	leal 60(%esp), %eax
	movl $-36,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal I,%eax
	leal 60(%esp), %edx
	movl $-32,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal L,%ecx
	leal 60(%esp), %edx
	movl $-28,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal f,%eax
	flds (%eax)
	leal 60(%esp), %eax
	movl $-24,%edx
	addl %edx,%eax
	fstpl (%eax)
	leal d,%eax
	leal 60(%esp), %edx
	movl $-16,%ecx
	addl %ecx,%edx
	fildq (%eax)
	fistpq (%edx)
	leal D,%edx
	leal 60(%esp), %eax
	movl $-8,%ecx
	addl %ecx,%eax
	fildq (%edx)
	fistpq (%eax)
	call printf
Ljoin_l9:
L.1:
	leal 60(%esp), %eax
	leal 60(%esp), %ecx
	movl $0,%edx
	addl %edx,%ecx
	movl (%eax),%edx
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
	leal -424(%esp), %esp
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
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 424(%esp), %eax
	movl $-424,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 424(%esp), %eax
	movl $-424,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-424,%eax
	addl %eax,%ecx
	leal D,%eax
	fildq (%ecx)
	fistpq (%eax)
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
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 424(%esp), %eax
	movl $-416,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 424(%esp), %eax
	movl $-416,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-416,%eax
	addl %eax,%ecx
	leal D,%eax
	fildq (%ecx)
	fistpq (%eax)
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
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 424(%esp), %eax
	movl $-408,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 424(%esp), %eax
	movl $-408,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-408,%eax
	addl %eax,%ecx
	leal D,%eax
	fildq (%ecx)
	fistpq (%eax)
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
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 424(%esp), %eax
	movl $-400,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 424(%esp), %eax
	movl $-400,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-400,%eax
	addl %eax,%ecx
	leal D,%eax
	fildq (%ecx)
	fistpq (%eax)
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
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 424(%esp), %eax
	movl $-392,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 424(%esp), %eax
	movl $-392,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-392,%eax
	addl %eax,%ecx
	leal D,%eax
	fildq (%ecx)
	fistpq (%eax)
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
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fildl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl %ecx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal 424(%esp), %eax
	movl $-384,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 424(%esp), %eax
	movl $-384,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-384,%eax
	addl %eax,%ecx
	leal D,%eax
	fildq (%ecx)
	fistpq (%eax)
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
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fildl (%eax)
	movl $1,%ecx
	movl 344(%esp),%eax
	shrl %cl, %eax
	leal 424(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f_4,%eax
	fldl (%eax)
	fmulp
	faddp
	leal 424(%esp), %eax
	movl $-376,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 424(%esp), %eax
	movl $-376,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 424(%esp), %eax
	movl $-376,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-376,%eax
	addl %eax,%ecx
	leal D,%eax
	fildq (%ecx)
	fistpq (%eax)
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
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl %edx,(%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fildl (%eax)
	movl $1,%ecx
	movl 360(%esp),%eax
	shrl %cl, %eax
	leal 424(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fildl (%eax)
	leal f_4,%eax
	fldl (%eax)
	fmulp
	faddp
	leal 424(%esp), %eax
	movl $-368,%ecx
	addl %ecx,%eax
	fstpl (%eax)
	leal 424(%esp), %eax
	movl $-368,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal f,%eax
	fstps (%eax)
	leal 424(%esp), %eax
	movl $-368,%ecx
	addl %ecx,%eax
	leal d,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-368,%eax
	addl %eax,%ecx
	leal D,%eax
	fildq (%ecx)
	fistpq (%eax)
	call print
Ljoin_l58:
	leal f,%eax
	leal f_5,%ecx
	movl (%ecx),%edx
	movl %edx,(%eax)
	leal 424(%esp), %edx
	movl $-360,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal 424(%esp), %ecx
	movl $-360,%edx
	addl %edx,%ecx
	flds (%ecx)
	leal 424(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	fistpl (%ecx)
	leal 424(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	leal c,%ecx
	movl %eax,376(%esp)
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,380(%esp)
	movl 376(%esp),%eax
	movl 380(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl 376(%esp),%ecx
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal f_9,%eax
	leal 424(%esp), %ecx
	movl $-356,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal 424(%esp), %ecx
	movl $-360,%edx
	addl %edx,%ecx
	flds (%ecx)
	leal 424(%esp), %ecx
	movl $-356,%edx
	addl %edx,%ecx
	flds (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l54
Ljoin_l55:
	leal 424(%esp), %ecx
	movl $-356,%edx
	addl %edx,%ecx
	flds (%ecx)
	leal 424(%esp), %ecx
	movl $-360,%edx
	addl %edx,%ecx
	flds (%ecx)
	fsubp
	leal 424(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	fistpl (%ecx)
	leal 424(%esp), %ecx
	movl $-176,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
	movl $-2147483648,%ecx
	addl %ecx,%eax
	jmp L.8
Ljoin_l54:
	jmp L.7
L.7:
	leal 424(%esp), %eax
	movl $-360,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%eax
	jmp L.8
L.8:
	leal C,%ecx
	movb %al,(%ecx)
	leal f,%eax
	leal 424(%esp), %ecx
	movl $-352,%edx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	leal f_9,%ecx
	leal 424(%esp), %edx
	movl $-348,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal 424(%esp), %eax
	movl $-352,%edx
	addl %edx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-348,%edx
	addl %edx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l52
Ljoin_l53:
	leal 424(%esp), %eax
	movl $-348,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-352,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	movl $-2147483648,%eax
	addl %eax,%edx
	jmp L.12
Ljoin_l52:
	jmp L.11
L.11:
	leal 424(%esp), %eax
	movl $-352,%edx
	addl %edx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%edx
	jmp L.12
L.12:
	leal S,%eax
	movl %eax,384(%esp)
	movl %edx,%eax
	movl 384(%esp),%edx
	movw %ax,(%edx)
	leal f,%eax
	leal 424(%esp), %edx
	movl $-344,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal f_9,%ecx
	leal 424(%esp), %edx
	movl $-340,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal 424(%esp), %eax
	movl $-344,%edx
	addl %edx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-340,%edx
	addl %edx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l50
Ljoin_l51:
	leal 424(%esp), %eax
	movl $-340,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-344,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	movl $-2147483648,%eax
	addl %eax,%edx
	jmp L.15
Ljoin_l50:
	jmp L.14
L.14:
	leal 424(%esp), %eax
	movl $-344,%edx
	addl %edx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%edx
	jmp L.15
L.15:
	leal I,%eax
	movl %edx,(%eax)
	leal f,%eax
	leal 424(%esp), %edx
	movl $-336,%ecx
	addl %ecx,%edx
	movl (%eax),%ecx
	movl %ecx,(%edx)
	leal f_9,%ecx
	leal 424(%esp), %edx
	movl $-332,%eax
	addl %eax,%edx
	movl (%ecx),%eax
	movl %eax,(%edx)
	leal 424(%esp), %eax
	movl $-336,%edx
	addl %edx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-332,%edx
	addl %edx,%eax
	flds (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l48
Ljoin_l49:
	leal 424(%esp), %eax
	movl $-332,%ecx
	addl %ecx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-336,%ecx
	addl %ecx,%eax
	flds (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%edx
	movl $-2147483648,%eax
	addl %eax,%edx
	jmp L.18
Ljoin_l48:
	jmp L.17
L.17:
	leal 424(%esp), %eax
	movl $-336,%edx
	addl %edx,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%edx
	jmp L.18
L.18:
	leal L,%eax
	movl %edx,(%eax)
	leal f,%eax
	flds (%eax)
	leal 424(%esp), %eax
	movl $-328,%edx
	addl %edx,%eax
	fstpl (%eax)
	leal 424(%esp), %eax
	movl $-328,%edx
	addl %edx,%eax
	leal d,%edx
	fildq (%eax)
	fistpq (%edx)
	leal 424(%esp), %edx
	movl $-328,%eax
	addl %eax,%edx
	leal D,%eax
	fildq (%edx)
	fistpq (%eax)
	call print
Ljoin_l47:
	leal d,%eax
	leal f_19,%ecx
	fildq (%ecx)
	fistpq (%eax)
	leal 424(%esp), %ecx
	movl $-320,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-320,%eax
	addl %eax,%ecx
	fldl (%ecx)
	leal 424(%esp), %ecx
	movl $-176,%eax
	addl %eax,%ecx
	fistpl (%ecx)
	leal 424(%esp), %ecx
	movl $-176,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal c,%ecx
	movl %eax,388(%esp)
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,392(%esp)
	movl 388(%esp),%eax
	movl 392(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl 388(%esp),%ecx
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal f_23,%eax
	leal 424(%esp), %ecx
	movl $-312,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-320,%eax
	addl %eax,%ecx
	fldl (%ecx)
	leal 424(%esp), %ecx
	movl $-312,%eax
	addl %eax,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l43
Ljoin_l44:
	leal 424(%esp), %eax
	movl $-312,%edx
	addl %edx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-320,%edx
	addl %edx,%eax
	fldl (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%ecx
	movl $-2147483648,%eax
	addl %eax,%ecx
	jmp L.22
Ljoin_l43:
	jmp L.21
L.21:
	leal 424(%esp), %eax
	movl $-320,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp L.22
L.22:
	leal C,%eax
	movl %eax,396(%esp)
	movl %ecx,%eax
	movl 396(%esp),%ecx
	movb %al,(%ecx)
	leal d,%eax
	leal 424(%esp), %ecx
	movl $-304,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_23,%ecx
	leal 424(%esp), %eax
	movl $-296,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 424(%esp), %eax
	movl $-304,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-296,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l41
Ljoin_l42:
	leal 424(%esp), %eax
	movl $-296,%edx
	addl %edx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-304,%edx
	addl %edx,%eax
	fldl (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%ecx
	movl $-2147483648,%eax
	addl %eax,%ecx
	jmp L.26
Ljoin_l41:
	jmp L.25
L.25:
	leal 424(%esp), %eax
	movl $-304,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp L.26
L.26:
	leal S,%eax
	movl %eax,400(%esp)
	movl %ecx,%eax
	movl 400(%esp),%ecx
	movw %ax,(%ecx)
	leal d,%eax
	leal 424(%esp), %ecx
	movl $-288,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_23,%ecx
	leal 424(%esp), %eax
	movl $-280,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 424(%esp), %eax
	movl $-288,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-280,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l39
Ljoin_l40:
	leal 424(%esp), %eax
	movl $-280,%edx
	addl %edx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-288,%edx
	addl %edx,%eax
	fldl (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%ecx
	movl $-2147483648,%eax
	addl %eax,%ecx
	jmp L.29
Ljoin_l39:
	jmp L.28
L.28:
	leal 424(%esp), %eax
	movl $-288,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp L.29
L.29:
	leal I,%eax
	movl %ecx,(%eax)
	leal d,%eax
	leal 424(%esp), %ecx
	movl $-272,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_23,%ecx
	leal 424(%esp), %eax
	movl $-264,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 424(%esp), %eax
	movl $-272,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-264,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l37
Ljoin_l38:
	leal 424(%esp), %eax
	movl $-264,%edx
	addl %edx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-272,%edx
	addl %edx,%eax
	fldl (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%ecx
	movl $-2147483648,%eax
	addl %eax,%ecx
	jmp L.32
Ljoin_l37:
	jmp L.31
L.31:
	leal 424(%esp), %eax
	movl $-272,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp L.32
L.32:
	leal L,%eax
	movl %ecx,(%eax)
	leal d,%eax
	leal 424(%esp), %ecx
	movl $-256,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-256,%eax
	addl %eax,%ecx
	fldl (%ecx)
	leal f,%ecx
	fstps (%ecx)
	leal 424(%esp), %ecx
	movl $-256,%eax
	addl %eax,%ecx
	leal D,%eax
	fildq (%ecx)
	fistpq (%eax)
	call print
Ljoin_l36:
	leal D,%eax
	leal f_33,%ecx
	fildq (%ecx)
	fistpq (%eax)
	leal 424(%esp), %ecx
	movl $-248,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-248,%eax
	addl %eax,%ecx
	fldl (%ecx)
	leal 424(%esp), %ecx
	movl $-176,%eax
	addl %eax,%ecx
	fistpl (%ecx)
	leal 424(%esp), %ecx
	movl $-176,%eax
	addl %eax,%ecx
	movl (%ecx),%eax
	leal c,%ecx
	movl %eax,404(%esp)
	movb %al,(%ecx)
	leal s,%eax
	movl %eax,408(%esp)
	movl 404(%esp),%eax
	movl 408(%esp),%ecx
	movw %ax,(%ecx)
	leal i,%eax
	movl 404(%esp),%ecx
	movl %ecx,(%eax)
	leal l,%eax
	movl %ecx,(%eax)
	leal f_37,%eax
	leal 424(%esp), %ecx
	movl $-240,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-248,%eax
	addl %eax,%ecx
	fldl (%ecx)
	leal 424(%esp), %ecx
	movl $-240,%eax
	addl %eax,%ecx
	fldl (%ecx)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l32
Ljoin_l33:
	leal 424(%esp), %eax
	movl $-240,%edx
	addl %edx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-248,%edx
	addl %edx,%eax
	fldl (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%ecx
	movl $-2147483648,%eax
	addl %eax,%ecx
	jmp L.36
Ljoin_l32:
	jmp L.35
L.35:
	leal 424(%esp), %eax
	movl $-248,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp L.36
L.36:
	leal C,%eax
	movl %eax,412(%esp)
	movl %ecx,%eax
	movl 412(%esp),%ecx
	movb %al,(%ecx)
	leal D,%eax
	leal 424(%esp), %ecx
	movl $-232,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_37,%ecx
	leal 424(%esp), %eax
	movl $-224,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 424(%esp), %eax
	movl $-232,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-224,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l30
Ljoin_l31:
	leal 424(%esp), %eax
	movl $-224,%edx
	addl %edx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-232,%edx
	addl %edx,%eax
	fldl (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%ecx
	movl $-2147483648,%eax
	addl %eax,%ecx
	jmp L.40
Ljoin_l30:
	jmp L.39
L.39:
	leal 424(%esp), %eax
	movl $-232,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp L.40
L.40:
	leal S,%eax
	movl %eax,416(%esp)
	movl %ecx,%eax
	movl 416(%esp),%ecx
	movw %ax,(%ecx)
	leal D,%eax
	leal 424(%esp), %ecx
	movl $-216,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_37,%ecx
	leal 424(%esp), %eax
	movl $-208,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 424(%esp), %eax
	movl $-216,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-208,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l28
Ljoin_l29:
	leal 424(%esp), %eax
	movl $-208,%edx
	addl %edx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-216,%edx
	addl %edx,%eax
	fldl (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%ecx
	movl $-2147483648,%eax
	addl %eax,%ecx
	jmp L.43
Ljoin_l28:
	jmp L.42
L.42:
	leal 424(%esp), %eax
	movl $-216,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp L.43
L.43:
	leal I,%eax
	movl %ecx,(%eax)
	leal D,%eax
	leal 424(%esp), %ecx
	movl $-200,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal f_37,%ecx
	leal 424(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	fildq (%ecx)
	fistpq (%eax)
	leal 424(%esp), %eax
	movl $-200,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-192,%ecx
	addl %ecx,%eax
	fldl (%eax)
	fcompp
	fstsw %ax
	sahf
	ja Ljoin_l26
Ljoin_l27:
	leal 424(%esp), %eax
	movl $-192,%edx
	addl %edx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-200,%edx
	addl %edx,%eax
	fldl (%eax)
	fsubp
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%edx
	addl %edx,%eax
	movl (%eax),%ecx
	movl $-2147483648,%eax
	addl %eax,%ecx
	jmp L.46
Ljoin_l26:
	jmp L.45
L.45:
	leal 424(%esp), %eax
	movl $-200,%ecx
	addl %ecx,%eax
	fldl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	fistpl (%eax)
	leal 424(%esp), %eax
	movl $-176,%ecx
	addl %ecx,%eax
	movl (%eax),%ecx
	jmp L.46
L.46:
	leal L,%eax
	movl %ecx,(%eax)
	leal D,%eax
	leal 424(%esp), %ecx
	movl $-184,%edx
	addl %edx,%ecx
	fildq (%eax)
	fistpq (%ecx)
	leal 424(%esp), %ecx
	movl $-184,%eax
	addl %eax,%ecx
	fldl (%ecx)
	leal f,%ecx
	fstps (%ecx)
	leal 424(%esp), %ecx
	movl $-184,%eax
	addl %eax,%ecx
	leal d,%eax
	fildq (%ecx)
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
	leal 424(%esp), %ecx
	leal 424(%esp), %edx
	movl %ebx,420(%esp)
	movl $0,%ebx
	addl %ebx,%edx
	movl (%ecx),%ebx
	movl %ebx,(%edx)
	movl 420(%esp),%ebx
	leal 424(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l86:
.long 0
.section .pcmap
.long Ljoin_l79
.long Lframe_l87
.section .pcmap_data
Lframe_l87:
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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
.long 0xfffffe58
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
.long 0xfffffe58
.long 0
.long 0
.long 0
.long 0xfffffe60
.long 0
.long 0
.long 0
.long 0xfffffe68
.long 0
.long 0
.long 0
.long 0xfffffe70
.long 0
.long 0
.long 0
.long 0xfffffe78
.long 0
.long 0
.long 0
.long 0xfffffe80
.long 0
.long 0
.long 0
.long 0xfffffe88
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe90
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffe98
.long 0
.long 0xfffffe9c
.long 0xfffffea0
.long 0xfffffea4
.long 0xfffffea8
.long 0xfffffeac
.long 0xfffffeb0
.long 0xfffffeb4
.long 0xfffffeb8
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xfffffec0
.long 0
.long 0xfffffec8
.long 0xfffffed0
.long 0xfffffed8
.long 0xfffffee0
.long 0xfffffee8
.long 0xfffffef0
.long 0xfffffef8
.long 0xffffff00
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0xffffff08
.long 0
.long 0xffffff10
.long 0xffffff18
.long 0xffffff20
.long 0xffffff28
.long 0xffffff30
.long 0xffffff38
.long 0xffffff40
.long 0xffffff48
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

.globl invokeclosure

.section .text

# Calling convention.
.set numargs_passed_in_registers, 1

# Offsets from stack pointer.
.set absmem_offset, 30
.set completion_continuation_offset, 20
.set closure_offset, 8

# Offsets within continuations.
.set continuation_pc_offset, 0
.set continuation_sp_offset, 4

# Offsets within the closure struct.
.set closure_ra_offset, 0
.set closure_sp_offset, 4
.set closure_overflowblock_offset, 8
.set closure_overflowblocksize_offset, 12
.set closure_function_offset, 16
.set closure_numargs_offset, 20
.set closure_numrets_offset, 24
.set closure_args_offset, 28

invokeclosure:
        leal -70(%esp), %esp
	# We never return, so we don't need to save the base pointer.

# Initialize continuations.
        leal .Lcut_entry_l11,%ebx /* why don't we have to save ebx before use? */
        movl %ebx,(completion_continuation_offset + continuation_pc_offset)(%esp)
        movl %esp,(completion_continuation_offset + continuation_sp_offset)(%esp)
       
# Begin function body.

	# Save closure in various places....
	movl %eax,closure_offset(%esp)  
        movl %eax,%ebx

	#  Check if we need overflow argument space
	movl closure_numargs_offset(%ebx), %ecx
	cmpl $numargs_passed_in_registers, %ecx 
	jl .Ldone_overflow_arguments

	#  Allocate overflow argument space
	subl $numargs_passed_in_registers, %ecx
	movl $0, %eax
	leal (%eax, %ecx, 4), %eax
	subl %eax, %esp

	# Copy overflow arguments into overflow argument block
	movl %esp, %edi
	leal (closure_args_offset+numargs_passed_in_registers*4)(%ebx), %esi
	cld
	rep movsd
	
.Ldone_overflow_arguments:
	
	# Register argument.
	# Strictly speaking this is incorrect if the function takes no
	# arguments.  Oh well...
        movl closure_args_offset     (%ebx),%eax

	# Make the call
        movl closure_function_offset (%ebx),%ebp
        call *%ebp

# save abstract machine state
	movl %eax,(absmem_offset +  0)(%esp)
	movl %ebx,(absmem_offset +  4)(%esp)
#	movl %ecx,(absmem_offset +  8)(%esp) # WE DON'T SAVE ECX.
	movl %edx,(absmem_offset + 12)(%esp)
	movl %esi,(absmem_offset + 16)(%esp)
	movl %edi,(absmem_offset + 20)(%esp)
	movl %ebp,(absmem_offset + 24)(%esp)
	movl %esp,(absmem_offset + 28)(%esp)

# Copy overflow block
	movl closure_offset(%esp), %eax                   # load closure
	movl closure_overflowblock_offset(%eax), %edi     # dst overflow block
	movl %esp, %esi                                   # src overflow block
	movl closure_overflowblocksize_offset(%eax), %ecx # overflow block size
	cld
	rep movsd


# Now we can call functions or whatever.

# Freestack cut.
        movl closure_offset(%esp),%edx                  # argument 1 (closure)
        leal completion_continuation_offset(%esp), %ebx # argument 2 (k)
        movl freestack,%eax
        movl continuation_sp_offset(%eax), %esp; jmp *(%eax)

.Lcut_entry_l11:
.Lstart_of_continuation_code_l10:

# Ok, now we're going to modify the saved machine state.
        movl closure_offset(%esp), %eax         # loads closure
	movl closure_sp_offset(%eax), %ecx      # old SP
	movl %ecx, (absmem_offset+28)(%esp)     # replace new SP

	movl closure_ra_offset(%eax), %ecx # old RA.  we keep this register.
	
# restore machine state
	movl (absmem_offset +  0)(%esp), %eax
	movl (absmem_offset +  4)(%esp), %ebx
#	movl (absmem_offset +  8)(%esp), %ecx # WE DON'T SAVE ECX.
	movl (absmem_offset + 12)(%esp), %edx
	movl (absmem_offset + 16)(%esp), %esi
	movl (absmem_offset + 20)(%esp), %edi
	movl (absmem_offset + 24)(%esp), %ebp
	movl (absmem_offset + 28)(%esp), %esp

	jmp *%ecx

.section .data

output:
	.ascii "The processor vendor ID is 'xxxxxxxxxxxxx'\n"
    handle: .int 0
    written: .int 0
    
.section .text
.globl _start
_start:
    mov $0, %rax
    cpuid
    mov $output, %rdi
    mov %rbx, 28(%rdi)
    mov %rdx, 32(%rdi)
    mov %rcx, 36(%rdi)

    sub $40, %rsp
    mov $-11, %rcx
    call  GetStdHandle
    mov %rax, handle
    mov handle, %rcx
    mov $output, %rdx
    mov $42, %r8
    mov written, %r9
    call WriteConsoleA
    
add $40, %rsp
mov $0, %rcx


    call ExitProcess
    
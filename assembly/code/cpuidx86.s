#/*========================================================================
#   $File: C:\projects\asm\code\cpuidx86.s $
#   $Date: $
#   $Revision: $
#   $Creator: DagonMeister $
#   $Notice: (C) Copyright by TheByteCave Inc., All Rights Reserved. 2022$
#   ======================================================================== */

.section .data

output:
    .ascii "The processor vendor ID is 'xxxxxxxxxxxx'\n"
    handle: .int 0
    written: .int 0
    
.section .text
.globl _start
_start:
    movl $0, %eax
    cpuid
    movl $output, %edi
    movl %ebx, 28(%edi)
    movl %edx, 32(%edi)
    movl %ecx, 36(%edi)
    pushl $-11
    call _GetStdHandle@4
    mov %eax, handle
    pushl $0
    pushl $written
    pushl $42
    pushl $output
    pushl handle
    call _WriteConsoleA@20
    
    
    pushl $0
    call _ExitProcess@4

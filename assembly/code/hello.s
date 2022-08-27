; $(C) Copyright by TheByteCave Inc., 2022 All Rights Reserved. $
; $Creator: Dagon Meister $
; $File: C:\projects\asm\code\hello.s $
.data
    myByte db 78
    myWord dw ?
    myFloat real4 89.5

.code
SomeFunction PROC
    mov al, byte ptr [myByte]
    mov cx, 256
    mov rax, -1
    mov ah, 0
    ret
    
SomeFunction ENDP

AddSubTestFunction PROC
    
    mov rax, 5
    mov rcx, 12
    add rax, rcx
ret
AddSubTestFunction ENDP
    
END
global asm_main

section .data
    num1 dd 50
    num2 dd 40

section .text
asm_main:
    enter 0,0

    mov eax, [num1] ; EAX = 50
    add eax, [num2] ; EAX = 50 + 40 = 90

    leave
    ret

global asm_main

section .text

asm_main:
    enter 0,0

    mov eax, 10
    add eax, 20

    leave
    ret

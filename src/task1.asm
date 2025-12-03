global asm_main

section .text

asm_main:
    enter 0,0
    ; pusha hata diya

    mov eax, 10
    add eax, 20

    ; popa hata diya
    leave
    ret

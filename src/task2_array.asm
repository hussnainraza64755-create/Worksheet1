global asm_array_sum

section .bss
    my_array resd 100

section .text
asm_array_sum:
    enter 0,0
    pusha

    mov ecx, 0
fill_loop:
    mov eax, ecx
    inc eax
    mov [my_array + ecx*4], eax
    inc ecx
    cmp ecx, 100
    jl fill_loop

    mov ecx, 0
    mov eax, 0
    mov edx, 0
sum_loop:
    add eax, [my_array + ecx*4]
    inc ecx
    cmp ecx, 100
    jl sum_loop

    mov [ebp-4], eax
    popa
    mov eax, [ebp-4]
    leave
    ret

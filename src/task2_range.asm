global asm_range_sum

section .bss
    my_array resd 100

section .text
asm_range_sum:
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

    mov ebx, [ebp+8]
    mov edx, [ebp+12]

    cmp ebx, 1
    jl error_val
    cmp edx, 100
    jg error_val
    cmp ebx, edx
    jg error_val

    mov ecx, ebx
    dec ecx
    mov eax, 0

range_loop:
    add eax, [my_array + ecx*4]
    inc ecx
    cmp ecx, edx
    jl range_loop

    mov [ebp-4], eax
    popa
    mov eax, [ebp-4]
    leave
    ret

error_val:
    popa
    mov eax, -1
    leave
    ret

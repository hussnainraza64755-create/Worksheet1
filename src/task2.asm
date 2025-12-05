global asm_task2
extern printf

section .data
    msg_welcome db "Welcome %s", 10, 0
    msg_error db "Error: Number must be between 50 and 100", 10, 0

section .text
asm_task2:
    enter 0,0
    pusha

    mov ecx, [ebp+8]

    cmp ecx, 50
    jle error_label
    cmp ecx, 100
    jge error_label

loop_start:
    pusha

    push dword [ebp+12]
    push msg_welcome
    call printf
    add esp, 8

    popa
    loop loop_start
    jmp end_label

error_label:
    push msg_error
    call printf
    add esp, 4

end_label:
    popa
    leave
    ret

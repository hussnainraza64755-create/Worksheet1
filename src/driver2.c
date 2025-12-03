#include <stdio.h>

void asm_task2(int count);

int main() {
    int count;
    printf("Enter a number (50-100): ");
    scanf("%d", &count);
    asm_task2(count);
    return 0;
}

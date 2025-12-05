#include <stdio.h>

void asm_task2(int count, char *name);

int main() {
    int count;
    char name[100];

    printf("Enter your name: ");
    scanf("%99s", name);

    printf("Enter a number (50-100): ");
    scanf("%d", &count);

    asm_task2(count, name);
    return 0;
}

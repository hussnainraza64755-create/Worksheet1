#include <stdio.h>

int asm_range_sum(int start, int end);

int main() {
    int start, end, result;
    printf("Enter Start Number (1-100): ");
    scanf("%d", &start);
    printf("Enter End Number (Start-100): ");
    scanf("%d", &end);

    result = asm_range_sum(start, end);

    if (result == -1) {
        printf("Error: Invalid Range provided!\n");
    } else {
        printf("Sum from %d to %d is: %d\n", start, end, result);
    }
    return 0;
}

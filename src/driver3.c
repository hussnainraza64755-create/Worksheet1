#include <stdio.h>

int asm_array_sum();

int main() {
    printf("Calculating sum of array (1 to 100)...\n");
    int result = asm_array_sum();
    printf("Total Sum: %d\n", result);
    return 0;
}

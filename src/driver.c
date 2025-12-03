#include <stdio.h>

// Function returns an integer (jo EAX register mein hoga)
int asm_main();

int main() {
    printf("Assembly function calling...\n");

    int result = asm_main(); // Assembly ka result yahan ayega

    printf("Assembly returned %d\n", result);
    return 0;
}

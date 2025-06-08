// hello.c
#include <stdio.h> // Required for printf

int main() {
    printf("Hello, RISC-V!\n");
    // In a bare-metal embedded context, main() typically doesn't return.
    // An infinite loop is common to prevent unpredictable behavior.
    while(1);
    return 0; // This line is unreachable due to the while(1) loop
}

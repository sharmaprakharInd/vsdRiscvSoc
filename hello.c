// hello.c
#include <stdio.h> // Required for printf

int main() {
    volatile int *led = (int*) 0x10012000;
    *led = 0x1;
    while (1);
}

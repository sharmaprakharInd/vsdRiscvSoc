// optim_example.c
// A simple C program to demonstrate compiler optimizations

int global_var = 10;

int calculate_sum(int a, int b) {
    int local_sum = a + b;
    return local_sum * global_var;
}

int main() {
    int x = 5;
    int y = 7;
    int result = calculate_sum(x, y);

    // A simple loop to encourage potential loop optimizations
    for (int i = 0; i < 5; i++) {
        result += i;
    }

    // Infinite loop to keep the program running for a bare-metal context,
    // though not strictly needed for this optimization analysis task.
    while(1);

    return 0; // Unreachable
}

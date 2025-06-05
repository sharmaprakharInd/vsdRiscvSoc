# Week 1 Tasks - VSD RISC-V SoC

This repository contains my progress and solutions for the Week 1 tasks.

---

## Task 2: Compile "Hello, RISC-V"

**Objective:** Create a minimal C "hello world" program, cross-compile it for RV32IMC, and verify the generated ELF file.

### 1. Minimal C "Hello World" (`hello.c`)

```c
// hello.c
#include <stdio.h>

int main() {
    printf("Hello, RISC-V!\n");
    return 0;
}

//complied using
# riscv32-unknown-elf-gcc  -o hello.elf hello.c
//verified using 
# file hello. elf
	//output
		prakhar@prakhar-Latitude-7400:~/Documents/risc-v/vsdRiscvSoc$ file hello.elf
hello.elf: ELF 32-bit LSB executable, UCB RISC-V, RVC, soft-float ABI, version 1 (SYSV), statically linked, not stripped


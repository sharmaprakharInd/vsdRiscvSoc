
/* linker.ld */

/* Define the entry point of the program.
 * This is usually _start, which is the default entry point for
 * bare-metal RISC-V programs if you're not using standard startup files.
 * If your program explicitly uses 'main' as the entry point,
 * ensure your startup code calls it, or set ENTRY(main).
 */
ENTRY(_start)

/* Define memory regions.
 * Adjust these addresses and sizes based on your specific hardware's memory map.
 * Here, we assume a single RAM region.
 */
MEMORY
{
  /* Typically, code and data reside in RAM for simple bare-metal setups.
   * ORIGIN: Start address of the memory region.
   * LENGTH: Total size of the memory region.
   */
  RAM : ORIGIN = 0x80000000, LENGTH = 64M /* Example: 64 MB of RAM */
}

/* Define global symbols for stack and heap. */
__stack_size = 0x1000; /* 4KB stack size */
__heap_start = . + __stack_size; /* Heap starts after stack */
__heap_size = 0x1000; /* 4KB heap size (adjust as needed) */

/* Sections definition */
SECTIONS
{
  /* The .text section (code) */
  .text :
  {
    . = ALIGN(4);
    KEEP(*(.text.entry)) /* Keep the entry point symbol */
    *(.text)             /* All other code sections */
    *(.text.*)
    . = ALIGN(4);
  } > RAM

  /* The .rodata section (read-only data, e.g., string literals) */
  .rodata :
  {
    . = ALIGN(4);
    *(.rodata)
    *(.rodata.*)
    . = ALIGN(4);
  } > RAM

  /* The .data section (initialized data) */
  .data :
  {
    . = ALIGN(4);
    *(.data)
    *(.data.*)
    . = ALIGN(4);
  } > RAM

  /* The .bss section (uninitialized data - zeroed out at startup) */
  .bss :
  {
    . = ALIGN(4);
    __bss_start = .;
    *(.bss)
    *(.bss.*)
    __bss_end = .;
    . = ALIGN(4);
  } > RAM

  /* The .stack section (define the stack pointer location) */
  .stack (NOLOAD) :
  {
    . = ALIGN(16); /* Align stack to a reasonable boundary */
    PROVIDE(__stack_top = ORIGIN(RAM) + LENGTH(RAM)); /* Stack grows downwards from top of RAM */
    PROVIDE(__stack_base = __stack_top - __stack_size);
  } > RAM

  /* The .heap section (for dynamic memory allocation like malloc) */
  .heap (NOLOAD) :
  {
    . = ALIGN(4);
    __heap_start = .;
    . = . + __heap_size;
    __heap_end = .;
  } > RAM

  /* Discard unused sections */
  /DISCARD/ :
  {
    *(.eh_frame)
    *(.note.gnu.build-id)
    *(.comment)
    *(.stab)
    *(.stabstr)
    *(.riscv.attributes)
  }
}

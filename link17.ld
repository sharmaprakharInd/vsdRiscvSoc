ENTRY(_start)

MEMORY
{
  RAM (rwx) : ORIGIN = 0x80000000, LENGTH = 128K
}

SECTIONS
{
  . = ORIGIN(RAM);

  .text : {
    *(.text*)
  }

  .rodata : {
    *(.rodata*)
  }

  .data : {
    *(.data*)
  }

  .bss : {
    *(.bss COMMON)
  }

  . = . + 0x1000;
  _stack_top = .;
}

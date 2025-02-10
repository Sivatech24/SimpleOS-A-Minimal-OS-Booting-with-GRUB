; loader.asm: A simple loader to help boot the kernel.

[bits 32]           ; We're using 32-bit mode
global _start        ; The entry point for the bootloader

section .text
_start:
    ; We need to make sure the kernel is properly loaded by GRUB.
    ; You may have additional setup here depending on your boot process.
    
    ; This is just a simple jump to the kernel's start function (e.g., kernel_main).
    ; We expect that the kernel is loaded at 1MB by the bootloader (GRUB).
    ; This address must match where your kernel is loaded in memory.
    
    ; Jump to the kernel entry point
    jmp 0x100000       ; Jump to the 1MB address where kernel is loaded.


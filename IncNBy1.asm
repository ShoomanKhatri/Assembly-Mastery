section .data
    number dd 10   ; Define a 32-bit integer variable 'number' and initialize it to 10

section .text
    global _start

_start:
    mov eax, [number]  ; Load the value of 'number' into the eax register
    inc eax            ; Increment the value in the eax register by 1
    mov [number], eax  ; Store the result back into the 'number' variable

    ; Exit the program
    mov eax, 1         ; System call number for exit
    xor ebx, ebx       ; Exit code 0
    int 0x80           ; Call kernel
; Output is not displayed.
; Final incremented value is 11.

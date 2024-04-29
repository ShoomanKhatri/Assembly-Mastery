section .data
    number dd 10         ; Define a 32-bit integer variable 'number' and initialize it to 10
    output_format db '%d', 10, 0   ; Format string for printing the integer followed by a newline

section .text
    global _start

_start:
    ; Load the value of 'number' into the eax register
    mov eax, [number]

    ; Increment the value in the eax register by 1
    inc eax

    ; Store the result back into the 'number' variable
    mov [number], eax

    ; Call the C library function 'printf' to print the updated value
    extern printf
    push eax             ; Push the updated value onto the stack
    push output_format   ; Push the format string onto the stack
    call printf          ; Call printf function
    add esp, 8           ; Clean up the stack (remove arguments)

    ; Exit the program
    mov eax, 1           ; System call number for exit
    xor ebx, ebx         ; Exit code 0
    int 0x80             ; Call kernel
; output
; The largest digit is: 
; 47

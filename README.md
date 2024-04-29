# Assembly-Mastery
Dive into exercises, projects, and resources to enhance your low-level coding skills. Join us in exploring the world of assembly programming!


Syntax of assembly language:
```
[label]   mnemonic   [operands]   [;comment]
```

```
; This is a comment in assembly language
; Comments start with a semicolon and continue until the end of the line

section .data
    ; Data section: Constants and variables
    num1    dd 10       ; Define a 32-bit integer variable 'num1' and initialize it to 10
    num2    dd 20       ; Define another 32-bit integer variable 'num2' and initialize it to 20

section .text
    global _start

_start:
    ; Main program starts here
    ; Load the value of 'num1' into the eax register
    mov eax, [num1]

    ; Add the value of 'num2' to the eax register
    add eax, [num2]

    ; Store the result in the 'result' variable
    mov [result], eax

    ; Exit the program
    mov eax, 1          ; System call number for exit
    xor ebx, ebx        ; Exit code 0
    int 0x80            ; Call kernel
```
Link for learning Assembly
```
https://www.tutorialspoint.com/assembly_programming/index.htm
```



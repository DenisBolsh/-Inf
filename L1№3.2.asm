%include "io.inc"
;5, 5, 6
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;записываем длины сторон в регистры
    MOV AX, 0x05
    MOV BX, 0x05
    MOV CX, 0x06
    CMP     AX, BX ;сравниваем 6 и 8
    JE  true
    CMP     BX, CX ;сравниваем 8 и 10
    JE  true
    CMP     AX, CX ;сравниваем 6 и 10
    JE  true
    PRINT_DEC 1, 0
    JMP quit
true:
    PRINT_DEC 1, 1
quit:          
    ret

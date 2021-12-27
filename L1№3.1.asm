%include "io.inc"
;9, 30, 31
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;записываем длины сторон в регистры
    MOV AX, 0x09
    MOV BX, 0x1E
    MOV CX, 0x1F
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

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    MOV ECX, 0      ;обнуляем счетчик
    LEA EBX, [a]
    MOV EDI, 8      ;длина массива
    MOV ESI, 0
    MOV AH, [n]     ;заданное значение
loopa:
    CMP EDI, ESI    ;цикл
    je end
    MOV AL, [EBX+ESI]   ;помещаем текущее значение
    CMP AL, AH          ;сравнениваем
    JA next             ;если больше, то увеличиваем
    INC ESI
    JMP loopa
next:
    INC ECX
    INC ESI
    JMP loopa
end:
    PRINT_DEC 1, ECX    ;количество элементов, превышающих n
    RET
    
section .data
a: db 10, 1, 26, 13, 0, 40, 49, 21
n: db 40

%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    LEA ESI, [array]    ;s начальный адрес
    LEA EDI, [ESI+6]    ;N длина массива
begin:
    CMP EDI, ESI        ;Условие выхода
    JE preend 
    MOV EBX, EDI        
    DEC EBX             ;i = N-1
fori: 
    CMP EBX, ESI 
    JA next
    INC ESI ;           
    JMP begin           ;i < s выходим новый проход
next:
    MOV AH, [EBX]       ;array[i]
    MOV AL, [EBX-1]     ;array[i-1]
    CMP AH, AL
    JA deci             ;Меняем местами значения эл-тов, если array[i] > array[i-1]
    MOV [EBX], AL
    MOV [EBX-1], AH 
deci:
    DEC EBX             ;Уменьшаем i на один
    JMP fori
preend:
    LEA ESI, [array]    ;Сбрасываем s до 0
end:
    PRINT_DEC 1, [ESI] 
    NEWLINE
    INC ESI
    CMP EDI, ESI
    JA end
    RET  


    
section .data
array: db 57, 6, 16, 0, 3, 39

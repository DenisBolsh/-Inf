%include "io.inc"
;44 52 14 1 17 8 27 5
;101100 110100 001110 000001 010001 001000 011011 000101
;10110011 01000011 10000001 01000100 10000110 11000101
;0xB3 0x43 0x81 0x44 0x86 0xC5
section .text
global CMAIN
CMAIN:
    LEA ESI, [a]    ;Адрес первого эл-та
    MOV AL, [ESI]   ;Значение первого эл-та
    MOV DL, 0xFC    ;Маска первых 6 бит
    AND AL, DL
    SHR AL, 2       ;Сдвиг на 2 бита вправо
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV BL, [ESI]   ;Повторяем первый эл-т в другом регистре
    MOV DL, 0x03    ;Макска последних 2 бит
    AND BL, DL       
    SHL BL, 4       ;Сдвиг на 4 бита влево
    INC ESI
    MOV AL, [ESI]   ;Значение второго элемента
    MOV DL, 0xF0    ;Маска первых 4 бит
    AND AL, DL
    SHR AL, 4       ;Сдвиг на 4 бита вправо
    OR AL, BL       ;Логическое или двух регистров для получения числа
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV BL, [ESI]
    MOV DL, 0x0F
    AND BL, DL
    SHL BL, 2
    INC ESI
    MOV AL, [ESI]
    MOV DL, 0xC0
    AND AL, DL
    SHR AL, 6
    OR AL, BL
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV AL, [ESI]
    MOV DL, 0x3F
    AND AL, DL
    
    PRINT_DEC 1, AL
    NEWLINE
    
    INC ESI
    MOV AL, [ESI]   
    MOV DL, 0xFC
    AND AL, DL    
    SHR AL, 2       
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV BL, [ESI]   
    MOV DL, 0x03    
    AND BL, DL  
    SHL BL, 4
    INC ESI
    MOV AL, [ESI]
    MOV DL, 0xF0
    AND AL, DL
    SHR AL, 4
    OR AL, BL
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV BL, [ESI]
    MOV DL, 0x0F
    AND BL, DL
    SHL BL, 2
    INC ESI
    MOV AL, [ESI]
    MOV DL, 0xC0
    AND AL, DL
    SHR AL, 6
    OR AL, BL
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV AL, [ESI]
    MOV DL, 0x3F
    AND AL, DL
    
    PRINT_DEC 1, AL
    NEWLINE
    
    RET
section .data
a: db 0xB3, 0x43, 0x81, 0x44, 0x86, 0xC5

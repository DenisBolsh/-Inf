%include "io.inc"
;(a-b)*c
;6, 18, 13
;ответ: (6-18)*13=-156  
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
;заносим переменные в стек
    FLD DWORD [a]
    FLD DWORD [b]
    FSUB ;a-b
    FLD DWORD [c]
    FMUL ;(a-b)*c
    FST DWORD [r];выводим ответ в переменную r
    ret
section .data
a: DD 0x40C00000
b: DD 0x41900000
c: DD 0x41500000
r: DD 0x00000000

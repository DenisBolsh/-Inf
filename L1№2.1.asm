%include "io.inc"
;(a-b)*c
;9, 30, 31
;ответ: (9-30)*31=-651
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
a: DD 0x41100000
b: DD 0x41F00000
c: DD 0x41F80000
r: DD 0x00000000

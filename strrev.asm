; Программа, считывающая строку символов до нажатия ENTER и
; выводящая эиту строку в обратном порядке

SECTION .text
org 0x100

mov ah, 0x0A
mov dx, buf
int 0x21

mov ah, 0x02
mov dl, 0x0D
int 0x21

mov dl, 0x0A
int 0x21

xor cx, cx
mov si, buf + 1
mov cl, [si]
add si, cx

std
mov ah, 0x02

start_of_loop:
lodsb
mov dl, al
int 0x21
loop start_of_loop

cld

mov ah, 0x4C
xor al, al
int 0x21

buf db 254, 0
times 254 db ' '

SECTION .text
; Первая программа для DOS
; Ничего не делает. запускается и сразу же завершается

org 0x100
mov ah, 0x4C
mov al, 0
int 0x21

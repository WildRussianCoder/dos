; Напишем программу, которая будет отображать каждую нажатую
; клавишу на экране дважды. Программа завершается по нажатии
; клавиши ENTER

SECTION .text
org 0x100

start_of_loop:
; Читаем символ 
mov ah, 0x01
int 0x21

; Сравниваем с кодом ENTER, если равен, то выходи из цикла
cmp al, 0x0D
je end_of_loop

; Иначе выводим символ из AL на экран и переходим на новую итерацию
mov ah, 0x02
mov dl, al
int 0x21
jmp start_of_loop

end_of_loop:
mov ah, 0x4C
xor al, al
int 0x21


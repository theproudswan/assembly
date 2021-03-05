;Заполнение массива из 256 ячеек символом %
global _start
 
section .bss
array resb 256  ; массив размером 256
 
section .text
_start:
        mov ecx, 256 ;кол-во элементов -> в счетчик (ECX)
        mov edi, array ;адрес массива -> в EDI
        mov al, "%" ; нужный код -> в однобайтовый AL
again:  mov [edi], al ;заносим код в очередной элемент
        inc edi ;увеличиваем адрес
        loop again ;если там не ноль ,повторяем цикл
 
        mov     ebx, 0
        mov     eax, 1
        int     0x80
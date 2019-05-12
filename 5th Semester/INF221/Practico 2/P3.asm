extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

a dw 5
b dw 6
c dw 3
d dw 8

segment .bss
;Variables sin Inicializar

; x = (a + (b – c)) / (c *d)
x resw 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

mov ax,[c]
mov bx,[d]
imul bx
mov dx,ax

mov ax,[a]
mov cx,[b]
sub cx,[c]
add ax,cx
idiv dl


ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

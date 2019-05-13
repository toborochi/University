extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

a dw 7
b dw 9
c dw 13
d dw 5

segment .bss
;Variables sin Inicializar

; x = a – 3b + 25(c – d)
x resw 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

mov ax,[c]
sub ax,[d]
imul ax,25
cwd
mov ecx,2
mov bx,[b]
ciclo:
	add bx,[b]
loop ciclo

sub ax,bx

add ax,[a]

mov [x],ax


ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

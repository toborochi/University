extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

A DB 10,5,4,3,50
N DD 5

segment .bss
;Variables sin Inicializar

promedio resd 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

mov ecx,[N]
mov edx,A
xor eax,eax
ciclo:
	add al,byte[edx]
	inc edx
loop ciclo

xor edx,edx
mov ecx,[N]
div ecx

mov [promedio],eax

ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

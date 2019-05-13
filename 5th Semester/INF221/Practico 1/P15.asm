extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

A DB 1,2,3,4,5
B DB 5,4,3,2,1
N DD 5

segment .bss
;Variables sin Inicializar

C RESB 5

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

xor ecx,ecx
mov ecx,[N]
mov edx,0
ciclo:
	mov al,[A+edx]
	mov bl,[B+edx]
	add al,bl
	mov [C+edx],al
	inc edx
loop ciclo


ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

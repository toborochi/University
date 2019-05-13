extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

arreglo DB 1,-2,3,-4,5
n       DD 5

segment .bss
;Variables sin Inicializar

nega   resb 1
posi resb 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	
	
	mov ecx,dword[n]
	mov eax,arreglo
ciclo:
	mov bl,[eax]
	
	shl bl,1
	jc negativo
		inc byte[posi]
		jmp nope
	negativo:
		inc byte[nega]
	nope:
	inc eax
	loop ciclo
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

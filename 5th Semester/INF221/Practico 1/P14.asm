extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

A Dw 1,2,6,3,123
N Dw 5

segment .bss
;Variables sin Inicializar



segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

	xor ecx,ecx
	mov cx,word[N]
	mov ebx,0
ciclo:
	xor eax,eax
	mov ax,word[A+ebx*2]
	add [A+ebx*2],ax
	inc ebx
	loop ciclo


ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

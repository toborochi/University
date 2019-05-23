extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

rango dd 5

segment .bss
;Variables sin Inicializar 

x resd 1

segment .text 	
	
global _main 					
_main:
;----------------------------------------------------------------------------	
	xor esi,esi
	mov ebx,1
	mov ecx,[rango]
ciclo:
	
	mov eax,1
	imul ebx
	imul ebx
	imul ebx
	
	add esi,eax
	
	inc ebx
	loop ciclo
	
	mov eax,esi
	cdq
	mov ecx,[rango]
	idiv ecx
	mov [x],eax
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

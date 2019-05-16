extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

arreglo dd 22,44,-55,100,33,17 
n	    dd 6

segment .bss
;Variables sin Inicializar ;970307

promedio resd 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

xor ecx,ecx
xor ebx,ebx

mov cx,[n]
ciclo:

	mov eax,[arreglo+ebx*4]
	cdq
	imul dword[arreglo+ebx*4]
	cdq
	imul dword[arreglo+ebx*4]
	
	add [promedio],eax
	
	inc ebx
	loop ciclo
	
	mov eax,[promedio]
	cdq
	idiv dword[n]
	mov [promedio],eax
	

ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

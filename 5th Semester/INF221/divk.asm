extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

dim     dd 5
arreglo dd 12,-25,14,-84,99
k		dd 3

segment .bss
;Variables sin Inicializar 

b resd 5

segment .text 	
	
global _main 					
_main:
;----------------------------------------------------------------------------	

xor ebx,ebx
mov esi,arreglo
mov ecx,[dim]
mov edi,[k]

ciclo:
	mov eax,[arreglo+ebx*4]
	cdq
	idiv edi
	mov [b+ebx*4],eax
	inc ebx
	loop ciclo

ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

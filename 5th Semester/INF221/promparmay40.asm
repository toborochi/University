extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

dim     dd 10
arreglo dd 54,-5,88,-12,43,-21,9,-6,92,-10

segment .bss
;Variables sin Inicializar 

promedio resd 1

segment .text 	
	
global _main 					
_main:
;----------------------------------------------------------------------------	

mov ecx,[dim]
mov esi,arreglo
mov ebx,0
xor edi,edi

ciclo:
	mov eax,[esi+ebx*4]
	cmp eax,40
	jle nope
	shr eax,1
	jc nope
	mov eax,[esi+ebx*4]
	add dword[promedio],eax
	inc edi
	nope:
	inc ebx
	loop ciclo
	
mov eax,[promedio]
cdq
idiv edi
mov [promedio],eax
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

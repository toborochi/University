extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

n dd 1234

segment .bss
;Variables sin Inicializar

unos resd 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

	mov ecx,32
	mov eax,[n]
ciclo:
	shl eax,1
	jnc carry
		inc dword[unos]
	carry:
	
	loop ciclo

ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

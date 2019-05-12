extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

multiplicando dd 10
multiplicador dd 7

segment .bss
;Variables sin Inicializar

resultado resd 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

	mov ecx,[multiplicador]
ciclo:
	mov eax,[multiplicando]
	add dword[resultado],eax
	loop ciclo


ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

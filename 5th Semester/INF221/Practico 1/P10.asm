extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

y DD 4563

segment .bss
;Variables sin Inicializar

x resd 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

sar dword[y],5
mov eax,[y]
mov [x],eax
	

ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

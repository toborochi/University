extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

y dw 5

segment .bss
;Variables sin Inicializar

x resw 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

xor ecx,ecx
mov ecx,dword[y]
mov ax,16

ciclo:
	add word[x],ax
	loop ciclo

	

ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

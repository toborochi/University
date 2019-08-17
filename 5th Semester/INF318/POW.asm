extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

a dd 5
b dd 5

segment .bss
;Variables sin Inicializar ;970307


segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	
mov eax,1
mov ecx,[b]

cmp ecx,0
je exp1

ciclo:
	imul dword[a] 
	loop ciclo

exp1:
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

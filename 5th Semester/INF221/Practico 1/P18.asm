extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

A DD 10,5,4,3,50,15,13
N DD 7

segment .bss
;Variables sin Inicializar

suma resd 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

mov ecx,[N]

mov edx,0
ciclo:

mov ebx,[A+edx*4]

mov edi,edx
shr edi,1

jnc nope
add [suma],ebx
nope:

inc edx
loop ciclo



ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

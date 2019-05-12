extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

MAYUSCULAS DB "PROGRAMACION ENSAMBLADOR",0

segment .bss
;Variables sin Inicializar


segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	
mov edx,0

ciclo:
	mov bl,byte[MAYUSCULAS+edx]
	
	cmp bl,"A"
	jl nope
	cmp bl,"Z"
	jg nope2
	add bl,0x20
	mov [MAYUSCULAS+EDX],bl
	
	nope2:
	nope:
	inc edx
	cmp bl,0
	jne ciclo

ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

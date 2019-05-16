extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

pal db "oruro",0
n db 5

segment .bss
;Variables sin Inicializar ;970307

capi resb 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	
xor ecx,ecx
; Vemos si una palabra es capicua y colocamos en al 1 si es caso contrario -1
ciclo:
	mov al,[pal+ecx]
	
	xor edx,edx
	mov dl,[n]
	dec dl
	sub dl,cl
	
	mov bl,[pal+edx]
	
	cmp al,bl
	jne nope
		
	inc ecx

	cmp al,0
	jne ciclo
	
	mov byte[capi],1
	jmp fin
nope:	
	
	mov byte[capi],-1
fin:
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

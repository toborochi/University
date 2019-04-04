
;%%%%%%%%%%%%%%%%%%%%%%%
; Autor: 	Anez Vladimirovna Leonardo Henry
; Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

a DB 0x5A ; SS = 90  CS = +90
b DB 0xF9 ; SS = 249 CS = -7
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

c resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	

	xor eax,eax
	xor ebx,ebx
	mov al,[a]
	mov bl,[b]
	sub al,bl
	mov [c],al
	; Cuando se hace una resta el carry tiene otro significado, significa que hubo prestamo es decir se hara 1 si hay prestamo
	; si hacemos una resta entonces deberiamos preguntar el carry con su complemento
	
	mov eax,1
	inc eax
	dec eax
	dec eax
	dec eax
	inc byte[a]
	
	
ret
;---------------------------------------
;..........subrutina....................	






;%%%%%%%%%%%%%%%%%%%%%%%
; Autor: 	Anez Vladimirovna Leonardo Henry
; Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

dato  DB -89
dato1 DB +37


segment .bss
;aqui van las variables declaradas pero sin inicializar



segment .text 
global _main 					
_main:
;---------------------------------------	

; and
	mov al,[dato]
	and al,0xC3
	and byte[dato1],0x7A
; or
	mov al,[dato]
	or al,0xC3
	
; xor
	mov al,[dato1]
	xor al,0xC3
	
	; Minuscula mayuscula
	mov al,'a'
	and al, 0XDF
	; Mayuscula minuscula
	mov al,'A'
	or al, 0X20
	
	mov al,0xe7
	not al
	
ret
;---------------------------------------
;..........subrutina....................	





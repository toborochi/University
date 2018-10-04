
;%%%%%%%%%%%%%%%%%%%%%%%
; Autor: Leonardo Henry Anez Vladimirovna
; Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: 217002498.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

a DB 0x75
b DB 0x90

		
segment .bss
;aqui van las variables declaradas pero sin inicializar

mayor RESB 1
menor RESB 1

segment .text 
global _main 					
_main:
;---------------------------------------s	
; COMPARACION DE NUMEROS
;mov al,[a]
;mov bl,[b]
;cmp al,bl
;jg mayorCS
;	mov [menor],al
;jmp fin
;mayorCS: mov [mayor],al

;MULTIPLICACION SIN SIGNO

;mov al,100
;mov cl,25
;mul cl

;MULTIPLICACION con SIGNO

;mov al,-1
;mov cl,-66
;imul cl


;DIVISION
NOP
MOV AX,-95
MOV CL,12
IDIV CL

; DIVISION 251/12
NOP
MOV AX,251
MOV CL,12
DIV CL

nop
mov al,-95
cbw ;investigar mnemoico, extiende el byte  a word
mov cl,12
idiv cl


ret
;---------------------------------------
;..........subrutina....................	





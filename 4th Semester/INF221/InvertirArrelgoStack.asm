
;%%%%%%%%%%%%%%%%%%%%%%%
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: 217002498.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

arreglo DB 10,20,30
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;---------------------------------------	

; Usando la pila


xor eax,eax
mov al,[arreglo]
push eax

xor eax,eax
mov al,[arreglo+1]
push eax

xor eax,eax
mov al,[arreglo+2]
push eax

pop ebx
mov [arreglo],bl

pop ebx
mov [arreglo+1],bl


pop ebx
mov [arreglo+2],bl


ret
;---------------------------------------
;..........subrutina....................	





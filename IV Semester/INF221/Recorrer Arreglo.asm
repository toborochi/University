;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; Universidad Autonoma Gabriel Rene Moreno
; Facultad de Ingenieria en  Ciencias de la Computacion y Telecomunicaciones
;
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
; SEM-II 2018
; 
; Materia: Ensamblador
; 
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;----------------------------------------------------------------------------
extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

s db 'Mi mama me mima',0

segment .bss
;aqui van las variables declaradas pero sin inicializar

total resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	

xor eax,eax
mov eax,0

xor ecx,ecx
while: 
	
    mov cl,[s+eax]
	inc eax
	cmp ecx,0
	jnz while
		
ret
;---------------------------------------
;..........subrutina....................	

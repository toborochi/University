
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

;file: 217002498.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
a DD 1,2,3,4,5
dimension DD 5
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

suma resd 1

segment .text 
global _main 					
_main:
;---------------------------------------	
mov edx,[dimension]
mov ecx,0
ciclo:
		add ebx,dword[a+ecx*4]
		inc ecx
		dec edx
		jnz ciclo
		
		mov dword[suma],ebx

ret
;---------------------------------------
;..........subrutina....................	



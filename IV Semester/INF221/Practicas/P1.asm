
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
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

resultado resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	

xor eax,eax
mov ecx,10
ciclo:
		add al,5
		loop ciclo

mov byte[resultado],al
ret
;---------------------------------------
;..........subrutina....................	



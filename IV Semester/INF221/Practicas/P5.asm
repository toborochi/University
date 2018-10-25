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
; Suma de la siguiente sucesion: 0^3 + 2^3 + 4^3 + 6^3 + 8^3 + ... x_i
extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

n dd 5
suma dd 0

segment .bss
;aqui van las variables declaradas pero sin inicializar


segment .text 
global _main 					
_main:
;----------------------------------------------------------------------------	
		
	xor ecx,ecx
	mov ecx,[n]
	mov esi,0
	
    ciclo:
	      mov ebx,2
		  mov eax,esi
	       ciclo2:
		     mul esi
	         dec ebx
	       jnz ciclo2
    add [suma],eax
	add esi,2
	loop ciclo
		
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

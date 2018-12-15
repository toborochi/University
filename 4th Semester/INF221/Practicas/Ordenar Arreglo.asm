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
; Ordenar un arreglo en (O^2)
;file: 217002498.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

arreglo dd 4,5,2,1,55,31
tamano  dd 6

segment .bss
;aqui van las variables declaradas pero sin inicializar


segment .text 
global _main 					
_main:
;---------------------------------------	
	
	xor eax,eax
	mov al,[tamano]
	
ciclo:
    
	xor ebx,ebx
	mov bl,[tamano]
	dec ebx
	
	xor ecx,ecx
	
	ciclo2:
        
		xor edx,edx
		xor esi,esi
		
		mov edx,[arreglo+ecx*4]
		mov esi,[arreglo+(ecx+1)*4]
		cmp edx,esi
		
		jng mantiene
        
		xchg edx,esi
		mov  [arreglo+ecx*4],edx
		mov  [arreglo+(ecx+1)*4],esi
		
	    mantiene:

		inc ecx
		dec ebx
		jnz ciclo2
    dec eax
	jnz ciclo
		
ret
;---------------------------------------
;..........subrutina....................	

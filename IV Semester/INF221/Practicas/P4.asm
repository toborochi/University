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
; x = [(a%7)*3 + (b<<5) *c^2 ]
;file: 217002498.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

a dd 5000
b dd 20
c dd -10

segment .bss
;aqui van las variables declaradas pero sin inicializar

x resd 1

segment .text 
global _main 					
_main:
;---------------------------------------	
	
	xor edx,edx
	mov eax,[a]
	mov ecx,7
	idiv ecx
	mov eax,edx
	mov ecx,3
	imul ecx
	mov [x],eax
	

	mov ebx,[b]
	
	shl ebx,5
	mov eax,[x]
	add eax,ebx
	mov [x],eax
    
    mov eax,[c]
	mov ebx,[c]
	mov ecx,1
ciclo:		
    imul ebx
	loop ciclo
	
	mov ecx,[x]
	add ecx,eax
	
	mov [x],ecx
		
		
	
ret
;---------------------------------------
;..........subrutina....................	

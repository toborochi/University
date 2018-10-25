;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; Universidad Autonoma Gabriel Rene Moreno
; Facultad de Ingenieria en  Ciencias de la Computacion y Telecomunicaciones
; SEM-II 2018
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
; Materia: Ensamblador (INF221)
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;----------------------------------------------------------------------------
extern _printf, _scanf		

;Contar el número de elementos que sean “pares” y de los “impares” de un arreglo A 
;de enteros positivos de dimensión N y almacenar  el resultado en las variables de
; memoria llamadas  respectivamente “pares” e “impares”.

segment .data
;Variables Inicializadas

a dd 1,2,3,6,10,11
n dd 6
pares dd 0
impares dd 0

segment .bss
;Variables sin Inicializar

segment .text 

global _main 					
_main:
;----------------------------------------------------------------------------	
	
xor ecx,ecx
mov ecx,[n]

mov ebx,0
mov esi,2

ciclo:
    
	mov eax,[a+ebx*4]
	xor edx,edx
	div esi
	
	cmp edx,0
	
	jz par
	   inc dword[impares]
	   jmp else
	par:
	   inc dword[pares]
	else:
	
    inc ebx    
	loop ciclo
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

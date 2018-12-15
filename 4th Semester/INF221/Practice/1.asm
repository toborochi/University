;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; Universidad Autonoma Gabriel Rene Moreno
; Facultad de Ingenieria en  Ciencias de la Computacion y Telecomunicaciones
; SEM-II 2018
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
; Materia: Ensamblador (INF221)
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;----------------------------------------------------------------------------
; Escriba un programa que dado tres valores enteros declarados en el “segmento de datos”, 
; determine el número “mayor” y lo guarde en una variable denominada “mayor”.

extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

x DD 1
y DD 13
z DD -2
m DB "Hola como estas",0

segment .bss
;Variables sin Inicializar

MAX resd 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	
	mov eax,[x]
	mov ebx,[y]
	cmp eax,ebx
	jg mayor
	mov eax,ebx
mayor:	
	mov ebx,[z]
	cmp eax,ebx
	jg mayor2
	mov eax,ebx
mayor2:
	mov dword[MAX],eax
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

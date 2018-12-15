;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; Universidad Autonoma Gabriel Rene Moreno
; Facultad de Ingenieria en  Ciencias de la Computacion y Telecomunicaciones
; SEM-II 2018
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
; Materia: Ensamblador (INF221)
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;----------------------------------------------------------------------------
; Para los siguientes valores de las variables a = 7, b = 9, c = 13, d = 5, 
; declaradas  en el “segmento de datos”, escribir un programa que calcule la expresión:
;							x = a – 3b + 25(c – d).


extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

a DD 7
b DD 9
c DD 13
d DD 5

segment .bss
;Variables sin Inicializar

x resd 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	
	
	mov eax,[a]
	mov ebx,[b]
	imul ebx,3
	sub eax,ebx
	mov ecx,[c]
	sub ecx,dword[d]
	imul ecx,25
	add eax,ecx
	mov dword[x],eax ; x = B4
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

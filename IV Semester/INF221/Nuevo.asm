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



segment .data
;Variables Inicializadas

m1 db "Ingresar a: ",0
m2 db "Ingresar b: ",0
m3 db "Ingresar c: ",0
m4 db "a=%d b=%d c=%d",10,0
m5 db "Cociente=%d Residuo=%d",10,0
forma db "%d";

segment .bss
;Variables sin Inicializar
; Calcular (suma a+b producto a*b)
a resd 1
b resd 1
c resd 1
d resd 1
cociente resd 1
residuo resd 1

segment .text 

global _main 					
_main:
;----------------------------------------------------------------------------	
    ; Pedir y leer a
	push m1
	call _printf
	add esp,4
	
	push a
	push forma
	call _scanf
	add esp,8
	; Pedir y leer b
	push m2
	call _printf
	add esp,4
	
	push b
	push forma
	call _scanf
	add esp,8
	; Pedir y leer a
	push m3
	call _printf
	add esp,4
	
	push c
	push forma
	call _scanf
	add esp,8
	
	push residuo
	push cociente
	push dword[c]
	push dword[b]
	push dword[a]
	call f
	add esp,20

	
	
	push dword[c]
	push dword[b]
	push dword[a]
	push m4
	call _printf
	add esp,16
	
	push dword[residuo]
	push dword[cociente]
	push m5
	call _printf
	add esp,12
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

	
	f: 
		push ebp
		mov ebp,esp
			
			mov eax,[ebp+8]
			add eax,[ebp+12]
			cdq
			idiv dword[ebp+16]			
			mov [ebp+20],ebx
			mov [ebp+24],eax
			
		mov esp,ebp
		pop ebp
	ret

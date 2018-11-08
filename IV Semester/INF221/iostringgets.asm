;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; Universidad Autonoma Gabriel Rene Moreno
; Facultad de Ingenieria en  Ciencias de la Computacion y Telecomunicaciones
; SEM-II 2018
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
; Materia: Ensamblador (INF221)
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;----------------------------------------------------------------------------
extern _printf, _scanf	,_gets	



segment .data
;Variables Inicializadas

m1 db "Introducir una Cadena de Caracteres: ",0
m2 db "La cadena Ingresada es: %s",10,0
m3 db "Ingresar c: ",0
m4 db "suma=%d producto=%d",10,0
m5 db "Cociente=%d Residuo=%d",10,0
forma db "%s";

segment .bss
;Variables sin Inicializar
; Calcular (suma a+b producto a*b)
a resd 1
b resd 1
c resd 1
d resd 1
cociente resd 1
residuo resd 1
cad resb 50

suma resd 1 
producto resd 1

segment .text 

global _main 					
_main:
;----------------------------------------------------------------------------	
    ; Pedir y leer a
	push m1
	call _printf
	add esp,4
	
	push cad
	; No hay push del formato
	call _gets
	add esp,4
	
	push cad
	push m2
	call _printf
	add esp,8
	
	
	; Pedir y leer b
	;:push m2
	;call _printf
	;add esp,4
	
	;push b
	;push forma
	;call _scanf
	;add esp,8
	; Pedir y leer a
	;push m3
	;call _printf
	;add esp,4
	
	;push c
	;push forma
	;call _scanf
	;add esp,8
	
	;push residuo
	;push cociente
	;push dword[c]
	;push producto
	;push suma
	;push dword[b]
	;push dword[a]
	;call sumpro
	;add esp,16

	
	;push dword[producto]
	;push dword[suma]
	;push m4
	;call _printf
	;add esp,12
	
	;push dword[residuo]
	;push dword[cociente]
	;push m5
	;call _printf
	;add esp,12
	
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
			mov [ebp+20],eax
			mov [ebp+24],ebx
			
		mov esp,ebp
		pop ebp
	ret
	
	sumpro: 
		push ebp
		mov ebp,esp
				
		mov eax,[ebp+8]
		mov ebx,[ebp+8]
	
		add eax,[ebp+12]
		imul ebx,[ebp+12]
		
		mov ecx,[ebp+16]
		mov edx,[ebp+20]
		
		mov [ecx],eax
		mov [edx],ebx
		
		
		mov esp,ebp
		pop ebp
	ret

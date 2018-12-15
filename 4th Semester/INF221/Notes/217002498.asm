;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; Universidad Autonoma Gabriel Rene Moreno
; Facultad de Ingenieria en  Ciencias de la Computacion y Telecomunicaciones
; SEM-II 2018
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
; Materia: Ensamblador (INF221)
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;----------------------------------------------------------------------------
; Programa para invertir Mayusculas a Minusculas y viceversa
extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

total DD 0
fmt db "El numero total de vocales a,i y u es: %d",10,0
m1 db "Ingrese una cadena: ",0
m2 db "---------------------------------------------",10,0

segment .bss
;Variables sin Inicializar

cad resb 256

segment .text 

global _main 					
_main:
;----------------------------------------------------------------------------	
		
		push m2
		call _printf
		add esp,4

		push m1
		call _printf
		add esp,4

		push cad
		call _gets
		add esp,4
		
		push cad
		call funcion
	    add esp,4
		
		mov dword[total],eax
		
		push dword[total]
		push fmt
		call _printf
		add esp,8
		
		push m2
		call _printf
		add esp,4
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	

funcion:
	  push ebp
	  mov ebp,esp
	  
	  xor eax,eax
	  mov ecx,0
	  mov edx,[ebp+8]
	  
ciclo:
	  cmp byte[edx+ecx],0
	  je nope
	  cmp byte[edx+ecx],0x61
	  jne no
	  inc eax
	no:
      cmp byte[edx+ecx],0x69
	  jne no1	
	  inc eax
	no1:
	  cmp byte[edx+ecx],0x75
	  jne no3	
	  inc eax
	no3:
	
	  inc ecx
      jmp ciclo
	  
nope: 	  
	  mov esp,ebp
	  pop ebp
	  ret
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; Universidad Autonoma Gabriel Rene Moreno
; Facultad de Ingenieria en  Ciencias de la Computacion y Telecomunicaciones
; SEM-II 2018
; Autor: Anez Vladimirovna Leonardo Henry
; Registro: 217002498
; Materia: Ensamblador (INF221)
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;----------------------------------------------------------------------------
; INVERTIR MAYUSCULAS A MIN Y VICEVERSA
extern _printf, _scanf		

segment .data
;Variables Inicializadas

frmt db "%s",0
d  db "%c",10,0
m1 db "A",0
m2 db "B",0

segment .bss
;Variables sin Inicializar

cad resb 200

segment .text 

global _main 					
_main:
;----------------------------------------------------------------------------	
   
	push cad
	push frmt
	call _scanf
	add esp,8
	
	mov ecx,0

ciclo:
    cmp byte[cad+ecx],0	
	je salir
	
	cmp byte[cad+ecx],0x41 ;Esto es A	
	jb nope
	cmp byte[cad+ecx],0x5A ;Esto es Z
	ja nope   
    add byte[cad+ecx],0x20
	jmp salirif
nope:	
    cmp byte[cad+ecx],0x61 ;Esto es A	
	jb nope2
	cmp byte[cad+ecx],0x7A ;Esto es Z
	ja nope2   
    sub byte[cad+ecx],0x20
	jmp salirif	
nope2:
salirif:
	inc ecx
	jmp ciclo
salir:	


	push cad
	push frmt
	call _printf
	add esp,8

ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	


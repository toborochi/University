
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
dato DQ 0x123456789ABCDEF

;arreglo en ensamblador
var DD 10,20,30,40,50	


;Inicializando un arreglo con Datos Fijos
tabla times 5 DB(7)
;        tamano  elemento	
tabla2 times 10 DB "xyz"		
		
char DB 'L'
; Todas estas formas son lo mismo
e1 DB 'Core i7' , 0
e2 DB "Core i7" , 0 
e3 DB `Core i7`	, 0 	

dato2 DB 0b10101010

; El cero luego de las cadenas indica el FIN DE LA CADENA
		
; Definicion de Constantes
escala EQU 32		
		
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

;RESB reserva espacio en unidades de byte
;RESW "" word
;RESD "" double
;RESQ "" quad

total resb 10  ;byte 
x	  resw 2   ;word
y	  resd 5   ;double
z     resq 100 ;quad

segment .text 
global _main 					
_main:
;---------------------------------------	



ret
;---------------------------------------
;..........subrutina....................	





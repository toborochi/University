
;%%%%%%%%%%%%%%%%%%%%%%%
; Registro: 217002498
; Nombre: Anez Vladimirovna Leonardo Henry
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
var1 DD 175		
var2 DQ 4097		
var3 DB 1,2,3,4		
var4 DD 0xFFFFF		
var5 DB 45
var6 DW 1234
arreglo1 DB 0x11, 0x22,0x33,0x44,0x55
arreglo2 DB 0x66, 0x77,0x88,0x99,0xCC
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

var11 resb 1
var22 resw 1
var33 resd 1
var44 resd 1
var55 resd 1

segment .text 
global _main 					
_main:
;---------------------------------------	

	; registro / memoria
	xor eax,eax
	mov ah,45
	
ret
;---------------------------------------
;..........subrutina....................	

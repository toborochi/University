;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; Facultad de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
; Autor:    Anez Vladimirovna Leonardo Henry
; Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
	
; Problema
; Crer un byte cambiando los bits Pares  de  'a'con los bits pares de 'b'
; Solucion
; Hacemos mascara de 'a' mascara de 'b' y sumamos
a db 0x37 ; 0011 0111
b db 0x8A ; 1000 1010
		  ; ---------
		  ; 1001 1111
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

c resb 1

segment .text 
global _main 					
_main:
;---------------------------------------	

; MS-DOS Fecha = 0010011 | 0011 | 01010
;				  Ano	  Mes	 Dia

mov byte[c],1

ret
;---------------------------------------
;..........subrutina....................	

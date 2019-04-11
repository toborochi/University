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
		
dato  db -89
dato1 db 85  ;0x55
dato2 db 213 ;0xD5
dato3 db 208 ;0xD0
dato4 db 209 ;0xD1
		
dato5 db +42
dato6 db +74
dato7 db -54
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;---------------------------------------	
; %%%%%%%%%%%%%%%%%%% OP. LOGICAS
	;a) A7 & C3
	mov al,[dato]
	and al,0xC3
	;b) 25 & 7H
	mov al,0x25
	and al,0x7A
	;c) A7 | C3
	mov al,[dato]
	or al,0xC3
	;d) A7 ^ C3
	mov al,[dato]
	xor al,0xC3
	;e) ¬ A7
	mov al,[dato]
	not al
	;f) +89 -> -89
	mov al,[dato]
	neg al
	;test: destino,fuente compara realizando un and sin guardar el resultado
	
	;mov al,[dato]
	;test al,0XC3 ;S=1
	;test c1,c1 ; set Z=1 if c1==0
; %%%%%%%%%%%%%%%%%%% shift
	shl byte[dato1],1
	shl byte[dato2],1 ; 213->170 ERROR, Overflow
	shr	byte[dato3],1
	shr byte[dato4],1
	shr byte[dato4],2 ; es como dividir entre 4
	
	mov al,[dato5]
	sal al,1
	
	mov al,[dato6]
	sal al,1
	
	mov al,[dato6]
	sar al,1
	
	mov al,[dato7]
	sar al,1
	
ret
;---------------------------------------
;..........subrutina....................	


; notas
; XOR 1=complemento 0=mismo
; shl es como multiplicar x2
; shr es como dividir 2 entero
; shift n veces es como tener 2^n

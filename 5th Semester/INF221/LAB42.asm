
;%%%%%%%%%%%%%%%%%%%%%%%
;Autor: Anez Vladimirovna Leonardo Henry
;Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

a DD 52245
b DD 741648
x DD 10 
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

c resq 1

segment .text 
global _main 					
_main:
;---------------------------------------	
; AL  * R/M8  = AX
; AX  * R/M16 = DX:AX
; EAX * R/M32 = EDX:EAX

; Dividendo  Divisor
; AX       / R/M8    = Cociente=AL  Residuo=AH
; DX:AX    / R/M16   = Cociente=AX  Residuo=DX
; EDX:EAX  / R/M32   = Cociente=EAX Residuo=EDX

 mov eax,012345678h
 mov ebx,012345678h
 mul ebx

 ; 2 Operandos
 mov ecx,35
 imul eax,100
 imul eax,[x]
 imul ebx,ecx
 ; 3 Operandos
 mov ebx,30
 imul ebx,[x],100
 imul ebx,ebx,100
 ; el ultimo  ^ siempre debe ser inmediato

	mov ax,251
	mov cl,12 ;este registro debe ser la mitad del otro (ax)
	div cl
	
	;5147/300
	mov dx,0
	mov ax,5147
	mov cx,300
	div cx
	
	
	mov ax,-95
	mov bl,12
	idiv bl
	
	mov al,-95
	mov ah,-1
	mov cl,12
	idiv cl

	mov al,-95 ; AL = A1
	cbw  	   ;  AX = FFA1
	mov cl,12
	idiv cl

	
	; cbw byte a word
	; cwd word a double
	; cdq double a quad
 
ret
;---------------------------------------
;..........subrutina....................	





extern _printf, _scanf, _gets	

segment .data
;Variables Inicializadas

a dw 5
b dw 6

; Si a = b:	resultado = a
; Si a > b:	resultado = a – b
; Si a < b:	resultado = b – a


segment .bss
;Variables sin Inicializar

resultado resw 1

segment .text 
	
global _main 					
_main:
;----------------------------------------------------------------------------	

mov ax,[a]
mov bx,[b]

cmp ax,bx
je igual
jg amayor
	sub bx,ax
	mov [resultado],bx
	jmp fin
amayor:
	sub ax,bx
	mov [resultado],ax
	jmp fin

igual:
	mov [resultado],ax
fin:
	
	
ret
;----------------------------------------------------------------------------
;...............................subrutina....................................	


;%%%%%%%%%%%%%%%%%%%%%%%
; Autor: 	Anez Vladimirovna Leonardo Henry
; Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

a dw 0x970A
b dw 0xA1F3
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

c resw 1

segment .text 
global _main 					
_main:
;---------------------------------------	
; r/inm
	xor eax,eax
	mov ax,0x970A
	add ax,0xA1F3
	mov [c],ax
; m/inm
	xor eax,eax
	mov word[c],0x970A
	add word[c],0xA1F3
; r/m
	xor eax,eax
	mov ax,[a]
	add ax,[b]
	mov [c],ax
; r/r
	xor eax,eax
	mov ax,[a]
	mov bx,[b]
	add ax,bx
	mov [c],ax
; indirecto por registro
	xor eax,eax
	mov ebx,a
	mov ax,[ebx]
	add ax,[ebx+2]
	mov [c],ax
ret
;---------------------------------------
;..........subrutina....................	





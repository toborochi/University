
;%%%%%%%%%%%%%%%%%%%%%%%
;Autor: Anez Vladimirovna Leonardo Henry
;Registro: 217002498
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

minuendo   DW 0xB93A
sustraendo DW 0x3C10

a db 10
b db 25

c dw 0x100
d dw 0x2000
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

positivo resw 1
negativo resw 1

segment .text 
global _main 					
_main:
;---------------------------------------	

; AL  * R/M8  = AX
; AX  * R/M16 = DX:AX
; EAX * R/M32 = EDX:EAX

mov AL,25
mov DL,100
mul DL

mov al,-1
mov bl,-66
imul bl

mov al,[a]
mul byte[b]

mov ax,[c]
mov bx,[d]
mul bx

mov eax,0x12345
mov ebx,0x10000
mul ebx

ret
;---------------------------------------
;..........subrutina....................	





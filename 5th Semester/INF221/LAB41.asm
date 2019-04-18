
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


mov eax,[a]
mul dword[b]

; Movemos la parte baja
mov [c],eax
; Luego la parte alta
mov [c+4],edx


ret
;---------------------------------------
;..........subrutina....................	





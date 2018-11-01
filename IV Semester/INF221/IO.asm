
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o 217002498.o 217002498.asm -l 217002498.lst
;gcc -o 217002498.exe 217002498.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: P1.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas

a dd 10
b dd 20
mensaje db 10,"Anez Vladimirovna Leonardo Henry",10,0
											  ;^ Fin de Linea
mensaje2 db "Numero Decimal: %d",10,0
mensaje3 db "Numero Hexadecimal: %x",10,0

f dd "%d",0

y dd 67519
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

c resd 1
x resd 1

segment .text 
global _main 					
_main:
;---------------------------------------	
	
	;PROGRAMA 1
	; Mensaje
		;push mensaje
		;call _printf
		;add esp,4
	
    ;PROGRAMA 2	
	; Mensaje
		push dword[y]
		push mensaje2
		call _printf
		add esp,8
		
		push dword[y]
		push mensaje3
		call _printf
		add esp,8
	; PROGRAMA 3	
	; Salida
		;push x
		;push f
		;call _scanf
		;add esp,8

; "leave", epilogo		
		
; Subrutina
PUSH dword[a]
PUSH dword[b]
CALL suma
MOV [c],EAX
ADD ESP,8

ret
;---------------------------------------
;..........subrutina....................	
suma:
	 ;Prologo
	 PUSH EBP
	 MOV EBP,ESP
		MOV eax,[ebp+8]
		ADD eax,[ebp+12]
	  ;Epilogo
	 MOV ESP,EBP
	 POP EBP ;<-- ERROR SI ES QUE NO COLOCARAMOS
ret

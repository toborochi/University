
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o P1.o P1.asm -l P1.lst
;gcc -o P1.exe P1.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: LAB.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
DATO  DB -89
DATO1 DB +37		
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 

global _main 					
_main:
;---------------------------------------	
;AND
mov al,[DATO]
and al, 0xC3
and byte[DATO1],0x7a
;OR
mov al,[DATO]
or al,0xc3
;XOR
mov al,[DATO]
xor al,0xc3

mov al,'a'	 ; a = 0x61
xor al, 0x34 ; Enctriptamos    al = 0x55   
xor al, 0x34 ; Desencriptamos  al = 0x61
;NOT
mov al, [DATO] ;Movemos el dato
not al		   ;Negamos el dato
mov eax,0      ;Llenamos de cero ax
not eax 	   ;Negamos todo, es decir FFFFFFFF		
;NEG
mov al,[DATO]
neg al
neg al
 

ret
;---------------------------------------
;..........subrutina....................	
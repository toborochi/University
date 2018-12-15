
;%%%%%%%%%%%%%%%%%%%%%%%
;assemble and link with 
;nasm -f win32 -o 217002498.o 217002498.asm -l 217002498.lst
;gcc -o 217002498.exe 217002498.o
;%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------

;file: 217002498.asm

extern _printf, _scanf		

segment .data
;aqui se declaran variables inicializadas
		
string db 'Hola'
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;---------------------------------------	
	
;Invertir un arreglo	
	
mov edx,4
mov ecx,0
ciclo:   
	  xor eax,eax
      mov al,[string+ecx*1]
      push eax	  
	  inc ecx
	  dec edx
	  jnz ciclo

	  
mov edx,4
mov ecx,0
ciclo2:
	 pop eax
	 mov [string+ecx*1],al
	 inc ecx
	 dec edx
	 jnz ciclo2
ret
;---------------------------------------
;..........subrutina....................	



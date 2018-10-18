
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
		
lista dd 0x11111111,0x22222222,0x33333333,0x44444444,0x55555555,0x66666666,0X77777777,0X88888888,0X99999999,0xAAAAAAAA	
		
segment .bss
;aqui van las variables declaradas pero sin inicializar

segment .text 
global _main 					
_main:
;---------------------------------------	
	
;Invertir un arreglo	
	
mov edx,10
mov ecx,9
ciclo: 
      push dword[lista+ecx*4]	  
	  dec ecx
	  dec edx
	  jnz ciclo
	  

	  


ret
;---------------------------------------
;..........subrutina....................	



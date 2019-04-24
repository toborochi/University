% PRIMO
primo:-
		read(N),
		primo(N).

primo(N):- primo(N,2).

primo(N,I):- I > N // 2.

primo(N,I):- N mod I =\= 0,
		     I1 is I+1,
			 primo(N,I1).
% PRIMO			 
mostrarDivisores:- read(N),
		   divisores(N,2).
		   
divisores(N,I):- I>N,!.
divisores(N,I):-
					N mod I =:= 0,
					write(I),nl,
					I1 is I+1,
					divisores(N,I1).
divisores(N,I):- I1 is I+1,
				 divisores(N,I1).
				 
% MOSTRAR PRIMO		 
mostrarDivisoresPrimos:- read(N),
						  mostrarDivisoresPrimos(N,2).
		   
mostrarDivisoresPrimos(N,I):- I>N,!.
mostrarDivisoresPrimos(N,I):-
					N mod I =:= 0,
					primo(I),
					write(I),nl,
					I1 is I+1,
					mostrarDivisoresPrimos(N,I1).
mostrarDivisoresPrimos(N,I):- I1 is I+1,
				 mostrarDivisoresPrimos(N,I1).
				 
				 
% PRIMOS ENTRE
mostrarPrimos:-	
					read(A),
					read(B),
					mostrarPrimos(A,B).
					
mostrarPrimos(A,B):- A >B,!.
					
mostrarPrimos(A,B):-
					 primo(A),
					 write(A),nl,
					 X is A+1,
					 mostrarPrimos(X,B).
mostrarPrimos(A,B):-X is A+1, 
					mostrarPrimos(X,B).


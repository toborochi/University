
mostrarDivisoresDesc:- read(N),
					divisores(N,1).
		   
divisores(N,I):- I>N,!.
divisores(N,I):- N mod I =:= 0,
				 I1 is I+1,
				 divisores(N,I1),
				 write(I),nl.
divisores(N,I):- I1 is I+1,
				 divisores(N,I1).
				 
				

primo:-
		read(N),
		primo(N).
		
primo(N):- primo(N,2).

primo(N,I):- I > N // 2.

primo(N,I):- N mod I =\= 0,
		     I1 is I+1,
			 primo(N,I1).



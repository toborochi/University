mostrarDivisoresDesc:- read(N),
					divisores(N,1).
		   
divisores(N,I):- I>N,!.
divisores(N,I):- N mod I =:= 0,
				 I1 is I+1,
				 divisores(N,I1),
				 write(I),nl.
divisores(N,I):- I1 is I+1,
				 divisores(N,I1).
mostrarFactorial:- read(N),mostrarFactorial(N,_).

mostrarFactorial(0,1):-!.
mostrarFactorial(N,R):- N1 is N-1,
			mostrarFactorial(N1,R1),
			R is N*R1,
			write(N),
			write("!="),
			write(R),nl.
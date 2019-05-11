% Mostrar  Factoriales

mostrarFactorial:- read(N),mostrarFactorial(N,_).

mostrarFactorial(0,1):-!.
mostrarFactorial(N,R):- N1 is N-1,
						mostrarFactorial(N1,R1),
						R is N*R1,
						write(N),
						write("!="),
						write(R),nl.

% Primo
						
primo:- read(N),primo(N).

primo(N):- primo(N,2).
primo(N,I):- I > N // 2.
primo(N,I):- N mod I =\= 0,
			I1 is I+1,
			primo(N,I1).
			
% Mostrar Divisores Descendientes

mostrarDivisoresDesc:- read(N),divisores(N,1).

divisores(N,I):- I>N,!.
divisores(N,I):- N mod I =:= 0,
				I1 is I+1,
				divisores(N,I1),
				write(I),nl.
divisores(N,I):- I1 is I+1,divisores(N,I1).

% Mostrar Primos Intervalo

mostrarPrimo(A,B):- A>B, !.
mostrarPrimo(A,B):- primo(A),
					write(A),write(" "),
					A1 is A+1,
					mostrarPrimo(A1,B).
mostrarPrimo(A,B):- A1 is A+1, mostrarPrimo(A1,B).

% Mostrar Coeficientes Binomiales
fact(N) :- fact(N,N).
fact(N,F):- N<2, F is 1, !.
fact(N,F):- N1 is N-1,fact(N1,F1),F is N*F1.


comb(N,R,C):- X is N-R,
			fact(N,C1),
			fact(X,C2),
			fact(R,C3),
			C is (C1/(C2*C3)).
			
mostrarCoefBin(N):- mostrarCoefBin(N,0).
mostrarCoefBin(N,I):- I>N, !.
mostrarCoefBin(N,I):- comb(N,I,C),
					write(C),write(" "),
					I1 is I+1,
					mostrarCoefBin(N,I1).

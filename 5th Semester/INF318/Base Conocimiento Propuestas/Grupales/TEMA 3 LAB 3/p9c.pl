mostrarPrimos(A,B):- A >= B,!.

mostrarPrimos(A,B):- proximoPrimo(A,R),
					 P is R,
					 B >= P,
					 X is R+1,
					 write(R),nl,
					 mostrarPrimos(X,B).
					 
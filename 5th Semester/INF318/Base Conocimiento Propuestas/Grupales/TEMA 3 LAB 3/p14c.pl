fibo:-
	read(N),
	fib(N,_,_).
	
fib(1, 1, 0):- write(1),nl.
fib(X, Y1, Y2) :- X > 1,
				  X1 is X - 1,
				  fib(X1, Y2, Y3),
				  Y1 is Y2 + Y3,
				  write(Y1),nl.
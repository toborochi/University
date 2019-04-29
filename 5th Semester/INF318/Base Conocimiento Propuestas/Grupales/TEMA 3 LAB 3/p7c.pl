proximoPrimo(N,R):- 
					N =< 1000000,
					primo(N),
					R is N.
proximoPrimo(N,R):- N1 is (N+1),
					proximoPrimo(N1,R).
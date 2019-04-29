anteriorPrimo(N,R):- 
					N > 2,
					primo(N),
					R is N.
anteriorPrimo(N,R):- N1 is (N-1),
					anteriorPrimo(N1,R).
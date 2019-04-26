primo:- read(N),
		primo(N).
		
primo(N):- primo(N,2).
primo(N,I):- I > N // 2.
primo(N,I):- N mod I =\= 0,
		     I1 is I+1,
			 primo(N,I1).

fibo:- read(N),fibo(N,R),write(R),nl.

fibo(1,0):-!.
fibo(2,1):-!.
fibo(N,F):- N1 is (N-1),
			N2 is (N-2),
			fibo(N1,F1),
			fibo(N2,F2),
			F  is (F1+F2).
			
gcd:- read(A),read(B), gcd(A,B,R), write(R),nl.

gcd(A,0,A):-!.
gcd(A,B,R):- M is (A mod B),
			gcd(B,M,R).
			
comb:- read(A),read(B),comb(A,B,R),write(R),nl.
			
comb(N,N,1):-!.
comb(_,0,1):-!.
comb(N,R,C):- N1 is N-1,
			R1 is R-1,
			comb(N1,R,C1),
			comb(N1,R1,C2),
			C is C1+C2.
			
pot:- read(A),read(B),pot(A,B,R),write(R),nl.

pot(_,0,1):-!.
pot(X,N,R):- N1 is N-1,
			pot(X,N1,R1),
			R is (X * R1).
			
pell(0,1):-!.
pell(1,0):-!.
pell(2,0):-!.
pell(N,R):- N1 is N-2,
			N2 is N-3,
			pell(N1,R1),
			pell(N2,R2),
			R is (R1+R2).
			
rev(N,R,RR):- N < 10, RR is (R*10+N),!.
rev(N,R,RR):- 
				N1 is (N//10),
				R1 is (R*10+(N mod 10)),
				rev(N1,R1,RR).
			  
			

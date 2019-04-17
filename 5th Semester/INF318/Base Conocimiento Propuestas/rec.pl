
% Facultad de Ingenieria en Ciencias de la Computacion y Telecomunicaciones
% Autor: Leonardo Henry Anez Vladimirovna

% Factorial (OEIS A000142)
fact(0,1):-!.
fact(N,R):- N1 is N-1,
			fact(N1,R1),
			R is N*R1.
% Fibonacci (OEIS A000045)
fibo(1,0):-!.
fibo(2,1):-!.
fibo(N,F):- N1 is N-1,
			N2 is N-2,
			fibo(N1,F1),
			fibo(N2,F2),
			F is (F1+F2).
% Combinatoria
comb(N,N,1):-!.
comb(_,0,1):-!.
comb(N,R,C):- N1 is N-1,
			  R1 is R-1,
			  comb(N1,R,C1),
			  comb(N1,R1,C2),
			  C is C1+C2.

% Potencia 
pot(_,0,1):-!.
pot(X,N,R):- N1 is N-1,
			 pot(X,N1,R1),
			 R is (X * R1).
			 
% Tribonacci (OEIS A000073)

tribo(1,0):-!.
tribo(2,0):-!.
tribo(3,1):-!.
tribo(N,F):- N1 is N-1,
			 N2 is N-2,
			 N3 is N-3,
			 tribo(N1,F1),
			 tribo(N2,F2),
			 tribo(N3,F3),
			 F is (F1+F2+F3).
			 
% Numero Triangular (OEIS A037123)

tri(1,1):-!.
tri(N,R):-  N1 is N-1,
			tri(N1,R1),
			R is (N+R1).

% Numeros de Pell (OEIS A000931)
pell(0,1):-!.
pell(1,0):-!.
pell(2,0):-!.
pell(N,R):- N1 is N-2,
			N2 is N-3,
			pell(N1,R1),
			pell(N2,R2),
			R is (R1+R2).

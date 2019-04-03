menor(A,B,Me):- A<B,Me is A,!.
menor(A,B,Me):- B=<A, Me is B.
menor(A,B,C,Me):- menor(A,B,Me1),menor(C,Me1,Me).
menor(A,B,C,D,Me):- menor(A,B,C,Me1),menor(D,Me1,Me).
menor(A,B,C,D,E,Me):- menor(A,B,C,D,Me1),menor(E,Me1,Me).

mayor(A,B,Me):- A>=B,Me is A,!.
mayor(A,B,Me):- B>A,Me is B.
mayor(A,B,C,Me):- mayor(A,B,Me1),mayor(C,Me1,Me).
mayor(A,B,C,D,Me):- mayor(A,B,C,Me1),mayor(D,Me1,Me).
mayor(A,B,C,D,E,Me):- mayor(A,B,C,D,Me1),mayor(E,Me1,Me).

mayorDif(A,B,My):- mayor(A,B,X),menor(A,B,Y),My is X-Y.
mayorDif(A,B,C,My):- mayor(A,B,C,X),menor(A,B,C,Y), My is X-Y.
mayorDif(A,B,C,D,My):- mayor(A,B,C,D,X),menor(A,B,C,D,Y), My is X-Y.
mayorDif(A,B,C,D,E,My):- mayor(A,B,C,D,E,X),menor(A,B,C,D,E,Y), My is X-Y.

iguales(A,A).
iguales(A,A,A).
iguales(A,A,A,A).
iguales(A,A,A,A,A).

diferentes(A,B):-not(iguales(A,B)).
diferentes(A,B,C):- A\=B,B\=C,A\=C.
diferentes(A,B,C,D):- A\=B,A\=C,A\=D,B\=C,B\=D,C\=D.
diferentes(A,B,C,D):- A\=B,A\=C,A\=D,B\=C,B\=D,C\=D.
diferentes(A,B,C,D,E):- A\=B,A\=C,A\=D,A\=E,B\=C,B\=D,B\=E,C\=D,C\=E,D\=E.

par(N):- N mod 2 =:= 0.

hombre(jose).
hombre(eduardo).
hombre(jorge).
hombre(raul).
hombre(esteban).
hombre(cesar).
hombre(jorge).
mujer(maria).
mujer(lucia).
mujer(julia).
mujer(ana).
matr(eduardo,lucia).
matr(jose,maria).
matr(raul,ana).
madre(maria,lucia).
madre(maria,raul).
madre(lucia,cesar).
madre(lucia,esteban).
madre(ana,julia).
madre(ana,jorge).

% Definicion para encontrar el padre de una persona, y el hijo
% X = Padre, Y = Hijo, para esto necesitamos saber si (:-) es verdadero el hecho
% madre(Z,Y) y(,) y hay matrimonio entre X y Z matr(X,Z).
padre(X,Y):- madre(Z,Y),matr(X,Z).

% Preguntamos por la abuela
abuela(X,Y):- madre(Z,Y),madre(X,Z);padre(Z,Y),madre(X,Z).
% Abuelo, preguntamos por el padre del padre o padre de la madre
% abuelo(X,Y):- padre(Z,Y),padre(X,Z);padre(Z,Y),madre(X,Z).
% Forma 2, preguntamos por quien esta casado con la abuela de Y
abuelo(X,Y):- abuela(Z,Y),matr(X,Z).
% Preguntamos cuando es una persona
persona(X):-hombre(X);mujer(X).
hermanos(X,Y):- madre(Z,X),madre(Z,Y).
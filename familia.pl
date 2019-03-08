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

% Padre
padre(X,Y):- madre(Z,Y),matr(X,Z).

% Abuela
abuela(X,Y):- madre(Z,Y),madre(X,Z);padre(Z,Y),madre(X,Z).

% Abuelo
abuelo(X,Y):- abuela(Z,Y),matr(X,Z).

% Si es una persona
persona(X):-hombre(X);mujer(X).

% Hermanos
hermanos(X,Y):- madre(Z,X),madre(Z,Y).

% Tia
tia(X,Y):- (hermanos(X,Z),padre(Z,Y));(hermanos(X,Z),madre(Z,Y)).

% Tio
tio(X,Y):- matr(X,Z),tia(Z,Y).

% Bisabuela
bisabuela(X,Y):- madre(X,Z),abuela(Z,Y).


% Bisabuelo
bisabuelo(X,Y):- matr(X,Z),bisabuela(Z,Y).

% Hijo
hijo(X,Y):- padre(Y,X).
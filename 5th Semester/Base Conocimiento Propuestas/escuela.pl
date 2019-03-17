% Base de conocimiento basada en un Colegio
hombre(pedro).
hombre(gerson).
hombre(leonardo).
hombre(erick).
hombre(daniel).
hombre(luis).

mujer(claudia).
mujer(lucia).
mujer(liz).
mujer(andrea).
mujer(maria).
mujer(diana).

colegio(domingosavio).
colegio(uboldi).
colegio(cristorey).
colegio(fealegrialegria).

profesor(pedro).
profesor(gerson).
profesor(claudia).

daclase(pedro,domingosavio).
daclase(pedro,uboldi).
daclase(gerson,cristorey).
daclase(gerson,fealegria).
daclase(claudia,domingosavio).

alumno(erick,domingosavio).
alumno(leonardo,cristorey).
alumno(daniel,fealegria).
alumno(luis,uboldi).
alumno(lucia,domingosavio).
alumno(liz,uboldi).
alumno(andrea,fealegria).
alumno(maria,cristorey).
alumno(diana,domingosavio).


%devuelve si es persona
persona(X):-hombre(X);mujer(x).

%devuleve si esestudiante
esestudiante(X):- not(profesor(X)),persona(X).

%devuelve si es alumno de un profesor
esalumno(X,Y):-daclase(Y,Z),alumno(X,Z).

%devuelve si pasa clases en un colegio
pasaclase(X,Y):-esestudiante(X),colegio(Y).

%devuelve si da clases en es colegio
esprofesor(X.Y):-daclase(X,Y),colegio(Y).

%devuleve si el colgio tiene alumnos
tienealumnos(X):-colegio(X),alumno(Z,X).

%devulee si el colegio tiene maestros
tienemaestros(X):-colegio(X),daclase(Z,X).

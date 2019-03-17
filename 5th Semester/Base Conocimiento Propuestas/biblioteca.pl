% Base de conocimiento basada en una Biblioteca
hombre(pablo).
hombre(pedro).
hombre(gerson).
hombre(marco).
hombre(mauricio).

mujer(ana).
mujer(eli).
mujer(maya).
mujer(olga).
mujer(maria).

libro(el_senor_de_los_anillos).
libro(harry_potter).
libro(divergente).
libro(la_busca).
libro(los_juegos_del_hambre).

biblioteca(el_prado).
biblioteca(libros_y_libros).
biblioteca(lewi_libros).
biblioteca(el_garage).

alquila(el_prado, el_senor_de_los_anillos).
alquila(el_prado, harry_potter).
alquila(el_garage, la_busca).
alquila(lewi_libros,los_juegos_del_hambre).
alquila(libros_y_libros,la_busca).

%es una persona
persona(X) :- hombre(X); mujer(X).

%persona que lea libros es un lector
lee(X,Y) :- persona(X), libro(Y).

%mostrar las personas que son lectores
lector(X) :- libro(Y), lee(X,Y).

%que libros pertenecen a alguna biblioteca
pertenece(L,B) :- libro(L), biblioteca(B).

%que bibliotecas contienen algun libro determinado
contiene(B,L) :- pertenece(L,B).

%persona que le gusta algun libro
gusta(P, L) :- lector(P), lee(P,L).

%cuales son las personas que frecuentan alguna biblioteca
frecuenta(P,B) :- persona(P), biblioteca(B).

%persona a la que no le gusta ningun libro
nogustaleer(P) :- persona(P), libro(L), not(gusta(P,L)).

%persona a la que le gusta todos los libros
superlector(P) :- lector(P), libro(L), gusta(P,L).

%cuales son las personas que no frecuentan ninguna biblioteca
libre(P) :- persona(P), biblioteca(B), not(frecuenta(P, B)).

%el libro es alquilado por alguna biblioteca
alquilaE(L) :- biblioteca(B), alquila(B,L).

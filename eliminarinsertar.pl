insertarPrim([],X,[X]).
insertarPrim(L1,Y,[Y|L1]).
% 2.
insertarUlt([],X,[X]).
insertarUlt([X|L1],Y,[X|L2]):- insertarUlt(L1,Y,L2).
% 3.
insertarLugarAsc([],X,[X]).
insertarLugarAsc([X|L1],Y,[Y,X|L1]):- Y<X,!.
insertarLugarAsc([X|L1],Y,[X|L2]):- insertarLugarAsc(L1,Y,L2).
% 4.
insertarLugarDesc([],X,[X]).
insertarLugarDesc([X|L1],Y,[Y,X|L1]):- X<Y,!.
insertarLugarDesc([X|L1],Y,[X|L2]):- insertarLugarDesc(L1,Y,L2).
% 5.
% 6.
eliminarPrim([_],[]).
eliminarPrim([_|L1],L1).
% 7.
eliminarUlt([_],[]).
eliminarUlt([X|L1],[X|L2]):- eliminarUlt(L1,L2).

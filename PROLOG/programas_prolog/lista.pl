
/* ultimo elemento de una lista */

ultimo(L,[L]).
ultimo(L,[H|T]):-ultimo(L,T).

/* pertenencia a una lista */

pertenece(X,[X|_]).
pertenece(X,Y):-Y=[Z|T],pertenece(X,T).

/* borrar un elemento de una lista */

borrar(X,[X|Y],Y).
borrar(X,[Z|L],[Z|M]):-borrar(X,L,M).

/* sublista de una lista */

sublista([],[X]).
sublista([X|Y],Z):-pertenece(X,Z),sublista(Y,Z).


/* concatenar dos listas */

concatena([],L,L).
concatena([X|Y],L,[X|M]):-concatena(Y,L,M).




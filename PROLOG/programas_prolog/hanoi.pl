mover(1,X,_,Z):- write('Mover el disco superior desde la torre '), write(X), write(' hasta la torre '), write(Z), nl.
mover(N,X,Y,Z):-N>1, N1 is N-1, mover(N1,X,Z,Y), mover(1,X,_,Z), mover(N1,Y,X,Z).
hanoi(N):- mover(N,izq,cen,der).
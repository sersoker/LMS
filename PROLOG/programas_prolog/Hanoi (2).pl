/* Funcion hanoi, se le proporciona un numero N, que es la cantidad de discos en la torre de la izquierda, internamente la funcion utiliza una torre central para el paso de los discos entre la izquierda y la derecha*/

hanoi(N):-move(N,'A','C','B').
/*La funcion inicial llama a la que tiene dentro, "move" esta es la encargada de dos acciones, la primera es si N=0, devolver un true, indicando que la ordenacion ya esta realizada, en otro caso vuelve a llamarse a si misma restandole 1 a N */

        move(0,_,_,_):-!.
        move(N,Origen,Destino,Auxiliar):-M is N-1,
                                move(M,Origen,Auxiliar,Destino),
                                primitive(Origen,Destino),
                                move(M,Auxiliar,Destino,Origen).

/* Esta funcion es la encargada de decir los movimientos que sigue la funcion*/
        primitive(X,Y):-writelist(['Mueve', el, disco, de, X, a, Y]),
                        nl.
/*Esta funcion es la encargada de escribir las palabras de la frase */
        writelist([]).
        writelist([H|T]):-write(H),
                        write(' '),
                        writelist(T).


/*Esta funcion simplemente calcula el numero de movimientos necesarios */

movHanoi(1,1).
movHanoi(N,F):-N1 is N-1,movHanoi(N1,F1) F is 2*F1+1, write(F).

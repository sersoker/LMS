/* Funcion bubblesort, se le proporciona dos listas la primera una lista de numeros sin ordenar y la segunda una lista vacia o sin inicializar, en esta ultima tendremos el resultado final una vez ordenada la que se le pasa inicialmente */

gt(X,Y) :- X > Y. %Devuelve true si X es mayor que Y

bubblesort(Lista, Ordenada) :-
  swap(Lista, Lista1), !,           % Hace un intercambio de listas
  bubblesort(Lista1, Ordenada).
bubblesort(Ordenada, Ordenada).       % Sobreescribe la lista ya ordenada

swap([X,Y|Rest], [Y,X|Rest]) :-   % Ordena los dos primeros elementos
  gt(X,Y).
swap([Z|Rest], [Z|Rest1]) :-      % Ordena los dos ultimos elementos
  swap(Rest, Rest1).


/*Esta funcion calcula el numero de comparaciones necesaria */
comparaciones(1,0).
comparaciones(N,F):-N>1,N1 is N-1, comparaciones(N1,F1),F  is F1+(N-1).

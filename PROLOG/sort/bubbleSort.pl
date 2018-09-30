/* Funcion hanoi, se le proporciona un numero N, que es la cantidad de discos en la torre de la izquierda, internamente la funcion utiliza una torre central para el paso de los discos entre la izquierda y la derecha*/

bubble_sort(Lista,Ordenada):-b_sort(Lista,[],Ordenada).
b_sort([],Acc,Acc).
b_sort([H|T],Acc,Ordenada):-bubble(H,T,NT,Max),b_sort(NT,[Max|Acc],Ordenada).

bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],Max):-X>Y,bubble(X,T,NT,Max).
bubble(X,[Y|T],[X|NT],Max):-X=<Y,bubble(Y,T,NT,Max).

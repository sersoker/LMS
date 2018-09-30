X = 'IES';
X = 'TOC';
X = 'LMD';

Y = '12-J';
Y = '18-J';
Y = '30-J';

Z = 'Delgad';
Z = 'Puntonet';
Z = 'Santos';

convovatoria(X,Y,Z):-examina(X,Y,Z).
	examina(X,Y,Z):-

	.
/* Esta funcion es la encargada de decir los movimientos que sigue la funcion*/
primitive(X,Y,Z):-writelist(['Asignatura: ', X, ' Profesor: ', Y,' Fecha: ', Z]),nl.

/*Esta funcion es la encargada de escribir las palabras de la frase */
	writelist([]).
	writelist([H|T]):-write(H),
			write(' '),
			writelist(T).

/* Función factorial */
factorial(0,1).
factorial(1,1).
factorial(N,F):-N>0, N1 is N-1, factorial(N1,F1), F is N*F1. 
/* función Fibonacci */
fibonacci(0,1).
 fibonacci(1,1).
 fibonacci(N,F):-N>0, N1 is N-1, N2 is N-2, fibonacci(N1,F1), fibonacci(N2,F2), F is F1+F2. 
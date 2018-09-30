movHanoi(1,1).
movHanoi(N,F):-N1 is N-1,movHanoi(N1,F1), F is 2*F1+1.

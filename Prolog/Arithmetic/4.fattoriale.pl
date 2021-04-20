fattoriale(0,1):-!.
fattoriale(1,1):-!.
fattoriale(N,R):- N1 is N-1,fattoriale(N1,R1),R is R1*N.



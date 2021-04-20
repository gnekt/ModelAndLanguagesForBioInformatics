fattoriale(0,s(0)):-!.
fattoriale(s(0),s(0)):-!.
fattoriale(s(N),Z):-fattoriale(N,K),product(K,s(N),Z).

partition1(_,[],[],[]).
partition1(X,[Y|L],[Y|L1],L2):-Y=<X,!,partition1(X,L,L1,L2).
partition1(X,[Y|L],L1,[Y|L2]):-partition1(X,L,L1,L2).




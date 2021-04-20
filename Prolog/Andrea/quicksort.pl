quicksort([],[]).
quicksort([X|L],LF):-partition(X,L,L1,L2),quicksort(L1,L01),quicksort(L2,L02),append([X],L02,L0),merge(L01,L0,LF).

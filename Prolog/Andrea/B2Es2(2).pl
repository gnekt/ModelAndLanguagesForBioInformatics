delete12(A, [A|B], B).
delete12(A, [B, C|D], [B|E]) :-
	    delete12(A, [C|D], E).
check1(N,[N|_]).
check1(N,[_|L]):-check1(N,L),!.



domanda([],_,[]):-!.
domanda([_],_,[]):-!.
domanda(L,N,[[X,Y],L0]):-check1(X,L),check1(Y,L),N is X+Y,delete12(X,L,L1),delete12(Y,L1,L2),domanda(L2,N,L0),!.
domanda(L,N,L0):-check1(X,L),check1(Y,L),\+N is X+Y,domanda(L,N,L0),!.

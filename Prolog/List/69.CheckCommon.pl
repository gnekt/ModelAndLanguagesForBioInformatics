% common(-IList1, -IList2):- Return true if All the element of IList1 are present in IList2

member(X,[X|_]):-!.
member(X,[_|L]):-member(X,L),!.

common([],[]):-!.
common(L,L):-!.
common([X],L2):-member(X,L2),!.
common([X|L1],L2):-member(X,L2),common(L1,L2).

% common(-IList1, -IList2, -OList):- Put inside OList all the element of IList1 
%                   that are present into IList2

common(L,L,L):-!.
common([X],L2,[X]):-member(X,L2),!.
common([X|L1],L2,[X|L0]):-member(X,L2),!,common(L1,L2,L0).
common([_|L1],L2,L0):-common(L1,L2,L0).


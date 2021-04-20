member1(X,[X|_]):-!.
member1(X,[_|L]):-member1(X,L),!.

listconf([],[]):-!.
listconf(L,L):-!.
listconf([X],L2):-member1(X,L2),!.
listconf([X|L1],L2):-member1(X,L2),listconf(L1,L2).

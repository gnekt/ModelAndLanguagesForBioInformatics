intersection1(L,L,L):-!.
intersection1([X],L2,[X]):-check(X,L2),!.
intersection1([X|L1],L2,[X|L0]):-check(X,L2),!,intersection1(L1,L2,L0).
intersection1([_|L1],L2,L0):-intersection1(L1,L2,L0).


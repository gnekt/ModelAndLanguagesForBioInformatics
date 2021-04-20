diff([],[_|_],[]):-!.
diff([X|L],[],[X|L]):-!.
diff([X],L2,[X]):- \+check(X,L2),!.
diff([X|L1],L2,[X|L0]):- \+check(X,L2),!,diff(L1,L2,L0).
diff([_|L1],L2,L0):-diff(L1,L2,L0).


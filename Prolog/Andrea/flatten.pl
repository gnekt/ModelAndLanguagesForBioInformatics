append1([],L,L):-!.
append1([X|L1],L2,[X|L0]):-append1(L1,L2,L0).


flatten1([],[]):-!.
flatten1([L],L):-!.
flatten1([L1,L2|L],LF):-append1(L1,L2,L0),flatten1([L0|L],LF).


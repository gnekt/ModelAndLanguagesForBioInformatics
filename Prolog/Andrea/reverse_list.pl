append1(L,[],L):-!.
append1([],L,L).
append1([X|L1],L2,[X|L0]):-append1(L1,L2,L0).



reverse1([],[]).
reverse1([X],[X]).
reverse1([X|L1],LF):-reverse1(L1,L0),append1(L0,[X],LF).

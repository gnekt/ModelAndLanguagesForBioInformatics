listeu([],[]).
listeu([X],[X]):-!.
listeu([X|L1],[X|L2]):-listeu(L1,L2),!.

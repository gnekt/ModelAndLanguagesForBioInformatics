ordered([],L2,L2).
ordered(L1,[],L1).
ordered([X|L1],[Y|L2],[X|L0]):-X=<Y,!,ordered(L1,[Y|L2],L0).
ordered([X|L1],[Y|L2],[Y|L0]):-ordered([X|L1],L2,L0).

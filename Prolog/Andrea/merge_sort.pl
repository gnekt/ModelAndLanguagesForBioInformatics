split1([],[],[]).
split1([X],[X],[]).
split1([X,Y|L],[X|L1],[Y|L2]):-split1(L,L1,L2).

merge1(L,[],L).
merge1([],L,L).
merge1([X|L1],[Y|L2],[X|L0]):-X=<Y,!,merge(L1,[Y|L2],L0).
merge1([X|L1],[Y|L2],[Y|L0]):-merge([X|L1],L2,L0).

mergesort([],[]).
mergesort([X],[X]).
mergesort([X,Y|L],L0):-split1([X,Y|L],L1,L2),mergesort(L1,L01),mergesort(L2,L02),merge(L01,L02,L0).
















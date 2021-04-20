merge12(L,[],L).
merge12([],L,L).
merge12([X|L1],[Y|L2],[X|L0]):-X=<Y,!,merge(L1,[Y|L2],L0).
merge12([X|L1],[Y|L2],[Y|L0]):-merge([X|L1],L2,L0).

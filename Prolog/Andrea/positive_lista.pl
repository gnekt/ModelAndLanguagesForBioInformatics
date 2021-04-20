positive([],[]).
positive([X|L],[X|L0]):-X>0,!,positive(L,L0).
positive([_|L],L0):-positive(L,L0).

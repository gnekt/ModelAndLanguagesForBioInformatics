permutation1([],[]).
permutation1([X],[X]).
permutation1(L,[X|LF]):-delete(X,L,L0),permutation1(L0,LF).

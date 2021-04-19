% Inserction Sort

insert(X, [], [X]):- !.
insert(X, [X1|L1], [X, X1|L1]):- X=<X1, !.
insert(X, [X1|L1], [X1|L]):- insert(X, L1, L).

% insertionSort(UList:i,OList:o):- Given an unordered list return an ordered ones.
insertionSort([], []):- !.
insertionSort([X|L], S):- insertionSort(L, S1), insert(X, S1, S).
% Write a Prolog program which computes the permutations of a list of
% elements.

% permutation(IList:i, OList:o):- Compute the permutation of IList and put into OList

permutation([],[]).
permutation([X],[X]).
permutation([X|L], [X|LO]):- permutation(L,LO).
  
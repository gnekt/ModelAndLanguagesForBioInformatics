% Write a Prolog program which computes the permutations of a list of
% elements.

permutation([],[]).
permutation([X],[X]).
permutation([X|L], [X|LO]):- permutation(L,Permutation).
  
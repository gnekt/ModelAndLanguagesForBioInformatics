% Write a Prolog program which computes the addition of te integers in a list of integers.

listAddition([],0).
listAddition([X|L],O):- listAddition(L,LO), O is X + LO.
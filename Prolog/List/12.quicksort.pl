% Write a program which given a list of integers L returns an ordered
% list of integers containing the elements in L

concat([],X,X).
concat([X|L1],L2,[X|LO]):- concat(L1,L2,LO).

partition(X,[],[],[]).
partition(X,[Y|LI],LO1,[Y|LO2]):- X < Y,partition(X,LI,LO1,LO2).
partition(X,[Y|LI],[Y|LO1],LO2):- X >= Y, partition(X,LI,LO1,LO2).

% quickSort(IList:i, OList:o):- Given an unordered List IList, return its ordered version.

quickSort([],[]).
quickSort([X|L],LO):-  partition(X,L,L1,R1), 
			quickSort(L1,LO1), 
			quickSort(R1,LO2),
			concat(LO1,[X|LO2],LO).

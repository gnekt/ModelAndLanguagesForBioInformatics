% Write a program which given one list L of integers and an integer
% value N decides if X belongs to L.

% find(Elem:i,List:i):- Return true if Elem belong into List.

find(Y,[Y|_]).
find(Y,[X|L]):- find(Y,L).    
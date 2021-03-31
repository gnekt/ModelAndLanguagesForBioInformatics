% Write a program which given one list L of integers and an integer
% value N decides if X belongs to L.

find(Y,[Y|_]).
find(Y,[X|L]):- find(Y,L).    
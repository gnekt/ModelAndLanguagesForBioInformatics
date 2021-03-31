% Write a program which given two lists L1 and L2 of integers decides
% if all elements in the first list are present in the second one.

find(Y,[Y|_]).
find(Y,[X|L]):- find(Y,L).   

belong([],X).
belong([X|L1],L2):- find(X,L2), 
                    belong(L1,L2). 
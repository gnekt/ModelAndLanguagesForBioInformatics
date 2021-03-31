find(Y,[Y|L]).
find(Y,[X|L]):- find(Y,L).   

belong([],X).
belong([X|L1],L2):- find(X,L2), 
                    belong(L1,L2). 
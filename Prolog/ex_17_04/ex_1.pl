orderList([],[],[]).
orderList([],X,X).
orderList(Y,[],Y).
orderList([X|L1],[Y|L2],[X|L0]):- X =< Y, orderList(L1,[Y|L2],L0).
orderList([X|L1],[Y|L2],[Y|L0]):- X > Y, orderList([X|L1],L2,L0).

removeDuplicate([],[]).
removeDuplicate([X],[X]).
removeDuplicate([X|L],[Y|SL]):- removeDuplicate(L,[Y|SL]), Y = X.
removeDuplicate([X|L],[X,Y|SL]):- removeDuplicate(L,[Y|SL]), Y \= X.

ascendingorder(L,N,M,LO):- N>=M,orderList(L,[M,N],SL), removeDuplicate(SL,LO).
ascendingorder(L,N,M,LO):- N<M,orderList(L,[N,M],SL), removeDuplicate(SL,LO).
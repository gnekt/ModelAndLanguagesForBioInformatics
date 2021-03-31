orderList([],[],[]).
orderList([],X,X).
orderList(Y,[],Y).
orderList([X|L1],[Y|L2],[X|L0]):- X =< Y, orderList(L1,[Y|L2],L0).
orderList([X|L1],[Y|L2],[Y|L0]):- X > Y, orderList([X|L1],L2,L0).


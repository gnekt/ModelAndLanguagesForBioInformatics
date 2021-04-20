insert_order(N,[],[N]):-!.
insert_order(N,[X|L],[N,X|L]):-N=<X,!.
insert_order(N,[X|L],[X|L0]):-insert_order(N,L,L0).

remove_double([],[]):-!.
remove_double([X],[X]):-!.
remove_double([X,X|L],L0):-remove_double([X|L],L0),!.
remove_double([X,K|L],[X|L0]):-remove_double([K|L],L0),!.

ascendingorder([],N,N,[N]):-!.
ascendingorder([],N,M,[N,M]):-N=<M,!.
ascendingorder([],N,M,[M,N]):-!.
ascendingorder([X|L],N,M,LF):-insert_order(N,[X|L],L1),insert_order(M,L1,L2),remove_double(L2,LF).


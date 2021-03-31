concat([],X,X).
concat([X|L1],L2,[X|LO]):- concat(L1,L2,LO).

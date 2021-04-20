% Peano Operations
plus(X,0,X).
plus(0,X,X).
plus(s(X),Y,s(Z)):- plus(X,Y,Z).

lesseq(0,X).
lesseq(s(X),s(Y)) :- lesseq(X,Y).

lunghezza([],0).
lunghezza([_X|Xs],s(N)) :- lunghezza(Xs,N).
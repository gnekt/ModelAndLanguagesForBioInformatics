natural_number(0).
natural_number(s(X)) :- natural_number(X).

plus1(0,X,X) :- natural_number(X).
plus1(s(X),Y,s(Z)):- plus1(X,Y,Z).

lesseq1(0,X) :- natural_number(X).
lesseq1(s(X),s(Y)) :- lesseq1(X,Y).

lunghezza([],0).
lunghezza([_X|Xs],s(N)) :- lunghezza(Xs,N).
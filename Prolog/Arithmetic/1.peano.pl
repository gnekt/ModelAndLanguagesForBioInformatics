% Peano Operations

plus(X,0,X).
plus(0,X,X).
plus(s(X),Y,s(Z)):- plus(X,Y,Z).

lesseq(0,X).
lesseq(s(X),s(Y)) :- lesseq(X,Y).

lunghezza([],0).
lunghezza([_X|Xs],s(N)) :- lunghezza(Xs,N).

product(0,_,0):-!.
product(_,0,0):-!.
product(s(X),Y,Z):-product(X,Y,K),plus(K,Y,Z),!.

power(0,N,0):-N\==0.
power(_,0,s(0)):-!.
power(X,s(N),Z):-power(X,N,K),product(X,K,Z).

fattoriale(0,s(0)):-!.
fattoriale(s(0),s(0)):-!.
fattoriale(s(N),Z):-fattoriale(N,K),product(K,s(N),Z).
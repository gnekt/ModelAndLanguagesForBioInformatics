% Operazioni aritmetiche con numeri

pari(X):-0 is X mod 2.

dispari(X):-1 is X mod 2.

mod1(_,0,error):-!.
mod1(0,_,0):-!.
mod1(X,N,X):-X<N,!.
mod1(X,N,Z):-K is X-N,mod1(K,N,Z).


prodotto(_,0,0):-!.
prodotto(N,M,X):-M1 is M-1, prodotto(N,M1,Y),X is Y+N.

divisione(_,0,error,error):-!.
divisione(0,_,0,0):-!.
divisione(M,N,0,M):-M<N,!.
divisione(M,N,I,R):-K is M-N,divisione(K,N,I1,R),I is I1+1.



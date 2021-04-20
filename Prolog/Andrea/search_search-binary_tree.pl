Searchsbt(N,t(N,_,_)):-!.
searchsbt(N,t(X,T1,_)):-N=<X,!,searchsbt(N,T1).
searchsbt(N,t(_,_,T2)):-searchsbt(N,T2).


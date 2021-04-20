searchbt(N,t(N,_,_)):-!.
searchbt(N,t(_,T1,_)):-searchbt(N,T1),!.
searchbt(N,t(_,_,T2)):-searchbt(N,T2),!.

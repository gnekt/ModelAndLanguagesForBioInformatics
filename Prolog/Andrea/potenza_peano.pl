power(0,N,0):-N\==0.
power(_,0,s(0)):-!.
power(X,s(N),Z):-power(X,N,K),product(X,K,Z).

product(0,_,0):-!.
product(_,0,0):-!.
product(s(X),Y,Z):-product(X,Y,K),plus1(K,Y,Z),!.


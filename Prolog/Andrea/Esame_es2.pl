eliminate2([],_,_,[]):-!.
eliminate2([N],_,_,[N]):-!.
eliminate2([X,Y|L],X,Y,L):-!.
eliminate2([J|L],X,Y,[J|L0]):-eliminate2(L,X,Y,L0).

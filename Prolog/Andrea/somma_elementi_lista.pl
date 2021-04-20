addition([],0):-!.
addition([X],X):-!.
addition([X|L],Z):-addition(L,K),Z is K+X.


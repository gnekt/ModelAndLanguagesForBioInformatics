diag([],0):-!.
diag([X],X):-!.
diag([[X,_],[_,M]],Z):-Z is X+M,!.
diag([[X|_],[_|L2]|L],Z):-diag([L2|L],K),Z is K+X.

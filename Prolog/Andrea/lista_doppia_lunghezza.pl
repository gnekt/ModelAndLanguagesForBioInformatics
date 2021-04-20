double_length([_,_],[_]):-!.
double_length([_,_|L1],[_|L2]):-double_length(L1,L2).

list_length([],0):-!.
list_length([_|L],Z):-list_length(L,K),Z is K+1.

doppia(L1,L2):-list_length(L1,N1),list_length(L2,N2), N1 is N2*2.



list_length([],0):-!.
list_length([_|L],Z):-list_length(L,K),Z is K+1.

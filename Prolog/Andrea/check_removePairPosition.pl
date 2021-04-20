remove_pair_position([],[]):-!.
remove_pair_position([X,_|L],[X|L0]):-remove_pair_position(L,L0).

check_not_pair_pos(L,LF):-remove_pair_position(L,LF).

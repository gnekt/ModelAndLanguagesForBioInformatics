not_common_elements([],_):-!.
not_common_elements([X],L2):- \+member(X,L2),!.
not_common_elements([X|L],L2):- \+member(X,L2),not_common_elements(L,L2).

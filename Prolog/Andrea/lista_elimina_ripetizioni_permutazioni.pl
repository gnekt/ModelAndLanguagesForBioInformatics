member_list(L1,[L1|_]):-!.
member_list(L1,[L2|_]):-permutation(L1,L2),!.
member_list(L1,[_|L]):-member_list(L1,L).

list_to_set1([],[]):- !.
list_to_set1([L1|L],[L1|L0]):- \+member_list(L1,L),!,list_to_set1(L,L0).
list_to_set1([_|L],L0):- list_to_set1(L,L0).

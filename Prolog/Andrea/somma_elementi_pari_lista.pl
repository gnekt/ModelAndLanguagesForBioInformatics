sum_pairpos_element([],0):-!.
sum_pairpos_element([_],0):-!.
sum_pairpos_element([_,Y|L],N):-sum_pairpos_element(L,M),N is M+Y.

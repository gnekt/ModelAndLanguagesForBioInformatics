list_element_equalnumber([],_,[]):-!.
list_element_equalnumber([[X,Y]|L],N,[[X,Y]|LF]):-N is X+Y,list_element_equalnumber(L,N,LF),!.
list_element_equalnumber([_|L],N,LF):-list_element_equalnumber(L,N,LF).


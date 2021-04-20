last_element([X],X):-!.
last_element([_|L],N):-last_element(L,N).


last_two_element([X,Y],[X,Y]):-!.
last_two_element([_|L],N):-last_two_element(L,N).

list_even([],[]):-!.
list_even([X|L],[X|L0]):-0 is X mod 2,!,list_even(L,L0).
list_even([_|L],L0):-list_even(L,L0).

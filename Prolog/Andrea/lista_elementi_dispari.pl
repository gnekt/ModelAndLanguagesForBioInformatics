list_odd([],[]):-!.
list_odd([X|L],[X|L0]):-1 is X mod 2,!,list_odd(L,L0).
list_odd([_|L],L0):-list_odd(L,L0).

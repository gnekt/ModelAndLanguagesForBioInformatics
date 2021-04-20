% transferPositive(-IList,-OList):- Copy all positive element of IList to OList

transferPositive([],[]).
transferPositive([X|L],[X|L0]):-X>0,!,transferPositive(L,L0).
transferPositive([_|L],L0):-transferPositive(L,L0).

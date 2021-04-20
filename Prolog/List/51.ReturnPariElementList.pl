% Scrivere un programma in Prolog che, data una lista di interi, ritorni solo quelli pari.

list_even([],[]):-!.
list_even([X|L],[X|L0]):-0 is X mod 2,!,list_even(L,L0).
list_even([_|L],L0):-list_even(L,L0).
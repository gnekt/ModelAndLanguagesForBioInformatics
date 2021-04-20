% maxlista(-List,-Out):- Out is the maximum of the list List.

maxlista([X],X):-!.
maxlista([X|L],X):-maxlista(L,Y),X>Y,!.
maxlista([_|L],Y):-maxlista(L,Y).
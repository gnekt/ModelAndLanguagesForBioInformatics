maxlista([X],X):-!.
maxlista([X|L],X):-maxlista(L,Y),X>Y,!.
maxlista([_|L],Y):-maxlista(L,Y).

lista_maxliste([],[]):-!.
lista_maxliste([[]|L],LF):-lista_maxliste(L,LF),!.
lista_maxliste([L1|L],[X|LF]):-maxlista(L1,X),lista_maxliste(L,LF).

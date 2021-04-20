% Si definisca un predicato in PROLOG chiamato maxlist che
% applicato ad una lista di liste di interi ListListInt dia come
% risultato la lista degli elementi massimi di ogni lista componente
% di ListListInt.

maxlista([X],X):-!.
maxlista([X|L],X):-maxlista(L,Y),X>Y,!.
maxlista([_|L],Y):-maxlista(L,Y).

% lista_maxliste(-ListList,-List):- Return a list with the maximum value of each sub-list of ListList

lista_maxliste([],[]):-!.
lista_maxliste([[]|L],LF):-lista_maxliste(L,LF),!.
lista_maxliste([L1|L],[X|LF]):-maxlista(L1,X),lista_maxliste(L,LF).
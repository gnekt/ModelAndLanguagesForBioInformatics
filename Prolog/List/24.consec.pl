%  Esercizio 5
%  Si scriva un predicato Prolog che data una lista ed un elemento El
%  appartenente alla lista, restituisca in uscita l'elemento successivo
%  ad El nella lista.
%  Esempio:
%  ?- consec(3, [1,7,3,9,11],X).
%  yes X=9

consec(X,[],[]).
consec(X,[_],[]).
consec(X,[X,Y|List],Y):-!.
consec(X,[A,B|List],Y):- consec(X,[B|List],Y).

% Oppure, per una sola occorrenza

consec(N,[N,Y|_],Y):-!.
consec(N,[_|L],Y):-consec(N,L,Y).

% Oppure, per tutte le occorrenze

consec_all(N,[N,Y|_],Y).
consec_all(N,[_|L],Y):-consec_all(N,L,Y).

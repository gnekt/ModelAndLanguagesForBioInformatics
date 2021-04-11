# Esercizio 5
# Si scriva un predicato Prolog che data una lista ed un elemento El
# appartenente alla lista, restituisca in uscita l'elemento successivo
# ad El nella lista.
# Esempio:
# ?- consec(3, [1,7,3,9,11],X).
# yes X=9

consec(X,[],[]).
consec(X,[X,Y|List],Y):-!.
consec(X,[A,B|List],Y):- consec(X,[B|List],Y).
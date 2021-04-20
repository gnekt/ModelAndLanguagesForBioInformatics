% Scrivere un programma in PROLOG PURO per la seguente relazione: eveninlist(Xs,Ys) se e solo
% se Ys è la lista che si ottiene da Xs rimuovendo gli elementi di posizione dispari. Ad esempio
% evenInList([ a ,b, c ,d, e , f ] ,[ b , d , f ]) è vero. 
% Primo elemento in lista posizione 0
% Il programma deve essere in grado di rispondere a queries del tipo oddinlist(Xs,[a,b]).

transferEvenElement([],[]):-!.
transferEvenElement([_,X|L],[X|L0]):-transferEvenElement(L,L0).

evenInList(L,LF):-transferEvenElement(L,LF).
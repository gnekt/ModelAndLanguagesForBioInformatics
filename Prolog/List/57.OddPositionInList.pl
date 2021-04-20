% Scrivere un programma in PROLOG PURO per la seguente relazione: oddinlist(Xs,Ys) se e solo
% se Ys è la lista che si ottiene da Xs rimuovendo gli elementi di posizione pari. Ad esempio
% oddinlist([ a ,b, c ,d, e , f ] ,[ a , c , e ]) è vero. 
% Primo elemento in lista posizione 0
% Il programma deve essere in grado di rispondere a queries del tipo oddinlist(Xs,[a,b]).

transferOddElement([],[]):-!.
transferOddElement([X,_|L],[X|L0]):-transferOddElement(L,L0).

oddInList(L,LF):-transferOddElement(L,LF).

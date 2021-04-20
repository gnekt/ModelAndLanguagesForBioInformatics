% Scrivere un programma in PROLOG PURO per la seguente relazione: oddinlist(Xs,Ys) se e solo
% se Ys è la lista che si ottiene da Xs rimuovendo gli elementi di posizione pari. Ad esempio
% oddinlist ([ a ,b, c ,d, e , f ] ,[ a , c , e ]) è vero. 
% Il programma deve essere in grado di rispondere a queries del tipo oddinlist(Xs,[a,b]).

remove_pair_position([],[]):-!.
remove_pair_position([X,_|L],[X|L0]):-remove_pair_position(L,L0).

check_not_pair_pos(L,LF):-remove_pair_position(L,LF).

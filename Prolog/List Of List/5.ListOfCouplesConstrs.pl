% Si scriva un programma Prolog che data in ingresso una lista di
% liste con 2 elementi ciascuna ed una costante c1 restituisca in
% uscita due liste DX ed SX, la prima contenente gli elementi che
% nelle coppie compaiono a destra di c1, la seconda a sinistra.


coppie([],_,[],[]).
coppie([[X,X]|T],X,[X|Td],[X|Ts]) :- !,coppie(T,X,Td,Ts).
coppie([[X,Y]|T],X,[Y|Td],Ts) :- !,coppie(T,X,Td,Ts).
coppie([[Y,X]|T],X,Td,[Y|Ts]) :- !,coppie(T,X,Td,Ts).
coppie([_|T],X,Td,Ts) :- coppie(T,X,Td,Ts).
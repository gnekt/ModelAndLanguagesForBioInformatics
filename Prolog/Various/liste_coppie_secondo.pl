% Si scriva un programma Prolog che data in ingresso una lista di
% liste con 2 elementi ciascuna ed una costante c1 restituisca in
% uscita due liste DX ed SX, la prima contenente gli elementi che
% nelle coppie compaiono a destra di c1, la seconda a sinistra. 

coppie([],_,[],[]):-!.
coppie([[N,N]|L],N,[N|LS],[N|LD]):-coppie(L,N,LS,LD),!.
coppie([[X,N]|L],N,[X|LS],LD):-coppie(L,N,LS,LD),!.
coppie([[N,X]|L],N,LS,[X|LD]):-coppie(L,N,LS,LD),!.
coppie([_|L],N,LS,LD):-coppie(L,N,LS,LD).

% Si scriva un programma Prolog che data in ingresso una lista di
% liste con 2 elementi ciascuna ed una costante c1 restituisca in
% uscita due liste DX ed SX, variante senza che N sia per forza presente

coppie([],_,[],[]):-!.
coppie([[N,N]|L],N,[N|LS],[N|LD]):-coppie(L,N,LS,LD),!.
coppie([[X,Y]|L],N,[X|LS],[Y|LD]):-X=<N,Y>=N,!,coppie(L,N,LS,LD).
coppie([[X,Y]|L],N,[Y|LS],[X|LD]):-X>=N,Y=<N,!,coppie(L,N,LS,LD).
coppie([_|L],N,LS,LD):-coppie(L,N,LS,LD).


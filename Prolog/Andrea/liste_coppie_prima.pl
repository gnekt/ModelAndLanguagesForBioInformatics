coppie([],_,[],[]):-!.
coppie([[N,N]|L],N,[N|LS],[N|LD]):-coppie(L,N,LS,LD),!.
coppie([[X,Y]|L],N,[X|LS],[Y|LD]):-X=<N,Y>=N,!,coppie(L,N,LS,LD).
coppie([[X,Y]|L],N,[Y|LS],[X|LD]):-X>=N,Y=<N,!,coppie(L,N,LS,LD).
coppie([_|L],N,LS,LD):-coppie(L,N,LS,LD).


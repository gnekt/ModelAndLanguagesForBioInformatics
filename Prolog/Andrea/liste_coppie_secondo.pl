coppie([],_,[],[]):-!.
coppie([[N,N]|L],N,[N|LS],[N|LD]):-coppie(L,N,LS,LD),!.
coppie([[X,N]|L],N,[X|LS],LD):-coppie(L,N,LS,LD),!.
coppie([[N,X]|L],N,LS,[X|LD]):-coppie(L,N,LS,LD),!.
coppie([_|L],N,LS,LD):-coppie(L,N,LS,LD).

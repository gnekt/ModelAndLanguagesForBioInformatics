notmember(_,[]):-!.
notmember(N,[X|L]):- N\==X,notmember(N,L).

% notmember(-Value, -IList):- Return true if Value is not present into IList

notmember(_,[]):-!.
notmember(N,[X|L]):- N\==X,notmember(N,L).

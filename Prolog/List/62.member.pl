% check(-N,-IList):- Check if N is present into 

member(N,[N|_]).
member(N,[_|L]):-member(N,L),!.

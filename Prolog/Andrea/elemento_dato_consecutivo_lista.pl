consec(N,[N,Y|_],Y):-!.
consec(N,[_|L],Y):-consec(N,L,Y).

consec_all(N,[N,Y|_],Y).
consec_all(N,[_|L],Y):-consec_all(N,L,Y).

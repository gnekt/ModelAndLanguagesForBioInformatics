check(N,[N|_]).
check(N,[_|L]):-check(N,L),!.

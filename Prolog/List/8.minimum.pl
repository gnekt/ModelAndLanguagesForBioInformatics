%Find the minumum of a given list

min(X,Y,X):- X =< Y.
min(X,Y,Y):- Y < X.

% minimum(List:i, Min:out):- Return the minimum of a given list.

minimum([X],X).
minimum([X|L],Min):- minimum(L,MinL), min(MinL,X,Min).
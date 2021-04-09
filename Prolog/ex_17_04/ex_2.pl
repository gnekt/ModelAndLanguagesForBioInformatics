eliminate2consecutivevalues([],X,Y,[]).
eliminate2consecutivevalues([X,Y|L],X,Y,L):- !.
eliminate2consecutivevalues([A,B|L],X,Y,[A|Rs]):- A = X, B \= X, eliminate2consecutivevalues([B|L],X,Y,Rs).
eliminate2consecutivevalues([A,B|L],X,Y,[A|Rs]):- A \= X, B = X, eliminate2consecutivevalues([B|L],X,Y,Rs).
eliminate2consecutivevalues([A,B|L],X,Y,[A,B|Rs]):- A \= X, B \= X, B \= Y, eliminate2consecutivevalues(L,X,Y,Rs).

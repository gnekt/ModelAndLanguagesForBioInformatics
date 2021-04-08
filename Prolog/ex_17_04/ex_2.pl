eliminate2consecutivevalues([],X,Y,[]).
eliminate2consecutivevalues([A],X,Y,[A]).
eliminate2consecutivevalues([X,Y],X,Y,[]).
eliminate2consecutivevalues([X,A],X,Y,[X,A]):- A \= Y.
eliminate2consecutivevalues([A,Y],X,Y,[A,Y]):- A \= X.
eliminate2consecutivevalues([A,B],X,Y,[A,B]):- A \= X, B \= Y.

eliminate2consecutivevalues([A,B|L],X,Y,Rs):- A = X, B = Y, eliminate2consecutivevalues(L,nil,nil,Rs).
eliminate2consecutivevalues([A,B|L],X,Y,[A|Rs]):- A = X, B \= X, eliminate2consecutivevalues([B|L],X,Y,Rs).
eliminate2consecutivevalues([A,B|L],X,Y,[A|Rs]):- A \= X, B = X, eliminate2consecutivevalues([B|L],X,Y,Rs).
eliminate2consecutivevalues([A,B|L],X,Y,[A,B|Rs]):- A \= X, B \= X, B \= Y, eliminate2consecutivevalues(L,X,Y,Rs).

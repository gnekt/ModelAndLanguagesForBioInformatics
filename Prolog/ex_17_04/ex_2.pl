eliminate2consecutivevalues([],X,Y,[]).
eliminate2consecutivevalues([X,Y|L],X,Y,L):- !.
eliminate2consecutivevalues([A,B|L],X,Y,[A|Rs]):- A = X, B \= X, eliminate2consecutivevalues([B|L],X,Y,Rs).
eliminate2consecutivevalues([A,B|L],X,Y,[A|Rs]):- A \= X, B = X, eliminate2consecutivevalues([B|L],X,Y,Rs).
eliminate2consecutivevalues([A,B|L],X,Y,[A,B|Rs]):- A \= X, B \= X, B \= Y, eliminate2consecutivevalues(L,X,Y,Rs).
eliminate2consecutivevalues([A,B|L],X,Y,[A,B|RS]):- A= X,B \= Y,B \= X, eliminate2consecutivevalues(L,X,Y,RS).
eliminate2consecutivevalues([A,B|L],X,Y,[A|RS]):-A = X,B \= Y,B = X, eliminate2consecutivevalues([B|L],X,Y,RS).
                            
% Soluzione prof

eliminate2([],[]).
eliminate2([X],X,Y,[X]).
eliminate2([X,Y|L],X,Y,L).
eliminate2([X1,Y1|L],X,Y,[X1|LO]):- [X1,Y1] \== [X,Y], eliminate2([Y1|L],X,Y,LO).
% Write a Prolog program which returns the element of a list L1 which are not included in a second list L2.

find(Y,[Y|L]).
find(Y,[X|L]):- find(Y,L). 

exclude([],X,[]).
exclude([X|L],L2,[X|LO]):- \+ find(X,L2), exclude(L,L2,LO).
exclude([X|L],L2,LO):- find(X,L2), exclude(L,L2,LO).

% We can modified it to exploit the cut operator

exclude([],X,[]).
exclude([X|L],L2,[X|LO]):- \+ find(X,L2), ! , exclude(L,L2,LO).
exclude([X|L],L2,LO):- exclude(L,L2,LO).

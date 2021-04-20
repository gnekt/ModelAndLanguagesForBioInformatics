%Write a (Prolog) program which takes in input two ordered lists of
%integers and returns an ordered list of integers containing all elements in the original lists.

% merge(List1:i ,List2:i , ListO: o):- return the merged list of List1 and List2, given that they are ordered

merge([],[],[]).
merge([],X,X).
merge(Y,[],Y).
merge([X|L1],[Y|L2],[X|L0]):- X =< Y, merge(L1,[Y|L2],L0).
merge([X|L1],[Y|L2],[Y|L0]):- X > Y, merge([X|L1],L2,L0).


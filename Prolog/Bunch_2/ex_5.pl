% Write a program which computes the reversed list LO of an input list
% L (LO contains the same values in L, in reversed order).

concat([],X,X).
concat([X|L1],L2,[X|LO]):- concat(L1,L2,LO).

reverse([],[]).
reverse([X|List], LO):- reverse(List,ReversedList), concat(ReversedList,X,LO).

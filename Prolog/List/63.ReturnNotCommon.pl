% notCommon(-IList1, -IList2, -OList):- Put inside OList all the element of IList1 
%                   that are not present into IList2

notCommon([],[_|_],[]):-!.
notCommon([X|L],[],[X|L]):-!.
notCommon([X],L2,[X]):- \+ member(X,L2),!.
notCommon([X|L1],L2,[X|L0]):- \+ member(X,L2),!,notCommon(L1,L2,L0).
notCommon([_|L1],L2,L0):- notCommon(L1,L2,L0).


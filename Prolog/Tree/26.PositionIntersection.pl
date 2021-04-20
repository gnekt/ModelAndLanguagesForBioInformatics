% positionIntersection(-Tree1,-Tree2,-OList):- Put in OList all the element of tree1 and tree2 that are equal in values and in position of the tree

positionIntersection(nil,nil,[]):-!.
positionIntersection(t(X,nil,nil),t(X,nil,nil),[X]):-!.
positionIntersection(t(X,T1,T2),t(X,T3,T4),[X|L0]):-positionIntersection(T1,T3,L1),positionIntersection(T2,T4,L2),append(L1,L2,L0),!.
positionIntersection(t(_,T1,T2),t(_,T3,T4),L0):-positionIntersection(T1,T3,L1),positionIntersection(T2,T4,L2),append(L1,L2,L0).

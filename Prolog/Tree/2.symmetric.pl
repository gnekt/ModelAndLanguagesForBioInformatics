% Check if a tree is symmetric as node value 

mirror(nil,nil).
mirror(t(X,L1,R1),t(X,L2,R2)) :- mirror(L1,R2), mirror(R1,L2).

symmetric(nil).
symmetric(t(_,L,R)) :- mirror(L,R).

% Check if a tree is symmetric as only data structure

mirror(nil,nil).
mirror(t(_,L1,R1),t(_,L2,R2)) :- mirror(L1,R2), mirror(R1,L2).

symmetric(nil).
symmetric(t(_,L,R)) :- mirror(L,R).


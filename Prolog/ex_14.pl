%From a BST to a list 

% Retrieve all the nodes at a given Depth
atlevel(nil,_,[]).
atlevel(t(X,_,_),1,[X]).
atlevel(t(_,L,R),D,S) :- D > 1, D1 is D-1,
   atlevel(L,D1,SL), atlevel(R,D1,SR), append(SL,SR,S).


% Retrieve the level ordered list of a BST

levelorder(T,S) :- levelorder(T,S,1).

levelorder(T,[],D) :- atlevel(T,D,[]), !.
levelorder(T,S,D) :- atlevel(T,D,SD),
   D1 is D+1, levelorder(T,S1,D1), append(SD,S1,S).
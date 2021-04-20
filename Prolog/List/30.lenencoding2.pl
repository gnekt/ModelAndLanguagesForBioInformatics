% Modified run-length encoding.
% Modify the result of problem 1.10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as [N,E] terms.

% Example:
% ?- encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[4,a],b,[2,c],[2,a],d,[4,e]]


countElement([],0).
countElement([X|List],Res):- countElement(List,RList), Res is RList + 1.

iteration([],[]).
iteration([[X]|List],[X|ListR]):- countElement([X|L],Res), !,iteration(List,ListR).
iteration([[X|L]|List],[[Res,X]|ListR]):- countElement([X|L],Res), iteration(List,ListR).

encode_modified(List,Res):- pack(List,PackList), iteration(PackList,Res).

transfer(X,[],[],[X]).
transfer(X,[Y|List],[Y|List],[X]):- X \= Y, !,transfer(X,List,_,_).
transfer(X,[X|List],Ys,[X|Res]):-!, transfer(X,List,Ys,Res).


pack([],[]):-!.
pack([X|List],[Z|Result]):- transfer(X,List,Remain,Z),pack(Remain,Result).
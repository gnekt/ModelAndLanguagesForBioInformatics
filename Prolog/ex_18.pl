% Run-length encoding of a list.
% Use the result of problem 1.09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as terms [N,E] where N is the number of duplicates of the element E.

% Example:
% ?- encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[4,a],[1,b],[2,c],[2,a],[1,d],[4,e]]

countElement([],0).
countElement([X|List],Res):- countElement(List,RList), Res is RList + 1.

iteration([],[]).
iteration([[X|L]|List],[[Res,X]|ListR]):- countElement([X|L],Res), iteration(List,ListR).

encode(List,Res):- pack(List,PackList), iteration(PackList,Res).

transfer(X,[],[],[X]).
transfer(X,[Y|List],[Y|List],[X]):- X \= Y, !,transfer(X,List,_,_).
transfer(X,[X|List],Ys,[X|Res]):-!, transfer(X,List,Ys,Res).


pack([],[]):-!.
pack([X|List],[Z|Result]):- transfer(X,List,Remain,Z),pack(Remain,Result).
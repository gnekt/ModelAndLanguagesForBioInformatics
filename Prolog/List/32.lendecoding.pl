% Run-length encoding of a list (direct solution).
% Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 1.09, but only count them. As in problem 1.11, simplify the result list by replacing the singleton terms [1,X] by X.

% Example:
% ?- encode_direct([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[4,a],b,[2,c],[2,a],d,[4,e]]


count(_,[],0).
count(X,[X|List],Res1):- !,count(X,List,ResR),Res1 is ResR+1.
count(X,[Y|List],0):-!.

removeFirstNFromList(_,0,_).
removeFirstNFromList([X|List],1,List).
removeFirstNFromList([X|List],N,Out):- N > 1, N1 is N-1, removeFirstNFromList(List,N1,Out).

encode_direct([],[]).
encode_direct([X|List],[[Res1,X]|Out]):- count(X,List,Res), Res > 0, !, Res1 is Res+1,removeFirstNFromList(List,Res,OutList),encode_direct(OutList,Out).
encode_direct([X|List],[X|Out]):- encode_direct(List,Out).
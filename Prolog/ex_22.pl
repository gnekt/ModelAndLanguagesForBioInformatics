% Duplicate the elements of a list.
% Example:
% ?- dupli([a,b,c,c,d],X).
% X = [a,a,b,b,c,c,c,c,d,d]

count(_,[],0).
count(X,[X|List],Res1):- !,count(X,List,ResR),Res1 is ResR+1.
count(X,[Y|List],0):-!.

removeFirstNFromList(_,0,_).
removeFirstNFromList([X|List],1,List).
removeFirstNFromList([X|List],N,Out):- N > 1, N1 is N-1, removeFirstNFromList(List,N1,Out).

duplicateNTimes(_,0,[]).
duplicateNTimes(X,1,[X]).
duplicateNTimes(X,N,[X|Lr]):- N > 1, N1 is N-1, duplicateNTimes(X,N1,Lr).

dupli([],[]).
dupli([X|List],Lout):- count(X,List,Res), Res > 0, !, Res1 is (Res+1)*2, removeFirstNFromList(List,Res,Out1),
    					duplicateNTimes(X,Res1,L1), dupli(Out1,Lr), append(L1,Lr,Lout).
dupli([X|List],[X,X|Lr]):-dupli(List,Lr).
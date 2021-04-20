% Duplicate the elements of a list a given number of times.
% Example:
% ?- dupli([a,b,c],3,X).
% X = [a,a,a,b,b,b,c,c,c]

% What are the results of the goal:
% ?- dupli(X,3,Y).

duplicateNTimes(_,0,[]).
duplicateNTimes(X,1,[X]).
duplicateNTimes(X,N,[X|Lr]):- N > 1, N1 is N-1, duplicateNTimes(X,N1,Lr).

duplicate(L,1,L).
duplicate([],_,[]).
duplicate([X|List],N,Out):- N > 1, !, duplicateNTimes(X,N,OutX),
    										duplicate(List,N,Outr),
    											append(OutX,Outr,Out).
duplicate([X|List],N,[X,X|Lr]):-duplicate(List,N,Lr).
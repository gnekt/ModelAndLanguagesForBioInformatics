% Drop every N'th element from a list.
% Example:
% ?- drop([a,b,c,d,e,f,g,h,i,k],3,X).
% X = [a,b,d,e,g,h,k]


drop([],_,[]).
drop(List,N,Output):- listDropping(List,N,1,Output).

listDropping([],_,_,[]).
listDropping([X|List],N,Counter,Out):- N == Counter, !, listDropping(List,N,1,Out).
listDropping([X|List],N,Counter,[X|Out]):- N1 is Counter+1, listDropping(List,N,N1,Out).
% Lotto: Draw N different random numbers from the set 1..M.
% The selected numbers shall be put into a result list.
% Example:
% ?- lotto(6,49,L).
% L = [23,1,17,33,21,37]

% Hint: Combine the solutions of problems 1.22 and 1.23.

remove_at(X,[X|L],1,L).
remove_at(X,[Y|L],N,[Y|Lr]):- N>1, N1 is N-1, remove_at(X,L,N1,Lr).

rnd_select([],N,[]).
rnd_select(List,0,[]).
rnd_select(List,N,[L1|Lr]):- N>=1, !, length(List,Len) ,random_between(1,Len,Ran),
    							remove_at(L1,List,Ran,NList), N1 is N-1, rnd_select(NList,N1,Lr).

range(X,X,[X]).
range(X,Y,[]):- X > Y,!.
range(X,Y,[X|List]):- N1 is X+1, N1 =< Y, !,range(N1,Y,List).

lotto(N,Max,Out):- range(1,Max,List), rnd_select(List,N,Out).
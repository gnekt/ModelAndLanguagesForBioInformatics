% Extract a given number of randomly selected elements from a list.
% The selected items shall be put into a result list.
% Example:
% ?- rnd_select([a,b,c,d,e,f,g,h],3,L).
% L = [e,d,a]

% Hint: Use the built-in random number generator random/2 and the result of problem 1.20.

remove_at(X,[X|L],1,L).
remove_at(X,[Y|L],N,[Y|Lr]):- N>1, N1 is N-1, remove_at(X,L,N1,Lr).

rnd_select([],N,[]).
rnd_select(List,0,[]).
rnd_select(List,N,[L1|Lr]):- N>=1, !, length(List,Len) ,random_between(1,Len,Ran),
    							remove_at(L1,List,Ran,NList), N1 is N-1, rnd_select(NList,N1,Lr).
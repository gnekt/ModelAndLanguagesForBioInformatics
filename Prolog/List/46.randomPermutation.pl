% Generate a random permutation of the elements of a list.
% Example:
% ?- rnd_permu([a,b,c,d,e,f],L).
% L = [b,a,d,c,e,f]

remove_at(X,[X|L],1,L).
remove_at(X,[Y|L],N,[Y|Lr]):- N>1, N1 is N-1, remove_at(X,L,N1,Lr).

rnd_select([],N,[]).
rnd_select(List,0,[]).
rnd_select(List,N,[L1|Lr]):- N>=1, !, length(List,Len) ,random_between(1,Len,Ran),
    							remove_at(L1,List,Ran,NList), N1 is N-1, rnd_select(NList,N1,Lr).

rnd_permu(List,Out):- length(List,Len), rnd_select(List,Len,Out).
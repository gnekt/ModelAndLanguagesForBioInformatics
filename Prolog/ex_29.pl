% Insert an element at a given position into a list.
% Example:
% ?- insert_at(alfa,[a,b,c,d],2,L).
% L = [a,alfa,b,c,d]

remove_at(X,[X|L],1,L).
remove_at(X,[Y|L],N,[Y|Lr]):- N>1, N1 is N-1, remove_at(X,L,N1,Lr).

insert_at(X,L,N,O):- remove_at(X,O,N,L).
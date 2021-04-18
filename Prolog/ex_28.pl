% Remove the K'th element from a list.
% Example:
% ?- remove_at(X,[a,b,c,d],2,R).
% X = b
% R = [a,c,d]

remove_at(X,[X|L],1,L).
remove_at(X,[Y|L],N,[Y|Lr]):- N>1, N1 is N-1, remove_at(X,L,N1,Lr).
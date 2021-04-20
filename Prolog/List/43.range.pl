% Create a list containing all integers within a given range.
% Example:
% ?- range(4,9,L).
% L = [4,5,6,7,8,9]

range(X,X,[X]).
range(X,Y,[]):- X > Y,!.
range(X,Y,[X|List]):- N1 is X+1, N1 =< Y, !,range(N1,Y,List).
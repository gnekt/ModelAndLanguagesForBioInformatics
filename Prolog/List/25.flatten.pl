% Flatten a nested list structure.
% Transform a list, possibly holding lists as elements into a 'flat' list by replacing each list with its elements (recursively).

% Example:
% ?- my_flatten([a, [b, [c, d], e]], X).
% X = [a, b, c, d, e]

flatten([],[]).
flatten([X|List],NL):- is_list(X), !,flatten(X,E), flatten(List,FlatList),append(E,FlatList,NL).
flatten([X|List],NL):- flatten(List,FlatList),append([X],FlatList,NL).
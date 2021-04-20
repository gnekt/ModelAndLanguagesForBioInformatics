% Write a (Prolog) program which computes the merge sort of the input list.

merge([],[],[]).
merge([],X,X).
merge(Y,[],Y).
merge([X|L1],[Y|L2],[X|L0]):- X =< Y, merge(L1,[Y|L2],L0).
merge([X|L1],[Y|L2],[Y|L0]):- X > Y, merge([X|L1],L2,L0).

div([],[],[]).
div([A],[A],[]).
div([A,B|T],[A|X],[B|Y]) :- div(T,X,Y).

% merge sort(IList:i, OList:o):- Given an unordered List IList, return its ordered version.

merge_sort([],[]).     % empty list is already sorted
merge_sort([X],[X]).   % single element list is already sorted
merge_sort(List,Sorted):- div(List,L1,L2),     % list with at least two elements is divided into two parts
	merge_sort(L1,Sorted1),merge_sort(L2,Sorted2),merge(Sorted1,Sorted2,Sorted).  % then each part is sorted

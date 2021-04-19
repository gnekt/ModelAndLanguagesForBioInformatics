% Compute the union among 2 lists

merge([],[],[]).
merge([],X,X).
merge(Y,[],Y).
merge([X|L1],[Y|L2],[X|L0]):- X =< Y, merge(L1,[Y|L2],L0).
merge([X|L1],[Y|L2],[Y|L0]):- X > Y, merge([X|L1],L2,L0).

div([],[],[]).
div([A],[A],[]).
div([A,B|T],[A|X],[B|Y]) :- div(T,X,Y).

merge_sort([],[]).     % empty list is already sorted
merge_sort([X],[X]).   % single element list is already sorted
merge_sort(List,Sorted):- div(List,L1,L2),     % list with at least two elements is divided into two parts
	merge_sort(L1,Sorted1),merge_sort(L2,Sorted2),merge(Sorted1,Sorted2,Sorted).  % then each part is sorted

compress([],[]):-!.
compress([X],[X]):-!.
compress([X,X|List],Result):- !,compress([X|List],Result).
compress([X,Y|List],[X|Result]):- compress([Y|List],Result).

% union(List:i,List:i,List:o):- Compute the union among the 2 input list and put it in the output.
union(L1,L2,Out):- merge_sort(L1,L1Ord), merge_sort(L2,L2Ord), merge(L1Ord,L2Ord,LOrd),
    					compress(LOrd,Out).
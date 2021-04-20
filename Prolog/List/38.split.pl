% Split a list into two parts; the length of the first part is given.
% Do not use any predefined predicates.

% Example:
% ?- split([a,b,c,d,e,f,g,h,i,k],3,L1,L2).
% L1 = [a,b,c]
% L2 = [d,e,f,g,h,i,k]

%removeFirstNFromList(List,N,Output):- Remove N element from the Start of the List, return the result list into Output
removeFirstNFromList(_,0,_).
removeFirstNFromList([X|List],1,List).
removeFirstNFromList([X|List],N,Out):- N > 1, N1 is N-1, removeFirstNFromList(List,N1,Out).

%transferNElementTo(List,N,Output):- Copy N element from List to the Output List without removing it
transferNElementTo(X,0,[]).
transferNElementTo([X|L],N, [X|Lr] ):- N > 0, !, N1 is N-1, transferNElementTo(L,N1,Lr).

%split(List,N,L1,L2):- Return 2 lists L1 and L2 on which L1 represent the first N element of the list List,
					% and the other are putted inside L2.
split(List,N,L1,L2):- transferNElementTo(List,N,L1), removeFirstNFromList(List,N,L2).
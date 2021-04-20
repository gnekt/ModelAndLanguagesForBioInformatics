% Pack consecutive duplicates of list elements into sublists.
% If a list contains repeated elements they should be placed in separate sublists.

% Example:
% ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

% transfer(Elem,List,Remain,Out):- Return all the consecutive element in List equal to Elem and copy it into the Out list, 
%                                   all the remaining element will be putted into the Remain list.
transfer(X,[],[],[X]).
transfer(X,[Y|List],[Y|List],[X]):- X \= Y, !,transfer(X,List,_,_).
transfer(X,[X|List],Ys,[X|Res]):-!, transfer(X,List,Ys,Res).


pack([],[]):-!.
pack([X|List],[Z|Result]):- transfer(X,List,Remain,Z),pack(Remain,Result).
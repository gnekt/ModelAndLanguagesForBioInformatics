% path(Elem,Tree,Path):- Return the minimum path as array of node (with the last element with Elem) 
%                   of a tree.

path(Elem,Tree,Path):- searchPath(Elem,Tree,Path), member(Elem,Path),!.
path(Elem,Tree,[]).

searchPath(_,nil,[]).
searchPath(Elem,t(Elem,_,_),[Elem]).
searchPath(Elem,t(Root,Left,Right),[Root|Path]):-searchPath(Elem,Right,PathR),
                                                        searchPath(Elem,Left,PathL),
    													minPath(PathR,PathL,Path).
															

minPath([],List2,List2).
minPath(List1,[],List1).
minPath(List1,List2,List1):- length(List1,Res1),length(List2,Res2), Res1 =< Res2,!.
minPath(List1,List2,List2).
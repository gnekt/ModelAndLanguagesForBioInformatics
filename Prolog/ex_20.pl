% Decode a run-length encoded list.
% Given a run-length code list generated as specified in problem ex_19. Construct its uncompressed version.



expand([0,_],[]).
expand([NIter,Elem],[Elem|Res]):- NIter >=1, !,NIter1 is NIter-1,expand([NIter1,Elem],Res).

uncompress([],[]).
uncompress([X|List],Res):- is_list(X),!,expand(X,ExpX), uncompress(List,UList), append(ExpX,UList,Res).
uncompress([X|List],[X|UList]):-uncompress(List,UList).
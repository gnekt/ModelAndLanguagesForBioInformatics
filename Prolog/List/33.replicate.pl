

expand([0,_],[]).
expand([NIter,Elem],[Elem|Res]):- NIter >=1, !,NIter1 is NIter-1,expand([NIter1,Elem],Res).
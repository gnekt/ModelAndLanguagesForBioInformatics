maxloc([],[]):-!.
maxloc([_],[]):-!.
maxloc([_,_],[]):-!.
maxloc([X,Y,Z|L],[Y|L0]):-X=<Y,Y>Z,!,maxloc([Z|L],L0).
maxloc([_,Y,Z|L],L0):-maxloc([Y,Z|L],L0).


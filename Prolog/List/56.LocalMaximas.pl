% Si definisca un predicato Prolog che calcola i massimi locali
% (esclusi gli estremi) di una lista, ad esempio:
% :- max_loc([5,4,7,2,3,6,1,2],X)
% yes, X=[7,6]

maxloc([],[]):-!.
maxloc([_],[]):-!.
maxloc([_,_],[]):-!.
maxloc([X,Y,Z|L],[Y|L0]):-X=<Y,Y>Z,!,maxloc([Z|L],L0).
maxloc([_,Y,Z|L],L0):-maxloc([Y,Z|L],L0).


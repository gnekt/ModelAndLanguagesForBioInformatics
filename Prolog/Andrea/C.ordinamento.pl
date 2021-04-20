ordering([]).
ordering([_]).
ordering([X,Y|L]):-X=<Y,ordering([Y|L]).



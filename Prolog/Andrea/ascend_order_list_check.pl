ascendc([]):-!.
ascendc([_]):-!.
ascendc([X,Y|L]):-X=<Y,ascendc([Y|L]).

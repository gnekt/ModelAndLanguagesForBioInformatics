% ascendc(-IList):- Check if IList is in ascending ordering.

ascendc([]):-!.
ascendc([_]):-!.
ascendc([X,Y|L]):-X=<Y,ascendc([Y|L]).

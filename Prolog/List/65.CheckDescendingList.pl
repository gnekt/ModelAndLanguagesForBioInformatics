% descendc(-IList):- Check if IList is in ascending ordering.

descendc([]):-!.
descendc([_]):-!.
descendc([X,Y|L]):-X>=Y,descendc([Y|L]).

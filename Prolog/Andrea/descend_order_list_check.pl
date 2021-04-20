descendc([]):-!.
descendc([_]):-!.
descendc([X,Y|L]):-X>=Y,descendc([Y|L]).

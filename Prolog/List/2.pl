% subst(New,X,ListI,ListO):- Return a ListO with all the values X replaced with New

subst(New,X,[],[]).
subst(New,X,[X|List],[New|List0]):- !, subst(New,X,List,List0).
subst(New,X,[Y|List],[Y|List0]):- subst(New,X,List,List0).
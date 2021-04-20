% symmetricTrees(-Tree1,-Tree2):- check if two tree are symmetric wrt the structure and the data

symmetricTrees(nil,nil):-!.
symmetricTrees(t(X,nil,nil),t(X,nil,nil)):-!.
symmetricTrees(t(X,T1,T2),t(X,T3,T4)):-symmetricTrees(T1,T4),symmetricTrees(T2,T3).

% symmetricTrees(-Tree1,-Tree2):- check if two tree are symmetric wrt the structure.

symmetricTrees(nil,nil):-!.
symmetricTrees(t(_,nil,nil),t(_,nil,nil)):-!.
symmetricTrees(t(_,T1,T2),t(_,T3,T4)):-symmetricTrees(T1,T4),symmetricTrees(T2,T3).
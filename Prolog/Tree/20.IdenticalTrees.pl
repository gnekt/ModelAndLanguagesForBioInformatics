% Write a Prolog program which decides if two binary trees are equivalent (first find a
% representation of binary trees by means of appropriate terms).

equalTrees(nil,nil):-!.
equalTrees(t(X,nil,nil),t(X,nil,nil)):-!.
equalTrees(t(X,T1,T2),t(X,T3,T4)):-equalTrees(T1,T3),equalTrees(T2,T4),!.
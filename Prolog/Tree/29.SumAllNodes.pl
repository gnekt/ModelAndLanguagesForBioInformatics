% Sum all nodes of the tree

treesum(nil,0):-!.
treesum(t(X,TS,TD),N):-treesum(TS,K),treesum(TD,J),N is K+J+X.
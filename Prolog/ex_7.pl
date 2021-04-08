%Find max in a Tree, non BST!

max(N1,N2,N1):- N1 >= N2.
max(N1,N2,N2):- N1 < N2.

maxTree(nil,0).
maxTree(t(Root,nil,nil),Root).
maxTree(t(Root,Left,Right), Max):- maxTree(Left,LeftMax), maxTree(Right,RightMax),max(LeftMax,RightMax,ResMax), max(ResMax,Root,Max).
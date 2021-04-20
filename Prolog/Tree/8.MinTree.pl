%find min in a tree, non BST!

min(N1,nil,N1).
min(nil,N2,N2).
min(N1,N2,N1):- N1 =< N2.
min(N1,N2,N2):- N1 > N2.

minTree(nil,nil).
minTree(t(Root,nil,nil),Root).
minTree(t(Root,Left,Right),Result):- minTree(Left,LResult), minTree(Right,RResult), min(LResult,RResult,SubTreeResult), min(SubTreeResult,Root,Result).
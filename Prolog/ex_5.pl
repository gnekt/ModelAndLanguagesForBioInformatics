% Check the number of leaves of a tree

leaves(nil,0).
leaves(t(Root,nil,nil),1).
leaves(t(Root,Left,Right),Result):- leaves(Left,LeftResult), leaves(Right,RightResult), Result is LeftResult+RightResult. 
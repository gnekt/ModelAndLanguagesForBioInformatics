% Write a Prolog program which decides if two binary trees are equivalent (first find a
% representation of binary trees by means of appropriate terms).

identicalTrees(t(Root,LeftNode1,RightNode1),t(Root,LeftNode1,RightNode1)).
identicalTrees(t(Root1,LeftNode1,RightNode1),t(Root2,LeftNode2,RightNode2)):-
        identicalTrees(LeftNode1,LeftNode2), identicalTrees(RightNode1,RightNode2).
% Represent a tree in a preorder method


preorder(void, [void]).
preorder(tree(X, Left, Right), CompleteList):- preorder(Left, LeftList), preorder(Right, RightList), append([X|LeftList], RightList, CompleteList).
%Find max in a BST 

maxBst(t(Root,nil,nil),Root).
maxBst(t(Root,Left,Right), Result):- maxBst(Right,ResultMax), Result is ResultMax.

%Find min in a BST
minBst(t(Root,nil,nil),Root).
minBst(t(Root,Left,Right), Result):- minBst(Left,LeftMin), Result is LeftMin.
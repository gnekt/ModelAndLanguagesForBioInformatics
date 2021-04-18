%Insert an element in BST

bInsert(X,nil,t(X,nil,nil)):-!.


bInsert(X,t(Root,Left,Right),t(Root,LeftN,Right)):- X =< Root, !,bInsert(X,Left,LeftN). 
bInsert(X,t(Root,Left,Right),t(Root,Left,RightN)):- bInsert(X,Right,RightN). 


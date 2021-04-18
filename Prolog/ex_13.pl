%from a list to a BST


bInsert(X,nil,t(X,nil,nil)):-!.


bInsert(X,t(Root,Left,Right),t(Root,LeftN,Right)):- X =< Root, !,bInsert(X,Left,LeftN). 
bInsert(X,t(Root,Left,Right),t(Root,Left,RightN)):- bInsert(X,Right,RightN). 


fromListToTree(L,T):-fromListToTree(L,T,nil).

fromListToTree([],T,T).
fromListToTree([X|List],Tree,NewTree):- bInsert(X,NewTree,T), fromListToTree(List,Tree,T).
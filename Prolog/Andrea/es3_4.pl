bstmember(X,t(X,nil,nil)):-!.
bstmember(X,t(X,_,_)).
bstmember(X,t(Y,LS,_)):-X=<Y,!,bstmember(X,LS).
bstmember(X,t(_,_,LD)):-bstmember(X,LD).


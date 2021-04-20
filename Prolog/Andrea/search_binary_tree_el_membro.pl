bstmember(X,t(X,_,_)).
bstmember(X,t(Y,TS,_)):-X=<Y,bstmember(X,TS).
bstmember(X,t(Y,_,TD)):-X>=Y,bstmember(X,TD).
